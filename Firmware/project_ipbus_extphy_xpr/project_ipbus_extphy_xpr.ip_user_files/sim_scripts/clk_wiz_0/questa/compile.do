vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/work

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap work msim/work

vlog -work xil_defaultlib -64 -sv "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work work -64 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../project_ipbus_extphy_xpr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
"../../../../project_ipbus_extphy_xpr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.v" \

vlog -work work "glbl.v"

