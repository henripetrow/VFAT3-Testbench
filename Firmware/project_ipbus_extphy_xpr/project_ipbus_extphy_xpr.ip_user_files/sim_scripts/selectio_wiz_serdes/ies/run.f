-makelib ies/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "D:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/work \
  "../../../../project_ipbus_extphy_xpr.srcs/sources_1/ip/selectio_wiz_serdes/selectio_wiz_serdes_selectio_wiz.v" \
  "../../../../project_ipbus_extphy_xpr.srcs/sources_1/ip/selectio_wiz_serdes/selectio_wiz_serdes.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib
