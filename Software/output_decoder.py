from SC_encode import *
from VFAT3_registers import *


SC_shift_register = [[0,0]]*8
SC_shift_register_counter = 0
BCcounter = 0




SC0 = "10010110"        # Slow Control 0
SC1 = "10011001"        # SLow Control 1

HDR_1 = "00011110"		# Basic Data Packet
HDR_1W = "01011110"     # Basic Data Packet, With FIFO half full -warning
HDR_2 = "00011010"		# Zero Suppressed Data Packet
HDR_2W = "01010110"		# Zero Suppressed Data Packet, With FIFO half full -warning


EC_size = 1
BC_size = 1

IPbus_transaction_list = []
datapacket_list = []

hdlc_state = "IDLE"
hdlc_start_BCd = 0
hdlc_flag_bit = 0
hdlc_flag = [0,1,1,1,1,1,1,0]
hdlc_data = []
ipbus_protocol_version = [0,0,1,0]
ipbus_info_code = [1,1,1,1]

dataformat_register = GBL_CFG_CTR_1()                                            ##### Add the functionality for the changed values.
dataformat_register.SZD[0] = 1

data_header = 0
datapacket_status = "IDLE"
datapacket_byte_counter = 0

SC_bit_counter = 0

class IPbus_response:
    def __init__(self, BCd, data):
        self.BCd = BCd
        print "****************"
        print data
        print "SLOW CONTROL RESPONSE RECEIVED"

        data_in = data[0:8]
        data_in.reverse()
        hdlc_address_bin = ''.join(str(e) for e in data_in)
        self.hdlc_address = int(hdlc_address_bin,2)
        print "HDLC Address: %s" % hdlc_address_bin
        print "HDLC Address: %d" % self.hdlc_address

        data_in = data[8:16]
        data_in.reverse()
        hdlc_control_bin = ''.join(str(e) for e in data_in)
        self.hdlc_control = int(hdlc_control_bin,2)
        print "HDLC Control: %s" % hdlc_control_bin
        print "HDLC Control: %d" % self.hdlc_control

        data_in = data[16:20]
        data_in.reverse()
        info_code_bin = ''.join(str(e) for e in data_in)
        self.info_code = int(info_code_bin,2)
        print "Info Code: %s" % info_code_bin
        print "Info Code: %d" % self.info_code

        data_in = data[20:24]
        data_in.reverse()
        type_ID_bin = ''.join(str(e) for e in data_in)
        self.type_ID = int(type_ID_bin,2)
        print "Type Id: %s" % type_ID_bin
        print "Type Id: %d" % self.type_ID

        data_in = data[24:32]
        data_in.reverse()
        transaction_ID_bin = ''.join(str(e) for e in data_in)
        self.transaction_ID = int(transaction_ID_bin,2)
        print "Transaction ID: %s" % transaction_ID_bin
        print "Transaction ID: %d" % self.transaction_ID

        data_in = data[32:44]
        data_in.reverse()
        words_bin = ''.join(str(e) for e in data_in)
        self.words = int(words_bin,2)
        print "Words: %s" % words_bin
        print "Words: %d" % self.words


        data_in = data[44:48]
        data_in.reverse()
        protocol_bin = ''.join(str(e) for e in data_in)
        self.protocol = int(protocol_bin,2)
        print "Protocol: %s" % protocol_bin
        print "Protocol: %d" % self.protocol

        if self.type_ID  == 0:
            self.data = []
            for x in range(1,self.words+2):
                self.data.append(data[(x*32):(x+1)*32])

        if self.info_code == 0:
            print "Transaction ok."
        else:
            print "Transaction error %d", info_code
        print "****************"
                

        


        received_crc_bin = ''.join(map(str, data[-16:]))
        print received_crc_bin
        received_crc = int(received_crc_bin,2) # Extract the CRC value from the received message. CRC is the last 16 bits of the data
        crc_calculation = []
        crc_calculation.extend(hdlc_address_bin)
        crc_calculation.extend(hdlc_control_bin)
        crc_calculation.extend(info_code_bin)
        crc_calculation.extend(type_ID_bin)
        crc_calculation.extend(transaction_ID_bin)
        crc_calculation.extend(words_bin)
        crc_calculation.extend(protocol_bin)
        print crc_calculation
        calculated_crc = crc_remainder(data[:-16]) # Calculate the CRC for the message.
        #calculated_crc = crc_remainder(crc_calculation) # Calculate the CRC for the message.

        if received_crc == calculated_crc:
            print "CRC check ok."
        else:
            print "CRC error."



