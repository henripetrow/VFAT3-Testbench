// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.3.1 (win64) Build 1034051 Fri Oct  3 17:14:12 MDT 2014
// Date        : Fri Mar 11 14:57:16 2016
// Host        : DAQ-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               c:/VivadoProject/kc705_ipbus/kc705_ipbus.srcs/sources_1/ip/gig_eth_pcs_pma_basex_v15_1/gig_eth_pcs_pma_basex_v15_1_stub.v
// Design      : gig_eth_pcs_pma_basex_v15_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "gig_ethernet_pcs_pma_v14_3,Vivado 2014.3.1" *)
module gig_eth_pcs_pma_basex_v15_1(gtrefclk, txp, txn, rxp, rxn, resetdone, cplllock, txoutclk, rxoutclk, userclk, userclk2, rxuserclk, rxuserclk2, pma_reset, mmcm_locked, independent_clock_bufg, gmii_txd, gmii_tx_en, gmii_tx_er, gmii_rxd, gmii_rx_dv, gmii_rx_er, gmii_isolate, configuration_vector, status_vector, reset, signal_detect, gt0_qplloutclk_in, gt0_qplloutrefclk_in)
/* synthesis syn_black_box black_box_pad_pin="gtrefclk,txp,txn,rxp,rxn,resetdone,cplllock,txoutclk,rxoutclk,userclk,userclk2,rxuserclk,rxuserclk2,pma_reset,mmcm_locked,independent_clock_bufg,gmii_txd[7:0],gmii_tx_en,gmii_tx_er,gmii_rxd[7:0],gmii_rx_dv,gmii_rx_er,gmii_isolate,configuration_vector[4:0],status_vector[15:0],reset,signal_detect,gt0_qplloutclk_in,gt0_qplloutrefclk_in" */;
  input gtrefclk;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output cplllock;
  output txoutclk;
  output rxoutclk;
  input userclk;
  input userclk2;
  input rxuserclk;
  input rxuserclk2;
  input pma_reset;
  input mmcm_locked;
  input independent_clock_bufg;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
endmodule
