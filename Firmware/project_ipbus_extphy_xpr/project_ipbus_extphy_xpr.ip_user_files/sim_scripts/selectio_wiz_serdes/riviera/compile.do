vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/work

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap work riviera/work

vlog -work xil_defaultlib  -sv2k12 \
"D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work work  -v2k5 \
"../../../../project_ipbus_extphy_xpr.srcs/sources_1/ip/selectio_wiz_serdes/selectio_wiz_serdes_selectio_wiz.v" \
"../../../../project_ipbus_extphy_xpr.srcs/sources_1/ip/selectio_wiz_serdes/selectio_wiz_serdes.v" \

vlog -work work "glbl.v"

