project new demo_kc705_basex
project set family kintex7
project set device xc7k325t
project set package ffg900
project set speed -2

project set "Enable Multi-Threading" "2" -process "Map"
project set "Pack I/O Registers/Latches into IOBs" "For Inputs and Outputs" -process "Map"
project set "Enable Multi-Threading" "2" -process "Place & Route"
project set "Enable BitStream Compression" TRUE -process "Generate Programming File"

source ~/Dropbox/ULB/MA2/Memoire/Vivado/ipbus/ipbus/firmware/example_designs/scripts/addfiles.tcl

project close
