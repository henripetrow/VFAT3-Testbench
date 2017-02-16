<<<<<<< HEAD
#!/usr/bin/python

import  os
from instruction_object import *

repeat_flag = 0
repeat_times = 1

transid = 3                                         ### Check that it is not too big.!!
BCcounter = 0

instruction_list = instruction_object()



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

                # Check the given parameters.
                try:
                    value = int(split_line[3])
                except ValueError:
                    print "-IGNORED: Invalid value: %s" % split_line[3]
                    continue

                reg = split_line[2]

                if repeat_flag == 1:
                    print "-Write to Slow Control. Register: %s, Increment: %s" % (split_line[2], split_line[3])
                    instruction_list.add("WRITE_REPEAT", BCd, reg, value)
                else:
                    print "-Write to Slow Control. Register: %s, Data: %s" % (split_line[2], split_line[3])
                    instruction_list.clear()
                    instruction_list.add("WRITE", BCd, reg, value)
                    values = instruction_list.write_to_file(BCcounter,transid)
                    BCcounter = values[0]
                    transid = values[1]
                    instruction_list.clear()


            # Read from slow Control.
            elif split_line[1] == "Read":
                print "-Read from Slow Control. Address: %s" % split_line[2]

                # Check the given parameters.
                try:
                    addr = int(split_line[2])
                except ValueError:
                    print "-IGNORED: Invalid value for Address: %s" % split_line[2]
                    continue

                # Add a new instruction and write if not in repeat -mode.
                if repeat_flag == 1:
                    instruction_list.add("READ", BCd, addr, 0)
                else:
                    instruction_list.clear()
                    instruction_list.add("READ", BCd, addr, 0)
                    values = instruction_list.write_to_file(BCcounter,transid)
                    BCcounter = values[0]
                    transid = values[1]
                    instruction_list.clear()


            # Send a single FCC command.
            elif split_line[1] == "Send":
                print "-Send a Fast Control Command: %s" % split_line[2]
                command = split_line[2]

                if repeat_flag == 1:
                    instruction_list.add("FCC", BCd, command, 0)
                else:
                    instruction_list.clear()
                    instruction_list.add("FCC", BCd, command, 0)
                    values = instruction_list.write_to_file(BCcounter,transid)
                    BCcounter = values[0]
                    transid = values[1]
                    instruction_list.clear()

            # Start a repeat loop.
            elif split_line[1] == "Repeat":
                print "Starting repeat"
                try:
                    repeat_times = int(split_line[2])
                except ValueError:
                    print "-IGNORED: Invalid value for repeat: %s" % split_line[2]
                    continue
                repeat_flag = 1


            # End a repeat loop.
            elif split_line[1] == "End_Repeat":
                repeat_flag = 0
                for i in xrange(repeat_times):
                    values = instruction_list.write_to_file(BCcounter,transid)
                    BCcounter = values[0]
                    transid = values[1]
                instruction_list.clear()
                repeat_times = 0
                print "Ending repeat"

         
            # Send repatedly a FCC with a fixed interval
            elif split_line[1] == "Send_Repeat":

                command = split_line[2]

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

                print "-Send a Fast Control Command. Command: %s, Repeat: %s, Interval: %s" % (command,repeat,interval)

                if repeat_flag == 1:
                    instruction_list.add("FCC", BCd, command, 0)
                    for i in xrange(repeat-1):
			instruction_list.add("FCC", interval, command, 0)
                else:
                    instruction_list.clear()
                    instruction_list.add("FCC", BCd, command, 0)
                    for i in xrange(repeat-1):
			instruction_list.add("FCC", interval, command, 0)
                    values = instruction_list.write_to_file(BCcounter,transid)
                    BCcounter = values[0]
                    transid = values[1]
                    instruction_list.clear()




            else:
                print "-Line ignored: %s" % line


# Generation of the statistics.

num_lines = sum(1 for line in open('./data/FPGA_instruction_list.dat'))
b = os.path.getsize("./data/FPGA_instruction_list.dat")
size = b/1000
print "---------------------------------"
print "Generated file:"
print "Number of lines: %d" % num_lines
size = (num_lines*16)/1000
print "Size of the file: %d kb." % size

BC_counter = 0

with open('./data/FPGA_instruction_list.dat', 'r') as f:
    for line in f:
            line = line.rstrip('\n')
            split_line = line.split()
            BCd = int(split_line[0])
            BC_counter = BC_counter + BCd

time_ns = BC_counter*25
# print time_ns
time_us = time_ns/1000.0
# print time_us
time_ms = time_us/1000.0

