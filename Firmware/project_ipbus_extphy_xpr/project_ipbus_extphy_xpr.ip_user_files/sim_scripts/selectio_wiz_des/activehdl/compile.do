vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/work

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap work activehdl/work

vlog -work xil_defaultlib  -sv2k12 \
"D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work work  -v2k5 \
"../../../../project_ipbus_extphy_xpr.srcs/sources_1/ip/selectio_wiz_des/selectio_wiz_des_selectio_wiz.v" \
"../../../../project_ipbus_extphy_xpr.srcs/sources_1/ip/selectio_wiz_des/selectio_wiz_des.v" \

vlog -work work "glbl.v"