class datapacket:
    def __init__(self):
       self.header = ""
       self.FIFO_warning = 0
       self.systemBC = 0
       self.EC = ""
       self.BC = ""
       self.data = ""
       self.partition_table = "" 
       self.partitions = 0
       self.spzs_data = ""
       self.crc = ""
       self.crc_error = 0
       self.received_crc = 0
       self.calculated_crc = 0
    def ready(self):
       print("************")
       print("DATA PACKET RECEIVED")
       print("Header:")
       print(self.header)
       print("FIFO warning:")
       print(self.FIFO_warning)
       print("System BC:")
       print(self.systemBC)
       print("EC:")
       print(self.EC)
       print("BC:")
       print(self.BC)
       print("DATA:")
       print(self.data)

       if dataformat_register.SZP[0] == 0:
           self.received_crc = int(self.crc,2)

           crc_calculation = []  
           crc_calculation.extend(list(self.header))
           crc_calculation.extend(list(self.EC))
           crc_calculation.extend(list(self.BC))
           crc_calculation.extend(list(self.partition_table))
           crc_calculation.extend(list(self.spzs_data))
           crc_calculation.extend(list(self.data))
           self.calculated_crc = crc_remainder(crc_calculation)
           if self.received_crc != self.calculated_crc:
               self.crc_error = 1
               print("CRC error.")
           else:
               print("CRC ok.")
       self.EC = int(self.EC,2)
       self.BC = int(self.BC,2)
       indices = [i for i, x in enumerate(self.partition_table) if x == "1"]
       if self.spzs_data != "":
           for i in range(0,16):
               if i in indices:
                   self.data += self.spzs_data[:8]
                   self.spzs_data = self.spzs_data[8:]
               else:
                   self.data += "00000000"
       print("************")
       print("************")





