#!/bin/sh

# Clean up the results directory
rm -rf results
mkdir results

#Synthesize the VHDL Wrapper Files
echo 'Synthesizing VHDL example design with XST';
xst -ifn xst.scr
cp tri_mode_eth_mac_v5_5_example_design.ngc ./results/

# Copy the EDIF's generated by Coregen
echo 'Copying files from the netlist directory to the results directory'
cp ../../tri_mode_eth_mac_v5_5.ngc results/

#  Copy the constraints files generated by Coregen
echo 'Copying files from constraints directory to results directory'
cp ../example_design/tri_mode_eth_mac_v5_5_example_design.ucf results/

cd results

echo 'Running ngdbuild'
ngdbuild tri_mode_eth_mac_v5_5_example_design

echo 'Running map'
map -ol high -timing -detail tri_mode_eth_mac_v5_5_example_design -o mapped.ncd

echo 'Running par'
par -ol high -w mapped.ncd routed.ncd mapped.pcf

echo 'Running trce'
trce -u -e 10 routed -o routed mapped.pcf

echo 'Running design through bitgen'
bitgen -g UnconstrainedPins:Allow -w routed routed mapped.pcf

echo 'Running netgen to create gate level VHDL model'
netgen -ofmt vhdl -pcf mapped.pcf -sim -dir . -tm tri_mode_eth_mac_v5_5_example_design -w routed.ncd routed.vhd
