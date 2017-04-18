vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/work

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap work msim/work

vlog -work xil_defaultlib -64 -sv \
"D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work work -64 \
"../../../../project_ipbus_extphy_xpr.srcs/sources_1/ip/selectio_wiz_serdes/selectio_wiz_serdes_selectio_wiz.v" \
"../../../../project_ipbus_extphy_xpr.srcs/sources_1/ip/selectio_wiz_serdes/selectio_wiz_serdes.v" \

vlog -work work "glbl.v"