def decode_output_data():
    with open('./data/data4_t.txt', 'r') as f:
        for line in f:
            line = line.rstrip('\n')
            # print(line)
            split_line = line.split()
            #print(split_line)
            try:
                BCd = int(split_line[0])
            except ValueError:
                print "-IGNORED: Invalid value: %s" % line
                continue

            input_value = split_line[1]

            #print(input_value)
            #print datapacket_status

            BCcounter = BCcounter + BCd

           # DATA PACKETS

            if input_value == HDR_2 or input_value == HDR_2W: # Ehka voisi vain laskea monta tavua paketti on ja hajottaa se sitten objektissa.
                print("Header II found.")
                data_header = 2                               # Type of header.
                data_packet = datapacket()                   # Create a new data packet object.
                if input_value == HDR_2W:                     # Check if FIFO warning was given.
                    data_packet.FIFO_warning = 1              # Set the FIFO warning to the object.
                data_packet.header = input_value              # Give the binary header to the new object.
                data_packet.systemBC = BCcounter              # Give the system BC counter to the object. Tells the time of arrival of the packet.
                if dataformat_register.SZP[0] == 1:              # If SZP has been set to one. We only receive the header, so data packet is ready.
                    data_packet.ready()
                    datapacket_list.append(data_packet)       # Add the finished data packet to the data packet list.

                    continue                                  # Continue to read next line from file.
                if dataformat_register.SZD[0] == 1:              # If SZD is set to one, we will get also time tag
                    if dataformat_register.TT[0] == 2:           # If Time Tag format is set to 2 we only get BC. So we change the state straight to BC
                        datapacket_status = "BC"
                    else:
                        datapacket_status = "EC"              # If time tag format is 0 or 3 we get EC+BC. If 1 we get just EC. So we can got to EC and then over there decide if we need also BC.
                datapacket_byte_counter = 0                   # Set byte counter to zero. This is used to count number of bytes to be read in different stages.


          

            elif input_value == HDR_1 or input_value == HDR_1W: # See if the read line is Header 1.
                print("Header I found.")
                data_header = 1                               # Type of header. To be used to stop after EC or BC.
                data_packet = datapacket()                   # Create a new data packet object. 
                if input_value == HDR_1W:                     # Check if FIFO warning was given.
                    data_packet.FIFO_warning = 1              # Set the FIFO warning to the object.
                data_packet.header = input_value              # Give the binary header to the new object.
                data_packet.systemBC = BCcounter              # Give the system BC counter to the object. Tells the time of arrival of the packet.
                if dataformat_register.TT[0] == 2:               # If Time Tag format is set to 2 we only get BC. So we change the state straight to BC.
                    datapacket_status = "BC"
                else:
                    datapacket_status = "EC"                  # If time tag format is 0 or 3 we get EC+BC. If 1 we get just EC. So we can got to EC and then over there decide if we need also BC.
                datapacket_byte_counter = 0                   # Set byte counter to zero. This is used to count the number of bytes to be read in different stages.


            elif datapacket_status == "EC":                     # Enter the EC to collect the bytes for EC.
                if datapacket_byte_counter == 0:              # If the byte counter is 0. We are coming here the first time
                    data_packet.EC += input_value             # input value is added to the EC value.
                    datapacket_byte_counter += 1              # byte counter is incremented by one to count the amount of EC bytes.
                                                              # Check the size of the EC counter.
                    if dataformat_register.ECb[0] == 0 or dataformat_register.ECb[0] ==3:
                        EC_size = 1
                        if dataformat_register.TT[0] == 0 or dataformat_register.TT[0] == 3: # If time tag format is 0 or 3 we have EC+BC. So we move to state BC to get also BC counter.
                            datapacket_status = "BC"

                            datapacket_byte_counter = 0
                                
                    if dataformat_register.ECb[0] == 1:
                        EC_size = 2
                    if dataformat_register.ECb[0] == 2:
                        EC_size = 3


                elif datapacket_byte_counter >= EC_size:        # If byte counter is >= than size of EC we have all EC bytes and we can move to next state.
                    datapacket_byte_counter = 0               # Set the byte counter to 0 for the next state.
                    if dataformat_register.TT[0] == 0 or dataformat_register.TT[0] == 3: # If time tag format is 0 or 3 we have EC+BC. So we move to state BC to get also BC counter.
                        datapacket_status = "BC"
                    elif data_header == 2:                         # If header was 2 there is no data after BC
                        datapacket_status = "CRC"            # Stop data collection by setting status to IDLE.
                    else:
                        datapacket_status = "DATA"            # Else we only have EC so we can move to collect the data.
                else:                                         # Here the EC data is collected.
                    data_packet.EC += input_value             # Input value is added to the EC value. 
                    datapacket_byte_counter += 1              # Byte counter is incremented by one to count the amount of EC bytes.
                

            elif datapacket_status == "BC":                     # Enter the BC to collect the bytes for BC.
                if datapacket_byte_counter == 0:              # If the byte counter is 0. We are coming here the first time.
                                                              # Check the size of the BC counter.
                    if dataformat_register.BCb[0] == 0:89
                        BC_size = 2
                    if dataformat_register.BCb[0] == 1:
                        BC_size = 3
                    data_packet.BC += input_value        # input value is added to the BC value. 

                    datapacket_byte_counter += 1              # byte counter is incremented by one to count the amount of EC bytes

                elif datapacket_byte_counter >= BC_size-2:        # If byte counter is >= than size of BC we have all BC bytes and we can move to next state.
                    data_packet.BC += input_value        # Input value is added to the EC value.           
                    datapacket_byte_counter += 1              # Byte counter is incremented by one to count the amount of BC bytes.
                    if data_header == 2:                           # If header was 2 there is no data after BC
                        datapacket_byte_counter = 0               # Set the byte counter to 0 for the next state.
                        datapacket_status = "CRC"            # Stop data collection by setting status to IDLE.
                    else:
                        datapacket_byte_counter = 0           # Set the byte counter to 0 for the next state.
                        datapacket_status = "DATA"            # Set state to DATA 
                else:                                         # Here the BC data is collected.
                    data_packet.BC += input_value           # Input value is added to the EC value.  
                    datapacket_byte_counter += 1              # Byte counter is incremented by one to count the amount of BC bytes.



            elif datapacket_status == "DATA" and dataformat_register.DT[0] == 1:                   # Enter the DATA state to collect the bytes for DATA.
                if datapacket_byte_counter == 0:              # If the byte counter is 0. We are coming here the first time.
                    data_packet.partition_table += input_value
                    if len(data_packet.partition_table) == 16:
                        data_size = sum(int(x) for x in data_packet.partition_table if x.isdigit())
                        if data_size > dataformat_register.PAR[0]:
                            data_size = dataformat_register.PAR[0]
                        if dataformat_register.P16[0] == 1:
                            datapacket_byte_counter = 0               # Set the byte counter to 0 for the next state.
                            datapacket_status = "CRC"                # Set state to IDLE.
                            data_packet.crc += input_value           # input value is added to the data.

                        pata_packet.partitions = data_size
                        datapacket_byte_counter += 1              # Byte counter is incremented by one to count the amount of data bytes.
                if datapacket_byte_counter > data_size:      # If byte counter is >= than data_size we have all data bytes and we can move to next state.
                    datapacket_byte_counter = 0               # Set the byte counter to 0 for the next state.
                    datapacket_status = "CRC"                # Set state to IDLE.
                    data_packet.crc += input_value           # input value is added to the data.
                else:
                    data_packet.spzs_data += input_value           # Input value is added to the data.               
                    datapacket_byte_counter += 1              # Byte counter is incremented by one to count the amount of data bytes. 






            elif datapacket_status == "DATA" and dataformat_register.DT[0] == 0:                   # Enter the DATA state to collect the bytes for DATA.

                data_size = 16
    #            if datapacket_byte_counter == 0:              # If the byte counter is 0. We are coming here the first time.
    #                data_size = 16                            # Set the data size to 16 bytes. 16*8 bits = 128 bits
    #                data_packet.data += input_value           # input value is added to the data. 
    #                datapacket_byte_counter += 1              # byte counter is incremented by one to count the amount of data bytes
                if datapacket_byte_counter >= data_size:     # If byte counter is >= than data_size we have all data bytes and we can move to next state.
                    datapacket_byte_counter = 0               # Set the byte counter to 0 for the next state.
                    datapacket_status = "CRC"                # Set state to IDLE.
                    data_packet.crc += input_value           # input value is added to the data.
                else:
                    data_packet.data += input_value           # Input value is added to the data.               
                    datapacket_byte_counter += 1              # Byte counter is incremented by one to count the amount of data bytes. 





            elif datapacket_status == "CRC":                   # Enter the DATA state to collect the bytes for DATA.
                if datapacket_byte_counter == 0:              # If the byte counter is 0. We are coming here the first time.
                    if data_header == 2:
                        data_size = 2                            # Set the data size to 16 bytes. 16*8 bits = 128 bits
                        data_packet.crc += input_value           # input value is added to the data. 
                        datapacket_byte_counter += 1              # byte counter is incremented by one to count the amount of data bytes
                    else:
                        data_size = 1
                        data_packet.crc += input_value           # input value is added to the data. 
                        datapacket_byte_counter = 0               # Set the byte counter to 0 for the next state.        #############Vammanen patchi. Pitaa miettia koko looppi uudestaan.
                        datapacket_status = "IDLE"                # Set state to IDLE.
                        data_packet.ready()
                        datapacket_list.append(data_packet)       # Add the finished data packet to the data packet list.

                elif datapacket_byte_counter >= data_size:      # If byte counter is >= than data_size we have all data bytes and we can move to next state.
                    datapacket_byte_counter = 0               # Set the byte counter to 0 for the next state.
                    datapacket_status = "IDLE"                # Set state to IDLE.
                    data_packet.ready()
                    datapacket_list.append(data_packet)       # Add the finished data packet to the data packet list.
                else:
                    data_packet.crc += input_value           # Input value is added to the data.               
                    datapacket_byte_counter += 1              # Byte counter is incremented by one to count the amount of data bytes. 





            # SLOW CONTROL


            if input_value == SC0:                            # See if the input line is SC0.
                SC_shift_register = SC_shift_register[1:]     # Remove the first item from the SC shift register.
                SC_shift_register.append([BCcounter,0])       # Add zero and the BCcounter value to the SC shift register
                if hdlc_flag_bit == 1:
                    SC_bit_counter += 1

            if input_value == SC1:                            # See if the input line is SC1.
                SC_shift_register = SC_shift_register[1:]     # Remove the first item from the SC shift register.
                SC_shift_register.append([BCcounter,1])       # Add one and the BCcounter value to the SC shift register
                if hdlc_flag_bit == 1:
                    SC_bit_counter += 1

            if [i[1] for i in SC_shift_register] == hdlc_flag: # Compare the first row of the shift register to see if it is HDLC flag.
                if hdlc_flag_bit == 2:
                    hdlc_flag_bit = 0
                elif hdlc_flag_bit == 0:                         # See if flag bit is set. Indicates that this is the beginning flag of the message
                    hdlc_flag_bit = 1                          # Change the flag bit to 1 to indicate that HDLC-message has started.
                    hdlc_start_BCd = SC_shift_register[0][0]   # Get the value of the BCcounter in the beginning of the flag byte, to store the beginning time of the hdlc message.
                    hdlc_state = "DATA"                     # The first HDLC field after the flag is the address field.
                    SC_bit_counter = 0                         # Set the bit counter to zero. With this counter we count when we have a full byte of SC0's and SC1's.
                elif hdlc_flag_bit == 1:                       # See if the flag bit is set. This indicates that it is the end flag of the message.
                    hdlc_flag_bit = 0                          # Set hdlc flag to zero to indicate that the hdlc-message has ended.
                    IPbus_transaction_list.append(IPbus_response(hdlc_start_BCd,hdlc_data)) # Create an IPbus_response object with the new data and add it to the transaction list.
                    hdlc_state = "IDLE"                          # The HDLC message is complete. Change state to IDLE.
                    del hdlc_data[:]
                    hdlc_flag_bit = 2

                SC_shift_register = [[0,0]]*8                    # Clear the shift register.

            if SC_bit_counter == 8 and hdlc_state == "DATA":     # If the bit counter has counted to one byte and the state is control.
                hdlc_data.extend([i[1] for i in SC_shift_register]) # Save the data byte to the list.
                SC_bit_counter = 0                               # Set the bit counter to zero. Data acquisition ends when flag byte has been found in the flag-section.    




    output_data = [IPbus_transaction_list, datapacket_list]
    return output_data














