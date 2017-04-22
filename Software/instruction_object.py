############################################
# Created by Henri Petrow 2017
# Lappeenranta University of Technology
###########################################

from SC_encode import *
from VFAT3_registers import *
from test_system_functions import *




class instruction_object:

    def __init__(self):
        self.BCcounter = 0
        self.instruction_list = []
        open("./data/FPGA_instruction_list.dat", 'w').close()
        open("./data/datapacket_register_changes.dat", "w").close()
        open("./data/sent_FCCs.dat", "w").close()
        open("./data/sent_SCs.dat", "w").close()
        open("./data/channel_states.dat", "w").close()

        self.SC_encoder = SC_encode()

        CalPulse_list = []
        FCC_list = []
        Register_change_list = []
        Register_read_list = []
        event_list = []

    def get_events(self):
        event_list = [CalPulse_list,FCC_list,Register_change_list,Register_read_list]
        return event_list

    def add(self, command_type, BCd, command_addr_register, increment):
        new_instruction = [command_type, BCd, command_addr_register, increment]
        self.instruction_list.append(new_instruction)

    def clear(self):
        self.instruction_list = []

    def write_register_defaults():
        write_register_default_values("SCAN")

    def write_to_file(self):
        for line in self.instruction_list:
            command_type = line[0]
            BCd = line[1]
              
            # FCC
            if command_type == "FCC":
                command = line[2]
                command_bin = FCC_LUT[command] # Add error checks.  # BCd comes reversed?
                write_instruction(BCd, command_bin, 0)
                self.BCcounter = self.BCcounter + BCd
                with open("./data/sent_FCCs.dat", "a") as myfile:
                    myfile.write("%d %s\n" % (self.BCcounter,command))

                ####### Information collection
                if command == "CalPulse":
                    channel_list = []
                    for i in range(0,129):
                        if not register[i].mask:             
                            if register[i].cal:
                                channel_list.append(i)
                    CalPulse_list.append([self.BCcounter,channel_list])
                else:
                    FCC_list.append([self.BCcounter,command])

            # READ
            elif command_type == "READ":
                data = 0
                addr = line[2]

                self.BCcounter = self.BCcounter + BCd
                paketti = self.SC_encoder.create_SC_packet(addr,data,"READ",self.BCcounter)

                write_instruction(BCd, command, 0)
                for x in range(1,len(paketti)):     
                    write_instruction(1, FCC_LUT[paketti[x]])
                    self.BCcounter = self.BCcounter + 1

                Register_read_list.append([self.BCcounter,addr])


            # WRITE
            elif command_type == "WRITE" or command_type == "WRITE_REPEAT":   			########## Need a read repeat.

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


                register[addr].reg_array[variable][0] = new_value
                
                data = []
                data_intermediate = []
                for x in register[addr].reg_array:
                   data_intermediate = dec_to_bin_with_stuffing(x[0], x[1])
                   data_intermediate.reverse()
                   data.extend(data_intermediate)

                data.reverse()

                self.BCcounter = self.BCcounter + BCd
                paketti = self.SC_encoder.create_SC_packet(addr,data,"WRITE",self.BCcounter)                


                # Snapshots of register changes for the decoding of the outputdata.
                Register_read_list.append([self.BCcounter,register])
 



                # Write instructions
                write_instruction(BCd, FCC_LUT[paketti[0]], 0)  # To get the right starting BCd
                for x in range(1,len(paketti)):
                    write_instruction(1, FCC_LUT[paketti[x]], 0)  # To get the right starting BCd
                    self.BCcounter = self.BCcounter + 1








