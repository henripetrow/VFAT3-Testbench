from VFAT3_registers import *
from SC_encode import *






class instruction_object:
    def __init__(self):
        self.instruction_list = []
        self.humanreadable = 0
        open("./data/FPGA_instruction_list.dat", 'w').close()
        open("./data/datapacket_register_changes.dat", "w").close()

    def add(self, command_type, BCd, command_addr_register, increment):
        new_instruction = [command_type, BCd, command_addr_register, increment]
        self.instruction_list.append(new_instruction)

    def clear(self):
        self.instruction_list = []

    def write(self, data): 
        with open("./data/FPGA_instruction_list.dat", "a") as myfile:
            myfile.write("%s" % data)



    def write_to_file(self, BCcounter):
        for line in self.instruction_list:
            command_type = line[0]
            BCd = line[1]


            if command_type == "FCC":
                command = line[2]
                if self.humanreadable == 0:
                    command = FCC_LUT[command] # Add error checks.
                    BCvalue = dec_to_bin_with_stuffing(BCd,14)
                    BCvalue = ''.join(str(e) for e in BCvalue)
                    self.write("%s%s\n" % (BCvalue, command))
                else:
                    BCvalue = BCd
                    self.write("%s %s\n" % (BCvalue, command))
                BCcounter = BCcounter + BCd

            if command_type == "READ":
                data = 0
                addr = line[2]

                ipbus = IPbus14_package(addr,data,1,0,0)
                paketti = HDLC_package(ipbus)
                crc = crc_remainder(paketti)
                paketti.append(crc)
                paketti = binary_to_sc(paketti)
                BCcounter = BCcounter + BCd

                if self.humanreadable == 1:
                    BCvalue = BCd
                    self.write("%s %s\n" % (BCvalue,paketti[0])) # To get the right starting BCd
                else:
                    BCvalue = dec_to_bin_with_stuffing(BCd,14)
                    BCvalue = ''.join(str(e) for e in BCvalue)
                    self.write("%s%s\n" % (BCvalue,FCC_LUT[paketti[0]])) # To get the right starting BCd

                for x in range(1,len(paketti)):     
                    if self.humanreadable == 1:
                        self.write("1 %s\n" % paketti[x])    # Rest instructions will be written with increment 1
                    else:
                        self.write("00000000000001%s\n" % FCC_LUT[paketti[x]])    # Rest instructions will be written with increment 1
                    BCcounter = BCcounter + 1


            if command_type == "WRITE" or command_type == "WRITE_REPEAT":

                reg = line[2]

                try:
                    key = LUT[reg]
                except ValueError: #Muuta
                    print "-IGNORED: Invalid value for Register: %s" % reg
                    continue

                addr = key[0]
                variable = key[1]


                current_value = register[addr].reg_array[variable][0]
                size = register[addr].reg_array[variable][1]

                if command_type == "WRITE_REPEAT":
                    increment = line[3]
                    new_value = current_value + increment

                if command_type == "WRITE":
                    new_value = line[3]

                if new_value < 0 or new_value > 2**(size)-1:
                    print "-IGNORED: Value out of the range of the register: %d" % new_value
                    continue
                if new_value == current_value:
                    print "-IGNORED: New value: %d is the same as the current value: %d" % (new_value,current_value)
                    continue

                register[addr].reg_array[variable][0] = new_value
                
                data = []
                for x in register[addr].reg_array:
                   data.extend(dec_to_bin_with_stuffing(x[0], x[1]))

                ipbus = IPbus14_package(addr,data,1,1,0)
                paketti = HDLC_package(ipbus)

 

                paketti = binary_to_sc(paketti)
                BCcounter = BCcounter + BCd

                if self.humanreadable == 1:
                    BCvalue = BCd
                    self.write("%s %s\n" % (BCvalue,paketti[0])) # To get the right starting BCd
                else:
                    BCvalue = dec_to_bin_with_stuffing(BCd,14)
                    BCvalue = ''.join(str(e) for e in BCvalue)
                    self.write("%s%s\n" % (BCvalue,FCC_LUT[paketti[0]])) # To get the right starting BCd


                if addr == 130:
                    with open("data/datapacket_register_changes.dat", "a") as myfile:
                         myfile.write("%s %s" % (BCcounter,data))

                for x in range(1,len(paketti)):
                    if self.humanreadable == 1:
                        self.write("1 %s\n" % paketti[x])    # Rest instructions will be written with increment 1
                    else:
                        self.write("00000000000001%s\n" % FCC_LUT[paketti[x]])    # Rest instructions will be written with increment 1
                    BCcounter = BCcounter + 1
        return BCcounter








