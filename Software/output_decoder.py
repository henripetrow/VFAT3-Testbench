from SC_encode import *
from VFAT3_registers import *


SC_shift_register = [[0,0]]*8
SC_shift_register_counter = 0
BCcounter = 0

SC0 = [1,0,0,1,0,1,1,0]
SC1 = [1,0,0,1,1,0,0,1]

HDR_1 = [0,0,0,1,1,1,1,0]		# Basic Data Packet
HDR_1W = [0,1,0,1,1,1,1,0]              # Basic Data Packet, With FIFO half full -warning
HDR_2 = [0,0,0,1,1,0,1,0]		# Zero Suppressed Data Packet
HDR_2W = [0,1,0,1,0,1,1,0]		# Zero Suppressed Data Packet, With FIFO half full -warning



IPbus_transaction_list = []
datapacket_list = []

hdlc_state = "IDLE"
hdlc_start_BCd = 0
hdlc_address = 0
hdlc_control = 0
hdlc_flag_bit = 0
hdlc_flag = [0,1,1,1,1,1,1,0]
hdlc_data = []
ipbus_protocol_version = [0,0,1,0]
ipbus_info_code = [1,1,1,1]

dataformat_register = GBL_CFG_CTR_1()                                            ##### Add the functionality for the changed values.

data_header = 0
datapacket_status = "IDLE"
datapacket_byte_counter = 0

class IPbus_response:
    def __init__(self, BCd, data):
        self.BCd = BCd
        print data[:4]
        data_converted = ''.join(str(e) for e in data[:4])
        self.protocol = int(data_converted,2)
        print "Protocol: %s" % data_converted
        print "Protocol: %d" % self.protocol

        data_converted = ''.join(str(e) for e in data[4:16])
        self.words = int(data_converted,2)
        print "Words: %s" % data_converted
        print "Words: %d" % self.words

        data_converted = ''.join(str(e) for e in data[16:24])
        self.transaction_ID = int(data_converted,2)
        print "Transaction ID: %s" % data_converted
        print "Transaction ID: %d" % self.transaction_ID

        data_converted = ''.join(str(e) for e in data[24:28])
        self.type_ID = int(data_converted,2)
        print "Type Id: %d" % self.type_ID

        data_converted = ''.join(str(e) for e in data[28:32])
        self.info_code = int(data_converted,2)
        print "Info Code: %d" % self.info_code

        if self.type_ID  == 0:
            self.data = []
            for x in range(1,self.words+2):
                self.data.append(data[(x*32):(x+1)*32])
                print "Actual data:"
                print data[(x*32):(x+1)*32]
                print "Accumulated data:"
                print self.data

class data_packet:
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







