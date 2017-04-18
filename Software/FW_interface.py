############################################
# Created by Henri Petrow 2017
# Lappeenranta University of Technology
###########################################



#import uhal
from output_decoder import *
import time

class FW_interface:

    def __init__(self, mode):
        self.simulation_mode = mode
        if self.simulation_mode == 0: #Normal mode
            print "Entering normal mode"
#            self.manager = uhal.ConnectionManager("file:///home/a0312687/GettingStarted/Software/connection_file.xml")
#            self.hw = manager.getDevice("kintex7")
#            self.node = hw.getNode("vfat3")
        if self.simulation_mode == 1: #Simulation mode
            with open("./data/FPGA_statusfile.dat", "w") as myfile:
                print "Entering Simulation mode."
                myfile.write("0")
        if self.simulation_mode == 2: #Debugging mode
            with open("./data/FPGA_statusfile.dat", "w") as myfile:
                myfile.write("0")

    def write_control():
        print "Writing control register."

    def read_control():
        print "Reading control register."

    def write_fifo():
        with open("./data/FPGA_instruction_list.dat", 'r') as f:
            flag = 0
            data_line = ""
            for line in f:
                if flag == 0:
                    data_line = line
                    flag = 1
                if flag == 1:
                    data_line += line
#                    node.getNode("fifos").write(data_line)
#                    hw.dispatch()
                    flag = 0


    def read_fifo():
        open("./data/FPGA_output.dat", 'w').close()
        while (True):
#            line = TP.getNode("fifos").read()
#            hw.dispatch()

            if line == 0:
                break
            else:
                with open("./data/FPGA_output.dat", "a") as myfile:
                    myfile.write("%s" % line)

    def launch(self):
        timeout = 0
        if self.simulation_mode == 0:
            self.write_fifo()
            self.write_control(1)
            while True:
                status = read_control()
                if status == 3:
                    break
            self.read_fifo()
        if self.simulation_mode == 1:
            with open("./data/FPGA_statusfile.dat", "w") as myfile:
                myfile.write("1")
            counter = 0
            while(True):
                counter += 1
                if counter == 20:
                    print "Timeout, no response from the chip."
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

        if not timeout:
            output_data = decode_output_data('./data/FPGA_output_list.dat')
            open("./data/FPGA_output_list.dat", 'w').close()
        else:
            output_data = ['Error','Timeout']
        return output_data










            