print "Required time: %d BC, %f ms" % (BC_counter, time_ms)
print "---------------------------------"
print BCcounter

=======
#!/usr/bin/python

import  os
from instruction_object import *

repeat_flag = 0
repeat_times = 1


BCcounter = 0

instruction_list = instruction_object()



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

                # Check the given parameters.
                try:
                    value = int(split_line[3])
                except ValueError:
                    print "-IGNORED: Invalid value: %s" % split_line[3]
                    continue

                reg = split_line[2]

                if repeat_flag == 1:
                    print "-Write to Slow Control. Register: %s, Increment: %s" % (split_line[2], split_line[3])
                    instruction_list.add("WRITE_REPEAT", BCd, reg, value)
                else:
                    print "-Write to Slow Control. Register: %s, Data: %s" % (split_line[2], split_line[3])
                    instruction_list.clear()
                    instruction_list.add("WRITE", BCd, reg, value)
                    BCcounter = instruction_list.write_to_file(BCcounter)
                    instruction_list.clear()


            # Read from slow Control.
            elif split_line[1] == "Read":
                print "-Read from Slow Control. Address: %s" % split_line[2]

                # Check the given parameters.
                try:
                    addr = int(split_line[2])
                except ValueError:
                    print "-IGNORED: Invalid value for Address: %s" % split_line[2]
                    continue

                # Add a new instruction and write if not in repeat -mode.
                if repeat_flag == 1:
                    instruction_list.add("READ", BCd, addr, 0)
                else:
                    instruction_list.clear()
                    instruction_list.add("READ", BCd, addr, 0)
                    BCcounter = instruction_list.write_to_file(BCcounter)
                    instruction_list.clear()


            # Send a single FCC command.
            elif split_line[1] == "Send":
                print "-Send a Fast Control Command: %s" % split_line[2]
                command = split_line[2]

                if repeat_flag == 1:
                    instruction_list.add("FCC", BCd, command, 0)
                else:
                    instruction_list.clear()
                    instruction_list.add("FCC", BCd, command, 0)
                    BCcounter = instruction_list.write_to_file(BCcounter)
                    instruction_list.clear()

            # Start a repeat loop.
            elif split_line[1] == "Repeat":
                print "Starting repeat"
                try:
                    repeat_times = int(split_line[2])
                except ValueError:
                    print "-IGNORED: Invalid value for repeat: %s" % split_line[2]
                    continue
                repeat_flag = 1


            # End a repeat loop.
            elif split_line[1] == "End_Repeat":
                repeat_flag = 0
                for i in xrange(repeat_times):
                    BCcounter = instruction_list.write_to_file(BCcounter)
                instruction_list.clear()
                repeat_times = 0
                print "Ending repeat"

         
            # Send repatedly a FCC with a fixed interval
            elif split_line[1] == "Send_Repeat":

                command = split_line[2]

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

                print "-Send a Fast Control Command. Command: %s, Repeat: %s, Interval: %s" % (command,repeat,interval)

                if repeat_flag == 1:
                    instruction_list.add("FCC", BCd, command, 0)
                    for i in xrange(repeat-1):
			instruction_list.add("FCC", interval, command, 0)
                else:
                    instruction_list.clear()
                    instruction_list.add("FCC", BCd, command, 0)
                    for i in xrange(repeat-1):
			instruction_list.add("FCC", interval, command, 0)
                    BCcounter = instruction_list.write_to_file(BCcounter)
                    instruction_list.clear()




            else:
                print "-Line ignored: %s" % line


# Generation of the statistics.

num_lines = sum(1 for line in open('./data/FPGA_instruction_list.dat'))
b = os.path.getsize("./data/FPGA_instruction_list.dat")
size = b/1000
print "---------------------------------"
print "Generated file:"
print "Number of lines: %d" % num_lines
size = (num_lines*16)/1000
print "Size of the file: %d kb." % size

BC_counter = 0

with open('./data/FPGA_instruction_list.dat', 'r') as f:
    for line in f:
            line = line.rstrip('\n')
            split_line = line.split()
            BCd = int(split_line[0])
            BC_counter = BC_counter + BCd

time_ns = BC_counter*25
# print time_ns
time_us = time_ns/1000.0
# print time_us
time_ms = time_us/1000.0

print "Required time: %d BC, %f ms" % (BC_counter, time_ms)
print "---------------------------------"
print BCcounter

>>>>>>> 85a685027fd756c5ee9a98d099b377513beace32