with open('./data/FPGA_output_list.dat', 'r') as f:
    for line in f:
        line = line.rstrip('\n')
        split_line = line.split()
        try:
            BCd = int(split_line[0])
        except ValueError:
            print "-IGNORED: Invalid value: %s" % line
            continue

        input_value = split_line[1]

        BCcounter = BCcounter + BCd

       # DATA PACKETS

        if input_value == HDR_2 or input_value == HDR_2W: # Ehka voisi vain laskea monta tavua paketti on ja hajottaa se sitten objektissa.
            data_header = 2                               # Type of header.
            data_packet = data_packet()                   # Create a new data packet object.
            if input_value == HDR_2W:                     # Check if FIFO warning was given.
                data_packet.FIFO_warning = 1              # Set the FIFO warning to the object.
            data_packet.header = input_value              # Give the binary header to the new object.
            data_packet.systemBC = BCcounter              # Give the system BC counter to the object. Tells the time of arrival of the packet.
            if dataformat_register.SZP == 1:              # If SZP has been set to one. We only receive the header, so data packet is ready.
                datapacket_list.append(data_packet)       # Add the finished data packet to the data packet list.
                continue                                  # Continue to read next line from file.
            if dataformat_register.SZD == 1:              # If SZD is set to one, we will get also time tag
                if dataformat_register.TT == 2:           # If Time Tag format is set to 2 we only get BC. So we change the state straight to BC
                    datapacket_status = "BC"
                else:
                    datapacket_status = "EC"              # If time tag format is 0 or 3 we get EC+BC. If 1 we get just EC. So we can got to EC and then over there decide if we need also BC.
            datapacket_byte_counter = 0                   # Set byte counter to zero. This is used to count number of bytes to be read in different stages.


      

        if input_value == HDR_1 or input_value == HDR_1W: # See if the read line is Header 1.
            data_header = 1                               # Type of header. To be used to stop after EC or BC.
            data_packet = data_packet()                   # Create a new data packet object. 
            if input_value == HDR_1W:                     # Check if FIFO warning was given.
                data_packet.FIFO_warning = 1              # Set the FIFO warning to the object.
            data_packet.header = input_value              # Give the binary header to the new object.
            data_packet.systemBC = BCcounter              # Give the system BC counter to the object. Tells the time of arrival of the packet.
            if dataformat_register.TT == 2:               # If Time Tag format is set to 2 we only get BC. So we change the state straight to BC.
                datapacket_status = "BC"
            else:
                datapacket_status = "EC"                  # If time tag format is 0 or 3 we get EC+BC. If 1 we get just EC. So we can got to EC and then over there decide if we need also BC.
            datapacket_byte_counter = 0                   # Set byte counter to zero. This is used to count the number of bytes to be read in different stages.


        if datapacket_status == "EC":                     # Enter the EC to collect the bytes for EC.
            if datapacket_byte_counter == 0:              # If the byte counter is 0. We are coming here the first time
                                                          # Check the size of the EC counter.
                if dataformat_register.ECb == 0 or dataformat_register.ECb ==3:
                    EC_size = 1
                if dataformat_register.ECb == 1:
                    EC_size = 2
                if dataformat_register.ECb == 2:
                    EC_size = 3
                data_packet.EC += input_value             # input value is added to the EC value. 
                datapacket_byte_counter += 1              # byte counter is incremented by one to count the amount of EC bytes.

            if datapacket_byte_counter >= EC_size:        # If byte counter is >= than size of EC we have all EC bytes and we can move to next state.
                datapacket_byte_counter = 0               # Set the byte counter to 0 for the next state.
                if dataformat_register.TT == 0 or dataformat_register.TT == 3: # If time tag format is 0 or 3 we have EC+BC. So we move to state BC to get also BC counter.
                    datapacket_status = "BC"
                elif header == 2:                         # If header was 2 there is no data after BC
                    datapacket_status = "IDLE"            # Stop data collection by setting status to IDLE.
                    datapacket_list.append(data_packet)   # Add the finished data packet to the data packet list.
                else:
                    datapacket_status = "DATA"            # Else we only have EC so we can move to collect the data.
            else:                                         # Here the EC data is collected.
                data_packet.EC += input_value             # Input value is added to the EC value. 
                datapacket_byte_counter += 1              # Byte counter is incremented by one to count the amount of EC bytes.
            

        if datapacket_status == "BC":                     # Enter the BC to collect the bytes for BC.
            if datapacket_byte_counter == 0:              # If the byte counter is 0. We are coming here the first time.
                                                          # Check the size of the BC counter.
                if dataformat_register.BCb == 0:
                    BC_size = 2
                if dataformat_register.BCb == 1:
                    BC_size = 3
                data_packet.BC.extend(input_value)        # input value is added to the BC value. 
                datapacket_byte_counter += 1              # byte counter is incremented by one to count the amount of EC bytes

            if datapacket_byte_counter >= BC_size:        # If byte counter is >= than size of BC we have all BC bytes and we can move to next state.
                if header == 2:                           # If header was 2 there is no data after BC
                    datapacket_status = "IDLE"            # Stop data collection by setting status to IDLE.
                    datapacket_list.append(data_packet)   # Add the finished data packet to the data packet list.
                else:
                    datapacket_byte_counter = 0           # Set the byte counter to 0 for the next state.
                    datapacket_status = "DATA"            # Set state to DATA 
            else:                                         # Here the BC data is collected.
                data_packet.BC.extend(input_value)        # Input value is added to the EC value.               
                datapacket_byte_counter += 1              # Byte counter is incremented by one to count the amount of BC bytes.



        if datapacket_status == "DATA" and dataformat_register.DT == 1:                   # Enter the DATA state to collect the bytes for DATA.
            if datapacket_byte_counter == 0:              # If the byte counter is 0. We are coming here the first time.
                data_packet.partition_table += input_value
                if len(data_packet.partition_table) == 16:
                    data_size = sum(int(x) for x in data_packet.partition_table if x.isdigit())
                    if data_size > dataformat_register.PAR:
                        data_size = dataformat_register.PAR
                    if dataformat_register.P16 == 1:
                        datapacket_byte_counter = 0               # Set the byte counter to 0 for the next state.
                        datapacket_status = "CRC"                # Set state to IDLE.

                    pata_packet.partitions = data_size
                    datapacket_byte_counter += 1              # Byte counter is incremented by one to count the amount of data bytes.
            if datapacket_byte_counter > data_size:      # If byte counter is >= than data_size we have all data bytes and we can move to next state.
                datapacket_byte_counter = 0               # Set the byte counter to 0 for the next state.
                datapacket_status = "CRC"                # Set state to IDLE.
            else:
                data_packet.spzs_data += input_value           # Input value is added to the data.               
                datapacket_byte_counter += 1              # Byte counter is incremented by one to count the amount of data bytes. 






        if datapacket_status == "DATA" and dataformat_register.DT == 0:                   # Enter the DATA state to collect the bytes for DATA.
            if datapacket_byte_counter == 0:              # If the byte counter is 0. We are coming here the first time.
                data_size = 16                            # Set the data size to 16 bytes. 16*8 bits = 128 bits
                data_packet.data += input_value           # input value is added to the data. 
                datapacket_byte_counter += 1              # byte counter is incremented by one to count the amount of data bytes
            if datapacket_byte_counter >= data_size:      # If byte counter is >= than data_size we have all data bytes and we can move to next state.
                datapacket_byte_counter = 0               # Set the byte counter to 0 for the next state.
                datapacket_status = "CRC"                # Set state to IDLE.
            else:
                data_packet.data += input_value           # Input value is added to the data.               
                datapacket_byte_counter += 1              # Byte counter is incremented by one to count the amount of data bytes. 


        if datapacket_status == "CRC":                   # Enter the DATA state to collect the bytes for DATA.
            if datapacket_byte_counter == 0:              # If the byte counter is 0. We are coming here the first time.
                data_size = 2                            # Set the data size to 16 bytes. 16*8 bits = 128 bits
                data_packet.crc += input_value           # input value is added to the data. 
                datapacket_byte_counter += 1              # byte counter is incremented by one to count the amount of data bytes
            if datapacket_byte_counter >= data_size:      # If byte counter is >= than data_size we have all data bytes and we can move to next state.
                datapacket_byte_counter = 0               # Set the byte counter to 0 for the next state.
                datapacket_status = "IDLE"                # Set state to IDLE.
                datapacket.ready()
                datapacket_list.append(data_packet)       # Add the finished data packet to the data packet list.
            else:
                data_packet.crc += input_value           # Input value is added to the data.               
                datapacket_byte_counter += 1              # Byte counter is incremented by one to count the amount of data bytes. 





        # SLOW CONTROL


        if input_value == SC0:                            # See if the input line is SC0.
            SC_shift_register = SC_shift_register[1:]     # Remove the first item from the SC shit register.
            SC_shift_register.append([BCcounter,0])       # Add zero and the BCcounter value to the SC shift register
            if hdlc_flag_bit == 1:
                SC_bit_counter += 1

        if input_value == SC1:                            # See if the input line is SC1.
            SC_shift_register = SC_shift_register[1:]     # Remove the first item from the SC shit register.
            SC_shift_register.append([BCcounter,1])       # Add one and the BCcounter value to the SC shift register
            if hdlc_flag_bit == 1:
                SC_bit_counter += 1

        if [i[1] for i in SC_shift_register] == hdlc_flag: # Compare the first row of the shift register to see if it is HDLC flag.
            if hdlc_flag_bit == 0:                         # See if flag bit is set. Indicates that this is the beginning flag of the message
                hdlc_flag_bit = 1                          # Change the flag bit to 1 to indicate that HDLC-message has started.
                hdlc_start_BCd = SC_shift_register[0][0]   # Get the value of the BCcounter in the beginning of the flag byte, to store the beginning time of the hdlc message.
                hdlc_state = "ADDRESS"                     # The first HDLC field after the flag is the address field.
                SC_bit_counter = 0                         # Set the bit counter to zero. With this counter we count when we have a full byte of SC0's and SC1's.
            elif hdlc_flag_bit == 1:                       # See if the flag bit is set. This indicates that it is the end flag of the message.
                hdlc_flag_bit = 0                          # Set hdlc flag to zero to indicate that the hdlc-message has ended.
                received_crc = int(''.join(map(str, hdlc_data[-16:])),2) # Extract the CRC value from the received message. CRC is the last 16 bits of the data.

                hdlc_crc_calculation = []                  # Compile the received HDLC data into a list for CRC calculation.
                hdlc_crc_calculation.extend(hdlc_address)
                hdlc_crc_calculation.extend(hdlc_control)
                hdlc_crc_calculation.extend(hdlc_data[:-16]) # The CRC value from the data is excluded.

                calculated_crc = crc_remainder(hdlc_crc_calculation) # Calculate the CRC for the message.
                                                                                                                                                                          ####### Check if the CRC is correct.
                IPbus_transaction_list.append(IPbus_response(hdlc_start_BCd,hdlc_data)) # Create an IPbus_response object with the new data and add it to the transaction list.
                hdlc_state = "IDLE"                          # The HDLC message is complete. Change state to IDLE.

            SC_shift_register = [[0,0]]*8                    # Clear the shift register.

        if SC_bit_counter == 8 and hdlc_state == "ADDRESS":  # If the bit counter has counted to one byte and the state is address.
            hdlc_address = [i[1] for i in SC_shift_register] # Save the HDLC address to the variable.
            SC_bit_counter = 0                               # Set the bit counter to zero.
            hdlc_state = "CONTROL"                           # The next field in HDLC package after address is control.
        if SC_bit_counter == 8 and hdlc_state == "CONTROL":  # If the bit counter has counted to one byte and the state is control.
            hdlc_control = [i[1] for i in SC_shift_register] # Save the control field to the variable.
            SC_bit_counter = 0                               # Set the bit counter to zero.
            hdlc_state = "DATA"                              # The next field in HDLC package after control is data.         
        if SC_bit_counter == 8 and hdlc_state == "DATA":     # If the bit counter has counted to one byte and the state is control.
            hdlc_data.extend([i[1] for i in SC_shift_register]) # Save the data byte to the list.
            SC_bit_counter = 0                               # Set the bit counter to zero. Data acquisition ends when flag byte has been found in the flag-section.    