#print "**********************"
#print "SENT FCCs:"
#with open('./data/sent_FCCs.dat', 'r') as f:
#    for line in f:
#            line = line.rstrip('\n')
#            split_line = line.split()
#            systemBCr = int(split_line[0])
#            command = split_line[1]
#            print ""
#            print "Time: %d, Command: %s" %(systemBCr,command)
#            if command == "LV1A" or command == "Calpulse":
#                for i in datapacket_list:
#                    if i.systemBC > systemBCr:
#                        print "Matching datapacket?"
#                        print "Time: %d Header: %s, EC: %d BC: %d" % (i.systemBC, i.header, i.EC, i.BC)
#                        diff = i.systemBC - systemBCr
#                        print "Delay: %d BC" % diff
#                        print ""
#                        break


#print "**********************"
#print "SENT SCs:"
#with open('./data/sent_SCs.dat', 'r') as f:
#    for line in f:
#            line = line.rstrip('\n')
#            split_line = line.split()
#            systemBCr = int(split_line[0])
#            transID = int(split_line[1])
#            print ""
#            print "Time: %d, Transaction ID: %d" %(systemBCr,transID)
#            for i in IPbus_transaction_list:
#                if transID == i.transaction_ID:
#                    diff = i.BCd - systemBCr
#                    if i.info_code == 0:
#                        print "             Reply found. Time delay: %d Transaction OK." % diff
#                    else:
#                        print "             Reply found. Time delay: %d Transaction ERROR." % diff
#                    break
#print ""
#print ""
#print ""
#print ""
#print "**********************"
#print "Received data packets:"
#for i in datapacket_list:
#    print "Time: %d Header: %s, EC: %d BC: %d" % (i.systemBC, i.header, i.EC, i.BC)
#print "**********************"
#print "Received Slow Control responses:"
#for i in IPbus_transaction_list:
#    print "Time: %d  Type: %d, Transaction_ID: %d Info code: %d" % (i.BCd,i.type_ID, i.transaction_ID, i.info_code)




