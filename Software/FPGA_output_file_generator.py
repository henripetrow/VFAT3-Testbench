from SC_encode import *

# Generation of a test file
addr = 12
data = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
open("./data/FPGA_output_list.dat", 'w').close()
ipbus = IPbus14_package(addr,data,1,1,0)
paketti = HDLC_package(ipbus)
output_pack = []

for x in paketti:
    if x == 0:
        output_pack.append(1)
        output_pack.append(0)
        output_pack.append(0)
        output_pack.append(1)
        output_pack.append(0)
        output_pack.append(1)
        output_pack.append(1)
        output_pack.append(0)

    if x == 1:
        output_pack.append(1)
        output_pack.append(0)
        output_pack.append(0)
        output_pack.append(1)
        output_pack.append(1)
        output_pack.append(0)
        output_pack.append(0)
        output_pack.append(1)

with open("FPGA_output_list.txt", "a") as myfile:
    for x in range(0,len(output_pack)):     
        myfile.write("1 %s\n" % output_pack[x])

