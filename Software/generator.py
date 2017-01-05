#!/usr/bin/python

from time import sleep

from SC_encode import *

def write(data):
    with open("FPGA_instruction_list.txt", "a") as myfile:
        myfile.write(data)



open("FPGA_instruction_list.txt", 'w').close()
with open('instruction_list.txt', 'r') as f:
    for line in f:
        if line[0] == "#":
            continue
        elif line == "\n":
            continue
        else:
            line = line.rstrip('\n')
            print "LINE: %s" % line
            split_line = line.split()
            try:
                BCd = int(split_line[0])
            except ValueError:
                print "-IGNORED: Invalid BCd value: %s" % split_line[0]
                continue

            # Write to Slow Control
            if split_line[1] == "Write":

                print "-Write to Slow Control. Address: %s, Data: %s" % (split_line[2], split_line[3])


                try:
                    addr = int(split_line[2])
                except ValueError:
                    print "-IGNORED: Invalid value for Address: %s" % split_line[3]
                    continue
                try:
                    data = int(split_line[3])
                except ValueError:
                    print "-IGNORED: Invalid value for Data: %s" % split_line[4]
                    continue


		ipbus = IPbus14_package(addr,data,1,1,0)
		paketti = HDLC_package(ipbus)
                paketti = binary_to_sc(paketti)
		for x in range(0,len(paketti)):
                    write("1 %s\n" % paketti[x])

            # Read from slow Control.
            elif split_line[1] == "Read":
                print "-Read from Slow Control. Address: %s" % split_line[2]


                try:
                    addr = int(split_line[2])
                except ValueError:
                    print "-IGNORED: Invalid value for Address: %s" % split_line[3]
                    continue

		ipbus = IPbus14_package(addr,data,1,0,0)
		paketti = HDLC_package(ipbus)
                paketti = binary_to_sc(paketti)
		for x in range(0,len(paketti)):
                    write("1 %s\n" % paketti[x])


            # Send a single FCC command.
            elif split_line[1] == "Send":
                print "-Send a Fast Control Command:Command: %s" % split_line[2]
                write("%d %s\n" % (BCd, split_line[2]))
         
            # Send repatedly a FCC with a fixed interval
            elif split_line[1] == "Send_Repeat":
                try:
                    repeat = int(split_line[3])
                except ValueError:
                    print "-IGNORED: Invalid value for repeat: %s" % split_line[3]
                    continue
                try:
                    interval = int(split_line[4])
                except ValueError:
                    print "-IGNORED: Invalid value for interval: %s" % split_line[4]
                    continue
                print "-Send a Fast Control Command. Command: %s, Repeat: %s, Interval: %s" % (split_line[2],repeat,interval)
                write("%d %s\n" % (BCd, split_line[2]))
                for i in xrange(repeat-1):
                    write("%d %s\n" % (interval, split_line[2]))





            else:
                print "-Line ignored: %s" % line














