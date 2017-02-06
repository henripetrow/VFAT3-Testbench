

SC0 = "SC0"
SC1 = "SC1"

def binary_to_sc(package):
    package = [SC1 if x==1 else x for x in package]
    package = [SC0 if x==0 else x for x in package]
    return package

def dec_to_bin_with_stuffing(inn, size):
    out = [int(x) for x in bin(inn)[2:]]
    for x in range(len(out), size):
        out.insert(0,0)
    return out

def HDLC_package(ipbus_package):
    hdlc_pack = []
    flag = [0,1,1,1,1,1,1,0]
    address = [0,0,0,0,0,0,0,0]
    control = [0,0,0,0,0,0,1,1]
    hdlc_pack.extend(flag)
    hdlc_pack.extend(address)
    hdlc_pack.extend(control)
    hdlc_pack.extend(ipbus_package)
    crc = crc_remainder(hdlc_pack[8:])
    crc_bin = bin(crc)
    crc_bin = crc_bin[2:]
    crc_len = len(crc_bin)
    crc_bin = (16-crc_len)*'0' + crc_bin
    crc_bin = list(crc_bin)
    crc_bin = [int(i) for i in crc_bin]
    hdlc_pack.extend(crc_bin)
    hdlc_pack.extend(flag)
    return hdlc_pack

def IPbus14_package(addr,data,wrds,typ,trans_ID):
    ipbus_pack = []
    
    # Protocol Version. 0x2
    protocol_version = [0,0,1,0]
    
    # Info code 0xe
    info_code = [1,1,1,1]
    
    # Number of words. 12 bits.
    words = dec_to_bin_with_stuffing(wrds, 12)

    # Transaction_ID. 8 bits.
    transaction_ID = dec_to_bin_with_stuffing(trans_ID, 8)

    ipbus_pack.extend(protocol_version)
    ipbus_pack.extend(words)
    ipbus_pack.extend(transaction_ID)

    # Address. 32 bits.
    address = dec_to_bin_with_stuffing(addr, 32)

    # Data. 32 bits.
    # data = dec_to_bin_with_stuffing(data, 32)
   
    if typ == 0: # Read
        type_ID = [0,0,0,0]
        ipbus_pack.extend(type_ID)
        ipbus_pack.extend(info_code)
        ipbus_pack.extend(address)

    if typ == 1: # Write
        type_ID = [0,0,0,1]
        ipbus_pack.extend(type_ID)
        ipbus_pack.extend(info_code)
        ipbus_pack.extend(address)
        ipbus_pack.extend(data)
        
    if typ == 2: # Non-incrementing Read
        type_ID = [0,0,1,0]
        ipbus_pack.extend(type_ID)
        ipbus_pack.extend(info_code)
        ipbus_pack.extend(address)
        
    if typ == 3: # Non-incrementing Write 
        type_ID = [0,0,1,1]
    if typ == 4: # Read-Modify-Write bits
        type_ID = [0,1,0,0]
    if typ == 5: # Read-Modify-Write sum
        type_ID = [0,1,0,1]
        
    return ipbus_pack

def crc_remainder(input_package):
    polynomial_bitstring = 4129
    crc = 65535
    input_package = ''.join(str(e) for e in input_package)
    input_package_len = len(input_package)/8
    for j in range(0,input_package_len):
        input_bitstring = input_package[(j*8):((j+1)*8)]
        for i in range(7,-1,-1):

            crc_bin = bin(crc)
            crc_bin = crc_bin[2:]
            crc_len = len(crc_bin)
            crc_bin = (16-crc_len)*'0' + crc_bin

            if int(input_bitstring[i],2)^int(crc_bin[-1],2) == 1:
                crc_bin = crc_bin[1:]+'0'
                crc = int(crc_bin,2)
                crc =crc^polynomial_bitstring
            else:
                crc_bin = crc_bin[1:]+'0'
                crc = int(crc_bin,2)
    return crc


#ipbus = IPbus14_package(8,0,1,0,0)
#print(ipbus)
#paketti = HDLC_package(ipbus)
#print(paketti)
#for x in range(0,len(paketti)):
#    print(paketti[x])
