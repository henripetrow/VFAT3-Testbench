############################################
# Created by Henri Petrow 2017
# Lappeenranta University of Technology
###########################################

import serial
import sys, os
sys.path.append(os.path.dirname(os.path.abspath(__file__)) + "/python_scripts_thomas/kernel")
from ipbus import *

from test_system_functions import *
from output_decoder import *
import time

class FW_interface:

    def __init__(self, mode):
        self.simulation_mode = mode
        if self.simulation_mode == 0: #Normal mode
            print "Entering normal mode"
            #using pychips
            self.glib = GLIB()
        if self.simulation_mode == 1: #Simulation mode
            with open("./data/FPGA_statusfile.dat", "w") as myfile:
                print "Entering Simulation mode."
                myfile.write("0")
        if self.simulation_mode == 2: #Aamir mode
            print "Entering Aamir mode."
            self.ser = serial.Serial('/dev/tty.usbserial', 9600, timeout=0.5)


    def write_control(self,input_value):
        print "Writing control register: %d" % input_value
        #using pychips
        self.glib.set("control_register",input_value)

    def read_control(self): 
        print "Reading control register."
        #using pychips
        value = self.glib.get("control_register")
        print value
        return value

    def write_fifo(self):
        with open("./data/FPGA_instruction_list.dat", 'r') as f:
            for line in f:
                line = line.rstrip('\n')
                data_line = line + "0000000000000000"
                #using pychips
                self.glib.set("test_fifo",int(data_line,2))
                print "Writing command to fifo:"
                print data_line
                print int(data_line,2)
                data_line = ""

    def read_fifo(self):
        open("./data/FPGA_output.dat", 'w').close()
        while (False):
            line = self.glib.get("test_fifo")
            line = dec_to_bin_with_stuffing(line, 32)
            if line == 0:
                break
            else:
                with open("./data/FPGA_output.dat", "a") as myfile:
                    myfile.write("%s" % line)

    def launch(self,register):
        timeout = 0
        ########### NORMAL MODE ##########
        if self.simulation_mode == 0:
            self.write_fifo()
            self.write_control(1)
            counter = 0
            while True:
                counter += 1
                status = self.read_control()
                if counter == 20:
                    print "Timeout, no response from the firmware."
                    timeout = 1
                    break
                if status == 3:
                    break
                time.sleep(1)
            self.read_fifo()

        ############# SIMULATION MODE ##########
        if self.simulation_mode == 1:
            with open("./data/FPGA_statusfile.dat", "w") as myfile:
                myfile.write("1")
            counter = 0
            while(True):
                counter += 1
                if counter == 20:
                    print "Timeout, no response from the firmware."
                    timeout = 1
                    break
                with open('./data/FPGA_statusfile.dat', 'r') as f:
                    first_line = f.readline()
                    first_line.strip()
                    first_line = int(first_line)
                time.sleep(1)
                print "Waiting. Control register value: %s" % first_line
                if first_line == 3:
                    with open("./data/FPGA_statusfile.dat", "w") as myfile:
                        myfile.write("0")
                    break



        ############### Aamir mode #####################333
        if self.simulation_mode == 2:
            self.ser.write('\xca')
            print '\xca'
            with open("./data/FPGA_instruction_list.dat", 'r') as f0:
                for i, l in enumerate(f):
                    pass
            f0.close()
            size = i + 1
            print hex(size)
            self.ser.write(hex(size))
            with open("./data/FPGA_instruction_list.dat", 'r') as f:
                for line in f:
                        line = line.rstrip('\n')
                        data_line = line[-4:]
                        if data_line == '1000':
                            print '\x96'
                            self.ser.write('\x96')
                        if data_line == '1001':
                            self.ser.write('\x99')
                            print '\x99'
                        print data_line
                        timeout = 1



        if not timeout:
            output_data = decode_output_data('./data/FPGA_output_list.dat',register)
            open("./data/FPGA_output_list.dat", 'w').close()
        else:
            output_data = ['Error','Timeout, no response from the firmware.']
        return output_data


            
