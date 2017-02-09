// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.3.1 (win64) Build 1034051 Fri Oct  3 17:14:12 MDT 2014
// Date        : Fri Mar 11 14:57:16 2016
// Host        : DAQ-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/VivadoProject/kc705_ipbus/kc705_ipbus.srcs/sources_1/ip/gig_eth_pcs_pma_basex_v15_1/gig_eth_pcs_pma_basex_v15_1_funcsim.v
// Design      : gig_eth_pcs_pma_basex_v15_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* core_generation_info = "gig_eth_pcs_pma_basex_v15_1,gig_ethernet_pcs_pma_v14_3,{x_ipProduct=Vivado 2014.3.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=gig_ethernet_pcs_pma,x_ipVersion=14.3,x_ipCoreRevision=0,x_ipLanguage=VHDL,c_elaboration_transient_dir=.,c_component_name=gig_eth_pcs_pma_basex_v15_1,c_family=kintex7,c_is_sgmii=false,c_use_transceiver=true,c_use_tbi=false,c_use_lvds=false,c_has_an=false,c_has_mdio=false,c_has_ext_mdio=false,c_sgmii_phy_mode=false,c_dynamic_switching=false,c_transceiver_mode=A,c_sgmii_fabric_buffer=true,c_1588=0,gt_rx_byte_width=1,C_EMAC_IF_TEMAC=true,C_PHYADDR=1,EXAMPLE_SIMULATION=0,c_support_level=false,c_sub_core_name=gig_eth_pcs_pma_basex_v15_1_gt,c_transceivercontrol=false,c_xdevicefamily=xc7k325t,c_gt_dmonitorout_width=8}" *) (* x_core_info = "gig_ethernet_pcs_pma_v14_3,Vivado 2014.3.1" *) 
(* NotValidForBitStream *)
module gig_eth_pcs_pma_basex_v15_1
   (gtrefclk,
    txp,
    txn,
    rxp,
    rxn,
    resetdone,
    cplllock,
    txoutclk,
    rxoutclk,
    userclk,
    userclk2,
    rxuserclk,
    rxuserclk2,
    pma_reset,
    mmcm_locked,
    independent_clock_bufg,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    status_vector,
    reset,
    signal_detect,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in);
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

  wire \<const0> ;
  wire [4:0]configuration_vector;
  wire cplllock;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gtrefclk;
  wire independent_clock_bufg;
  wire mmcm_locked;
  wire pma_reset;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire signal_detect;
  wire [6:0]\^status_vector ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire userclk2;

  assign status_vector[15] = \<const0> ;
  assign status_vector[14] = \<const0> ;
  assign status_vector[13] = \<const0> ;
  assign status_vector[12] = \<const0> ;
  assign status_vector[11] = \<const0> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9] = \<const0> ;
  assign status_vector[8] = \<const0> ;
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
GND GND
       (.G(\<const0> ));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_block U0
       (.O1(gmii_isolate),
        .configuration_vector(configuration_vector[3:1]),
        .cplllock(cplllock),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gtrefclk(gtrefclk),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .pma_reset(pma_reset),
        .reset(reset),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxoutclk(rxoutclk),
        .rxp(rxp),
        .signal_detect(signal_detect),
        .status_vector(\^status_vector ),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk),
        .userclk2(userclk2));
endmodule

(* ORIG_REF_NAME = "GPCS_PMA_GEN" *) 
module gig_eth_pcs_pma_basex_v15_1_GPCS_PMA_GEN
   (SS,
    SR,
    gmii_rx_er,
    status_vector,
    D,
    O1,
    encommaalign,
    gmii_rx_dv,
    O2,
    O3,
    O4,
    gmii_rxd,
    O5,
    userclk2,
    gmii_tx_er,
    gmii_tx_en,
    rxnotintable,
    rxbuferr,
    txbuferr,
    rxdisperr,
    gmii_txd,
    reset,
    mmcm_locked,
    signal_detect,
    configuration_vector,
    Q,
    rxcharisk,
    rxchariscomma,
    resetdone,
    I1);
  output [0:0]SS;
  output [0:0]SR;
  output gmii_rx_er;
  output [6:0]status_vector;
  output [0:0]D;
  output [0:0]O1;
  output encommaalign;
  output gmii_rx_dv;
  output [0:0]O2;
  output O3;
  output O4;
  output [7:0]gmii_rxd;
  output [7:0]O5;
  input userclk2;
  input gmii_tx_er;
  input gmii_tx_en;
  input rxnotintable;
  input rxbuferr;
  input txbuferr;
  input rxdisperr;
  input [7:0]gmii_txd;
  input reset;
  input mmcm_locked;
  input signal_detect;
  input [2:0]configuration_vector;
  input [1:0]Q;
  input rxcharisk;
  input rxchariscomma;
  input resetdone;
  input [7:0]I1;

  wire [0:0]D;
  wire D_1;
  wire [7:0]I1;
  wire LOOPBACK_INT;
  wire MGT_RX_RESET_INT;
  wire MGT_TX_RESET_INT;
  wire [0:0]O1;
  wire [0:0]O2;
  wire O3;
  wire O4;
  wire [7:0]O5;
  wire [1:0]Q;
  wire Q_0;
  wire RESET_INT;
  wire RESET_INT_PIPE;
  wire RXEVEN;
  wire RXNOTINTABLE_INT;
  wire RXNOTINTABLE_SRL;
  wire RXSYNC_STATUS;
(* RTL_KEEP = "yes" *)   wire [3:0]RX_RST_SM;
  wire SIGNAL_DETECT_MOD;
  wire [0:0]SR;
  wire SRESET;
  wire SRESET_PIPE;
  wire [0:0]SS;
  wire STATUS_VECTOR_0_PRE;
  wire STATUS_VECTOR_0_PRE0;
  wire SYNC_STATUS_REG;
  wire SYNC_STATUS_REG0;
  wire TXBUFERR_INT;
(* RTL_KEEP = "yes" *)   wire [3:0]TX_RST_SM;
  wire [2:0]configuration_vector;
  wire encommaalign;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire mmcm_locked;
  wire \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[0]_i_1 ;
  wire \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[1]_i_1 ;
  wire \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[2]_i_1 ;
  wire \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_2 ;
  wire \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[0]_i_1 ;
  wire \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[1]_i_1 ;
  wire \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[2]_i_1 ;
  wire \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_2 ;
  wire \n_0_MGT_RESET.RESET_INT_PIPE_i_1 ;
  wire \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1 ;
  wire \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1 ;
  wire \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1 ;
  wire n_0_TRANSMITTER;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 ;
  wire n_10_TRANSMITTER;
  wire n_11_TRANSMITTER;
  wire n_12_TRANSMITTER;
  wire n_13_TRANSMITTER;
  wire n_14_TRANSMITTER;
  wire n_15_TRANSMITTER;
  wire n_16_TRANSMITTER;
  wire n_17_TRANSMITTER;
  wire n_18_TRANSMITTER;
  wire n_19_TRANSMITTER;
  wire n_1_TRANSMITTER;
  wire n_20_TRANSMITTER;
  wire n_21_TRANSMITTER;
  wire n_2_TRANSMITTER;
  wire n_3_TRANSMITTER;
  wire n_4_TRANSMITTER;
  wire n_5_TRANSMITTER;
  wire n_6_TRANSMITTER;
  wire n_7_TRANSMITTER;
  wire n_8_TRANSMITTER;
  wire n_9_TRANSMITTER;
  wire p_0_in;
  wire p_0_out;
  wire p_1_out;
  wire reset;
  wire resetdone;
  wire rxbuferr;
  wire rxchariscomma;
  wire rxcharisk;
  wire rxdisperr;
  wire rxnotintable;
  wire signal_detect;
  wire [6:0]status_vector;
  wire txbuferr;
  wire userclk2;

(* XILINX_LEGACY_PRIM = "SRL16" *) 
   (* box_type = "PRIMITIVE" *) 
   (* srl_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/DELAY_RXDISPERR " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     DELAY_RXDISPERR
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(D_1),
        .Q(Q_0));
(* XILINX_LEGACY_PRIM = "SRL16" *) 
   (* box_type = "PRIMITIVE" *) 
   (* srl_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/DELAY_RXNOTINTABLE " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     DELAY_RXNOTINTABLE
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(RXNOTINTABLE_INT),
        .Q(RXNOTINTABLE_SRL));
LUT4 #(
    .INIT(16'h1554)) 
     \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[0]_i_1 
       (.I0(RX_RST_SM[0]),
        .I1(RX_RST_SM[2]),
        .I2(RX_RST_SM[3]),
        .I3(RX_RST_SM[1]),
        .O(\n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[0]_i_1 ));
LUT4 #(
    .INIT(16'h2666)) 
     \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[1]_i_1 
       (.I0(RX_RST_SM[0]),
        .I1(RX_RST_SM[1]),
        .I2(RX_RST_SM[3]),
        .I3(RX_RST_SM[2]),
        .O(\n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[1]_i_1 ));
LUT4 #(
    .INIT(16'h34CC)) 
     \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[2]_i_1 
       (.I0(RX_RST_SM[3]),
        .I1(RX_RST_SM[2]),
        .I2(RX_RST_SM[0]),
        .I3(RX_RST_SM[1]),
        .O(\n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[2]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_1 
       (.I0(RESET_INT),
        .I1(p_0_in),
        .O(p_0_out));
LUT4 #(
    .INIT(16'h3F80)) 
     \FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_2 
       (.I0(RX_RST_SM[0]),
        .I1(RX_RST_SM[1]),
        .I2(RX_RST_SM[2]),
        .I3(RX_RST_SM[3]),
        .O(\n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_2 ));
(* KEEP = "yes" *) 
   FDSE \FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[0]_i_1 ),
        .Q(RX_RST_SM[0]),
        .S(p_0_out));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[1]_i_1 ),
        .Q(RX_RST_SM[1]),
        .R(p_0_out));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[2]_i_1 ),
        .Q(RX_RST_SM[2]),
        .R(p_0_out));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_2 ),
        .Q(RX_RST_SM[3]),
        .R(p_0_out));
LUT4 #(
    .INIT(16'h1554)) 
     \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[0]_i_1 
       (.I0(TX_RST_SM[0]),
        .I1(TX_RST_SM[2]),
        .I2(TX_RST_SM[3]),
        .I3(TX_RST_SM[1]),
        .O(\n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[0]_i_1 ));
LUT4 #(
    .INIT(16'h2666)) 
     \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[1]_i_1 
       (.I0(TX_RST_SM[0]),
        .I1(TX_RST_SM[1]),
        .I2(TX_RST_SM[3]),
        .I3(TX_RST_SM[2]),
        .O(\n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[1]_i_1 ));
LUT4 #(
    .INIT(16'h34CC)) 
     \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[2]_i_1 
       (.I0(TX_RST_SM[3]),
        .I1(TX_RST_SM[2]),
        .I2(TX_RST_SM[0]),
        .I3(TX_RST_SM[1]),
        .O(\n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[2]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_1 
       (.I0(RESET_INT),
        .I1(TXBUFERR_INT),
        .O(p_1_out));
LUT4 #(
    .INIT(16'h3F80)) 
     \FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_2 
       (.I0(TX_RST_SM[0]),
        .I1(TX_RST_SM[1]),
        .I2(TX_RST_SM[2]),
        .I3(TX_RST_SM[3]),
        .O(\n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_2 ));
(* KEEP = "yes" *) 
   FDSE \FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[0]_i_1 ),
        .Q(TX_RST_SM[0]),
        .S(p_1_out));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[1]_i_1 ),
        .Q(TX_RST_SM[1]),
        .R(p_1_out));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[2]_i_1 ),
        .Q(TX_RST_SM[2]),
        .R(p_1_out));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_2 ),
        .Q(TX_RST_SM[3]),
        .R(p_1_out));
LUT2 #(
    .INIT(4'hB)) 
     \MGT_RESET.RESET_INT_PIPE_i_1 
       (.I0(reset),
        .I1(mmcm_locked),
        .O(\n_0_MGT_RESET.RESET_INT_PIPE_i_1 ));
(* ASYNC_REG *) 
   FDPE #(
    .INIT(1'b0)) 
     \MGT_RESET.RESET_INT_PIPE_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\n_0_MGT_RESET.RESET_INT_PIPE_i_1 ),
        .Q(RESET_INT_PIPE));
(* ASYNC_REG *) 
   FDPE #(
    .INIT(1'b0)) 
     \MGT_RESET.RESET_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(RESET_INT_PIPE),
        .PRE(\n_0_MGT_RESET.RESET_INT_PIPE_i_1 ),
        .Q(RESET_INT));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \MGT_RESET.SRESET_PIPE_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(RESET_INT),
        .Q(SRESET_PIPE),
        .R(1'b0));
(* ASYNC_REG *) 
   FDSE #(
    .INIT(1'b0)) 
     \MGT_RESET.SRESET_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(SRESET_PIPE),
        .Q(SRESET),
        .S(RESET_INT));
LUT2 #(
    .INIT(4'h2)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1 
       (.I0(configuration_vector[0]),
        .I1(SRESET),
        .O(\n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1 
       (.I0(configuration_vector[1]),
        .I1(SRESET),
        .O(\n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1 
       (.I0(configuration_vector[2]),
        .I1(SRESET),
        .O(\n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1 ),
        .Q(LOOPBACK_INT),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1 ),
        .Q(O4),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1 ),
        .Q(O3),
        .R(1'b0));
gig_eth_pcs_pma_basex_v15_1_RX__parameterized0 RECEIVER
       (.D_1(D_1),
        .I1(SR),
        .I2(\n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .I3(O4),
        .I4({\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1] ,\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0] }),
        .Q({\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0] }),
        .RXEVEN(RXEVEN),
        .RXNOTINTABLE_INT(RXNOTINTABLE_INT),
        .RXSYNC_STATUS(RXSYNC_STATUS),
        .SR(O3),
        .SYNC_STATUS_REG0(SYNC_STATUS_REG0),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .p_0_in(p_0_in),
        .status_vector(status_vector[4:2]),
        .userclk2(userclk2));
FDRE #(
    .INIT(1'b0)) 
     RXDISPERR_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(Q_0),
        .Q(status_vector[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     RXNOTINTABLE_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RXNOTINTABLE_SRL),
        .Q(status_vector[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     STATUS_VECTOR_0_PRE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(STATUS_VECTOR_0_PRE0),
        .Q(STATUS_VECTOR_0_PRE),
        .R(1'b0));
FDRE \STATUS_VECTOR_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(STATUS_VECTOR_0_PRE),
        .Q(status_vector[0]),
        .R(1'b0));
FDRE \STATUS_VECTOR_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(SYNC_STATUS_REG),
        .Q(status_vector[1]),
        .R(1'b0));
gig_eth_pcs_pma_basex_v15_1_SYNCHRONISE SYNCHRONISATION
       (.D_1(D_1),
        .I1(SR),
        .I2(\n_0_USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ),
        .I3(\n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .LOOPBACK_INT(LOOPBACK_INT),
        .RXEVEN(RXEVEN),
        .RXNOTINTABLE_INT(RXNOTINTABLE_INT),
        .RXSYNC_STATUS(RXSYNC_STATUS),
        .SIGNAL_DETECT_MOD(SIGNAL_DETECT_MOD),
        .STATUS_VECTOR_0_PRE0(STATUS_VECTOR_0_PRE0),
        .SYNC_STATUS_REG0(SYNC_STATUS_REG0),
        .encommaalign(encommaalign),
        .p_0_in(p_0_in),
        .resetdone(resetdone),
        .userclk2(userclk2));
gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0 SYNC_SIGNAL_DETECT
       (.O4(O4),
        .SIGNAL_DETECT_MOD(SIGNAL_DETECT_MOD),
        .signal_detect(signal_detect),
        .userclk2(userclk2));
FDRE #(
    .INIT(1'b0)) 
     SYNC_STATUS_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RXSYNC_STATUS),
        .Q(SYNC_STATUS_REG),
        .R(1'b0));
gig_eth_pcs_pma_basex_v15_1_TX__parameterized0 TRANSMITTER
       (.D({n_3_TRANSMITTER,n_4_TRANSMITTER,n_5_TRANSMITTER,n_6_TRANSMITTER}),
        .I1(SS),
        .I2(I1),
        .LOOPBACK_INT(LOOPBACK_INT),
        .O1(n_0_TRANSMITTER),
        .O10({n_13_TRANSMITTER,n_14_TRANSMITTER,n_15_TRANSMITTER,n_16_TRANSMITTER,n_17_TRANSMITTER,n_18_TRANSMITTER,n_19_TRANSMITTER,n_20_TRANSMITTER}),
        .O11(n_21_TRANSMITTER),
        .O2(n_1_TRANSMITTER),
        .O3(n_2_TRANSMITTER),
        .O4(n_7_TRANSMITTER),
        .O5(n_8_TRANSMITTER),
        .O6(n_9_TRANSMITTER),
        .O7(n_10_TRANSMITTER),
        .O8(n_11_TRANSMITTER),
        .O9(n_12_TRANSMITTER),
        .SR(O3),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .userclk2(userclk2));
LUT4 #(
    .INIT(16'h7FFE)) 
     \USE_ROCKET_IO.MGT_RX_RESET_INT_i_1 
       (.I0(RX_RST_SM[0]),
        .I1(RX_RST_SM[1]),
        .I2(RX_RST_SM[2]),
        .I3(RX_RST_SM[3]),
        .O(MGT_RX_RESET_INT));
FDSE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.MGT_RX_RESET_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(MGT_RX_RESET_INT),
        .Q(SR),
        .S(p_0_out));
LUT4 #(
    .INIT(16'h7FFE)) 
     \USE_ROCKET_IO.MGT_TX_RESET_INT_i_1 
       (.I0(TX_RST_SM[0]),
        .I1(TX_RST_SM[1]),
        .I2(TX_RST_SM[2]),
        .I3(TX_RST_SM[3]),
        .O(MGT_TX_RESET_INT));
FDSE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.MGT_TX_RESET_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(MGT_TX_RESET_INT),
        .Q(SS),
        .S(p_1_out));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxbuferr),
        .Q(p_0_in),
        .R(\n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_12_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_11_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0] ),
        .R(\n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1] ),
        .R(\n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_20_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_19_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_18_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_17_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_16_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_15_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_14_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_13_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDISPERR_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxdisperr),
        .Q(D_1),
        .R(\n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 
       (.I0(SR),
        .I1(LOOPBACK_INT),
        .O(\n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxnotintable),
        .Q(RXNOTINTABLE_INT),
        .R(\n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.TXBUFERR_INT_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(txbuferr),
        .Q(TXBUFERR_INT),
        .R(SS));
FDRE \USE_ROCKET_IO.TXCHARDISPMODE_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_1_TRANSMITTER),
        .Q(D),
        .R(SS));
FDRE \USE_ROCKET_IO.TXCHARDISPVAL_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_TRANSMITTER),
        .Q(O2),
        .R(1'b0));
FDRE \USE_ROCKET_IO.TXCHARISK_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_10_TRANSMITTER),
        .Q(O1),
        .R(SS));
FDRE \USE_ROCKET_IO.TXDATA_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_6_TRANSMITTER),
        .Q(O5[0]),
        .R(1'b0));
FDRE \USE_ROCKET_IO.TXDATA_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_5_TRANSMITTER),
        .Q(O5[1]),
        .R(1'b0));
FDSE \USE_ROCKET_IO.TXDATA_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_9_TRANSMITTER),
        .Q(O5[2]),
        .S(n_21_TRANSMITTER));
FDSE \USE_ROCKET_IO.TXDATA_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_8_TRANSMITTER),
        .Q(O5[3]),
        .S(n_21_TRANSMITTER));
FDRE \USE_ROCKET_IO.TXDATA_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_4_TRANSMITTER),
        .Q(O5[4]),
        .R(1'b0));
FDSE \USE_ROCKET_IO.TXDATA_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_7_TRANSMITTER),
        .Q(O5[5]),
        .S(n_21_TRANSMITTER));
FDRE \USE_ROCKET_IO.TXDATA_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_3_TRANSMITTER),
        .Q(O5[6]),
        .R(1'b0));
FDSE \USE_ROCKET_IO.TXDATA_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_2_TRANSMITTER),
        .Q(O5[7]),
        .S(n_21_TRANSMITTER));
endmodule

(* ORIG_REF_NAME = "RX" *) 
module gig_eth_pcs_pma_basex_v15_1_RX__parameterized0
   (gmii_rx_er,
    status_vector,
    gmii_rx_dv,
    gmii_rxd,
    Q,
    userclk2,
    I1,
    SYNC_STATUS_REG0,
    I2,
    RXNOTINTABLE_INT,
    RXEVEN,
    RXSYNC_STATUS,
    p_0_in,
    D_1,
    I3,
    SR,
    I4);
  output gmii_rx_er;
  output [2:0]status_vector;
  output gmii_rx_dv;
  output [7:0]gmii_rxd;
  input [7:0]Q;
  input userclk2;
  input I1;
  input SYNC_STATUS_REG0;
  input I2;
  input RXNOTINTABLE_INT;
  input RXEVEN;
  input RXSYNC_STATUS;
  input p_0_in;
  input D_1;
  input I3;
  input [0:0]SR;
  input [1:0]I4;

  wire C;
  wire C0;
  wire CGBAD;
  wire CGBAD_REG1;
  wire CGBAD_REG2;
  wire CGBAD_REG3;
  wire C_HDR_REMOVED;
  wire C_HDR_REMOVED_REG;
  wire C_REG1;
  wire C_REG2;
  wire C_REG3;
  wire D0p0;
  wire D0p0_REG;
  wire D_1;
  wire EOP;
  wire EOP0;
  wire EOP_REG1;
  wire EOP_REG10;
  wire EXTEND_ERR;
  wire EXTEND_ERR0;
  wire EXTEND_REG1;
  wire EXTEND_REG2;
  wire EXTEND_REG3;
  wire EXT_ILLEGAL_K;
  wire EXT_ILLEGAL_K0;
  wire EXT_ILLEGAL_K_REG1;
  wire EXT_ILLEGAL_K_REG2;
  wire FALSE_CARRIER;
  wire FALSE_CARRIER_REG1;
  wire FALSE_CARRIER_REG2;
  wire FALSE_CARRIER_REG3;
  wire FALSE_DATA;
  wire FALSE_DATA0;
  wire FALSE_K;
  wire FALSE_K0;
  wire FALSE_NIT;
  wire FALSE_NIT0;
  wire FROM_RX_CX;
  wire FROM_RX_CX0;
  wire I;
  wire I0;
  wire I1;
  wire I2;
  wire I3;
  wire I350_in;
  wire [1:0]I4;
  wire ILLEGAL_K;
  wire ILLEGAL_K0;
  wire ILLEGAL_K_REG1;
  wire ILLEGAL_K_REG2;
  wire K23p7;
  wire K28p5;
  wire K28p5_REG1;
  wire K29p7;
  wire [7:0]Q;
  wire R;
  wire RUDI_C0;
  wire RUDI_I0;
  wire RXCHARISK_REG1;
  wire [7:0]RXDATA_REG5;
  wire RXEVEN;
  wire RXNOTINTABLE_INT;
  wire RXSYNC_STATUS;
  wire RX_CONFIG_VALID_INT;
  wire RX_CONFIG_VALID_INT0;
  wire RX_DATA_ERROR;
  wire RX_DATA_ERROR0;
  wire RX_ER0;
  wire R_REG1;
  wire S;
  wire S0;
  wire S2;
  wire SOP;
  wire SOP0;
  wire SOP_REG1;
  wire SOP_REG2;
  wire SOP_REG3;
  wire [0:0]SR;
  wire SYNC_STATUS_REG;
  wire SYNC_STATUS_REG0;
  wire T;
  wire T_REG1;
  wire T_REG2;
  wire WAIT_FOR_K;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire n_0_D0p0_REG_i_2;
  wire n_0_EOP_i_2;
  wire n_0_EXTEND_i_1;
  wire n_0_EXTEND_i_2;
  wire n_0_EXTEND_reg;
  wire n_0_FALSE_CARRIER_i_1;
  wire n_0_FALSE_CARRIER_i_2;
  wire n_0_FALSE_CARRIER_i_3;
  wire n_0_FALSE_DATA_i_2;
  wire n_0_FALSE_DATA_i_3;
  wire n_0_FALSE_DATA_i_4;
  wire n_0_FALSE_K_i_2;
  wire n_0_FALSE_K_i_3;
  wire n_0_FALSE_NIT_i_2;
  wire n_0_FALSE_NIT_i_3;
  wire n_0_FALSE_NIT_i_4;
  wire n_0_FROM_RX_CX_i_2;
  wire \n_0_IDLE_REG_reg[0] ;
  wire \n_0_IDLE_REG_reg[2] ;
  wire n_0_I_REG_reg;
  wire n_0_I_i_2;
  wire n_0_I_i_4;
  wire n_0_RECEIVE_i_1;
  wire n_0_RECEIVE_reg;
  wire \n_0_RXDATA_REG4_reg[0]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[1]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[2]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[3]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[4]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[5]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[6]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[7]_srl4 ;
  wire \n_0_RXD[0]_i_1 ;
  wire \n_0_RXD[1]_i_1 ;
  wire \n_0_RXD[2]_i_1 ;
  wire \n_0_RXD[3]_i_1 ;
  wire \n_0_RXD[4]_i_1 ;
  wire \n_0_RXD[5]_i_1 ;
  wire \n_0_RXD[6]_i_1 ;
  wire \n_0_RXD[7]_i_1 ;
  wire n_0_RX_CONFIG_VALID_INT_i_2;
  wire \n_0_RX_CONFIG_VALID_REG_reg[0] ;
  wire \n_0_RX_CONFIG_VALID_REG_reg[3] ;
  wire n_0_RX_DATA_ERROR_i_2;
  wire n_0_RX_DATA_ERROR_i_3;
  wire n_0_RX_DV_i_1;
  wire n_0_RX_DV_i_2;
  wire n_0_RX_DV_i_3;
  wire n_0_RX_ER_i_2;
  wire n_0_RX_INVALID_i_1;
  wire n_0_R_i_2;
  wire n_0_S_i_2;
  wire n_0_WAIT_FOR_K_i_1;
  wire p_0_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_1_in;
  wire [2:0]status_vector;
  wire userclk2;

FDRE CGBAD_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CGBAD),
        .Q(CGBAD_REG1),
        .R(1'b0));
FDRE CGBAD_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CGBAD_REG1),
        .Q(CGBAD_REG2),
        .R(1'b0));
FDRE CGBAD_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(CGBAD_REG2),
        .Q(CGBAD_REG3),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     CGBAD_i_1
       (.I0(RXNOTINTABLE_INT),
        .I1(p_0_in),
        .I2(D_1),
        .O(S2));
FDRE CGBAD_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(S2),
        .Q(CGBAD),
        .R(I1));
LUT3 #(
    .INIT(8'h40)) 
     C_HDR_REMOVED_REG_i_1
       (.I0(I4[1]),
        .I1(C_REG2),
        .I2(I4[0]),
        .O(C_HDR_REMOVED));
FDRE C_HDR_REMOVED_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C_HDR_REMOVED),
        .Q(C_HDR_REMOVED_REG),
        .R(1'b0));
FDRE C_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C),
        .Q(C_REG1),
        .R(1'b0));
FDRE C_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C_REG1),
        .Q(C_REG2),
        .R(1'b0));
FDRE C_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C_REG2),
        .Q(C_REG3),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT2 #(
    .INIT(4'h8)) 
     C_i_1
       (.I0(I350_in),
        .I1(K28p5_REG1),
        .O(C0));
FDRE C_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(C0),
        .Q(C),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h00010000)) 
     D0p0_REG_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(n_0_D0p0_REG_i_2),
        .O(D0p0));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     D0p0_REG_i_2
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(I2),
        .O(n_0_D0p0_REG_i_2));
FDRE D0p0_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(D0p0),
        .Q(D0p0_REG),
        .R(1'b0));
LUT3 #(
    .INIT(8'hF8)) 
     EOP_REG1_i_1
       (.I0(n_0_EXTEND_reg),
        .I1(EXTEND_REG1),
        .I2(EOP),
        .O(EOP_REG10));
FDRE EOP_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EOP_REG10),
        .Q(EOP_REG1),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFFFFFFF8888888)) 
     EOP_i_1
       (.I0(n_0_I_REG_reg),
        .I1(K28p5_REG1),
        .I2(RXEVEN),
        .I3(C_REG1),
        .I4(D0p0_REG),
        .I5(n_0_EOP_i_2),
        .O(EOP0));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h88888000)) 
     EOP_i_2
       (.I0(T_REG2),
        .I1(R_REG1),
        .I2(K28p5_REG1),
        .I3(RXEVEN),
        .I4(R),
        .O(n_0_EOP_i_2));
FDRE EOP_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EOP0),
        .Q(EOP),
        .R(I1));
LUT3 #(
    .INIT(8'hF8)) 
     EXTEND_ERR_i_1
       (.I0(EXTEND_REG3),
        .I1(CGBAD_REG3),
        .I2(EXT_ILLEGAL_K_REG2),
        .O(EXTEND_ERR0));
FDRE EXTEND_ERR_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXTEND_ERR0),
        .Q(EXTEND_ERR),
        .R(SYNC_STATUS_REG0));
FDRE EXTEND_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_EXTEND_reg),
        .Q(EXTEND_REG1),
        .R(1'b0));
FDRE EXTEND_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXTEND_REG1),
        .Q(EXTEND_REG2),
        .R(1'b0));
FDRE EXTEND_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXTEND_REG2),
        .Q(EXTEND_REG3),
        .R(1'b0));
LUT6 #(
    .INIT(64'h3333011133330000)) 
     EXTEND_i_1
       (.I0(S),
        .I1(SYNC_STATUS_REG0),
        .I2(RXEVEN),
        .I3(K28p5_REG1),
        .I4(n_0_EXTEND_i_2),
        .I5(n_0_EXTEND_reg),
        .O(n_0_EXTEND_i_1));
LUT3 #(
    .INIT(8'h80)) 
     EXTEND_i_2
       (.I0(R_REG1),
        .I1(n_0_RECEIVE_reg),
        .I2(R),
        .O(n_0_EXTEND_i_2));
FDRE EXTEND_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_EXTEND_i_1),
        .Q(n_0_EXTEND_reg),
        .R(1'b0));
FDRE EXT_ILLEGAL_K_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXT_ILLEGAL_K),
        .Q(EXT_ILLEGAL_K_REG1),
        .R(SYNC_STATUS_REG0));
FDRE EXT_ILLEGAL_K_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXT_ILLEGAL_K_REG1),
        .Q(EXT_ILLEGAL_K_REG2),
        .R(SYNC_STATUS_REG0));
LUT5 #(
    .INIT(32'h00000444)) 
     EXT_ILLEGAL_K_i_1
       (.I0(S),
        .I1(EXTEND_REG1),
        .I2(K28p5_REG1),
        .I3(RXEVEN),
        .I4(R),
        .O(EXT_ILLEGAL_K0));
FDRE EXT_ILLEGAL_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(EXT_ILLEGAL_K0),
        .Q(EXT_ILLEGAL_K),
        .R(SYNC_STATUS_REG0));
FDRE FALSE_CARRIER_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_CARRIER),
        .Q(FALSE_CARRIER_REG1),
        .R(1'b0));
FDRE FALSE_CARRIER_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_CARRIER_REG1),
        .Q(FALSE_CARRIER_REG2),
        .R(1'b0));
FDRE FALSE_CARRIER_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_CARRIER_REG2),
        .Q(FALSE_CARRIER_REG3),
        .R(SYNC_STATUS_REG0));
LUT6 #(
    .INIT(64'h00004FFF00004444)) 
     FALSE_CARRIER_i_1
       (.I0(n_0_FALSE_CARRIER_i_2),
        .I1(n_0_FALSE_CARRIER_i_3),
        .I2(K28p5_REG1),
        .I3(RXEVEN),
        .I4(SYNC_STATUS_REG0),
        .I5(FALSE_CARRIER),
        .O(n_0_FALSE_CARRIER_i_1));
LUT3 #(
    .INIT(8'hFE)) 
     FALSE_CARRIER_i_2
       (.I0(FALSE_NIT),
        .I1(FALSE_DATA),
        .I2(FALSE_K),
        .O(n_0_FALSE_CARRIER_i_2));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'h10)) 
     FALSE_CARRIER_i_3
       (.I0(K28p5_REG1),
        .I1(S),
        .I2(n_0_I_REG_reg),
        .O(n_0_FALSE_CARRIER_i_3));
FDRE FALSE_CARRIER_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_FALSE_CARRIER_i_1),
        .Q(FALSE_CARRIER),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
     FALSE_DATA_i_1
       (.I0(n_0_FALSE_DATA_i_2),
        .I1(Q[6]),
        .I2(RXNOTINTABLE_INT),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(n_0_FALSE_DATA_i_3),
        .O(FALSE_DATA0));
LUT6 #(
    .INIT(64'h00000000040000C8)) 
     FALSE_DATA_i_2
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(I2),
        .O(n_0_FALSE_DATA_i_2));
LUT6 #(
    .INIT(64'h1700000000000000)) 
     FALSE_DATA_i_3
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(n_0_FALSE_DATA_i_4),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(n_0_FALSE_DATA_i_3));
LUT5 #(
    .INIT(32'h00000010)) 
     FALSE_DATA_i_4
       (.I0(I2),
        .I1(RXNOTINTABLE_INT),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(Q[5]),
        .O(n_0_FALSE_DATA_i_4));
FDRE FALSE_DATA_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_DATA0),
        .Q(FALSE_DATA),
        .R(I1));
LUT6 #(
    .INIT(64'h0900000000000000)) 
     FALSE_K_i_1
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(RXNOTINTABLE_INT),
        .I3(Q[7]),
        .I4(n_0_FALSE_K_i_2),
        .I5(n_0_FALSE_K_i_3),
        .O(FALSE_K0));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT2 #(
    .INIT(4'h1)) 
     FALSE_K_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(n_0_FALSE_K_i_2));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     FALSE_K_i_3
       (.I0(I2),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(n_0_FALSE_K_i_3));
FDRE FALSE_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_K0),
        .Q(FALSE_K),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFF280028002800)) 
     FALSE_NIT_i_1
       (.I0(n_0_FALSE_NIT_i_2),
        .I1(D_1),
        .I2(Q[7]),
        .I3(RXNOTINTABLE_INT),
        .I4(n_0_FALSE_NIT_i_3),
        .I5(n_0_FALSE_NIT_i_4),
        .O(FALSE_NIT0));
LUT6 #(
    .INIT(64'h00000088F0000000)) 
     FALSE_NIT_i_2
       (.I0(n_0_FALSE_K_i_3),
        .I1(Q[5]),
        .I2(n_0_D0p0_REG_i_2),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[6]),
        .O(n_0_FALSE_NIT_i_2));
LUT6 #(
    .INIT(64'h00F0000000008800)) 
     FALSE_NIT_i_3
       (.I0(n_0_FALSE_K_i_3),
        .I1(Q[5]),
        .I2(n_0_D0p0_REG_i_2),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(D_1),
        .O(n_0_FALSE_NIT_i_3));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'h60)) 
     FALSE_NIT_i_4
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(RXNOTINTABLE_INT),
        .O(n_0_FALSE_NIT_i_4));
FDRE FALSE_NIT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FALSE_NIT0),
        .Q(FALSE_NIT),
        .R(I1));
LUT6 #(
    .INIT(64'hFFECFFECFFECA8A8)) 
     FROM_RX_CX_i_1
       (.I0(C_REG3),
        .I1(CGBAD),
        .I2(n_0_FROM_RX_CX_i_2),
        .I3(RXCHARISK_REG1),
        .I4(C_REG2),
        .I5(C_REG1),
        .O(FROM_RX_CX0));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT2 #(
    .INIT(4'h7)) 
     FROM_RX_CX_i_2
       (.I0(K28p5_REG1),
        .I1(RXEVEN),
        .O(n_0_FROM_RX_CX_i_2));
FDRE FROM_RX_CX_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(FROM_RX_CX0),
        .Q(FROM_RX_CX),
        .R(SYNC_STATUS_REG0));
FDRE \IDLE_REG_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_I_REG_reg),
        .Q(\n_0_IDLE_REG_reg[0] ),
        .R(I1));
FDRE \IDLE_REG_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_IDLE_REG_reg[0] ),
        .Q(p_0_in1_in),
        .R(I1));
FDRE \IDLE_REG_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_0_in1_in),
        .Q(\n_0_IDLE_REG_reg[2] ),
        .R(I1));
FDRE ILLEGAL_K_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(ILLEGAL_K),
        .Q(ILLEGAL_K_REG1),
        .R(SYNC_STATUS_REG0));
FDRE ILLEGAL_K_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(ILLEGAL_K_REG1),
        .Q(ILLEGAL_K_REG2),
        .R(SYNC_STATUS_REG0));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h0100)) 
     ILLEGAL_K_i_1
       (.I0(R),
        .I1(T),
        .I2(K28p5_REG1),
        .I3(RXCHARISK_REG1),
        .O(ILLEGAL_K0));
FDRE ILLEGAL_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(ILLEGAL_K0),
        .Q(ILLEGAL_K),
        .R(SYNC_STATUS_REG0));
FDRE I_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I),
        .Q(n_0_I_REG_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h3323222222222222)) 
     I_i_1
       (.I0(n_0_I_i_2),
        .I1(I350_in),
        .I2(I2),
        .I3(RXSYNC_STATUS),
        .I4(RXEVEN),
        .I5(K28p5_REG1),
        .O(I0));
LUT6 #(
    .INIT(64'h8080808080808000)) 
     I_i_2
       (.I0(n_0_I_REG_reg),
        .I1(RXEVEN),
        .I2(RXSYNC_STATUS),
        .I3(FALSE_K),
        .I4(FALSE_DATA),
        .I5(FALSE_NIT),
        .O(n_0_I_i_2));
LUT6 #(
    .INIT(64'h000F200000002000)) 
     I_i_3
       (.I0(n_0_D0p0_REG_i_2),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(n_0_I_i_4),
        .O(I350_in));
LUT6 #(
    .INIT(64'h0000000000008000)) 
     I_i_4
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(I2),
        .I5(Q[3]),
        .O(n_0_I_i_4));
FDRE I_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I0),
        .Q(I),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     K28p5_REG1_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(n_0_FALSE_K_i_3),
        .O(K28p5));
FDRE K28p5_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K28p5),
        .Q(K28p5_REG1),
        .R(1'b0));
LUT5 #(
    .INIT(32'h44044400)) 
     RECEIVE_i_1
       (.I0(I1),
        .I1(RXSYNC_STATUS),
        .I2(EOP),
        .I3(SOP_REG2),
        .I4(n_0_RECEIVE_reg),
        .O(n_0_RECEIVE_i_1));
FDRE RECEIVE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_RECEIVE_i_1),
        .Q(n_0_RECEIVE_reg),
        .R(1'b0));
LUT4 #(
    .INIT(16'hFFFE)) 
     RUDI_C_i_1
       (.I0(p_1_in),
        .I1(\n_0_RX_CONFIG_VALID_REG_reg[0] ),
        .I2(\n_0_RX_CONFIG_VALID_REG_reg[3] ),
        .I3(p_0_in2_in),
        .O(RUDI_C0));
FDRE RUDI_C_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RUDI_C0),
        .Q(status_vector[0]),
        .R(I1));
LUT2 #(
    .INIT(4'hE)) 
     RUDI_I_i_1
       (.I0(\n_0_IDLE_REG_reg[2] ),
        .I1(p_0_in1_in),
        .O(RUDI_I0));
FDRE RUDI_I_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RUDI_I0),
        .Q(status_vector[1]),
        .R(I1));
FDRE RXCHARISK_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I2),
        .Q(RXCHARISK_REG1),
        .R(1'b0));
(* srl_bus_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[0]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[0]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[0]),
        .Q(\n_0_RXDATA_REG4_reg[0]_srl4 ));
(* srl_bus_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[1]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[1]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[1]),
        .Q(\n_0_RXDATA_REG4_reg[1]_srl4 ));
(* srl_bus_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[2]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[2]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[2]),
        .Q(\n_0_RXDATA_REG4_reg[2]_srl4 ));
(* srl_bus_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[3]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[3]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[3]),
        .Q(\n_0_RXDATA_REG4_reg[3]_srl4 ));
(* srl_bus_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[4]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[4]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[4]),
        .Q(\n_0_RXDATA_REG4_reg[4]_srl4 ));
(* srl_bus_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[5]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[5]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[5]),
        .Q(\n_0_RXDATA_REG4_reg[5]_srl4 ));
(* srl_bus_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[6]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[6]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[6]),
        .Q(\n_0_RXDATA_REG4_reg[6]_srl4 ));
(* srl_bus_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[7]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[7]_srl4 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(userclk2),
        .D(Q[7]),
        .Q(\n_0_RXDATA_REG4_reg[7]_srl4 ));
FDRE \RXDATA_REG5_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXDATA_REG4_reg[0]_srl4 ),
        .Q(RXDATA_REG5[0]),
        .R(1'b0));
FDRE \RXDATA_REG5_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXDATA_REG4_reg[1]_srl4 ),
        .Q(RXDATA_REG5[1]),
        .R(1'b0));
FDRE \RXDATA_REG5_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXDATA_REG4_reg[2]_srl4 ),
        .Q(RXDATA_REG5[2]),
        .R(1'b0));
FDRE \RXDATA_REG5_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXDATA_REG4_reg[3]_srl4 ),
        .Q(RXDATA_REG5[3]),
        .R(1'b0));
FDRE \RXDATA_REG5_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXDATA_REG4_reg[4]_srl4 ),
        .Q(RXDATA_REG5[4]),
        .R(1'b0));
FDRE \RXDATA_REG5_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXDATA_REG4_reg[5]_srl4 ),
        .Q(RXDATA_REG5[5]),
        .R(1'b0));
FDRE \RXDATA_REG5_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXDATA_REG4_reg[6]_srl4 ),
        .Q(RXDATA_REG5[6]),
        .R(1'b0));
FDRE \RXDATA_REG5_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXDATA_REG4_reg[7]_srl4 ),
        .Q(RXDATA_REG5[7]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'hAFAE)) 
     \RXD[0]_i_1 
       (.I0(SOP_REG3),
        .I1(EXTEND_REG1),
        .I2(FALSE_CARRIER_REG3),
        .I3(RXDATA_REG5[0]),
        .O(\n_0_RXD[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h0F0E)) 
     \RXD[1]_i_1 
       (.I0(FALSE_CARRIER_REG3),
        .I1(EXTEND_REG1),
        .I2(SOP_REG3),
        .I3(RXDATA_REG5[1]),
        .O(\n_0_RXD[1]_i_1 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \RXD[2]_i_1 
       (.I0(SOP_REG3),
        .I1(FALSE_CARRIER_REG3),
        .I2(EXTEND_REG1),
        .I3(RXDATA_REG5[2]),
        .O(\n_0_RXD[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h0F0E)) 
     \RXD[3]_i_1 
       (.I0(FALSE_CARRIER_REG3),
        .I1(EXTEND_REG1),
        .I2(SOP_REG3),
        .I3(RXDATA_REG5[3]),
        .O(\n_0_RXD[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'hAAAAFAEE)) 
     \RXD[4]_i_1 
       (.I0(SOP_REG3),
        .I1(RXDATA_REG5[4]),
        .I2(EXTEND_ERR),
        .I3(EXTEND_REG1),
        .I4(FALSE_CARRIER_REG3),
        .O(\n_0_RXD[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'h0002)) 
     \RXD[5]_i_1 
       (.I0(RXDATA_REG5[5]),
        .I1(SOP_REG3),
        .I2(FALSE_CARRIER_REG3),
        .I3(EXTEND_REG1),
        .O(\n_0_RXD[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'hFF10)) 
     \RXD[6]_i_1 
       (.I0(FALSE_CARRIER_REG3),
        .I1(EXTEND_REG1),
        .I2(RXDATA_REG5[6]),
        .I3(SOP_REG3),
        .O(\n_0_RXD[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h0002)) 
     \RXD[7]_i_1 
       (.I0(RXDATA_REG5[7]),
        .I1(SOP_REG3),
        .I2(FALSE_CARRIER_REG3),
        .I3(EXTEND_REG1),
        .O(\n_0_RXD[7]_i_1 ));
FDRE \RXD_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXD[0]_i_1 ),
        .Q(gmii_rxd[0]),
        .R(SR));
FDRE \RXD_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXD[1]_i_1 ),
        .Q(gmii_rxd[1]),
        .R(SR));
FDRE \RXD_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXD[2]_i_1 ),
        .Q(gmii_rxd[2]),
        .R(SR));
FDRE \RXD_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXD[3]_i_1 ),
        .Q(gmii_rxd[3]),
        .R(SR));
FDRE \RXD_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXD[4]_i_1 ),
        .Q(gmii_rxd[4]),
        .R(SR));
FDRE \RXD_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXD[5]_i_1 ),
        .Q(gmii_rxd[5]),
        .R(SR));
FDRE \RXD_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXD[6]_i_1 ),
        .Q(gmii_rxd[6]),
        .R(SR));
FDRE \RXD_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RXD[7]_i_1 ),
        .Q(gmii_rxd[7]),
        .R(SR));
LUT6 #(
    .INIT(64'h0000000000000E00)) 
     RX_CONFIG_VALID_INT_i_1
       (.I0(C_HDR_REMOVED_REG),
        .I1(C_REG1),
        .I2(I2),
        .I3(RXSYNC_STATUS),
        .I4(n_0_RX_CONFIG_VALID_INT_i_2),
        .I5(S2),
        .O(RX_CONFIG_VALID_INT0));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT2 #(
    .INIT(4'hE)) 
     RX_CONFIG_VALID_INT_i_2
       (.I0(CGBAD),
        .I1(RXCHARISK_REG1),
        .O(n_0_RX_CONFIG_VALID_INT_i_2));
FDRE RX_CONFIG_VALID_INT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_CONFIG_VALID_INT0),
        .Q(RX_CONFIG_VALID_INT),
        .R(I1));
FDRE \RX_CONFIG_VALID_REG_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_CONFIG_VALID_INT),
        .Q(\n_0_RX_CONFIG_VALID_REG_reg[0] ),
        .R(I1));
FDRE \RX_CONFIG_VALID_REG_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_RX_CONFIG_VALID_REG_reg[0] ),
        .Q(p_0_in2_in),
        .R(I1));
FDRE \RX_CONFIG_VALID_REG_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_0_in2_in),
        .Q(p_1_in),
        .R(I1));
FDRE \RX_CONFIG_VALID_REG_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_1_in),
        .Q(\n_0_RX_CONFIG_VALID_REG_reg[3] ),
        .R(I1));
LUT6 #(
    .INIT(64'hFF00FF00FF00BA00)) 
     RX_DATA_ERROR_i_1
       (.I0(n_0_RX_DATA_ERROR_i_2),
        .I1(T_REG1),
        .I2(R),
        .I3(n_0_RX_DATA_ERROR_i_3),
        .I4(T_REG2),
        .I5(K28p5_REG1),
        .O(RX_DATA_ERROR0));
LUT4 #(
    .INIT(16'hFFFE)) 
     RX_DATA_ERROR_i_2
       (.I0(CGBAD_REG3),
        .I1(ILLEGAL_K_REG2),
        .I2(n_0_I_REG_reg),
        .I3(C_REG1),
        .O(n_0_RX_DATA_ERROR_i_2));
LUT6 #(
    .INIT(64'hFF08FFFF00000000)) 
     RX_DATA_ERROR_i_3
       (.I0(T_REG2),
        .I1(n_0_FROM_RX_CX_i_2),
        .I2(R),
        .I3(n_0_RX_DATA_ERROR_i_2),
        .I4(R_REG1),
        .I5(n_0_RECEIVE_reg),
        .O(n_0_RX_DATA_ERROR_i_3));
FDRE RX_DATA_ERROR_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_DATA_ERROR0),
        .Q(RX_DATA_ERROR),
        .R(SYNC_STATUS_REG0));
LUT6 #(
    .INIT(64'h5333333350000000)) 
     RX_DV_i_1
       (.I0(I1),
        .I1(n_0_RX_DV_i_2),
        .I2(n_0_RX_DV_i_3),
        .I3(RXSYNC_STATUS),
        .I4(SOP_REG3),
        .I5(gmii_rx_dv),
        .O(n_0_RX_DV_i_1));
LUT4 #(
    .INIT(16'hEEEF)) 
     RX_DV_i_2
       (.I0(EOP_REG1),
        .I1(I1),
        .I2(RXSYNC_STATUS),
        .I3(n_0_RECEIVE_reg),
        .O(n_0_RX_DV_i_2));
LUT2 #(
    .INIT(4'h1)) 
     RX_DV_i_3
       (.I0(I3),
        .I1(SR),
        .O(n_0_RX_DV_i_3));
FDRE #(
    .INIT(1'b0)) 
     RX_DV_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_RX_DV_i_1),
        .Q(gmii_rx_dv),
        .R(1'b0));
LUT6 #(
    .INIT(64'h000E000E000F0000)) 
     RX_ER_i_1
       (.I0(n_0_RX_ER_i_2),
        .I1(RX_DATA_ERROR),
        .I2(I3),
        .I3(SR),
        .I4(n_0_RECEIVE_reg),
        .I5(RXSYNC_STATUS),
        .O(RX_ER0));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT2 #(
    .INIT(4'hE)) 
     RX_ER_i_2
       (.I0(FALSE_CARRIER_REG3),
        .I1(EXTEND_REG1),
        .O(n_0_RX_ER_i_2));
FDRE #(
    .INIT(1'b0)) 
     RX_ER_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(RX_ER0),
        .Q(gmii_rx_er),
        .R(I1));
LUT5 #(
    .INIT(32'h00B000A0)) 
     RX_INVALID_i_1
       (.I0(FROM_RX_CX),
        .I1(K28p5_REG1),
        .I2(RXSYNC_STATUS),
        .I3(I1),
        .I4(status_vector[2]),
        .O(n_0_RX_INVALID_i_1));
FDRE RX_INVALID_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_RX_INVALID_i_1),
        .Q(status_vector[2]),
        .R(1'b0));
FDRE R_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(R),
        .Q(R_REG1),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0080000000000000)) 
     R_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(n_0_R_i_2),
        .I3(Q[3]),
        .I4(Q[6]),
        .I5(I2),
        .O(K23p7));
LUT4 #(
    .INIT(16'h8000)) 
     R_i_2
       (.I0(Q[5]),
        .I1(Q[7]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(n_0_R_i_2));
FDRE R_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K23p7),
        .Q(R),
        .R(1'b0));
FDRE SOP_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SOP),
        .Q(SOP_REG1),
        .R(1'b0));
FDRE SOP_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SOP_REG1),
        .Q(SOP_REG2),
        .R(1'b0));
FDRE SOP_REG3_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SOP_REG2),
        .Q(SOP_REG3),
        .R(1'b0));
LUT5 #(
    .INIT(32'h40404000)) 
     SOP_i_1
       (.I0(WAIT_FOR_K),
        .I1(S),
        .I2(RXSYNC_STATUS),
        .I3(n_0_I_REG_reg),
        .I4(n_0_EXTEND_reg),
        .O(SOP0));
FDRE SOP_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SOP0),
        .Q(SOP),
        .R(I1));
FDRE SYNC_STATUS_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(1'b1),
        .Q(SYNC_STATUS_REG),
        .R(SYNC_STATUS_REG0));
LUT6 #(
    .INIT(64'h0000000080000000)) 
     S_i_1__0
       (.I0(I2),
        .I1(Q[3]),
        .I2(n_0_S_i_2),
        .I3(Q[5]),
        .I4(Q[7]),
        .I5(S2),
        .O(S0));
LUT5 #(
    .INIT(32'h00800000)) 
     S_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[6]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(n_0_S_i_2));
FDRE S_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(S0),
        .Q(S),
        .R(1'b0));
FDRE T_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(T),
        .Q(T_REG1),
        .R(1'b0));
FDRE T_REG2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(T_REG1),
        .Q(T_REG2),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0800000000000000)) 
     T_i_1
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[1]),
        .I3(Q[6]),
        .I4(Q[0]),
        .I5(n_0_FALSE_K_i_3),
        .O(K29p7));
FDRE T_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(K29p7),
        .Q(T),
        .R(1'b0));
LUT6 #(
    .INIT(64'h07000F0000000F00)) 
     WAIT_FOR_K_i_1
       (.I0(K28p5_REG1),
        .I1(RXEVEN),
        .I2(I1),
        .I3(RXSYNC_STATUS),
        .I4(SYNC_STATUS_REG),
        .I5(WAIT_FOR_K),
        .O(n_0_WAIT_FOR_K_i_1));
FDRE WAIT_FOR_K_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_WAIT_FOR_K_i_1),
        .Q(WAIT_FOR_K),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SYNCHRONISE" *) 
module gig_eth_pcs_pma_basex_v15_1_SYNCHRONISE
   (RXEVEN,
    RXSYNC_STATUS,
    encommaalign,
    SYNC_STATUS_REG0,
    STATUS_VECTOR_0_PRE0,
    SIGNAL_DETECT_MOD,
    userclk2,
    I1,
    I2,
    I3,
    LOOPBACK_INT,
    D_1,
    p_0_in,
    RXNOTINTABLE_INT,
    resetdone);
  output RXEVEN;
  output RXSYNC_STATUS;
  output encommaalign;
  output SYNC_STATUS_REG0;
  output STATUS_VECTOR_0_PRE0;
  input SIGNAL_DETECT_MOD;
  input userclk2;
  input I1;
  input I2;
  input I3;
  input LOOPBACK_INT;
  input D_1;
  input p_0_in;
  input RXNOTINTABLE_INT;
  input resetdone;

  wire CGBAD;
  wire D_1;
  wire [1:0]GOOD_CGS;
  wire I1;
  wire I2;
  wire I3;
  wire LOOPBACK_INT;
  wire RXEVEN;
  wire RXNOTINTABLE_INT;
  wire RXSYNC_STATUS;
  wire SIGNAL_DETECT_MOD;
  wire SIGNAL_DETECT_REG;
(* RTL_KEEP = "yes" *)   wire [3:0]STATE;
  wire STATUS_VECTOR_0_PRE0;
  wire SYNC_STATUS0;
  wire SYNC_STATUS_REG0;
  wire encommaalign;
  wire n_0_ENCOMMAALIGN_i_1;
  wire n_0_EVEN_i_1;
  wire \n_0_FSM_sequential_STATE[0]_i_2 ;
  wire \n_0_FSM_sequential_STATE[0]_i_3 ;
  wire \n_0_FSM_sequential_STATE[1]_i_2 ;
  wire \n_0_FSM_sequential_STATE[1]_i_3 ;
  wire \n_0_FSM_sequential_STATE[2]_i_2 ;
  wire \n_0_FSM_sequential_STATE[2]_i_3 ;
  wire \n_0_FSM_sequential_STATE[3]_i_1 ;
  wire \n_0_FSM_sequential_STATE[3]_i_2 ;
  wire \n_0_FSM_sequential_STATE[3]_i_3 ;
  wire \n_0_FSM_sequential_STATE_reg[0]_i_1 ;
  wire \n_0_FSM_sequential_STATE_reg[1]_i_1 ;
  wire \n_0_FSM_sequential_STATE_reg[2]_i_1 ;
  wire \n_0_GOOD_CGS[0]_i_1 ;
  wire \n_0_GOOD_CGS[1]_i_1 ;
  wire \n_0_GOOD_CGS[1]_i_2 ;
  wire n_0_SYNC_STATUS_i_1;
  wire n_0_SYNC_STATUS_i_2;
  wire p_0_in;
  wire resetdone;
  wire userclk2;

(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'h0E)) 
     ENCOMMAALIGN_i_1
       (.I0(encommaalign),
        .I1(n_0_SYNC_STATUS_i_2),
        .I2(SYNC_STATUS0),
        .O(n_0_ENCOMMAALIGN_i_1));
FDRE ENCOMMAALIGN_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_ENCOMMAALIGN_i_1),
        .Q(encommaalign),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'h4F)) 
     EVEN_i_1
       (.I0(RXSYNC_STATUS),
        .I1(I2),
        .I2(RXEVEN),
        .O(n_0_EVEN_i_1));
FDRE EVEN_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_EVEN_i_1),
        .Q(RXEVEN),
        .R(I1));
LUT5 #(
    .INIT(32'h61156000)) 
     \FSM_sequential_STATE[0]_i_2 
       (.I0(STATE[0]),
        .I1(CGBAD),
        .I2(STATE[1]),
        .I3(STATE[2]),
        .I4(I2),
        .O(\n_0_FSM_sequential_STATE[0]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000F000DF)) 
     \FSM_sequential_STATE[0]_i_3 
       (.I0(GOOD_CGS[1]),
        .I1(GOOD_CGS[0]),
        .I2(STATE[0]),
        .I3(STATE[2]),
        .I4(STATE[1]),
        .I5(CGBAD),
        .O(\n_0_FSM_sequential_STATE[0]_i_3 ));
LUT5 #(
    .INIT(32'h30330044)) 
     \FSM_sequential_STATE[1]_i_2 
       (.I0(I3),
        .I1(STATE[0]),
        .I2(STATE[2]),
        .I3(CGBAD),
        .I4(STATE[1]),
        .O(\n_0_FSM_sequential_STATE[1]_i_2 ));
LUT6 #(
    .INIT(64'h00000000FF0004FF)) 
     \FSM_sequential_STATE[1]_i_3 
       (.I0(CGBAD),
        .I1(GOOD_CGS[1]),
        .I2(GOOD_CGS[0]),
        .I3(STATE[0]),
        .I4(STATE[1]),
        .I5(STATE[2]),
        .O(\n_0_FSM_sequential_STATE[1]_i_3 ));
LUT5 #(
    .INIT(32'h30370040)) 
     \FSM_sequential_STATE[2]_i_2 
       (.I0(I3),
        .I1(STATE[0]),
        .I2(STATE[1]),
        .I3(CGBAD),
        .I4(STATE[2]),
        .O(\n_0_FSM_sequential_STATE[2]_i_2 ));
LUT6 #(
    .INIT(64'h00000000140E1414)) 
     \FSM_sequential_STATE[2]_i_3 
       (.I0(STATE[0]),
        .I1(STATE[1]),
        .I2(STATE[2]),
        .I3(GOOD_CGS[0]),
        .I4(GOOD_CGS[1]),
        .I5(CGBAD),
        .O(\n_0_FSM_sequential_STATE[2]_i_3 ));
LUT3 #(
    .INIT(8'hF1)) 
     \FSM_sequential_STATE[3]_i_1 
       (.I0(LOOPBACK_INT),
        .I1(SIGNAL_DETECT_REG),
        .I2(I1),
        .O(\n_0_FSM_sequential_STATE[3]_i_1 ));
LUT6 #(
    .INIT(64'h0FE000E0003030F0)) 
     \FSM_sequential_STATE[3]_i_2 
       (.I0(\n_0_FSM_sequential_STATE[3]_i_3 ),
        .I1(CGBAD),
        .I2(STATE[3]),
        .I3(STATE[2]),
        .I4(STATE[1]),
        .I5(STATE[0]),
        .O(\n_0_FSM_sequential_STATE[3]_i_2 ));
LUT2 #(
    .INIT(4'hB)) 
     \FSM_sequential_STATE[3]_i_3 
       (.I0(GOOD_CGS[0]),
        .I1(GOOD_CGS[1]),
        .O(\n_0_FSM_sequential_STATE[3]_i_3 ));
LUT5 #(
    .INIT(32'hFFFFFFF8)) 
     \FSM_sequential_STATE[3]_i_4 
       (.I0(RXEVEN),
        .I1(I2),
        .I2(D_1),
        .I3(p_0_in),
        .I4(RXNOTINTABLE_INT),
        .O(CGBAD));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_STATE_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_STATE_reg[0]_i_1 ),
        .Q(STATE[0]),
        .R(\n_0_FSM_sequential_STATE[3]_i_1 ));
MUXF7 \FSM_sequential_STATE_reg[0]_i_1 
       (.I0(\n_0_FSM_sequential_STATE[0]_i_2 ),
        .I1(\n_0_FSM_sequential_STATE[0]_i_3 ),
        .O(\n_0_FSM_sequential_STATE_reg[0]_i_1 ),
        .S(STATE[3]));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_STATE_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_STATE_reg[1]_i_1 ),
        .Q(STATE[1]),
        .R(\n_0_FSM_sequential_STATE[3]_i_1 ));
MUXF7 \FSM_sequential_STATE_reg[1]_i_1 
       (.I0(\n_0_FSM_sequential_STATE[1]_i_2 ),
        .I1(\n_0_FSM_sequential_STATE[1]_i_3 ),
        .O(\n_0_FSM_sequential_STATE_reg[1]_i_1 ),
        .S(STATE[3]));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_STATE_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_STATE_reg[2]_i_1 ),
        .Q(STATE[2]),
        .R(\n_0_FSM_sequential_STATE[3]_i_1 ));
MUXF7 \FSM_sequential_STATE_reg[2]_i_1 
       (.I0(\n_0_FSM_sequential_STATE[2]_i_2 ),
        .I1(\n_0_FSM_sequential_STATE[2]_i_3 ),
        .O(\n_0_FSM_sequential_STATE_reg[2]_i_1 ),
        .S(STATE[3]));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_STATE_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_STATE[3]_i_2 ),
        .Q(STATE[3]),
        .R(\n_0_FSM_sequential_STATE[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'h09)) 
     \GOOD_CGS[0]_i_1 
       (.I0(GOOD_CGS[0]),
        .I1(CGBAD),
        .I2(\n_0_GOOD_CGS[1]_i_2 ),
        .O(\n_0_GOOD_CGS[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT4 #(
    .INIT(16'h009A)) 
     \GOOD_CGS[1]_i_1 
       (.I0(GOOD_CGS[1]),
        .I1(CGBAD),
        .I2(GOOD_CGS[0]),
        .I3(\n_0_GOOD_CGS[1]_i_2 ),
        .O(\n_0_GOOD_CGS[1]_i_1 ));
LUT5 #(
    .INIT(32'hAABBEAAA)) 
     \GOOD_CGS[1]_i_2 
       (.I0(I1),
        .I1(STATE[0]),
        .I2(STATE[1]),
        .I3(STATE[2]),
        .I4(STATE[3]),
        .O(\n_0_GOOD_CGS[1]_i_2 ));
FDRE \GOOD_CGS_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_GOOD_CGS[0]_i_1 ),
        .Q(GOOD_CGS[0]),
        .R(1'b0));
FDRE \GOOD_CGS_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_GOOD_CGS[1]_i_1 ),
        .Q(GOOD_CGS[1]),
        .R(1'b0));
FDRE SIGNAL_DETECT_REG_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(SIGNAL_DETECT_MOD),
        .Q(SIGNAL_DETECT_REG),
        .R(1'b0));
LUT2 #(
    .INIT(4'h8)) 
     STATUS_VECTOR_0_PRE_i_1
       (.I0(RXSYNC_STATUS),
        .I1(resetdone),
        .O(STATUS_VECTOR_0_PRE0));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT2 #(
    .INIT(4'hB)) 
     SYNC_STATUS_REG_i_1
       (.I0(I1),
        .I1(RXSYNC_STATUS),
        .O(SYNC_STATUS_REG0));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hF2)) 
     SYNC_STATUS_i_1
       (.I0(RXSYNC_STATUS),
        .I1(n_0_SYNC_STATUS_i_2),
        .I2(SYNC_STATUS0),
        .O(n_0_SYNC_STATUS_i_1));
LUT5 #(
    .INIT(32'h14010001)) 
     SYNC_STATUS_i_2
       (.I0(STATE[0]),
        .I1(STATE[1]),
        .I2(STATE[2]),
        .I3(STATE[3]),
        .I4(CGBAD),
        .O(n_0_SYNC_STATUS_i_2));
LUT6 #(
    .INIT(64'h0000000000000040)) 
     SYNC_STATUS_i_3
       (.I0(I3),
        .I1(STATE[0]),
        .I2(STATE[2]),
        .I3(STATE[1]),
        .I4(STATE[3]),
        .I5(CGBAD),
        .O(SYNC_STATUS0));
FDRE #(
    .INIT(1'b0)) 
     SYNC_STATUS_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_SYNC_STATUS_i_1),
        .Q(RXSYNC_STATUS),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TX" *) 
module gig_eth_pcs_pma_basex_v15_1_TX__parameterized0
   (O1,
    O2,
    O3,
    D,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    gmii_tx_er,
    userclk2,
    gmii_tx_en,
    I1,
    gmii_txd,
    SR,
    LOOPBACK_INT,
    rxcharisk,
    rxchariscomma,
    I2);
  output O1;
  output O2;
  output O3;
  output [3:0]D;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output [7:0]O10;
  output O11;
  input gmii_tx_er;
  input userclk2;
  input gmii_tx_en;
  input I1;
  input [7:0]gmii_txd;
  input [0:0]SR;
  input LOOPBACK_INT;
  input rxcharisk;
  input rxchariscomma;
  input [7:0]I2;

  wire CODE_GRPISK;
  wire [3:0]D;
  wire DISP3;
  wire DISP5;
  wire DISPARITY;
  wire I1;
  wire [7:0]I2;
  wire K28p5;
  wire LOOPBACK_INT;
  wire O1;
  wire [7:0]O10;
  wire O11;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire S;
  wire S0;
  wire [0:0]SR;
  wire T;
  wire T0;
  wire TRIGGER_S;
  wire TRIGGER_S0;
  wire TRIGGER_T;
  wire TXCHARDISPMODE_INT;
  wire TXCHARDISPVAL;
  wire TXCHARISK_INT;
  wire [7:0]TXDATA;
  wire [7:0]TXD_REG1;
  wire TX_EN_REG1;
  wire TX_ER_REG1;
  wire TX_EVEN;
  wire XMIT_CONFIG_INT;
  wire XMIT_DATA_INT;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire n_0_C1_OR_C2_i_1;
  wire n_0_C1_OR_C2_reg;
  wire n_0_CODE_GRPISK_i_1;
  wire \n_0_CODE_GRP[0]_i_1 ;
  wire \n_0_CODE_GRP[0]_i_2 ;
  wire \n_0_CODE_GRP[1]_i_1 ;
  wire \n_0_CODE_GRP[1]_i_2 ;
  wire \n_0_CODE_GRP[2]_i_1 ;
  wire \n_0_CODE_GRP[2]_i_2 ;
  wire \n_0_CODE_GRP[3]_i_1 ;
  wire \n_0_CODE_GRP[3]_i_2 ;
  wire \n_0_CODE_GRP[3]_i_3 ;
  wire \n_0_CODE_GRP[3]_i_4 ;
  wire \n_0_CODE_GRP[4]_i_1 ;
  wire \n_0_CODE_GRP[5]_i_1 ;
  wire \n_0_CODE_GRP[6]_i_1 ;
  wire \n_0_CODE_GRP[7]_i_1 ;
  wire \n_0_CODE_GRP[7]_i_2 ;
  wire \n_0_CODE_GRP_CNT_reg[1] ;
  wire \n_0_CODE_GRP_reg[0] ;
  wire \n_0_CONFIG_DATA[0]_i_1 ;
  wire \n_0_CONFIG_DATA[2]_i_1 ;
  wire \n_0_CONFIG_DATA[6]_i_1 ;
  wire \n_0_CONFIG_DATA_reg[0] ;
  wire \n_0_CONFIG_DATA_reg[2] ;
  wire \n_0_CONFIG_DATA_reg[3] ;
  wire \n_0_CONFIG_DATA_reg[6] ;
  wire n_0_INSERT_IDLE_i_1;
  wire n_0_INSERT_IDLE_reg;
  wire n_0_K28p5_i_1;
  wire \n_0_NO_QSGMII_DATA.TXCHARISK_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[0]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[1]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[2]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[3]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[4]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[5]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[6]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[7]_i_1 ;
  wire \n_0_NO_QSGMII_DISP.DISPARITY_i_1 ;
  wire n_0_R_i_1__0;
  wire n_0_R_reg;
  wire n_0_SYNC_DISPARITY_i_1;
  wire n_0_SYNC_DISPARITY_reg;
  wire n_0_TX_PACKET_i_1;
  wire n_0_TX_PACKET_reg;
  wire n_0_V_i_1;
  wire n_0_V_i_2;
  wire n_0_V_i_3;
  wire n_0_V_i_4;
  wire n_0_V_i_5;
  wire n_0_V_reg;
  wire n_0_XMIT_CONFIG_INT_i_1;
  wire n_0_XMIT_DATA_INT_i_1;
  wire n_0_XMIT_DATA_INT_reg;
  wire p_0_in;
  wire p_0_in18_in;
  wire p_0_in37_in;
  wire p_10_out;
  wire p_12_out;
  wire p_1_in;
  wire p_1_in1_in;
  wire p_1_in36_in;
  wire p_35_in;
  wire p_49_in;
  wire [1:0]plusOp;
  wire rxchariscomma;
  wire rxcharisk;
  wire userclk2;

(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT4 #(
    .INIT(16'h3F80)) 
     C1_OR_C2_i_1
       (.I0(XMIT_CONFIG_INT),
        .I1(TX_EVEN),
        .I2(\n_0_CODE_GRP_CNT_reg[1] ),
        .I3(n_0_C1_OR_C2_reg),
        .O(n_0_C1_OR_C2_i_1));
FDRE C1_OR_C2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_C1_OR_C2_i_1),
        .Q(n_0_C1_OR_C2_reg),
        .R(I1));
LUT6 #(
    .INIT(64'h3030FFFF3030FF55)) 
     CODE_GRPISK_i_1
       (.I0(n_0_TX_PACKET_reg),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .I2(TX_EVEN),
        .I3(\n_0_CODE_GRP[7]_i_2 ),
        .I4(XMIT_CONFIG_INT),
        .I5(SR),
        .O(n_0_CODE_GRPISK_i_1));
FDRE CODE_GRPISK_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_CODE_GRPISK_i_1),
        .Q(CODE_GRPISK),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT5 #(
    .INIT(32'hFBFAABAA)) 
     \CODE_GRP[0]_i_1 
       (.I0(\n_0_CODE_GRP[0]_i_2 ),
        .I1(SR),
        .I2(XMIT_CONFIG_INT),
        .I3(S),
        .I4(\n_0_CONFIG_DATA_reg[0] ),
        .O(\n_0_CODE_GRP[0]_i_1 ));
LUT6 #(
    .INIT(64'h000000000000FFF8)) 
     \CODE_GRP[0]_i_2 
       (.I0(n_0_TX_PACKET_reg),
        .I1(TXD_REG1[0]),
        .I2(n_0_R_reg),
        .I3(T),
        .I4(\n_0_CODE_GRP[3]_i_4 ),
        .I5(n_0_V_reg),
        .O(\n_0_CODE_GRP[0]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFAABAAAAAAABA)) 
     \CODE_GRP[1]_i_1 
       (.I0(\n_0_CODE_GRP[1]_i_2 ),
        .I1(T),
        .I2(n_0_R_reg),
        .I3(SR),
        .I4(XMIT_CONFIG_INT),
        .I5(\n_0_CONFIG_DATA_reg[6] ),
        .O(\n_0_CODE_GRP[1]_i_1 ));
LUT6 #(
    .INIT(64'h0E0E0E0E0F0E0E0E)) 
     \CODE_GRP[1]_i_2 
       (.I0(S),
        .I1(n_0_V_reg),
        .I2(\n_0_CODE_GRP[3]_i_4 ),
        .I3(n_0_TX_PACKET_reg),
        .I4(TXD_REG1[1]),
        .I5(T),
        .O(\n_0_CODE_GRP[1]_i_2 ));
LUT5 #(
    .INIT(32'hB8BB0000)) 
     \CODE_GRP[2]_i_1 
       (.I0(\n_0_CONFIG_DATA_reg[2] ),
        .I1(XMIT_CONFIG_INT),
        .I2(SR),
        .I3(S),
        .I4(\n_0_CODE_GRP[2]_i_2 ),
        .O(\n_0_CODE_GRP[2]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
     \CODE_GRP[2]_i_2 
       (.I0(\n_0_CODE_GRP[3]_i_4 ),
        .I1(n_0_TX_PACKET_reg),
        .I2(TXD_REG1[2]),
        .I3(n_0_R_reg),
        .I4(T),
        .I5(n_0_V_reg),
        .O(\n_0_CODE_GRP[2]_i_2 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAA20AA22)) 
     \CODE_GRP[3]_i_1 
       (.I0(\n_0_CODE_GRP[3]_i_2 ),
        .I1(n_0_R_reg),
        .I2(TXD_REG1[3]),
        .I3(\n_0_CODE_GRP[3]_i_3 ),
        .I4(n_0_TX_PACKET_reg),
        .I5(\n_0_CODE_GRP[3]_i_4 ),
        .O(\n_0_CODE_GRP[3]_i_1 ));
LUT2 #(
    .INIT(4'hB)) 
     \CODE_GRP[3]_i_2 
       (.I0(\n_0_CONFIG_DATA_reg[3] ),
        .I1(XMIT_CONFIG_INT),
        .O(\n_0_CODE_GRP[3]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \CODE_GRP[3]_i_3 
       (.I0(S),
        .I1(T),
        .I2(n_0_V_reg),
        .O(\n_0_CODE_GRP[3]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \CODE_GRP[3]_i_4 
       (.I0(XMIT_CONFIG_INT),
        .I1(SR),
        .O(\n_0_CODE_GRP[3]_i_4 ));
LUT6 #(
    .INIT(64'hCFCFCFCFCFCFCACF)) 
     \CODE_GRP[4]_i_1 
       (.I0(TXD_REG1[4]),
        .I1(\n_0_CONFIG_DATA_reg[2] ),
        .I2(XMIT_CONFIG_INT),
        .I3(n_0_TX_PACKET_reg),
        .I4(SR),
        .I5(\n_0_CODE_GRP[7]_i_2 ),
        .O(\n_0_CODE_GRP[4]_i_1 ));
LUT6 #(
    .INIT(64'hCFCFCFCFCFCFCACF)) 
     \CODE_GRP[5]_i_1 
       (.I0(TXD_REG1[5]),
        .I1(\n_0_CONFIG_DATA_reg[2] ),
        .I2(XMIT_CONFIG_INT),
        .I3(n_0_TX_PACKET_reg),
        .I4(SR),
        .I5(\n_0_CODE_GRP[7]_i_2 ),
        .O(\n_0_CODE_GRP[5]_i_1 ));
LUT6 #(
    .INIT(64'hFFFF322200003222)) 
     \CODE_GRP[6]_i_1 
       (.I0(\n_0_CODE_GRP[7]_i_2 ),
        .I1(SR),
        .I2(TXD_REG1[6]),
        .I3(n_0_TX_PACKET_reg),
        .I4(XMIT_CONFIG_INT),
        .I5(\n_0_CONFIG_DATA_reg[6] ),
        .O(\n_0_CODE_GRP[6]_i_1 ));
LUT6 #(
    .INIT(64'hCFCFCFCFCFCFCACF)) 
     \CODE_GRP[7]_i_1 
       (.I0(TXD_REG1[7]),
        .I1(\n_0_CONFIG_DATA_reg[2] ),
        .I2(XMIT_CONFIG_INT),
        .I3(n_0_TX_PACKET_reg),
        .I4(SR),
        .I5(\n_0_CODE_GRP[7]_i_2 ),
        .O(\n_0_CODE_GRP[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \CODE_GRP[7]_i_2 
       (.I0(n_0_V_reg),
        .I1(T),
        .I2(S),
        .I3(n_0_R_reg),
        .O(\n_0_CODE_GRP[7]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \CODE_GRP_CNT[0]_i_1 
       (.I0(TX_EVEN),
        .O(plusOp[0]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \CODE_GRP_CNT[1]_i_1 
       (.I0(\n_0_CODE_GRP_CNT_reg[1] ),
        .I1(TX_EVEN),
        .O(plusOp[1]));
FDSE \CODE_GRP_CNT_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(TX_EVEN),
        .S(I1));
FDSE \CODE_GRP_CNT_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(\n_0_CODE_GRP_CNT_reg[1] ),
        .S(I1));
FDRE \CODE_GRP_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CODE_GRP[0]_i_1 ),
        .Q(\n_0_CODE_GRP_reg[0] ),
        .R(1'b0));
FDRE \CODE_GRP_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CODE_GRP[1]_i_1 ),
        .Q(p_1_in),
        .R(1'b0));
FDRE \CODE_GRP_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CODE_GRP[2]_i_1 ),
        .Q(p_0_in18_in),
        .R(1'b0));
FDRE \CODE_GRP_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CODE_GRP[3]_i_1 ),
        .Q(p_0_in),
        .R(1'b0));
FDRE \CODE_GRP_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CODE_GRP[4]_i_1 ),
        .Q(p_1_in1_in),
        .R(1'b0));
FDRE \CODE_GRP_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CODE_GRP[5]_i_1 ),
        .Q(p_1_in36_in),
        .R(1'b0));
FDRE \CODE_GRP_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CODE_GRP[6]_i_1 ),
        .Q(p_35_in),
        .R(1'b0));
FDRE \CODE_GRP_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CODE_GRP[7]_i_1 ),
        .Q(p_0_in37_in),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \CONFIG_DATA[0]_i_1 
       (.I0(\n_0_CODE_GRP_CNT_reg[1] ),
        .I1(TX_EVEN),
        .I2(n_0_C1_OR_C2_reg),
        .O(\n_0_CONFIG_DATA[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT3 #(
    .INIT(8'h07)) 
     \CONFIG_DATA[2]_i_1 
       (.I0(TX_EVEN),
        .I1(n_0_C1_OR_C2_reg),
        .I2(\n_0_CODE_GRP_CNT_reg[1] ),
        .O(\n_0_CONFIG_DATA[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \CONFIG_DATA[3]_i_1 
       (.I0(TX_EVEN),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .O(XMIT_DATA_INT));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'h40)) 
     \CONFIG_DATA[6]_i_1 
       (.I0(\n_0_CODE_GRP_CNT_reg[1] ),
        .I1(TX_EVEN),
        .I2(n_0_C1_OR_C2_reg),
        .O(\n_0_CONFIG_DATA[6]_i_1 ));
FDRE \CONFIG_DATA_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CONFIG_DATA[0]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[0] ),
        .R(I1));
FDRE \CONFIG_DATA_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CONFIG_DATA[2]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[2] ),
        .R(I1));
FDRE \CONFIG_DATA_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(XMIT_DATA_INT),
        .Q(\n_0_CONFIG_DATA_reg[3] ),
        .R(I1));
FDRE \CONFIG_DATA_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_CONFIG_DATA[6]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[6] ),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT4 #(
    .INIT(16'h00AB)) 
     INSERT_IDLE_i_1
       (.I0(SR),
        .I1(\n_0_CODE_GRP[7]_i_2 ),
        .I2(n_0_TX_PACKET_reg),
        .I3(XMIT_CONFIG_INT),
        .O(n_0_INSERT_IDLE_i_1));
FDRE INSERT_IDLE_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_INSERT_IDLE_i_1),
        .Q(n_0_INSERT_IDLE_reg),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT2 #(
    .INIT(4'h8)) 
     K28p5_i_1
       (.I0(XMIT_CONFIG_INT),
        .I1(\n_0_CONFIG_DATA_reg[3] ),
        .O(n_0_K28p5_i_1));
FDRE K28p5_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_K28p5_i_1),
        .Q(K28p5),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \NO_QSGMII_CHAR.TXCHARDISPMODE_i_1 
       (.I0(n_0_SYNC_DISPARITY_reg),
        .I1(TX_EVEN),
        .O(p_12_out));
FDSE \NO_QSGMII_CHAR.TXCHARDISPMODE_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_12_out),
        .Q(TXCHARDISPMODE_INT),
        .S(I1));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'h40)) 
     \NO_QSGMII_CHAR.TXCHARDISPVAL_i_1 
       (.I0(TX_EVEN),
        .I1(n_0_SYNC_DISPARITY_reg),
        .I2(DISPARITY),
        .O(p_10_out));
FDRE \NO_QSGMII_CHAR.TXCHARDISPVAL_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(p_10_out),
        .Q(TXCHARDISPVAL),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT4 #(
    .INIT(16'h0222)) 
     \NO_QSGMII_DATA.TXCHARISK_i_1 
       (.I0(CODE_GRPISK),
        .I1(I1),
        .I2(TX_EVEN),
        .I3(n_0_INSERT_IDLE_reg),
        .O(\n_0_NO_QSGMII_DATA.TXCHARISK_i_1 ));
FDRE \NO_QSGMII_DATA.TXCHARISK_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXCHARISK_i_1 ),
        .Q(TXCHARISK_INT),
        .R(1'b0));
LUT5 #(
    .INIT(32'h00BF0080)) 
     \NO_QSGMII_DATA.TXDATA[0]_i_1 
       (.I0(DISPARITY),
        .I1(n_0_INSERT_IDLE_reg),
        .I2(TX_EVEN),
        .I3(I1),
        .I4(\n_0_CODE_GRP_reg[0] ),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT4 #(
    .INIT(16'h0222)) 
     \NO_QSGMII_DATA.TXDATA[1]_i_1 
       (.I0(p_1_in),
        .I1(I1),
        .I2(TX_EVEN),
        .I3(n_0_INSERT_IDLE_reg),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[1]_i_1 ));
LUT5 #(
    .INIT(32'h00BF0080)) 
     \NO_QSGMII_DATA.TXDATA[2]_i_1 
       (.I0(DISPARITY),
        .I1(n_0_INSERT_IDLE_reg),
        .I2(TX_EVEN),
        .I3(I1),
        .I4(p_0_in18_in),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT4 #(
    .INIT(16'h0222)) 
     \NO_QSGMII_DATA.TXDATA[3]_i_1 
       (.I0(p_0_in),
        .I1(I1),
        .I2(TX_EVEN),
        .I3(n_0_INSERT_IDLE_reg),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[3]_i_1 ));
LUT5 #(
    .INIT(32'h007F0040)) 
     \NO_QSGMII_DATA.TXDATA[4]_i_1 
       (.I0(DISPARITY),
        .I1(n_0_INSERT_IDLE_reg),
        .I2(TX_EVEN),
        .I3(I1),
        .I4(p_1_in1_in),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT4 #(
    .INIT(16'h0222)) 
     \NO_QSGMII_DATA.TXDATA[5]_i_1 
       (.I0(p_1_in36_in),
        .I1(I1),
        .I2(TX_EVEN),
        .I3(n_0_INSERT_IDLE_reg),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[5]_i_1 ));
LUT4 #(
    .INIT(16'h3222)) 
     \NO_QSGMII_DATA.TXDATA[6]_i_1 
       (.I0(p_35_in),
        .I1(I1),
        .I2(TX_EVEN),
        .I3(n_0_INSERT_IDLE_reg),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[6]_i_1 ));
LUT5 #(
    .INIT(32'h00BF0080)) 
     \NO_QSGMII_DATA.TXDATA[7]_i_1 
       (.I0(DISPARITY),
        .I1(n_0_INSERT_IDLE_reg),
        .I2(TX_EVEN),
        .I3(I1),
        .I4(p_0_in37_in),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[7]_i_1 ));
FDRE \NO_QSGMII_DATA.TXDATA_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[0]_i_1 ),
        .Q(TXDATA[0]),
        .R(1'b0));
FDRE \NO_QSGMII_DATA.TXDATA_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[1]_i_1 ),
        .Q(TXDATA[1]),
        .R(1'b0));
FDRE \NO_QSGMII_DATA.TXDATA_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[2]_i_1 ),
        .Q(TXDATA[2]),
        .R(1'b0));
FDRE \NO_QSGMII_DATA.TXDATA_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[3]_i_1 ),
        .Q(TXDATA[3]),
        .R(1'b0));
FDRE \NO_QSGMII_DATA.TXDATA_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[4]_i_1 ),
        .Q(TXDATA[4]),
        .R(1'b0));
FDRE \NO_QSGMII_DATA.TXDATA_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[5]_i_1 ),
        .Q(TXDATA[5]),
        .R(1'b0));
FDRE \NO_QSGMII_DATA.TXDATA_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[6]_i_1 ),
        .Q(TXDATA[6]),
        .R(1'b0));
FDRE \NO_QSGMII_DATA.TXDATA_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[7]_i_1 ),
        .Q(TXDATA[7]),
        .R(1'b0));
LUT6 #(
    .INIT(64'h000009990FFF0666)) 
     \NO_QSGMII_DISP.DISPARITY_i_1 
       (.I0(DISP3),
        .I1(DISP5),
        .I2(TX_EVEN),
        .I3(n_0_INSERT_IDLE_reg),
        .I4(K28p5),
        .I5(DISPARITY),
        .O(\n_0_NO_QSGMII_DISP.DISPARITY_i_1 ));
LUT3 #(
    .INIT(8'h83)) 
     \NO_QSGMII_DISP.DISPARITY_i_2 
       (.I0(p_0_in37_in),
        .I1(p_35_in),
        .I2(p_1_in36_in),
        .O(DISP3));
LUT5 #(
    .INIT(32'hE881811F)) 
     \NO_QSGMII_DISP.DISPARITY_i_3 
       (.I0(p_1_in1_in),
        .I1(p_0_in),
        .I2(\n_0_CODE_GRP_reg[0] ),
        .I3(p_1_in),
        .I4(p_0_in18_in),
        .O(DISP5));
FDSE \NO_QSGMII_DISP.DISPARITY_reg 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_NO_QSGMII_DISP.DISPARITY_i_1 ),
        .Q(DISPARITY),
        .S(I1));
LUT6 #(
    .INIT(64'h0B0B0B0A0A0A0A0A)) 
     R_i_1__0
       (.I0(T),
        .I1(S),
        .I2(I1),
        .I3(TX_EVEN),
        .I4(TX_ER_REG1),
        .I5(n_0_R_reg),
        .O(n_0_R_i_1__0));
FDRE R_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_R_i_1__0),
        .Q(n_0_R_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h2F2F2F2F2020202F)) 
     SYNC_DISPARITY_i_1
       (.I0(TX_EVEN),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .I2(XMIT_CONFIG_INT),
        .I3(n_0_TX_PACKET_reg),
        .I4(\n_0_CODE_GRP[7]_i_2 ),
        .I5(SR),
        .O(n_0_SYNC_DISPARITY_i_1));
FDRE SYNC_DISPARITY_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_SYNC_DISPARITY_i_1),
        .Q(n_0_SYNC_DISPARITY_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFF00000B000000)) 
     S_i_1
       (.I0(TX_ER_REG1),
        .I1(TX_EVEN),
        .I2(TX_EN_REG1),
        .I3(gmii_tx_en),
        .I4(n_0_XMIT_DATA_INT_reg),
        .I5(TRIGGER_S),
        .O(S0));
FDRE S_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(S0),
        .Q(S),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT4 #(
    .INIT(16'h0040)) 
     TRIGGER_S_i_1
       (.I0(TX_EN_REG1),
        .I1(gmii_tx_en),
        .I2(TX_EVEN),
        .I3(TX_ER_REG1),
        .O(TRIGGER_S0));
FDRE TRIGGER_S_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(TRIGGER_S0),
        .Q(TRIGGER_S),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT2 #(
    .INIT(4'h2)) 
     TRIGGER_T_i_1
       (.I0(TX_EN_REG1),
        .I1(gmii_tx_en),
        .O(p_49_in));
FDRE TRIGGER_T_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(p_49_in),
        .Q(TRIGGER_T),
        .R(I1));
FDRE \TXD_REG1_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[0]),
        .Q(TXD_REG1[0]),
        .R(1'b0));
FDRE \TXD_REG1_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[1]),
        .Q(TXD_REG1[1]),
        .R(1'b0));
FDRE \TXD_REG1_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[2]),
        .Q(TXD_REG1[2]),
        .R(1'b0));
FDRE \TXD_REG1_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[3]),
        .Q(TXD_REG1[3]),
        .R(1'b0));
FDRE \TXD_REG1_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[4]),
        .Q(TXD_REG1[4]),
        .R(1'b0));
FDRE \TXD_REG1_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[5]),
        .Q(TXD_REG1[5]),
        .R(1'b0));
FDRE \TXD_REG1_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[6]),
        .Q(TXD_REG1[6]),
        .R(1'b0));
FDRE \TXD_REG1_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_txd[7]),
        .Q(TXD_REG1[7]),
        .R(1'b0));
FDRE TX_EN_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_tx_en),
        .Q(TX_EN_REG1),
        .R(1'b0));
FDRE TX_ER_REG1_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(gmii_tx_er),
        .Q(TX_ER_REG1),
        .R(1'b0));
LUT4 #(
    .INIT(16'h0B0A)) 
     TX_PACKET_i_1
       (.I0(S),
        .I1(T),
        .I2(I1),
        .I3(n_0_TX_PACKET_reg),
        .O(n_0_TX_PACKET_i_1));
FDRE TX_PACKET_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_TX_PACKET_i_1),
        .Q(n_0_TX_PACKET_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFF00E000E000E0)) 
     T_i_1__0
       (.I0(n_0_TX_PACKET_reg),
        .I1(S),
        .I2(TX_EN_REG1),
        .I3(gmii_tx_en),
        .I4(n_0_V_reg),
        .I5(TRIGGER_T),
        .O(T0));
FDRE T_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(T0),
        .Q(T),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_i_1 
       (.I0(TXCHARISK_INT),
        .I1(LOOPBACK_INT),
        .I2(rxchariscomma),
        .O(O9));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_i_1 
       (.I0(TXCHARISK_INT),
        .I1(LOOPBACK_INT),
        .I2(rxcharisk),
        .O(O8));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[0]_i_1 
       (.I0(TXDATA[0]),
        .I1(LOOPBACK_INT),
        .I2(I2[0]),
        .O(O10[0]));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[1]_i_1 
       (.I0(TXDATA[1]),
        .I1(LOOPBACK_INT),
        .I2(I2[1]),
        .O(O10[1]));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[2]_i_1 
       (.I0(TXDATA[2]),
        .I1(LOOPBACK_INT),
        .I2(I2[2]),
        .O(O10[2]));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[3]_i_1 
       (.I0(TXDATA[3]),
        .I1(LOOPBACK_INT),
        .I2(I2[3]),
        .O(O10[3]));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[4]_i_1 
       (.I0(TXDATA[4]),
        .I1(LOOPBACK_INT),
        .I2(I2[4]),
        .O(O10[4]));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[5]_i_1 
       (.I0(TXDATA[5]),
        .I1(LOOPBACK_INT),
        .I2(I2[5]),
        .O(O10[5]));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[6]_i_1 
       (.I0(TXDATA[6]),
        .I1(LOOPBACK_INT),
        .I2(I2[6]),
        .O(O10[6]));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[7]_i_1 
       (.I0(TXDATA[7]),
        .I1(LOOPBACK_INT),
        .I2(I2[7]),
        .O(O10[7]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.TXCHARDISPMODE_i_1 
       (.I0(TX_EVEN),
        .I1(LOOPBACK_INT),
        .I2(TXCHARDISPMODE_INT),
        .O(O2));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXCHARDISPVAL_i_1 
       (.I0(TXCHARDISPVAL),
        .I1(I1),
        .I2(LOOPBACK_INT),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.TXCHARISK_i_1 
       (.I0(TX_EVEN),
        .I1(LOOPBACK_INT),
        .I2(TXCHARISK_INT),
        .O(O7));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[0]_i_1 
       (.I0(TXDATA[0]),
        .I1(I1),
        .I2(LOOPBACK_INT),
        .O(D[0]));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[1]_i_1 
       (.I0(TXDATA[1]),
        .I1(I1),
        .I2(LOOPBACK_INT),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[2]_i_1 
       (.I0(TXDATA[2]),
        .I1(I1),
        .I2(LOOPBACK_INT),
        .O(O6));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[3]_i_1 
       (.I0(TXDATA[3]),
        .I1(I1),
        .I2(LOOPBACK_INT),
        .O(O5));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'h32)) 
     \USE_ROCKET_IO.TXDATA[4]_i_1 
       (.I0(TXDATA[4]),
        .I1(I1),
        .I2(LOOPBACK_INT),
        .O(D[2]));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[5]_i_1 
       (.I0(TXDATA[5]),
        .I1(I1),
        .I2(LOOPBACK_INT),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT4 #(
    .INIT(16'h0704)) 
     \USE_ROCKET_IO.TXDATA[6]_i_1 
       (.I0(TX_EVEN),
        .I1(LOOPBACK_INT),
        .I2(I1),
        .I3(TXDATA[6]),
        .O(D[3]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'h40)) 
     \USE_ROCKET_IO.TXDATA[7]_i_1 
       (.I0(I1),
        .I1(LOOPBACK_INT),
        .I2(TX_EVEN),
        .O(O11));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[7]_i_2 
       (.I0(TXDATA[7]),
        .I1(I1),
        .I2(LOOPBACK_INT),
        .O(O3));
LUT5 #(
    .INIT(32'h00F80088)) 
     V_i_1
       (.I0(n_0_V_i_2),
        .I1(n_0_XMIT_DATA_INT_reg),
        .I2(S),
        .I3(I1),
        .I4(n_0_V_reg),
        .O(n_0_V_i_1));
LUT3 #(
    .INIT(8'hFE)) 
     V_i_2
       (.I0(n_0_V_i_3),
        .I1(n_0_V_i_4),
        .I2(n_0_V_i_5),
        .O(n_0_V_i_2));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT5 #(
    .INIT(32'hF8080808)) 
     V_i_3
       (.I0(TX_ER_REG1),
        .I1(TX_EN_REG1),
        .I2(n_0_TX_PACKET_reg),
        .I3(gmii_tx_er),
        .I4(gmii_tx_en),
        .O(n_0_V_i_3));
LUT6 #(
    .INIT(64'h0F000F000F000E00)) 
     V_i_4
       (.I0(gmii_txd[5]),
        .I1(gmii_txd[7]),
        .I2(gmii_tx_en),
        .I3(gmii_tx_er),
        .I4(gmii_txd[6]),
        .I5(gmii_txd[4]),
        .O(n_0_V_i_4));
LUT6 #(
    .INIT(64'h07000F000F000F00)) 
     V_i_5
       (.I0(gmii_txd[2]),
        .I1(gmii_txd[1]),
        .I2(gmii_tx_en),
        .I3(gmii_tx_er),
        .I4(gmii_txd[0]),
        .I5(gmii_txd[3]),
        .O(n_0_V_i_5));
FDRE V_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_V_i_1),
        .Q(n_0_V_reg),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     XMIT_CONFIG_INT_i_1
       (.I0(TX_EVEN),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .I2(XMIT_CONFIG_INT),
        .O(n_0_XMIT_CONFIG_INT_i_1));
FDSE XMIT_CONFIG_INT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_XMIT_CONFIG_INT_i_1),
        .Q(XMIT_CONFIG_INT),
        .S(I1));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'hF1)) 
     XMIT_DATA_INT_i_1
       (.I0(\n_0_CODE_GRP_CNT_reg[1] ),
        .I1(TX_EVEN),
        .I2(n_0_XMIT_DATA_INT_reg),
        .O(n_0_XMIT_DATA_INT_i_1));
FDRE XMIT_DATA_INT_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_XMIT_DATA_INT_i_1),
        .Q(n_0_XMIT_DATA_INT_reg),
        .R(I1));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_GTWIZARD_GT" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_GT__parameterized0
   (cplllock,
    txn,
    txp,
    I_0,
    O1,
    txoutclk,
    O2,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    O3,
    O4,
    O5,
    O6,
    O7,
    ack_flag,
    independent_clock_bufg,
    userclk2,
    gtrefclk,
    data_in,
    gt0_gttxreset_in0_out,
    rxn,
    rxp,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    RXDFELFHOLD,
    reset_out,
    reset,
    RXUSERRDY,
    userclk,
    TXPD,
    TXUSERRDY,
    RXPD,
    Q,
    I1,
    I2,
    I3,
    I4,
    reset_out_1);
  output cplllock;
  output txn;
  output txp;
  output I_0;
  output O1;
  output txoutclk;
  output O2;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output [1:0]O6;
  output [1:0]O7;
  output ack_flag;
  input independent_clock_bufg;
  input userclk2;
  input gtrefclk;
  input data_in;
  input gt0_gttxreset_in0_out;
  input rxn;
  input rxp;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input RXDFELFHOLD;
  input reset_out;
  input reset;
  input RXUSERRDY;
  input userclk;
  input [0:0]TXPD;
  input TXUSERRDY;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]I1;
  input [1:0]I2;
  input [1:0]I3;
  input I4;
  input reset_out_1;

  wire C;
  wire CPLLPD;
  wire CPLLREFCLKLOST;
  wire CPLLRESET;
  wire [1:0]D;
  wire D0_in;
  wire D0_in1_in;
  wire D_0;
  wire [1:0]I1;
  wire [1:0]I2;
  wire [1:0]I3;
  wire I4;
  wire I_0;
  wire O1;
  wire O2;
  wire [15:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire [1:0]O6;
  wire [1:0]O7;
  wire [15:0]Q;
  wire Q_1;
  wire [0:0]RXBUFSTATUS;
  wire RXDFELFHOLD;
  wire [0:0]RXPD;
  wire RXUSERRDY;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire TXUSERRDY;
  wire ack_flag;
  wire cplllock;
  wire cpllreset_ovrd_i;
  wire data_in;
  wire flag;
  wire flag2;
  wire gt0_gttxreset_in0_out;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gtrefclk;
  wire independent_clock_bufg;
  wire n_0_ack_flag_i_1;
  wire n_0_ack_sync_reg1;
  wire n_0_ack_sync_reg2;
  wire n_0_ack_sync_reg3;
  wire n_0_ack_sync_reg4;
  wire n_0_ack_sync_reg5;
  wire \n_0_cpllpd_wait_reg[94]_srl31 ;
  wire \n_0_cpllreset_wait_reg[126]_srl31 ;
  wire n_0_data_sync_reg2;
  wire n_0_data_sync_reg3;
  wire n_0_data_sync_reg4;
  wire n_0_flag_i_1;
  wire n_0_gtxe2_i;
  wire n_10_gtxe2_i;
  wire n_16_gtxe2_i;
  wire n_170_gtxe2_i;
  wire n_171_gtxe2_i;
  wire n_172_gtxe2_i;
  wire n_173_gtxe2_i;
  wire n_174_gtxe2_i;
  wire n_175_gtxe2_i;
  wire n_176_gtxe2_i;
  wire n_177_gtxe2_i;
  wire n_178_gtxe2_i;
  wire n_179_gtxe2_i;
  wire n_180_gtxe2_i;
  wire n_181_gtxe2_i;
  wire n_182_gtxe2_i;
  wire n_183_gtxe2_i;
  wire n_184_gtxe2_i;
  wire \n_1_cpllpd_wait_reg[31]_srl32 ;
  wire \n_1_cpllpd_wait_reg[63]_srl32 ;
  wire \n_1_cpllreset_wait_reg[31]_srl32 ;
  wire \n_1_cpllreset_wait_reg[63]_srl32 ;
  wire \n_1_cpllreset_wait_reg[95]_srl32 ;
  wire n_27_gtxe2_i;
  wire n_38_gtxe2_i;
  wire n_39_gtxe2_i;
  wire n_3_gtxe2_i;
  wire n_46_gtxe2_i;
  wire n_47_gtxe2_i;
  wire n_48_gtxe2_i;
  wire n_49_gtxe2_i;
  wire n_4_gtxe2_i;
  wire n_50_gtxe2_i;
  wire n_51_gtxe2_i;
  wire n_52_gtxe2_i;
  wire n_53_gtxe2_i;
  wire n_54_gtxe2_i;
  wire n_55_gtxe2_i;
  wire n_56_gtxe2_i;
  wire n_57_gtxe2_i;
  wire n_58_gtxe2_i;
  wire n_59_gtxe2_i;
  wire n_60_gtxe2_i;
  wire n_61_gtxe2_i;
  wire n_81_gtxe2_i;
  wire n_83_gtxe2_i;
  wire n_84_gtxe2_i;
  wire n_9_gtxe2_i;
  wire reset;
  wire reset_out;
  wire reset_out_1;
  wire rxn;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire userclk2;
  wire \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [63:16]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXSTATUS_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

LUT4 #(
    .INIT(16'hFF90)) 
     ack_flag_i_1
       (.I0(n_0_ack_sync_reg5),
        .I1(Q_1),
        .I2(ack_flag),
        .I3(flag2),
        .O(n_0_ack_flag_i_1));
FDRE #(
    .INIT(1'b0)) 
     ack_flag_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_ack_flag_i_1),
        .Q(ack_flag),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(D0_in1_in),
        .Q(n_0_ack_sync_reg1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_ack_sync_reg1),
        .Q(n_0_ack_sync_reg2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_ack_sync_reg2),
        .Q(n_0_ack_sync_reg3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_ack_sync_reg3),
        .Q(n_0_ack_sync_reg4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_ack_sync_reg4),
        .Q(n_0_ack_sync_reg5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_ack_sync_reg5),
        .Q(Q_1),
        .R(1'b0));
(* box_type = "PRIMITIVE" *) 
   BUFG bufg_gtrefclk0_in
       (.I(gtrefclk),
        .O(C));
(* srl_bus_name = "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg " *) 
   (* srl_name = "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg[31]_srl32 " *) 
   SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
     \cpllpd_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(1'b0),
        .Q(\NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllpd_wait_reg[31]_srl32 ));
(* srl_bus_name = "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg " *) 
   (* srl_name = "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg[63]_srl32 " *) 
   SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
     \cpllpd_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(\n_1_cpllpd_wait_reg[31]_srl32 ),
        .Q(\NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllpd_wait_reg[63]_srl32 ));
(* srl_bus_name = "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg " *) 
   (* srl_name = "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg[94]_srl31 " *) 
   SRLC32E #(
    .INIT(32'h7FFFFFFF)) 
     \cpllpd_wait_reg[94]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\n_1_cpllpd_wait_reg[63]_srl32 ),
        .Q(\n_0_cpllpd_wait_reg[94]_srl31 ),
        .Q31(\NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b1)) 
     \cpllpd_wait_reg[95] 
       (.C(C),
        .CE(1'b1),
        .D(\n_0_cpllpd_wait_reg[94]_srl31 ),
        .Q(CPLLPD),
        .R(1'b0));
(* srl_bus_name = "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg " *) 
   (* srl_name = "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg[126]_srl31 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \cpllreset_wait_reg[126]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(C),
        .D(\n_1_cpllreset_wait_reg[95]_srl32 ),
        .Q(\n_0_cpllreset_wait_reg[126]_srl31 ),
        .Q31(\NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \cpllreset_wait_reg[127] 
       (.C(C),
        .CE(1'b1),
        .D(\n_0_cpllreset_wait_reg[126]_srl31 ),
        .Q(cpllreset_ovrd_i),
        .R(1'b0));
(* srl_bus_name = "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg " *) 
   (* srl_name = "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg[31]_srl32 " *) 
   SRLC32E #(
    .INIT(32'h000000FF)) 
     \cpllreset_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(1'b0),
        .Q(\NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllreset_wait_reg[31]_srl32 ));
(* srl_bus_name = "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg " *) 
   (* srl_name = "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg[63]_srl32 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \cpllreset_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(\n_1_cpllreset_wait_reg[31]_srl32 ),
        .Q(\NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllreset_wait_reg[63]_srl32 ));
(* srl_bus_name = "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg " *) 
   (* srl_name = "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg[95]_srl32 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \cpllreset_wait_reg[95]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(C),
        .D(\n_1_cpllreset_wait_reg[63]_srl32 ),
        .Q(\NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllreset_wait_reg[95]_srl32 ));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(C),
        .CE(1'b1),
        .D(flag),
        .Q(D_0),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(C),
        .CE(1'b1),
        .D(D_0),
        .Q(n_0_data_sync_reg2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(C),
        .CE(1'b1),
        .D(n_0_data_sync_reg2),
        .Q(n_0_data_sync_reg3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(C),
        .CE(1'b1),
        .D(n_0_data_sync_reg3),
        .Q(n_0_data_sync_reg4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(C),
        .CE(1'b1),
        .D(n_0_data_sync_reg4),
        .Q(D0_in),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(C),
        .CE(1'b1),
        .D(D0_in),
        .Q(D0_in1_in),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     flag2_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I4),
        .Q(flag2),
        .R(1'b0));
LUT3 #(
    .INIT(8'hB4)) 
     flag_i_1
       (.I0(ack_flag),
        .I1(reset_out_1),
        .I2(flag),
        .O(n_0_flag_i_1));
FDRE #(
    .INIT(1'b0)) 
     flag_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_flag_i_1),
        .Q(flag),
        .R(1'b0));
(* box_type = "PRIMITIVE" *) 
   GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b0001111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("TRUE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(36),
    .CLK_COR_MIN_LAT(33),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0110111100),
    .CLK_COR_SEQ_1_2(10'b0001010000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0110111100),
    .CLK_COR_SEQ_2_2(10'b0010110101),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("TRUE"),
    .CLK_COR_SEQ_LEN(2),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h00018480),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FULL"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(8),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h03000023FF40080020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(4),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b1),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(5),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(20),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0954),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(0),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(4),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(5),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(20),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(0),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
     gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(n_0_gtxe2_i),
        .CPLLLOCK(cplllock),
        .CPLLLOCKDETCLK(independent_clock_bufg),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(CPLLPD),
        .CPLLREFCLKLOST(CPLLREFCLKLOST),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(CPLLRESET),
        .DMONITOROUT({n_177_gtxe2_i,n_178_gtxe2_i,n_179_gtxe2_i,n_180_gtxe2_i,n_181_gtxe2_i,n_182_gtxe2_i,n_183_gtxe2_i,n_184_gtxe2_i}),
        .DRPADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPCLK(userclk2),
        .DRPDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DRPDO({n_46_gtxe2_i,n_47_gtxe2_i,n_48_gtxe2_i,n_49_gtxe2_i,n_50_gtxe2_i,n_51_gtxe2_i,n_52_gtxe2_i,n_53_gtxe2_i,n_54_gtxe2_i,n_55_gtxe2_i,n_56_gtxe2_i,n_57_gtxe2_i,n_58_gtxe2_i,n_59_gtxe2_i,n_60_gtxe2_i,n_61_gtxe2_i}),
        .DRPEN(1'b0),
        .DRPRDY(n_3_gtxe2_i),
        .DRPWE(1'b0),
        .EYESCANDATAERROR(n_4_gtxe2_i),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(gtrefclk),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(data_in),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gt0_gttxreset_in0_out),
        .GTXRXN(rxn),
        .GTXRXP(rxp),
        .GTXTXN(txn),
        .GTXTXP(txp),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt0_qplloutclk_in),
        .QPLLREFCLK(gt0_qplloutrefclk_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({RXBUFSTATUS,n_83_gtxe2_i,n_84_gtxe2_i}),
        .RXBYTEISALIGNED(n_9_gtxe2_i),
        .RXBYTEREALIGN(n_10_gtxe2_i),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:2],O4}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:2],O5}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(D),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(n_16_gtxe2_i),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:16],O3}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(RXDFELFHOLD),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(RXDFELFHOLD),
        .RXDFELFOVRDEN(1'b1),
        .RXDFELPMRESET(1'b0),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:2],O6}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b0),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(reset_out),
        .RXMONITOROUT({n_170_gtxe2_i,n_171_gtxe2_i,n_172_gtxe2_i,n_173_gtxe2_i,n_174_gtxe2_i,n_175_gtxe2_i,n_176_gtxe2_i}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:2],O7}),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(I_0),
        .RXOUTCLKFABRIC(NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(reset_out),
        .RXPCSRESET(reset),
        .RXPD({RXPD,RXPD}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(n_27_gtxe2_i),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(O1),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS(NLW_gtxe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(RXUSERRDY),
        .RXUSRCLK(userclk),
        .RXUSRCLK2(userclk),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({TXBUFSTATUS,n_81_gtxe2_i}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,I1}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,I2}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,I3}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b0,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(TXPD),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(txoutclk),
        .TXOUTCLKFABRIC(n_38_gtxe2_i),
        .TXOUTCLKPCS(n_39_gtxe2_i),
        .TXOUTCLKSEL({1'b1,1'b0,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({TXPD,TXPD}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(O2),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(TXUSERRDY),
        .TXUSRCLK(userclk),
        .TXUSRCLK2(userclk));
LUT3 #(
    .INIT(8'hBE)) 
     gtxe2_i_i_1
       (.I0(cpllreset_ovrd_i),
        .I1(D0_in),
        .I2(D0_in1_in),
        .O(CPLLRESET));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_GTWIZARD" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD__parameterized0
   (cplllock,
    txn,
    txp,
    I_0,
    txoutclk,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    O1,
    O2,
    O3,
    O4,
    O5,
    data_in,
    independent_clock_bufg,
    userclk2,
    gtrefclk,
    rxn,
    rxp,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    reset_out,
    reset,
    userclk,
    TXPD,
    RXPD,
    Q,
    I1,
    I2,
    I3,
    pma_reset,
    mmcm_locked,
    data_out,
    I4,
    I5);
  output cplllock;
  output txn;
  output txp;
  output I_0;
  output txoutclk;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]O1;
  output [1:0]O2;
  output [1:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output data_in;
  input independent_clock_bufg;
  input userclk2;
  input gtrefclk;
  input rxn;
  input rxp;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input reset_out;
  input reset;
  input userclk;
  input [0:0]TXPD;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]I1;
  input [1:0]I2;
  input [1:0]I3;
  input pma_reset;
  input mmcm_locked;
  input data_out;
  input I4;
  input I5;

  wire [1:0]D;
  wire [1:0]I1;
  wire [1:0]I2;
  wire [1:0]I3;
  wire I4;
  wire I5;
  wire I_0;
  wire [15:0]O1;
  wire [1:0]O2;
  wire [1:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire [0:0]RXPD;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire cplllock;
  wire data_in;
  wire data_out;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gtrefclk;
  wire independent_clock_bufg;
  wire mmcm_locked;
  wire pma_reset;
  wire reset;
  wire reset_out;
  wire rxn;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire userclk2;

gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_init__parameterized0 U0
       (.D(D),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I_0(I_0),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXPD(RXPD),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .cplllock(cplllock),
        .data_in(data_in),
        .data_out(data_out),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gtrefclk(gtrefclk),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .pma_reset(pma_reset),
        .reset(reset),
        .reset_out(reset_out),
        .rxn(rxn),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk),
        .userclk2(userclk2));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_GTWIZARD_init" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_init__parameterized0
   (cplllock,
    txn,
    txp,
    I_0,
    txoutclk,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    O1,
    O2,
    O3,
    O4,
    O5,
    data_in,
    independent_clock_bufg,
    userclk2,
    gtrefclk,
    rxn,
    rxp,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    reset_out,
    reset,
    userclk,
    TXPD,
    RXPD,
    Q,
    I1,
    I2,
    I3,
    pma_reset,
    mmcm_locked,
    data_out,
    I4,
    I5);
  output cplllock;
  output txn;
  output txp;
  output I_0;
  output txoutclk;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]O1;
  output [1:0]O2;
  output [1:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output data_in;
  input independent_clock_bufg;
  input userclk2;
  input gtrefclk;
  input rxn;
  input rxp;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input reset_out;
  input reset;
  input userclk;
  input [0:0]TXPD;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]I1;
  input [1:0]I2;
  input [1:0]I3;
  input pma_reset;
  input mmcm_locked;
  input data_out;
  input I4;
  input I5;

  wire CPLL_RESET;
  wire [1:0]D;
  wire [1:0]I1;
  wire [1:0]I2;
  wire [1:0]I3;
  wire I4;
  wire I5;
  wire I_0;
  wire [15:0]O1;
  wire [1:0]O2;
  wire [1:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire RXDFELFHOLD;
  wire [0:0]RXPD;
  wire RXUSERRDY;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire TXUSERRDY;
  wire cplllock;
  wire [13:1]data0;
  wire data_in;
  wire data_out;
  wire data_out_2;
  wire \gt0_GTWIZARD_i/ack_flag ;
  wire gt0_gtrxreset_in1_out;
  wire gt0_gttxreset_in0_out;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire [13:0]gt0_rx_cdrlock_counter;
  wire [13:0]gt0_rx_cdrlock_counter_0;
  wire gt0_rxresetdone_out;
  wire gtrefclk;
  wire independent_clock_bufg;
  wire mmcm_locked;
  wire n_0_cpll_reset_sync;
  wire \n_0_gt0_rx_cdrlock_counter[12]_i_3 ;
  wire \n_0_gt0_rx_cdrlock_counter[12]_i_4 ;
  wire \n_0_gt0_rx_cdrlock_counter[12]_i_5 ;
  wire \n_0_gt0_rx_cdrlock_counter[12]_i_6 ;
  wire \n_0_gt0_rx_cdrlock_counter[13]_i_2 ;
  wire \n_0_gt0_rx_cdrlock_counter[13]_i_3 ;
  wire \n_0_gt0_rx_cdrlock_counter[13]_i_5 ;
  wire \n_0_gt0_rx_cdrlock_counter[4]_i_3 ;
  wire \n_0_gt0_rx_cdrlock_counter[4]_i_4 ;
  wire \n_0_gt0_rx_cdrlock_counter[4]_i_5 ;
  wire \n_0_gt0_rx_cdrlock_counter[4]_i_6 ;
  wire \n_0_gt0_rx_cdrlock_counter[8]_i_3 ;
  wire \n_0_gt0_rx_cdrlock_counter[8]_i_4 ;
  wire \n_0_gt0_rx_cdrlock_counter[8]_i_5 ;
  wire \n_0_gt0_rx_cdrlock_counter[8]_i_6 ;
  wire \n_0_gt0_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_0_gt0_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_0_gt0_rx_cdrlock_counter_reg[8]_i_2 ;
  wire n_0_gt0_rx_cdrlocked_i_1;
  wire n_0_gt0_rx_cdrlocked_reg;
  wire \n_1_gt0_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_1_gt0_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_1_gt0_rx_cdrlock_counter_reg[8]_i_2 ;
  wire \n_2_gt0_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_2_gt0_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_2_gt0_rx_cdrlock_counter_reg[8]_i_2 ;
  wire \n_3_gt0_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_3_gt0_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_3_gt0_rx_cdrlock_counter_reg[8]_i_2 ;
  wire n_4_gtwizard_i;
  wire n_6_gtwizard_i;
  wire pma_reset;
  wire reset;
  wire reset_out;
  wire reset_out_1;
  wire rxn;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire userclk2;
  wire [3:0]\NLW_gt0_rx_cdrlock_counter_reg[13]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gt0_rx_cdrlock_counter_reg[13]_i_4_O_UNCONNECTED ;

gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_3 cpll_reset_sync
       (.CPLL_RESET(CPLL_RESET),
        .O1(n_0_cpll_reset_sync),
        .ack_flag(\gt0_GTWIZARD_i/ack_flag ),
        .reset_out(reset_out_1),
        .userclk2(userclk2));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT4 #(
    .INIT(16'h00FE)) 
     \gt0_rx_cdrlock_counter[0]_i_1 
       (.I0(\n_0_gt0_rx_cdrlock_counter[13]_i_2 ),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(\n_0_gt0_rx_cdrlock_counter[13]_i_3 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .O(gt0_rx_cdrlock_counter_0[0]));
LUT5 #(
    .INIT(32'hFF00FF01)) 
     \gt0_rx_cdrlock_counter[10]_i_1 
       (.I0(\n_0_gt0_rx_cdrlock_counter[13]_i_2 ),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(\n_0_gt0_rx_cdrlock_counter[13]_i_3 ),
        .I3(data0[10]),
        .I4(gt0_rx_cdrlock_counter[0]),
        .O(gt0_rx_cdrlock_counter_0[10]));
LUT5 #(
    .INIT(32'hFFFE0000)) 
     \gt0_rx_cdrlock_counter[11]_i_1 
       (.I0(\n_0_gt0_rx_cdrlock_counter[13]_i_2 ),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(\n_0_gt0_rx_cdrlock_counter[13]_i_3 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[11]),
        .O(gt0_rx_cdrlock_counter_0[11]));
LUT5 #(
    .INIT(32'hFFFE0000)) 
     \gt0_rx_cdrlock_counter[12]_i_1 
       (.I0(\n_0_gt0_rx_cdrlock_counter[13]_i_2 ),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(\n_0_gt0_rx_cdrlock_counter[13]_i_3 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[12]),
        .O(gt0_rx_cdrlock_counter_0[12]));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[12]_i_3 
       (.I0(gt0_rx_cdrlock_counter[12]),
        .O(\n_0_gt0_rx_cdrlock_counter[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[12]_i_4 
       (.I0(gt0_rx_cdrlock_counter[11]),
        .O(\n_0_gt0_rx_cdrlock_counter[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[12]_i_5 
       (.I0(gt0_rx_cdrlock_counter[10]),
        .O(\n_0_gt0_rx_cdrlock_counter[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[12]_i_6 
       (.I0(gt0_rx_cdrlock_counter[9]),
        .O(\n_0_gt0_rx_cdrlock_counter[12]_i_6 ));
LUT5 #(
    .INIT(32'hFF00FF01)) 
     \gt0_rx_cdrlock_counter[13]_i_1 
       (.I0(\n_0_gt0_rx_cdrlock_counter[13]_i_2 ),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(\n_0_gt0_rx_cdrlock_counter[13]_i_3 ),
        .I3(data0[13]),
        .I4(gt0_rx_cdrlock_counter[0]),
        .O(gt0_rx_cdrlock_counter_0[13]));
LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
     \gt0_rx_cdrlock_counter[13]_i_2 
       (.I0(gt0_rx_cdrlock_counter[10]),
        .I1(gt0_rx_cdrlock_counter[12]),
        .I2(gt0_rx_cdrlock_counter[2]),
        .I3(gt0_rx_cdrlock_counter[3]),
        .I4(gt0_rx_cdrlock_counter[1]),
        .I5(gt0_rx_cdrlock_counter[13]),
        .O(\n_0_gt0_rx_cdrlock_counter[13]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
     \gt0_rx_cdrlock_counter[13]_i_3 
       (.I0(gt0_rx_cdrlock_counter[4]),
        .I1(gt0_rx_cdrlock_counter[6]),
        .I2(gt0_rx_cdrlock_counter[11]),
        .I3(gt0_rx_cdrlock_counter[9]),
        .I4(gt0_rx_cdrlock_counter[7]),
        .I5(gt0_rx_cdrlock_counter[8]),
        .O(\n_0_gt0_rx_cdrlock_counter[13]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[13]_i_5 
       (.I0(gt0_rx_cdrlock_counter[13]),
        .O(\n_0_gt0_rx_cdrlock_counter[13]_i_5 ));
LUT5 #(
    .INIT(32'hFFFE0000)) 
     \gt0_rx_cdrlock_counter[1]_i_1 
       (.I0(\n_0_gt0_rx_cdrlock_counter[13]_i_2 ),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(\n_0_gt0_rx_cdrlock_counter[13]_i_3 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[1]),
        .O(gt0_rx_cdrlock_counter_0[1]));
LUT5 #(
    .INIT(32'hFFFE0000)) 
     \gt0_rx_cdrlock_counter[2]_i_1 
       (.I0(\n_0_gt0_rx_cdrlock_counter[13]_i_2 ),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(\n_0_gt0_rx_cdrlock_counter[13]_i_3 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[2]),
        .O(gt0_rx_cdrlock_counter_0[2]));
LUT5 #(
    .INIT(32'hFFFE0000)) 
     \gt0_rx_cdrlock_counter[3]_i_1 
       (.I0(\n_0_gt0_rx_cdrlock_counter[13]_i_2 ),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(\n_0_gt0_rx_cdrlock_counter[13]_i_3 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[3]),
        .O(gt0_rx_cdrlock_counter_0[3]));
LUT5 #(
    .INIT(32'hFF00FF01)) 
     \gt0_rx_cdrlock_counter[4]_i_1 
       (.I0(\n_0_gt0_rx_cdrlock_counter[13]_i_2 ),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(\n_0_gt0_rx_cdrlock_counter[13]_i_3 ),
        .I3(data0[4]),
        .I4(gt0_rx_cdrlock_counter[0]),
        .O(gt0_rx_cdrlock_counter_0[4]));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[4]_i_3 
       (.I0(gt0_rx_cdrlock_counter[4]),
        .O(\n_0_gt0_rx_cdrlock_counter[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[4]_i_4 
       (.I0(gt0_rx_cdrlock_counter[3]),
        .O(\n_0_gt0_rx_cdrlock_counter[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[4]_i_5 
       (.I0(gt0_rx_cdrlock_counter[2]),
        .O(\n_0_gt0_rx_cdrlock_counter[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[4]_i_6 
       (.I0(gt0_rx_cdrlock_counter[1]),
        .O(\n_0_gt0_rx_cdrlock_counter[4]_i_6 ));
LUT5 #(
    .INIT(32'hFFFE0000)) 
     \gt0_rx_cdrlock_counter[5]_i_1 
       (.I0(\n_0_gt0_rx_cdrlock_counter[13]_i_2 ),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(\n_0_gt0_rx_cdrlock_counter[13]_i_3 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[5]),
        .O(gt0_rx_cdrlock_counter_0[5]));
LUT5 #(
    .INIT(32'hFFFE0000)) 
     \gt0_rx_cdrlock_counter[6]_i_1 
       (.I0(\n_0_gt0_rx_cdrlock_counter[13]_i_2 ),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(\n_0_gt0_rx_cdrlock_counter[13]_i_3 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[6]),
        .O(gt0_rx_cdrlock_counter_0[6]));
LUT5 #(
    .INIT(32'hFFFE0000)) 
     \gt0_rx_cdrlock_counter[7]_i_1 
       (.I0(\n_0_gt0_rx_cdrlock_counter[13]_i_2 ),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(\n_0_gt0_rx_cdrlock_counter[13]_i_3 ),
        .I3(gt0_rx_cdrlock_counter[0]),
        .I4(data0[7]),
        .O(gt0_rx_cdrlock_counter_0[7]));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT5 #(
    .INIT(32'hFF00FF01)) 
     \gt0_rx_cdrlock_counter[8]_i_1 
       (.I0(\n_0_gt0_rx_cdrlock_counter[13]_i_2 ),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(\n_0_gt0_rx_cdrlock_counter[13]_i_3 ),
        .I3(data0[8]),
        .I4(gt0_rx_cdrlock_counter[0]),
        .O(gt0_rx_cdrlock_counter_0[8]));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[8]_i_3 
       (.I0(gt0_rx_cdrlock_counter[8]),
        .O(\n_0_gt0_rx_cdrlock_counter[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[8]_i_4 
       (.I0(gt0_rx_cdrlock_counter[7]),
        .O(\n_0_gt0_rx_cdrlock_counter[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[8]_i_5 
       (.I0(gt0_rx_cdrlock_counter[6]),
        .O(\n_0_gt0_rx_cdrlock_counter[8]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \gt0_rx_cdrlock_counter[8]_i_6 
       (.I0(gt0_rx_cdrlock_counter[5]),
        .O(\n_0_gt0_rx_cdrlock_counter[8]_i_6 ));
LUT5 #(
    .INIT(32'hFF00FF01)) 
     \gt0_rx_cdrlock_counter[9]_i_1 
       (.I0(\n_0_gt0_rx_cdrlock_counter[13]_i_2 ),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(\n_0_gt0_rx_cdrlock_counter[13]_i_3 ),
        .I3(data0[9]),
        .I4(gt0_rx_cdrlock_counter[0]),
        .O(gt0_rx_cdrlock_counter_0[9]));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[0]),
        .Q(gt0_rx_cdrlock_counter[0]),
        .R(data_out_2));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[10]),
        .Q(gt0_rx_cdrlock_counter[10]),
        .R(data_out_2));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[11]),
        .Q(gt0_rx_cdrlock_counter[11]),
        .R(data_out_2));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[12]),
        .Q(gt0_rx_cdrlock_counter[12]),
        .R(data_out_2));
CARRY4 \gt0_rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\n_0_gt0_rx_cdrlock_counter_reg[8]_i_2 ),
        .CO({\n_0_gt0_rx_cdrlock_counter_reg[12]_i_2 ,\n_1_gt0_rx_cdrlock_counter_reg[12]_i_2 ,\n_2_gt0_rx_cdrlock_counter_reg[12]_i_2 ,\n_3_gt0_rx_cdrlock_counter_reg[12]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\n_0_gt0_rx_cdrlock_counter[12]_i_3 ,\n_0_gt0_rx_cdrlock_counter[12]_i_4 ,\n_0_gt0_rx_cdrlock_counter[12]_i_5 ,\n_0_gt0_rx_cdrlock_counter[12]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[13]),
        .Q(gt0_rx_cdrlock_counter[13]),
        .R(data_out_2));
CARRY4 \gt0_rx_cdrlock_counter_reg[13]_i_4 
       (.CI(\n_0_gt0_rx_cdrlock_counter_reg[12]_i_2 ),
        .CO(\NLW_gt0_rx_cdrlock_counter_reg[13]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gt0_rx_cdrlock_counter_reg[13]_i_4_O_UNCONNECTED [3:1],data0[13]}),
        .S({1'b0,1'b0,1'b0,\n_0_gt0_rx_cdrlock_counter[13]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[1]),
        .Q(gt0_rx_cdrlock_counter[1]),
        .R(data_out_2));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[2]),
        .Q(gt0_rx_cdrlock_counter[2]),
        .R(data_out_2));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[3]),
        .Q(gt0_rx_cdrlock_counter[3]),
        .R(data_out_2));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[4]),
        .Q(gt0_rx_cdrlock_counter[4]),
        .R(data_out_2));
CARRY4 \gt0_rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\n_0_gt0_rx_cdrlock_counter_reg[4]_i_2 ,\n_1_gt0_rx_cdrlock_counter_reg[4]_i_2 ,\n_2_gt0_rx_cdrlock_counter_reg[4]_i_2 ,\n_3_gt0_rx_cdrlock_counter_reg[4]_i_2 }),
        .CYINIT(gt0_rx_cdrlock_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\n_0_gt0_rx_cdrlock_counter[4]_i_3 ,\n_0_gt0_rx_cdrlock_counter[4]_i_4 ,\n_0_gt0_rx_cdrlock_counter[4]_i_5 ,\n_0_gt0_rx_cdrlock_counter[4]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[5]),
        .Q(gt0_rx_cdrlock_counter[5]),
        .R(data_out_2));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[6]),
        .Q(gt0_rx_cdrlock_counter[6]),
        .R(data_out_2));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[7]),
        .Q(gt0_rx_cdrlock_counter[7]),
        .R(data_out_2));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[8]),
        .Q(gt0_rx_cdrlock_counter[8]),
        .R(data_out_2));
CARRY4 \gt0_rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\n_0_gt0_rx_cdrlock_counter_reg[4]_i_2 ),
        .CO({\n_0_gt0_rx_cdrlock_counter_reg[8]_i_2 ,\n_1_gt0_rx_cdrlock_counter_reg[8]_i_2 ,\n_2_gt0_rx_cdrlock_counter_reg[8]_i_2 ,\n_3_gt0_rx_cdrlock_counter_reg[8]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\n_0_gt0_rx_cdrlock_counter[8]_i_3 ,\n_0_gt0_rx_cdrlock_counter[8]_i_4 ,\n_0_gt0_rx_cdrlock_counter[8]_i_5 ,\n_0_gt0_rx_cdrlock_counter[8]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \gt0_rx_cdrlock_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter_0[9]),
        .Q(gt0_rx_cdrlock_counter[9]),
        .R(data_out_2));
LUT5 #(
    .INIT(32'hFF00FF01)) 
     gt0_rx_cdrlocked_i_1
       (.I0(\n_0_gt0_rx_cdrlock_counter[13]_i_2 ),
        .I1(gt0_rx_cdrlock_counter[5]),
        .I2(\n_0_gt0_rx_cdrlock_counter[13]_i_3 ),
        .I3(n_0_gt0_rx_cdrlocked_reg),
        .I4(gt0_rx_cdrlock_counter[0]),
        .O(n_0_gt0_rx_cdrlocked_i_1));
FDRE gt0_rx_cdrlocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_gt0_rx_cdrlocked_i_1),
        .Q(n_0_gt0_rx_cdrlocked_reg),
        .R(data_out_2));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_RX_STARTUP_FSM__parameterized0 gt0_rxresetfsm_i
       (.I1(n_0_gt0_rx_cdrlocked_reg),
        .I2(n_4_gtwizard_i),
        .I4(I4),
        .RXDFELFHOLD(RXDFELFHOLD),
        .RXUSERRDY(RXUSERRDY),
        .cplllock(cplllock),
        .data_in(gt0_gtrxreset_in1_out),
        .data_out(data_out),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .pma_reset(pma_reset),
        .userclk(userclk));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_TX_STARTUP_FSM__parameterized0 gt0_txresetfsm_i
       (.CPLL_RESET(CPLL_RESET),
        .I1(n_6_gtwizard_i),
        .I5(I5),
        .TXUSERRDY(TXUSERRDY),
        .cplllock(cplllock),
        .data_in(data_in),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .pma_reset(pma_reset),
        .userclk(userclk));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_multi_gt__parameterized0 gtwizard_i
       (.D(D),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(n_0_cpll_reset_sync),
        .I_0(I_0),
        .O1(n_4_gtwizard_i),
        .O2(n_6_gtwizard_i),
        .O3(O1),
        .O4(O2),
        .O5(O3),
        .O6(O4),
        .O7(O5),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXDFELFHOLD(RXDFELFHOLD),
        .RXPD(RXPD),
        .RXUSERRDY(RXUSERRDY),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .TXUSERRDY(TXUSERRDY),
        .ack_flag(\gt0_GTWIZARD_i/ack_flag ),
        .cplllock(cplllock),
        .data_in(gt0_gtrxreset_in1_out),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gtrefclk(gtrefclk),
        .independent_clock_bufg(independent_clock_bufg),
        .reset(reset),
        .reset_out(reset_out),
        .reset_out_1(reset_out_1),
        .rxn(rxn),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk),
        .userclk2(userclk2));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_4 sync_block_gtrxreset
       (.data_in(gt0_gtrxreset_in1_out),
        .data_out(data_out_2),
        .independent_clock_bufg(independent_clock_bufg));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_GTWIZARD_multi_gt" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_multi_gt__parameterized0
   (cplllock,
    txn,
    txp,
    I_0,
    O1,
    txoutclk,
    O2,
    D,
    TXBUFSTATUS,
    RXBUFSTATUS,
    O3,
    O4,
    O5,
    O6,
    O7,
    ack_flag,
    independent_clock_bufg,
    userclk2,
    gtrefclk,
    data_in,
    gt0_gttxreset_in0_out,
    rxn,
    rxp,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    RXDFELFHOLD,
    reset_out,
    reset,
    RXUSERRDY,
    userclk,
    TXPD,
    TXUSERRDY,
    RXPD,
    Q,
    I1,
    I2,
    I3,
    I4,
    reset_out_1);
  output cplllock;
  output txn;
  output txp;
  output I_0;
  output O1;
  output txoutclk;
  output O2;
  output [1:0]D;
  output [0:0]TXBUFSTATUS;
  output [0:0]RXBUFSTATUS;
  output [15:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output [1:0]O6;
  output [1:0]O7;
  output ack_flag;
  input independent_clock_bufg;
  input userclk2;
  input gtrefclk;
  input data_in;
  input gt0_gttxreset_in0_out;
  input rxn;
  input rxp;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input RXDFELFHOLD;
  input reset_out;
  input reset;
  input RXUSERRDY;
  input userclk;
  input [0:0]TXPD;
  input TXUSERRDY;
  input [0:0]RXPD;
  input [15:0]Q;
  input [1:0]I1;
  input [1:0]I2;
  input [1:0]I3;
  input I4;
  input reset_out_1;

  wire [1:0]D;
  wire [1:0]I1;
  wire [1:0]I2;
  wire [1:0]I3;
  wire I4;
  wire I_0;
  wire O1;
  wire O2;
  wire [15:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire [1:0]O6;
  wire [1:0]O7;
  wire [15:0]Q;
  wire [0:0]RXBUFSTATUS;
  wire RXDFELFHOLD;
  wire [0:0]RXPD;
  wire RXUSERRDY;
  wire [0:0]TXBUFSTATUS;
  wire [0:0]TXPD;
  wire TXUSERRDY;
  wire ack_flag;
  wire cplllock;
  wire data_in;
  wire gt0_gttxreset_in0_out;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gtrefclk;
  wire independent_clock_bufg;
  wire reset;
  wire reset_out;
  wire reset_out_1;
  wire rxn;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk;
  wire userclk2;

gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_GT__parameterized0 gt0_GTWIZARD_i
       (.D(D),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I_0(I_0),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .Q(Q),
        .RXBUFSTATUS(RXBUFSTATUS),
        .RXDFELFHOLD(RXDFELFHOLD),
        .RXPD(RXPD),
        .RXUSERRDY(RXUSERRDY),
        .TXBUFSTATUS(TXBUFSTATUS),
        .TXPD(TXPD),
        .TXUSERRDY(TXUSERRDY),
        .ack_flag(ack_flag),
        .cplllock(cplllock),
        .data_in(data_in),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gtrefclk(gtrefclk),
        .independent_clock_bufg(independent_clock_bufg),
        .reset(reset),
        .reset_out(reset_out),
        .reset_out_1(reset_out_1),
        .rxn(rxn),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk),
        .userclk2(userclk2));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_RX_STARTUP_FSM" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_RX_STARTUP_FSM__parameterized0
   (gt0_rxresetdone_out,
    RXUSERRDY,
    RXDFELFHOLD,
    data_in,
    independent_clock_bufg,
    userclk,
    pma_reset,
    I1,
    I4,
    I2,
    mmcm_locked,
    data_out,
    cplllock);
  output gt0_rxresetdone_out;
  output RXUSERRDY;
  output RXDFELFHOLD;
  output data_in;
  input independent_clock_bufg;
  input userclk;
  input pma_reset;
  input I1;
  input I4;
  input I2;
  input mmcm_locked;
  input data_out;
  input cplllock;

  wire GTRXRESET;
  wire I1;
  wire I2;
  wire I4;
  wire RXDFELFHOLD;
  wire RXUSERRDY;
  wire [22:0]\adapt_wait_hw.adapt_count_reg ;
  wire cplllock;
  wire data_in;
  wire data_out;
  wire data_out_0;
  wire gt0_rxresetdone_out;
  wire independent_clock_bufg;
  wire [6:0]init_wait_count_reg__0;
  wire [9:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire mmcm_locked;
  wire \n_0_FSM_sequential_rx_state[0]_i_1 ;
  wire \n_0_FSM_sequential_rx_state[0]_i_2 ;
  wire \n_0_FSM_sequential_rx_state[1]_i_1 ;
  wire \n_0_FSM_sequential_rx_state[2]_i_1 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_2 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_4 ;
  wire n_0_RXDFEAGCHOLD_i_1;
  wire n_0_RXUSERRDY_i_1;
  wire \n_0_adapt_wait_hw.adapt_count[0]_i_1 ;
  wire \n_0_adapt_wait_hw.adapt_count[0]_i_10 ;
  wire \n_0_adapt_wait_hw.adapt_count[0]_i_11 ;
  wire \n_0_adapt_wait_hw.adapt_count[0]_i_3 ;
  wire \n_0_adapt_wait_hw.adapt_count[0]_i_4 ;
  wire \n_0_adapt_wait_hw.adapt_count[0]_i_5 ;
  wire \n_0_adapt_wait_hw.adapt_count[0]_i_6 ;
  wire \n_0_adapt_wait_hw.adapt_count[0]_i_7 ;
  wire \n_0_adapt_wait_hw.adapt_count[0]_i_8 ;
  wire \n_0_adapt_wait_hw.adapt_count[0]_i_9 ;
  wire \n_0_adapt_wait_hw.adapt_count[12]_i_2 ;
  wire \n_0_adapt_wait_hw.adapt_count[12]_i_3 ;
  wire \n_0_adapt_wait_hw.adapt_count[12]_i_4 ;
  wire \n_0_adapt_wait_hw.adapt_count[12]_i_5 ;
  wire \n_0_adapt_wait_hw.adapt_count[16]_i_2 ;
  wire \n_0_adapt_wait_hw.adapt_count[16]_i_3 ;
  wire \n_0_adapt_wait_hw.adapt_count[16]_i_4 ;
  wire \n_0_adapt_wait_hw.adapt_count[16]_i_5 ;
  wire \n_0_adapt_wait_hw.adapt_count[20]_i_2 ;
  wire \n_0_adapt_wait_hw.adapt_count[20]_i_3 ;
  wire \n_0_adapt_wait_hw.adapt_count[20]_i_4 ;
  wire \n_0_adapt_wait_hw.adapt_count[4]_i_2 ;
  wire \n_0_adapt_wait_hw.adapt_count[4]_i_3 ;
  wire \n_0_adapt_wait_hw.adapt_count[4]_i_4 ;
  wire \n_0_adapt_wait_hw.adapt_count[4]_i_5 ;
  wire \n_0_adapt_wait_hw.adapt_count[8]_i_2 ;
  wire \n_0_adapt_wait_hw.adapt_count[8]_i_3 ;
  wire \n_0_adapt_wait_hw.adapt_count[8]_i_4 ;
  wire \n_0_adapt_wait_hw.adapt_count[8]_i_5 ;
  wire \n_0_adapt_wait_hw.adapt_count_reg[0]_i_2 ;
  wire \n_0_adapt_wait_hw.adapt_count_reg[12]_i_1 ;
  wire \n_0_adapt_wait_hw.adapt_count_reg[16]_i_1 ;
  wire \n_0_adapt_wait_hw.adapt_count_reg[4]_i_1 ;
  wire \n_0_adapt_wait_hw.adapt_count_reg[8]_i_1 ;
  wire \n_0_adapt_wait_hw.time_out_adapt_i_1 ;
  wire \n_0_adapt_wait_hw.time_out_adapt_i_2 ;
  wire \n_0_adapt_wait_hw.time_out_adapt_i_3 ;
  wire \n_0_adapt_wait_hw.time_out_adapt_i_4 ;
  wire \n_0_adapt_wait_hw.time_out_adapt_i_5 ;
  wire \n_0_adapt_wait_hw.time_out_adapt_reg ;
  wire n_0_check_tlock_max_i_1;
  wire n_0_check_tlock_max_reg;
  wire n_0_gtrxreset_i_i_1;
  wire \n_0_init_wait_count[0]_i_1__0 ;
  wire \n_0_init_wait_count[6]_i_1__0 ;
  wire \n_0_init_wait_count[6]_i_3__0 ;
  wire n_0_init_wait_done_i_1__0;
  wire n_0_init_wait_done_reg;
  wire \n_0_mmcm_lock_count[2]_i_1__0 ;
  wire \n_0_mmcm_lock_count[3]_i_1__0 ;
  wire \n_0_mmcm_lock_count[4]_i_1__0 ;
  wire \n_0_mmcm_lock_count[5]_i_1__0 ;
  wire \n_0_mmcm_lock_count[9]_i_2__0 ;
  wire \n_0_mmcm_lock_count[9]_i_4__0 ;
  wire n_0_mmcm_lock_reclocked_i_2__0;
  wire n_0_reset_time_out_i_3__0;
  wire n_0_reset_time_out_reg;
  wire n_0_run_phase_alignment_int_i_1__0;
  wire n_0_run_phase_alignment_int_reg;
  wire n_0_run_phase_alignment_int_s3_reg;
  wire n_0_rx_fsm_reset_done_int_i_2;
  wire n_0_rx_fsm_reset_done_int_i_3;
  wire n_0_sync_cplllock;
  wire n_0_sync_data_valid;
  wire n_0_sync_mmcm_lock_reclocked;
  wire n_0_time_out_1us_i_1;
  wire n_0_time_out_1us_i_2;
  wire n_0_time_out_1us_i_3;
  wire n_0_time_out_1us_reg;
  wire n_0_time_out_2ms_i_1;
  wire n_0_time_out_2ms_i_2;
  wire n_0_time_out_2ms_i_3;
  wire n_0_time_out_2ms_reg;
  wire \n_0_time_out_counter[0]_i_1 ;
  wire \n_0_time_out_counter[0]_i_3__0 ;
  wire \n_0_time_out_counter[0]_i_4__0 ;
  wire \n_0_time_out_counter[0]_i_5__0 ;
  wire \n_0_time_out_counter[0]_i_6__0 ;
  wire \n_0_time_out_counter[0]_i_7__0 ;
  wire \n_0_time_out_counter[0]_i_8 ;
  wire \n_0_time_out_counter[0]_i_9__0 ;
  wire \n_0_time_out_counter[12]_i_2__0 ;
  wire \n_0_time_out_counter[12]_i_3__0 ;
  wire \n_0_time_out_counter[12]_i_4__0 ;
  wire \n_0_time_out_counter[12]_i_5__0 ;
  wire \n_0_time_out_counter[16]_i_2__0 ;
  wire \n_0_time_out_counter[16]_i_3__0 ;
  wire \n_0_time_out_counter[16]_i_4__0 ;
  wire \n_0_time_out_counter[4]_i_2__0 ;
  wire \n_0_time_out_counter[4]_i_3__0 ;
  wire \n_0_time_out_counter[4]_i_4__0 ;
  wire \n_0_time_out_counter[4]_i_5__0 ;
  wire \n_0_time_out_counter[8]_i_2__0 ;
  wire \n_0_time_out_counter[8]_i_3__0 ;
  wire \n_0_time_out_counter[8]_i_4__0 ;
  wire \n_0_time_out_counter[8]_i_5__0 ;
  wire \n_0_time_out_counter_reg[0]_i_2__0 ;
  wire \n_0_time_out_counter_reg[12]_i_1__0 ;
  wire \n_0_time_out_counter_reg[4]_i_1__0 ;
  wire \n_0_time_out_counter_reg[8]_i_1__0 ;
  wire n_0_time_out_wait_bypass_i_1__0;
  wire n_0_time_out_wait_bypass_reg;
  wire n_0_time_tlock_max_i_10;
  wire n_0_time_tlock_max_i_11;
  wire n_0_time_tlock_max_i_12;
  wire n_0_time_tlock_max_i_13;
  wire n_0_time_tlock_max_i_14;
  wire n_0_time_tlock_max_i_15;
  wire n_0_time_tlock_max_i_16;
  wire n_0_time_tlock_max_i_17;
  wire n_0_time_tlock_max_i_18;
  wire n_0_time_tlock_max_i_19;
  wire n_0_time_tlock_max_i_1__0;
  wire n_0_time_tlock_max_i_20;
  wire n_0_time_tlock_max_i_21;
  wire n_0_time_tlock_max_i_4;
  wire n_0_time_tlock_max_i_5;
  wire n_0_time_tlock_max_i_6;
  wire n_0_time_tlock_max_i_8;
  wire n_0_time_tlock_max_i_9;
  wire n_0_time_tlock_max_reg_i_3;
  wire n_0_time_tlock_max_reg_i_7;
  wire \n_0_wait_bypass_count[0]_i_1__0 ;
  wire \n_0_wait_bypass_count[0]_i_2__0 ;
  wire \n_0_wait_bypass_count[0]_i_4__0 ;
  wire \n_0_wait_bypass_count[0]_i_5__0 ;
  wire \n_0_wait_bypass_count[0]_i_6__0 ;
  wire \n_0_wait_bypass_count[0]_i_7__0 ;
  wire \n_0_wait_bypass_count[0]_i_8__0 ;
  wire \n_0_wait_bypass_count[0]_i_9 ;
  wire \n_0_wait_bypass_count[12]_i_2__0 ;
  wire \n_0_wait_bypass_count[4]_i_2__0 ;
  wire \n_0_wait_bypass_count[4]_i_3__0 ;
  wire \n_0_wait_bypass_count[4]_i_4__0 ;
  wire \n_0_wait_bypass_count[4]_i_5__0 ;
  wire \n_0_wait_bypass_count[8]_i_2__0 ;
  wire \n_0_wait_bypass_count[8]_i_3__0 ;
  wire \n_0_wait_bypass_count[8]_i_4__0 ;
  wire \n_0_wait_bypass_count[8]_i_5__0 ;
  wire \n_0_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_0_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_0_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_0_wait_time_cnt[1]_i_1__0 ;
  wire \n_0_wait_time_cnt[2]_i_1__0 ;
  wire \n_0_wait_time_cnt[3]_i_1__0 ;
  wire \n_0_wait_time_cnt[4]_i_1__0 ;
  wire \n_0_wait_time_cnt[5]_i_1__0 ;
  wire \n_0_wait_time_cnt[6]_i_1__0 ;
  wire \n_0_wait_time_cnt[6]_i_2__0 ;
  wire \n_0_wait_time_cnt[6]_i_3__0 ;
  wire \n_0_wait_time_cnt[6]_i_4__0 ;
  wire \n_1_adapt_wait_hw.adapt_count_reg[0]_i_2 ;
  wire \n_1_adapt_wait_hw.adapt_count_reg[12]_i_1 ;
  wire \n_1_adapt_wait_hw.adapt_count_reg[16]_i_1 ;
  wire \n_1_adapt_wait_hw.adapt_count_reg[4]_i_1 ;
  wire \n_1_adapt_wait_hw.adapt_count_reg[8]_i_1 ;
  wire n_1_sync_cplllock;
  wire n_1_sync_data_valid;
  wire n_1_sync_mmcm_lock_reclocked;
  wire \n_1_time_out_counter_reg[0]_i_2__0 ;
  wire \n_1_time_out_counter_reg[12]_i_1__0 ;
  wire \n_1_time_out_counter_reg[4]_i_1__0 ;
  wire \n_1_time_out_counter_reg[8]_i_1__0 ;
  wire n_1_time_tlock_max_reg_i_3;
  wire n_1_time_tlock_max_reg_i_7;
  wire \n_1_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_1_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_1_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_2_adapt_wait_hw.adapt_count_reg[0]_i_2 ;
  wire \n_2_adapt_wait_hw.adapt_count_reg[12]_i_1 ;
  wire \n_2_adapt_wait_hw.adapt_count_reg[16]_i_1 ;
  wire \n_2_adapt_wait_hw.adapt_count_reg[20]_i_1 ;
  wire \n_2_adapt_wait_hw.adapt_count_reg[4]_i_1 ;
  wire \n_2_adapt_wait_hw.adapt_count_reg[8]_i_1 ;
  wire n_2_sync_cplllock;
  wire n_2_sync_data_valid;
  wire \n_2_time_out_counter_reg[0]_i_2__0 ;
  wire \n_2_time_out_counter_reg[12]_i_1__0 ;
  wire \n_2_time_out_counter_reg[16]_i_1__0 ;
  wire \n_2_time_out_counter_reg[4]_i_1__0 ;
  wire \n_2_time_out_counter_reg[8]_i_1__0 ;
  wire n_2_time_tlock_max_reg_i_3;
  wire n_2_time_tlock_max_reg_i_7;
  wire \n_2_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_2_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_2_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_3_adapt_wait_hw.adapt_count_reg[0]_i_2 ;
  wire \n_3_adapt_wait_hw.adapt_count_reg[12]_i_1 ;
  wire \n_3_adapt_wait_hw.adapt_count_reg[16]_i_1 ;
  wire \n_3_adapt_wait_hw.adapt_count_reg[20]_i_1 ;
  wire \n_3_adapt_wait_hw.adapt_count_reg[4]_i_1 ;
  wire \n_3_adapt_wait_hw.adapt_count_reg[8]_i_1 ;
  wire \n_3_time_out_counter_reg[0]_i_2__0 ;
  wire \n_3_time_out_counter_reg[12]_i_1__0 ;
  wire \n_3_time_out_counter_reg[16]_i_1__0 ;
  wire \n_3_time_out_counter_reg[4]_i_1__0 ;
  wire \n_3_time_out_counter_reg[8]_i_1__0 ;
  wire n_3_time_tlock_max_reg_i_2;
  wire n_3_time_tlock_max_reg_i_3;
  wire n_3_time_tlock_max_reg_i_7;
  wire \n_3_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_3_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_3_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_4_adapt_wait_hw.adapt_count_reg[0]_i_2 ;
  wire \n_4_adapt_wait_hw.adapt_count_reg[12]_i_1 ;
  wire \n_4_adapt_wait_hw.adapt_count_reg[16]_i_1 ;
  wire \n_4_adapt_wait_hw.adapt_count_reg[4]_i_1 ;
  wire \n_4_adapt_wait_hw.adapt_count_reg[8]_i_1 ;
  wire \n_4_time_out_counter_reg[0]_i_2__0 ;
  wire \n_4_time_out_counter_reg[12]_i_1__0 ;
  wire \n_4_time_out_counter_reg[4]_i_1__0 ;
  wire \n_4_time_out_counter_reg[8]_i_1__0 ;
  wire \n_4_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_4_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_4_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_5_adapt_wait_hw.adapt_count_reg[0]_i_2 ;
  wire \n_5_adapt_wait_hw.adapt_count_reg[12]_i_1 ;
  wire \n_5_adapt_wait_hw.adapt_count_reg[16]_i_1 ;
  wire \n_5_adapt_wait_hw.adapt_count_reg[20]_i_1 ;
  wire \n_5_adapt_wait_hw.adapt_count_reg[4]_i_1 ;
  wire \n_5_adapt_wait_hw.adapt_count_reg[8]_i_1 ;
  wire \n_5_time_out_counter_reg[0]_i_2__0 ;
  wire \n_5_time_out_counter_reg[12]_i_1__0 ;
  wire \n_5_time_out_counter_reg[16]_i_1__0 ;
  wire \n_5_time_out_counter_reg[4]_i_1__0 ;
  wire \n_5_time_out_counter_reg[8]_i_1__0 ;
  wire \n_5_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_5_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_5_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_6_adapt_wait_hw.adapt_count_reg[0]_i_2 ;
  wire \n_6_adapt_wait_hw.adapt_count_reg[12]_i_1 ;
  wire \n_6_adapt_wait_hw.adapt_count_reg[16]_i_1 ;
  wire \n_6_adapt_wait_hw.adapt_count_reg[20]_i_1 ;
  wire \n_6_adapt_wait_hw.adapt_count_reg[4]_i_1 ;
  wire \n_6_adapt_wait_hw.adapt_count_reg[8]_i_1 ;
  wire \n_6_time_out_counter_reg[0]_i_2__0 ;
  wire \n_6_time_out_counter_reg[12]_i_1__0 ;
  wire \n_6_time_out_counter_reg[16]_i_1__0 ;
  wire \n_6_time_out_counter_reg[4]_i_1__0 ;
  wire \n_6_time_out_counter_reg[8]_i_1__0 ;
  wire \n_6_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_6_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_6_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_7_adapt_wait_hw.adapt_count_reg[0]_i_2 ;
  wire \n_7_adapt_wait_hw.adapt_count_reg[12]_i_1 ;
  wire \n_7_adapt_wait_hw.adapt_count_reg[16]_i_1 ;
  wire \n_7_adapt_wait_hw.adapt_count_reg[20]_i_1 ;
  wire \n_7_adapt_wait_hw.adapt_count_reg[4]_i_1 ;
  wire \n_7_adapt_wait_hw.adapt_count_reg[8]_i_1 ;
  wire \n_7_time_out_counter_reg[0]_i_2__0 ;
  wire \n_7_time_out_counter_reg[12]_i_1__0 ;
  wire \n_7_time_out_counter_reg[16]_i_1__0 ;
  wire \n_7_time_out_counter_reg[4]_i_1__0 ;
  wire \n_7_time_out_counter_reg[8]_i_1__0 ;
  wire \n_7_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_7_wait_bypass_count_reg[12]_i_1__0 ;
  wire \n_7_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_7_wait_bypass_count_reg[8]_i_1__0 ;
  wire [6:1]p_0_in__1;
  wire [9:0]p_0_in__2;
  wire pma_reset;
  wire recclk_mon_count_reset;
  wire rx_fsm_reset_done_int_s2;
  wire rx_fsm_reset_done_int_s3;
(* RTL_KEEP = "yes" *)   wire [3:0]rx_state;
  wire rx_state15_out;
  wire rx_state16_out;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire [18:0]time_out_counter_reg;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max1;
  wire userclk;
  wire [12:0]wait_bypass_count_reg;
  wire [0:0]wait_time_cnt0__0;
  wire [6:0]wait_time_cnt_reg__0;
  wire [3:2]\NLW_adapt_wait_hw.adapt_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_adapt_wait_hw.adapt_count_reg[20]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:2]NLW_time_tlock_max_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_time_tlock_max_reg_i_7_O_UNCONNECTED;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;

LUT4 #(
    .INIT(16'h444F)) 
     \FSM_sequential_rx_state[0]_i_1 
       (.I0(rx_state[3]),
        .I1(\n_0_FSM_sequential_rx_state[0]_i_2 ),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .O(\n_0_FSM_sequential_rx_state[0]_i_1 ));
LUT6 #(
    .INIT(64'h4E0AEE2A4E0ACE0A)) 
     \FSM_sequential_rx_state[0]_i_2 
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(n_0_time_out_2ms_reg),
        .I4(n_0_reset_time_out_reg),
        .I5(time_tlock_max),
        .O(\n_0_FSM_sequential_rx_state[0]_i_2 ));
LUT6 #(
    .INIT(64'h00000F0000FFDF00)) 
     \FSM_sequential_rx_state[1]_i_1 
       (.I0(time_tlock_max),
        .I1(n_0_reset_time_out_reg),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .I4(rx_state[1]),
        .I5(rx_state[3]),
        .O(\n_0_FSM_sequential_rx_state[1]_i_1 ));
LUT6 #(
    .INIT(64'h1111004015150040)) 
     \FSM_sequential_rx_state[2]_i_1 
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(n_0_time_out_2ms_reg),
        .I4(rx_state[2]),
        .I5(rx_state16_out),
        .O(\n_0_FSM_sequential_rx_state[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \FSM_sequential_rx_state[2]_i_2 
       (.I0(time_tlock_max),
        .I1(n_0_reset_time_out_reg),
        .O(rx_state16_out));
LUT6 #(
    .INIT(64'h000A00A2500A00A2)) 
     \FSM_sequential_rx_state[3]_i_2 
       (.I0(rx_state[3]),
        .I1(time_out_wait_bypass_s3),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(rx_state[0]),
        .I5(rx_state15_out),
        .O(\n_0_FSM_sequential_rx_state[3]_i_2 ));
LUT6 #(
    .INIT(64'h0F0F0F0F1F101010)) 
     \FSM_sequential_rx_state[3]_i_4 
       (.I0(wait_time_cnt_reg__0[6]),
        .I1(\n_0_wait_time_cnt[6]_i_4__0 ),
        .I2(rx_state[1]),
        .I3(I1),
        .I4(rx_state[2]),
        .I5(rx_state[3]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_4 ));
LUT2 #(
    .INIT(4'h2)) 
     \FSM_sequential_rx_state[3]_i_7 
       (.I0(n_0_time_out_2ms_reg),
        .I1(n_0_reset_time_out_reg),
        .O(rx_state15_out));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(n_1_sync_data_valid),
        .D(\n_0_FSM_sequential_rx_state[0]_i_1 ),
        .Q(rx_state[0]),
        .R(pma_reset));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(n_1_sync_data_valid),
        .D(\n_0_FSM_sequential_rx_state[1]_i_1 ),
        .Q(rx_state[1]),
        .R(pma_reset));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(n_1_sync_data_valid),
        .D(\n_0_FSM_sequential_rx_state[2]_i_1 ),
        .Q(rx_state[2]),
        .R(pma_reset));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(n_1_sync_data_valid),
        .D(\n_0_FSM_sequential_rx_state[3]_i_2 ),
        .Q(rx_state[3]),
        .R(pma_reset));
LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
     RXDFEAGCHOLD_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(\n_0_adapt_wait_hw.time_out_adapt_reg ),
        .I3(rx_state[0]),
        .I4(rx_state[3]),
        .I5(RXDFELFHOLD),
        .O(n_0_RXDFEAGCHOLD_i_1));
FDRE RXDFEAGCHOLD_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_RXDFEAGCHOLD_i_1),
        .Q(RXDFELFHOLD),
        .R(pma_reset));
LUT5 #(
    .INIT(32'hFFFD2000)) 
     RXUSERRDY_i_1
       (.I0(rx_state[0]),
        .I1(rx_state[3]),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .I4(RXUSERRDY),
        .O(n_0_RXUSERRDY_i_1));
FDRE #(
    .INIT(1'b0)) 
     RXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_RXUSERRDY_i_1),
        .Q(RXUSERRDY),
        .R(pma_reset));
FDSE #(
    .INIT(1'b0)) 
     adapt_count_reset_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_sync_cplllock),
        .Q(recclk_mon_count_reset),
        .S(pma_reset));
LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
     \adapt_wait_hw.adapt_count[0]_i_1 
       (.I0(\n_0_adapt_wait_hw.adapt_count[0]_i_3 ),
        .I1(\n_0_adapt_wait_hw.adapt_count[0]_i_4 ),
        .I2(\adapt_wait_hw.adapt_count_reg [5]),
        .I3(\n_0_adapt_wait_hw.adapt_count[0]_i_5 ),
        .I4(\n_0_adapt_wait_hw.adapt_count[0]_i_6 ),
        .I5(\n_0_adapt_wait_hw.adapt_count[0]_i_7 ),
        .O(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[0]_i_10 
       (.I0(\adapt_wait_hw.adapt_count_reg [1]),
        .O(\n_0_adapt_wait_hw.adapt_count[0]_i_10 ));
LUT1 #(
    .INIT(2'h1)) 
     \adapt_wait_hw.adapt_count[0]_i_11 
       (.I0(\adapt_wait_hw.adapt_count_reg [0]),
        .O(\n_0_adapt_wait_hw.adapt_count[0]_i_11 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
     \adapt_wait_hw.adapt_count[0]_i_3 
       (.I0(\adapt_wait_hw.adapt_count_reg [9]),
        .I1(\adapt_wait_hw.adapt_count_reg [19]),
        .I2(\adapt_wait_hw.adapt_count_reg [18]),
        .I3(\adapt_wait_hw.adapt_count_reg [4]),
        .I4(\adapt_wait_hw.adapt_count_reg [17]),
        .I5(\adapt_wait_hw.adapt_count_reg [16]),
        .O(\n_0_adapt_wait_hw.adapt_count[0]_i_3 ));
LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
     \adapt_wait_hw.adapt_count[0]_i_4 
       (.I0(\adapt_wait_hw.adapt_count_reg [1]),
        .I1(\adapt_wait_hw.adapt_count_reg [12]),
        .I2(\adapt_wait_hw.adapt_count_reg [3]),
        .I3(\adapt_wait_hw.adapt_count_reg [0]),
        .I4(\adapt_wait_hw.adapt_count_reg [20]),
        .I5(\adapt_wait_hw.adapt_count_reg [2]),
        .O(\n_0_adapt_wait_hw.adapt_count[0]_i_4 ));
LUT2 #(
    .INIT(4'h1)) 
     \adapt_wait_hw.adapt_count[0]_i_5 
       (.I0(\adapt_wait_hw.adapt_count_reg [6]),
        .I1(\adapt_wait_hw.adapt_count_reg [8]),
        .O(\n_0_adapt_wait_hw.adapt_count[0]_i_5 ));
LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
     \adapt_wait_hw.adapt_count[0]_i_6 
       (.I0(\adapt_wait_hw.adapt_count_reg [13]),
        .I1(\adapt_wait_hw.adapt_count_reg [7]),
        .I2(\adapt_wait_hw.adapt_count_reg [22]),
        .I3(\adapt_wait_hw.adapt_count_reg [21]),
        .I4(\adapt_wait_hw.adapt_count_reg [10]),
        .I5(\adapt_wait_hw.adapt_count_reg [11]),
        .O(\n_0_adapt_wait_hw.adapt_count[0]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \adapt_wait_hw.adapt_count[0]_i_7 
       (.I0(\adapt_wait_hw.adapt_count_reg [14]),
        .I1(\adapt_wait_hw.adapt_count_reg [15]),
        .O(\n_0_adapt_wait_hw.adapt_count[0]_i_7 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[0]_i_8 
       (.I0(\adapt_wait_hw.adapt_count_reg [3]),
        .O(\n_0_adapt_wait_hw.adapt_count[0]_i_8 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[0]_i_9 
       (.I0(\adapt_wait_hw.adapt_count_reg [2]),
        .O(\n_0_adapt_wait_hw.adapt_count[0]_i_9 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[12]_i_2 
       (.I0(\adapt_wait_hw.adapt_count_reg [15]),
        .O(\n_0_adapt_wait_hw.adapt_count[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[12]_i_3 
       (.I0(\adapt_wait_hw.adapt_count_reg [14]),
        .O(\n_0_adapt_wait_hw.adapt_count[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[12]_i_4 
       (.I0(\adapt_wait_hw.adapt_count_reg [13]),
        .O(\n_0_adapt_wait_hw.adapt_count[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[12]_i_5 
       (.I0(\adapt_wait_hw.adapt_count_reg [12]),
        .O(\n_0_adapt_wait_hw.adapt_count[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[16]_i_2 
       (.I0(\adapt_wait_hw.adapt_count_reg [19]),
        .O(\n_0_adapt_wait_hw.adapt_count[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[16]_i_3 
       (.I0(\adapt_wait_hw.adapt_count_reg [18]),
        .O(\n_0_adapt_wait_hw.adapt_count[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[16]_i_4 
       (.I0(\adapt_wait_hw.adapt_count_reg [17]),
        .O(\n_0_adapt_wait_hw.adapt_count[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[16]_i_5 
       (.I0(\adapt_wait_hw.adapt_count_reg [16]),
        .O(\n_0_adapt_wait_hw.adapt_count[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[20]_i_2 
       (.I0(\adapt_wait_hw.adapt_count_reg [22]),
        .O(\n_0_adapt_wait_hw.adapt_count[20]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[20]_i_3 
       (.I0(\adapt_wait_hw.adapt_count_reg [21]),
        .O(\n_0_adapt_wait_hw.adapt_count[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[20]_i_4 
       (.I0(\adapt_wait_hw.adapt_count_reg [20]),
        .O(\n_0_adapt_wait_hw.adapt_count[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[4]_i_2 
       (.I0(\adapt_wait_hw.adapt_count_reg [7]),
        .O(\n_0_adapt_wait_hw.adapt_count[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[4]_i_3 
       (.I0(\adapt_wait_hw.adapt_count_reg [6]),
        .O(\n_0_adapt_wait_hw.adapt_count[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[4]_i_4 
       (.I0(\adapt_wait_hw.adapt_count_reg [5]),
        .O(\n_0_adapt_wait_hw.adapt_count[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[4]_i_5 
       (.I0(\adapt_wait_hw.adapt_count_reg [4]),
        .O(\n_0_adapt_wait_hw.adapt_count[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[8]_i_2 
       (.I0(\adapt_wait_hw.adapt_count_reg [11]),
        .O(\n_0_adapt_wait_hw.adapt_count[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[8]_i_3 
       (.I0(\adapt_wait_hw.adapt_count_reg [10]),
        .O(\n_0_adapt_wait_hw.adapt_count[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[8]_i_4 
       (.I0(\adapt_wait_hw.adapt_count_reg [9]),
        .O(\n_0_adapt_wait_hw.adapt_count[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[8]_i_5 
       (.I0(\adapt_wait_hw.adapt_count_reg [8]),
        .O(\n_0_adapt_wait_hw.adapt_count[8]_i_5 ));
FDRE \adapt_wait_hw.adapt_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_7_adapt_wait_hw.adapt_count_reg[0]_i_2 ),
        .Q(\adapt_wait_hw.adapt_count_reg [0]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_wait_hw.adapt_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_adapt_wait_hw.adapt_count_reg[0]_i_2 ,\n_1_adapt_wait_hw.adapt_count_reg[0]_i_2 ,\n_2_adapt_wait_hw.adapt_count_reg[0]_i_2 ,\n_3_adapt_wait_hw.adapt_count_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_adapt_wait_hw.adapt_count_reg[0]_i_2 ,\n_5_adapt_wait_hw.adapt_count_reg[0]_i_2 ,\n_6_adapt_wait_hw.adapt_count_reg[0]_i_2 ,\n_7_adapt_wait_hw.adapt_count_reg[0]_i_2 }),
        .S({\n_0_adapt_wait_hw.adapt_count[0]_i_8 ,\n_0_adapt_wait_hw.adapt_count[0]_i_9 ,\n_0_adapt_wait_hw.adapt_count[0]_i_10 ,\n_0_adapt_wait_hw.adapt_count[0]_i_11 }));
FDRE \adapt_wait_hw.adapt_count_reg[10] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_5_adapt_wait_hw.adapt_count_reg[8]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [10]),
        .R(recclk_mon_count_reset));
FDRE \adapt_wait_hw.adapt_count_reg[11] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_4_adapt_wait_hw.adapt_count_reg[8]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [11]),
        .R(recclk_mon_count_reset));
FDRE \adapt_wait_hw.adapt_count_reg[12] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_7_adapt_wait_hw.adapt_count_reg[12]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [12]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_wait_hw.adapt_count_reg[12]_i_1 
       (.CI(\n_0_adapt_wait_hw.adapt_count_reg[8]_i_1 ),
        .CO({\n_0_adapt_wait_hw.adapt_count_reg[12]_i_1 ,\n_1_adapt_wait_hw.adapt_count_reg[12]_i_1 ,\n_2_adapt_wait_hw.adapt_count_reg[12]_i_1 ,\n_3_adapt_wait_hw.adapt_count_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_wait_hw.adapt_count_reg[12]_i_1 ,\n_5_adapt_wait_hw.adapt_count_reg[12]_i_1 ,\n_6_adapt_wait_hw.adapt_count_reg[12]_i_1 ,\n_7_adapt_wait_hw.adapt_count_reg[12]_i_1 }),
        .S({\n_0_adapt_wait_hw.adapt_count[12]_i_2 ,\n_0_adapt_wait_hw.adapt_count[12]_i_3 ,\n_0_adapt_wait_hw.adapt_count[12]_i_4 ,\n_0_adapt_wait_hw.adapt_count[12]_i_5 }));
FDRE \adapt_wait_hw.adapt_count_reg[13] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_6_adapt_wait_hw.adapt_count_reg[12]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [13]),
        .R(recclk_mon_count_reset));
FDRE \adapt_wait_hw.adapt_count_reg[14] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_5_adapt_wait_hw.adapt_count_reg[12]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [14]),
        .R(recclk_mon_count_reset));
FDRE \adapt_wait_hw.adapt_count_reg[15] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_4_adapt_wait_hw.adapt_count_reg[12]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [15]),
        .R(recclk_mon_count_reset));
FDRE \adapt_wait_hw.adapt_count_reg[16] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_7_adapt_wait_hw.adapt_count_reg[16]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [16]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_wait_hw.adapt_count_reg[16]_i_1 
       (.CI(\n_0_adapt_wait_hw.adapt_count_reg[12]_i_1 ),
        .CO({\n_0_adapt_wait_hw.adapt_count_reg[16]_i_1 ,\n_1_adapt_wait_hw.adapt_count_reg[16]_i_1 ,\n_2_adapt_wait_hw.adapt_count_reg[16]_i_1 ,\n_3_adapt_wait_hw.adapt_count_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_wait_hw.adapt_count_reg[16]_i_1 ,\n_5_adapt_wait_hw.adapt_count_reg[16]_i_1 ,\n_6_adapt_wait_hw.adapt_count_reg[16]_i_1 ,\n_7_adapt_wait_hw.adapt_count_reg[16]_i_1 }),
        .S({\n_0_adapt_wait_hw.adapt_count[16]_i_2 ,\n_0_adapt_wait_hw.adapt_count[16]_i_3 ,\n_0_adapt_wait_hw.adapt_count[16]_i_4 ,\n_0_adapt_wait_hw.adapt_count[16]_i_5 }));
FDRE \adapt_wait_hw.adapt_count_reg[17] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_6_adapt_wait_hw.adapt_count_reg[16]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [17]),
        .R(recclk_mon_count_reset));
FDRE \adapt_wait_hw.adapt_count_reg[18] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_5_adapt_wait_hw.adapt_count_reg[16]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [18]),
        .R(recclk_mon_count_reset));
FDRE \adapt_wait_hw.adapt_count_reg[19] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_4_adapt_wait_hw.adapt_count_reg[16]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [19]),
        .R(recclk_mon_count_reset));
FDRE \adapt_wait_hw.adapt_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_6_adapt_wait_hw.adapt_count_reg[0]_i_2 ),
        .Q(\adapt_wait_hw.adapt_count_reg [1]),
        .R(recclk_mon_count_reset));
FDRE \adapt_wait_hw.adapt_count_reg[20] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_7_adapt_wait_hw.adapt_count_reg[20]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [20]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_wait_hw.adapt_count_reg[20]_i_1 
       (.CI(\n_0_adapt_wait_hw.adapt_count_reg[16]_i_1 ),
        .CO({\NLW_adapt_wait_hw.adapt_count_reg[20]_i_1_CO_UNCONNECTED [3:2],\n_2_adapt_wait_hw.adapt_count_reg[20]_i_1 ,\n_3_adapt_wait_hw.adapt_count_reg[20]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_adapt_wait_hw.adapt_count_reg[20]_i_1_O_UNCONNECTED [3],\n_5_adapt_wait_hw.adapt_count_reg[20]_i_1 ,\n_6_adapt_wait_hw.adapt_count_reg[20]_i_1 ,\n_7_adapt_wait_hw.adapt_count_reg[20]_i_1 }),
        .S({1'b0,\n_0_adapt_wait_hw.adapt_count[20]_i_2 ,\n_0_adapt_wait_hw.adapt_count[20]_i_3 ,\n_0_adapt_wait_hw.adapt_count[20]_i_4 }));
FDRE \adapt_wait_hw.adapt_count_reg[21] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_6_adapt_wait_hw.adapt_count_reg[20]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [21]),
        .R(recclk_mon_count_reset));
FDRE \adapt_wait_hw.adapt_count_reg[22] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_5_adapt_wait_hw.adapt_count_reg[20]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [22]),
        .R(recclk_mon_count_reset));
FDRE \adapt_wait_hw.adapt_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_5_adapt_wait_hw.adapt_count_reg[0]_i_2 ),
        .Q(\adapt_wait_hw.adapt_count_reg [2]),
        .R(recclk_mon_count_reset));
FDRE \adapt_wait_hw.adapt_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_4_adapt_wait_hw.adapt_count_reg[0]_i_2 ),
        .Q(\adapt_wait_hw.adapt_count_reg [3]),
        .R(recclk_mon_count_reset));
FDRE \adapt_wait_hw.adapt_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_7_adapt_wait_hw.adapt_count_reg[4]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [4]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_wait_hw.adapt_count_reg[4]_i_1 
       (.CI(\n_0_adapt_wait_hw.adapt_count_reg[0]_i_2 ),
        .CO({\n_0_adapt_wait_hw.adapt_count_reg[4]_i_1 ,\n_1_adapt_wait_hw.adapt_count_reg[4]_i_1 ,\n_2_adapt_wait_hw.adapt_count_reg[4]_i_1 ,\n_3_adapt_wait_hw.adapt_count_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_wait_hw.adapt_count_reg[4]_i_1 ,\n_5_adapt_wait_hw.adapt_count_reg[4]_i_1 ,\n_6_adapt_wait_hw.adapt_count_reg[4]_i_1 ,\n_7_adapt_wait_hw.adapt_count_reg[4]_i_1 }),
        .S({\n_0_adapt_wait_hw.adapt_count[4]_i_2 ,\n_0_adapt_wait_hw.adapt_count[4]_i_3 ,\n_0_adapt_wait_hw.adapt_count[4]_i_4 ,\n_0_adapt_wait_hw.adapt_count[4]_i_5 }));
FDRE \adapt_wait_hw.adapt_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_6_adapt_wait_hw.adapt_count_reg[4]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [5]),
        .R(recclk_mon_count_reset));
FDRE \adapt_wait_hw.adapt_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_5_adapt_wait_hw.adapt_count_reg[4]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [6]),
        .R(recclk_mon_count_reset));
FDRE \adapt_wait_hw.adapt_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_4_adapt_wait_hw.adapt_count_reg[4]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [7]),
        .R(recclk_mon_count_reset));
FDRE \adapt_wait_hw.adapt_count_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_7_adapt_wait_hw.adapt_count_reg[8]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [8]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_wait_hw.adapt_count_reg[8]_i_1 
       (.CI(\n_0_adapt_wait_hw.adapt_count_reg[4]_i_1 ),
        .CO({\n_0_adapt_wait_hw.adapt_count_reg[8]_i_1 ,\n_1_adapt_wait_hw.adapt_count_reg[8]_i_1 ,\n_2_adapt_wait_hw.adapt_count_reg[8]_i_1 ,\n_3_adapt_wait_hw.adapt_count_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_wait_hw.adapt_count_reg[8]_i_1 ,\n_5_adapt_wait_hw.adapt_count_reg[8]_i_1 ,\n_6_adapt_wait_hw.adapt_count_reg[8]_i_1 ,\n_7_adapt_wait_hw.adapt_count_reg[8]_i_1 }),
        .S({\n_0_adapt_wait_hw.adapt_count[8]_i_2 ,\n_0_adapt_wait_hw.adapt_count[8]_i_3 ,\n_0_adapt_wait_hw.adapt_count[8]_i_4 ,\n_0_adapt_wait_hw.adapt_count[8]_i_5 }));
FDRE \adapt_wait_hw.adapt_count_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_6_adapt_wait_hw.adapt_count_reg[8]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [9]),
        .R(recclk_mon_count_reset));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT5 #(
    .INIT(32'h0000EAAA)) 
     \adapt_wait_hw.time_out_adapt_i_1 
       (.I0(\n_0_adapt_wait_hw.time_out_adapt_reg ),
        .I1(\adapt_wait_hw.adapt_count_reg [15]),
        .I2(\adapt_wait_hw.adapt_count_reg [14]),
        .I3(\n_0_adapt_wait_hw.time_out_adapt_i_2 ),
        .I4(recclk_mon_count_reset),
        .O(\n_0_adapt_wait_hw.time_out_adapt_i_1 ));
LUT6 #(
    .INIT(64'h0008000000000000)) 
     \adapt_wait_hw.time_out_adapt_i_2 
       (.I0(\n_0_adapt_wait_hw.time_out_adapt_i_3 ),
        .I1(\adapt_wait_hw.adapt_count_reg [5]),
        .I2(\adapt_wait_hw.adapt_count_reg [8]),
        .I3(\adapt_wait_hw.adapt_count_reg [6]),
        .I4(\n_0_adapt_wait_hw.time_out_adapt_i_4 ),
        .I5(\n_0_adapt_wait_hw.time_out_adapt_i_5 ),
        .O(\n_0_adapt_wait_hw.time_out_adapt_i_2 ));
LUT6 #(
    .INIT(64'h0000000040000000)) 
     \adapt_wait_hw.time_out_adapt_i_3 
       (.I0(\adapt_wait_hw.adapt_count_reg [7]),
        .I1(\adapt_wait_hw.adapt_count_reg [13]),
        .I2(\adapt_wait_hw.adapt_count_reg [21]),
        .I3(\adapt_wait_hw.adapt_count_reg [22]),
        .I4(\adapt_wait_hw.adapt_count_reg [11]),
        .I5(\adapt_wait_hw.adapt_count_reg [10]),
        .O(\n_0_adapt_wait_hw.time_out_adapt_i_3 ));
LUT6 #(
    .INIT(64'h4000000000000000)) 
     \adapt_wait_hw.time_out_adapt_i_4 
       (.I0(\adapt_wait_hw.adapt_count_reg [12]),
        .I1(\adapt_wait_hw.adapt_count_reg [1]),
        .I2(\adapt_wait_hw.adapt_count_reg [0]),
        .I3(\adapt_wait_hw.adapt_count_reg [3]),
        .I4(\adapt_wait_hw.adapt_count_reg [2]),
        .I5(\adapt_wait_hw.adapt_count_reg [20]),
        .O(\n_0_adapt_wait_hw.time_out_adapt_i_4 ));
LUT6 #(
    .INIT(64'h0000000000000040)) 
     \adapt_wait_hw.time_out_adapt_i_5 
       (.I0(\adapt_wait_hw.adapt_count_reg [19]),
        .I1(\adapt_wait_hw.adapt_count_reg [9]),
        .I2(\adapt_wait_hw.adapt_count_reg [4]),
        .I3(\adapt_wait_hw.adapt_count_reg [18]),
        .I4(\adapt_wait_hw.adapt_count_reg [16]),
        .I5(\adapt_wait_hw.adapt_count_reg [17]),
        .O(\n_0_adapt_wait_hw.time_out_adapt_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \adapt_wait_hw.time_out_adapt_reg 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(\n_0_adapt_wait_hw.time_out_adapt_i_1 ),
        .Q(\n_0_adapt_wait_hw.time_out_adapt_reg ),
        .R(1'b0));
LUT5 #(
    .INIT(32'hFFFB0008)) 
     check_tlock_max_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[3]),
        .I3(rx_state[1]),
        .I4(n_0_check_tlock_max_reg),
        .O(n_0_check_tlock_max_i_1));
FDRE #(
    .INIT(1'b0)) 
     check_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_check_tlock_max_i_1),
        .Q(n_0_check_tlock_max_reg),
        .R(pma_reset));
LUT5 #(
    .INIT(32'hFFFD0004)) 
     gtrxreset_i_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(rx_state[3]),
        .I3(rx_state[1]),
        .I4(GTRXRESET),
        .O(n_0_gtrxreset_i_i_1));
FDRE #(
    .INIT(1'b0)) 
     gtrxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_gtrxreset_i_i_1),
        .Q(GTRXRESET),
        .R(pma_reset));
LUT3 #(
    .INIT(8'hEA)) 
     gtxe2_i_i_2
       (.I0(GTRXRESET),
        .I1(gt0_rxresetdone_out),
        .I2(I4),
        .O(data_in));
LUT1 #(
    .INIT(2'h1)) 
     \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .O(\n_0_init_wait_count[0]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in__1[1]));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[2]),
        .O(p_0_in__1[2]));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[3]),
        .O(p_0_in__1[3]));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[4]),
        .O(p_0_in__1[4]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[4]),
        .I5(init_wait_count_reg__0[5]),
        .O(p_0_in__1[5]));
LUT4 #(
    .INIT(16'hFFFB)) 
     \init_wait_count[6]_i_1__0 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[6]),
        .I2(init_wait_count_reg__0[0]),
        .I3(\n_0_init_wait_count[6]_i_3__0 ),
        .O(\n_0_init_wait_count[6]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT4 #(
    .INIT(16'hBF40)) 
     \init_wait_count[6]_i_2__0 
       (.I0(\n_0_init_wait_count[6]_i_3__0 ),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[4]),
        .I3(init_wait_count_reg__0[6]),
        .O(p_0_in__1[6]));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT4 #(
    .INIT(16'h7FFF)) 
     \init_wait_count[6]_i_3__0 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[5]),
        .O(\n_0_init_wait_count[6]_i_3__0 ));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1__0 ),
        .CLR(pma_reset),
        .D(\n_0_init_wait_count[0]_i_1__0 ),
        .Q(init_wait_count_reg__0[0]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1__0 ),
        .CLR(pma_reset),
        .D(p_0_in__1[1]),
        .Q(init_wait_count_reg__0[1]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1__0 ),
        .CLR(pma_reset),
        .D(p_0_in__1[2]),
        .Q(init_wait_count_reg__0[2]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1__0 ),
        .CLR(pma_reset),
        .D(p_0_in__1[3]),
        .Q(init_wait_count_reg__0[3]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1__0 ),
        .CLR(pma_reset),
        .D(p_0_in__1[4]),
        .Q(init_wait_count_reg__0[4]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1__0 ),
        .CLR(pma_reset),
        .D(p_0_in__1[5]),
        .Q(init_wait_count_reg__0[5]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1__0 ),
        .CLR(pma_reset),
        .D(p_0_in__1[6]),
        .Q(init_wait_count_reg__0[6]));
LUT5 #(
    .INIT(32'hFFFF0010)) 
     init_wait_done_i_1__0
       (.I0(\n_0_init_wait_count[6]_i_3__0 ),
        .I1(init_wait_count_reg__0[4]),
        .I2(init_wait_count_reg__0[6]),
        .I3(init_wait_count_reg__0[0]),
        .I4(n_0_init_wait_done_reg),
        .O(n_0_init_wait_done_i_1__0));
FDCE #(
    .INIT(1'b0)) 
     init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(pma_reset),
        .D(n_0_init_wait_done_i_1__0),
        .Q(n_0_init_wait_done_reg));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__2[0]));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__2[1]));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[2]),
        .O(\n_0_mmcm_lock_count[2]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .I3(mmcm_lock_count_reg__0[3]),
        .O(\n_0_mmcm_lock_count[3]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[4]),
        .O(\n_0_mmcm_lock_count[4]_i_1__0 ));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[3]),
        .I5(mmcm_lock_count_reg__0[5]),
        .O(\n_0_mmcm_lock_count[5]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'hB4)) 
     \mmcm_lock_count[6]_i_1__0 
       (.I0(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(mmcm_lock_count_reg__0[6]),
        .O(p_0_in__2[6]));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT4 #(
    .INIT(16'hBF40)) 
     \mmcm_lock_count[7]_i_1__0 
       (.I0(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(mmcm_lock_count_reg__0[5]),
        .I3(mmcm_lock_count_reg__0[7]),
        .O(p_0_in__2[7]));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT5 #(
    .INIT(32'hBFFF4000)) 
     \mmcm_lock_count[8]_i_1__0 
       (.I0(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(mmcm_lock_count_reg__0[7]),
        .I4(mmcm_lock_count_reg__0[8]),
        .O(p_0_in__2[8]));
LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
     \mmcm_lock_count[9]_i_2__0 
       (.I0(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I1(mmcm_lock_count_reg__0[7]),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[8]),
        .I5(mmcm_lock_count_reg__0[9]),
        .O(\n_0_mmcm_lock_count[9]_i_2__0 ));
LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
     \mmcm_lock_count[9]_i_3__0 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(mmcm_lock_count_reg__0[7]),
        .I4(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I5(mmcm_lock_count_reg__0[9]),
        .O(p_0_in__2[9]));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT5 #(
    .INIT(32'h7FFFFFFF)) 
     \mmcm_lock_count[9]_i_4__0 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[4]),
        .O(\n_0_mmcm_lock_count[9]_i_4__0 ));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(\n_0_mmcm_lock_count[2]_i_1__0 ),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(\n_0_mmcm_lock_count[3]_i_1__0 ),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(\n_0_mmcm_lock_count[4]_i_1__0 ),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(\n_0_mmcm_lock_count[5]_i_1__0 ),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[8]),
        .Q(mmcm_lock_count_reg__0[8]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[9]),
        .Q(mmcm_lock_count_reg__0[9]),
        .R(n_1_sync_mmcm_lock_reclocked));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT4 #(
    .INIT(16'h7FFF)) 
     mmcm_lock_reclocked_i_2__0
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(mmcm_lock_count_reg__0[5]),
        .I3(mmcm_lock_count_reg__0[8]),
        .O(n_0_mmcm_lock_reclocked_i_2__0));
FDRE #(
    .INIT(1'b0)) 
     mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_sync_mmcm_lock_reclocked),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
LUT5 #(
    .INIT(32'h0333FF08)) 
     reset_time_out_i_3__0
       (.I0(I1),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(rx_state[3]),
        .O(n_0_reset_time_out_i_3__0));
FDSE #(
    .INIT(1'b0)) 
     reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_1_sync_cplllock),
        .Q(n_0_reset_time_out_reg),
        .S(pma_reset));
LUT5 #(
    .INIT(32'hFFFB0002)) 
     run_phase_alignment_int_i_1__0
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .I4(n_0_run_phase_alignment_int_reg),
        .O(n_0_run_phase_alignment_int_i_1__0));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_run_phase_alignment_int_i_1__0),
        .Q(n_0_run_phase_alignment_int_reg),
        .R(pma_reset));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_s3_reg
       (.C(userclk),
        .CE(1'b1),
        .D(data_out_0),
        .Q(n_0_run_phase_alignment_int_s3_reg),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     rx_fsm_reset_done_int_i_2
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .O(n_0_rx_fsm_reset_done_int_i_2));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT2 #(
    .INIT(4'h2)) 
     rx_fsm_reset_done_int_i_3
       (.I0(n_0_time_out_1us_reg),
        .I1(n_0_reset_time_out_reg),
        .O(n_0_rx_fsm_reset_done_int_i_3));
FDRE #(
    .INIT(1'b0)) 
     rx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_sync_data_valid),
        .Q(gt0_rxresetdone_out),
        .R(pma_reset));
FDRE #(
    .INIT(1'b0)) 
     rx_fsm_reset_done_int_s3_reg
       (.C(userclk),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_s2),
        .Q(rx_fsm_reset_done_int_s3),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     rxresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_11 sync_RXRESETDONE
       (.I2(I2),
        .data_out(rxresetdone_s2),
        .independent_clock_bufg(independent_clock_bufg));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_12 sync_cplllock
       (.I1(n_2_sync_data_valid),
        .I2(n_0_reset_time_out_i_3__0),
        .I3(n_0_reset_time_out_reg),
        .I4(n_0_time_out_2ms_reg),
        .O1(n_0_sync_cplllock),
        .O2(n_1_sync_cplllock),
        .O3(n_2_sync_cplllock),
        .cplllock(cplllock),
        .independent_clock_bufg(independent_clock_bufg),
        .out(rx_state),
        .recclk_mon_count_reset(recclk_mon_count_reset),
        .rxresetdone_s3(rxresetdone_s3));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_13 sync_data_valid
       (.E(n_1_sync_data_valid),
        .I1(n_0_rx_fsm_reset_done_int_i_2),
        .I2(n_0_rx_fsm_reset_done_int_i_3),
        .I3(\n_0_FSM_sequential_rx_state[3]_i_4 ),
        .I4(n_2_sync_cplllock),
        .I5(n_0_init_wait_done_reg),
        .I6(n_0_reset_time_out_reg),
        .I7(I1),
        .O1(n_0_sync_data_valid),
        .O2(n_2_sync_data_valid),
        .data_in(gt0_rxresetdone_out),
        .data_out(data_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .out(rx_state),
        .rxresetdone_s3(rxresetdone_s3),
        .time_tlock_max(time_tlock_max));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_14 sync_mmcm_lock_reclocked
       (.I1(n_0_mmcm_lock_reclocked_i_2__0),
        .I2(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .O1(n_0_sync_mmcm_lock_reclocked),
        .Q(mmcm_lock_count_reg__0[9]),
        .SR(n_1_sync_mmcm_lock_reclocked),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_locked(mmcm_locked));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_15 sync_run_phase_alignment_int
       (.data_in(n_0_run_phase_alignment_int_reg),
        .data_out(data_out_0),
        .userclk(userclk));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_16 sync_time_out_wait_bypass
       (.data_in(n_0_time_out_wait_bypass_reg),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_17 sync_tx_fsm_reset_done_int
       (.data_in(gt0_rxresetdone_out),
        .data_out(rx_fsm_reset_done_int_s2),
        .userclk(userclk));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT4 #(
    .INIT(16'h00AE)) 
     time_out_1us_i_1
       (.I0(n_0_time_out_1us_reg),
        .I1(n_0_time_out_1us_i_2),
        .I2(\n_0_time_out_counter[0]_i_3__0 ),
        .I3(n_0_reset_time_out_reg),
        .O(n_0_time_out_1us_i_1));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT4 #(
    .INIT(16'h0100)) 
     time_out_1us_i_2
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[18]),
        .I3(n_0_time_out_1us_i_3),
        .O(n_0_time_out_1us_i_2));
LUT6 #(
    .INIT(64'h0000000000000040)) 
     time_out_1us_i_3
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[8]),
        .I4(time_out_counter_reg[11]),
        .I5(time_out_counter_reg[12]),
        .O(n_0_time_out_1us_i_3));
FDRE #(
    .INIT(1'b0)) 
     time_out_1us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_time_out_1us_i_1),
        .Q(n_0_time_out_1us_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000AAAABAAA)) 
     time_out_2ms_i_1
       (.I0(n_0_time_out_2ms_reg),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[9]),
        .I3(n_0_time_out_2ms_i_2),
        .I4(\n_0_time_out_counter[0]_i_3__0 ),
        .I5(n_0_reset_time_out_reg),
        .O(n_0_time_out_2ms_i_1));
LUT6 #(
    .INIT(64'h0000000008000000)) 
     time_out_2ms_i_2
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[18]),
        .I5(n_0_time_out_2ms_i_3),
        .O(n_0_time_out_2ms_i_2));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT2 #(
    .INIT(4'hE)) 
     time_out_2ms_i_3
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .O(n_0_time_out_2ms_i_3));
FDRE #(
    .INIT(1'b0)) 
     time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_time_out_2ms_i_1),
        .Q(n_0_time_out_2ms_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
     \time_out_counter[0]_i_1 
       (.I0(\n_0_time_out_counter[0]_i_3__0 ),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[2]),
        .I3(\n_0_time_out_counter[0]_i_4__0 ),
        .I4(time_out_counter_reg[8]),
        .I5(time_out_counter_reg[9]),
        .O(\n_0_time_out_counter[0]_i_1 ));
LUT5 #(
    .INIT(32'hFFFEFFFF)) 
     \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .I2(\n_0_time_out_counter[0]_i_9__0 ),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[7]),
        .O(\n_0_time_out_counter[0]_i_3__0 ));
LUT5 #(
    .INIT(32'hBFFFFFFF)) 
     \time_out_counter[0]_i_4__0 
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[18]),
        .O(\n_0_time_out_counter[0]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_5__0 
       (.I0(time_out_counter_reg[3]),
        .O(\n_0_time_out_counter[0]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_6__0 
       (.I0(time_out_counter_reg[2]),
        .O(\n_0_time_out_counter[0]_i_6__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_7__0 
       (.I0(time_out_counter_reg[1]),
        .O(\n_0_time_out_counter[0]_i_7__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \time_out_counter[0]_i_8 
       (.I0(time_out_counter_reg[0]),
        .O(\n_0_time_out_counter[0]_i_8 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \time_out_counter[0]_i_9__0 
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_counter_reg[14]),
        .I5(time_out_counter_reg[15]),
        .O(\n_0_time_out_counter[0]_i_9__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_2__0 
       (.I0(time_out_counter_reg[15]),
        .O(\n_0_time_out_counter[12]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_3__0 
       (.I0(time_out_counter_reg[14]),
        .O(\n_0_time_out_counter[12]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_4__0 
       (.I0(time_out_counter_reg[13]),
        .O(\n_0_time_out_counter[12]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_5__0 
       (.I0(time_out_counter_reg[12]),
        .O(\n_0_time_out_counter[12]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_2__0 
       (.I0(time_out_counter_reg[18]),
        .O(\n_0_time_out_counter[16]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_3__0 
       (.I0(time_out_counter_reg[17]),
        .O(\n_0_time_out_counter[16]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_4__0 
       (.I0(time_out_counter_reg[16]),
        .O(\n_0_time_out_counter[16]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_2__0 
       (.I0(time_out_counter_reg[7]),
        .O(\n_0_time_out_counter[4]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_3__0 
       (.I0(time_out_counter_reg[6]),
        .O(\n_0_time_out_counter[4]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_4__0 
       (.I0(time_out_counter_reg[5]),
        .O(\n_0_time_out_counter[4]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_5__0 
       (.I0(time_out_counter_reg[4]),
        .O(\n_0_time_out_counter[4]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_2__0 
       (.I0(time_out_counter_reg[11]),
        .O(\n_0_time_out_counter[8]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_3__0 
       (.I0(time_out_counter_reg[10]),
        .O(\n_0_time_out_counter[8]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_4__0 
       (.I0(time_out_counter_reg[9]),
        .O(\n_0_time_out_counter[8]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_5__0 
       (.I0(time_out_counter_reg[8]),
        .O(\n_0_time_out_counter[8]_i_5__0 ));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_7_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[0]),
        .R(n_0_reset_time_out_reg));
CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\n_0_time_out_counter_reg[0]_i_2__0 ,\n_1_time_out_counter_reg[0]_i_2__0 ,\n_2_time_out_counter_reg[0]_i_2__0 ,\n_3_time_out_counter_reg[0]_i_2__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_time_out_counter_reg[0]_i_2__0 ,\n_5_time_out_counter_reg[0]_i_2__0 ,\n_6_time_out_counter_reg[0]_i_2__0 ,\n_7_time_out_counter_reg[0]_i_2__0 }),
        .S({\n_0_time_out_counter[0]_i_5__0 ,\n_0_time_out_counter[0]_i_6__0 ,\n_0_time_out_counter[0]_i_7__0 ,\n_0_time_out_counter[0]_i_8 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[10]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[11]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_7_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[12]),
        .R(n_0_reset_time_out_reg));
CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\n_0_time_out_counter_reg[8]_i_1__0 ),
        .CO({\n_0_time_out_counter_reg[12]_i_1__0 ,\n_1_time_out_counter_reg[12]_i_1__0 ,\n_2_time_out_counter_reg[12]_i_1__0 ,\n_3_time_out_counter_reg[12]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[12]_i_1__0 ,\n_5_time_out_counter_reg[12]_i_1__0 ,\n_6_time_out_counter_reg[12]_i_1__0 ,\n_7_time_out_counter_reg[12]_i_1__0 }),
        .S({\n_0_time_out_counter[12]_i_2__0 ,\n_0_time_out_counter[12]_i_3__0 ,\n_0_time_out_counter[12]_i_4__0 ,\n_0_time_out_counter[12]_i_5__0 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[13]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[14]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[15]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_7_time_out_counter_reg[16]_i_1__0 ),
        .Q(time_out_counter_reg[16]),
        .R(n_0_reset_time_out_reg));
CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\n_0_time_out_counter_reg[12]_i_1__0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:2],\n_2_time_out_counter_reg[16]_i_1__0 ,\n_3_time_out_counter_reg[16]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED [3],\n_5_time_out_counter_reg[16]_i_1__0 ,\n_6_time_out_counter_reg[16]_i_1__0 ,\n_7_time_out_counter_reg[16]_i_1__0 }),
        .S({1'b0,\n_0_time_out_counter[16]_i_2__0 ,\n_0_time_out_counter[16]_i_3__0 ,\n_0_time_out_counter[16]_i_4__0 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[16]_i_1__0 ),
        .Q(time_out_counter_reg[17]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[16]_i_1__0 ),
        .Q(time_out_counter_reg[18]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[1]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[2]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[3]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_7_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[4]),
        .R(n_0_reset_time_out_reg));
CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\n_0_time_out_counter_reg[0]_i_2__0 ),
        .CO({\n_0_time_out_counter_reg[4]_i_1__0 ,\n_1_time_out_counter_reg[4]_i_1__0 ,\n_2_time_out_counter_reg[4]_i_1__0 ,\n_3_time_out_counter_reg[4]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[4]_i_1__0 ,\n_5_time_out_counter_reg[4]_i_1__0 ,\n_6_time_out_counter_reg[4]_i_1__0 ,\n_7_time_out_counter_reg[4]_i_1__0 }),
        .S({\n_0_time_out_counter[4]_i_2__0 ,\n_0_time_out_counter[4]_i_3__0 ,\n_0_time_out_counter[4]_i_4__0 ,\n_0_time_out_counter[4]_i_5__0 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[5]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[6]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[7]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_7_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[8]),
        .R(n_0_reset_time_out_reg));
CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\n_0_time_out_counter_reg[4]_i_1__0 ),
        .CO({\n_0_time_out_counter_reg[8]_i_1__0 ,\n_1_time_out_counter_reg[8]_i_1__0 ,\n_2_time_out_counter_reg[8]_i_1__0 ,\n_3_time_out_counter_reg[8]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[8]_i_1__0 ,\n_5_time_out_counter_reg[8]_i_1__0 ,\n_6_time_out_counter_reg[8]_i_1__0 ,\n_7_time_out_counter_reg[8]_i_1__0 }),
        .S({\n_0_time_out_counter[8]_i_2__0 ,\n_0_time_out_counter[8]_i_3__0 ,\n_0_time_out_counter[8]_i_4__0 ,\n_0_time_out_counter[8]_i_5__0 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[9]),
        .R(n_0_reset_time_out_reg));
LUT6 #(
    .INIT(64'hFF00FF0100000000)) 
     time_out_wait_bypass_i_1__0
       (.I0(\n_0_wait_bypass_count[0]_i_4__0 ),
        .I1(wait_bypass_count_reg[3]),
        .I2(\n_0_wait_bypass_count[0]_i_5__0 ),
        .I3(n_0_time_out_wait_bypass_reg),
        .I4(rx_fsm_reset_done_int_s3),
        .I5(n_0_run_phase_alignment_int_s3_reg),
        .O(n_0_time_out_wait_bypass_i_1__0));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_reg
       (.C(userclk),
        .CE(1'b1),
        .D(n_0_time_out_wait_bypass_i_1__0),
        .Q(n_0_time_out_wait_bypass_reg),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     time_tlock_max_i_10
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[15]),
        .O(n_0_time_tlock_max_i_10));
LUT2 #(
    .INIT(4'h1)) 
     time_tlock_max_i_11
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[12]),
        .O(n_0_time_tlock_max_i_11));
LUT2 #(
    .INIT(4'h8)) 
     time_tlock_max_i_12
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[11]),
        .O(n_0_time_tlock_max_i_12));
LUT2 #(
    .INIT(4'h2)) 
     time_tlock_max_i_13
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .O(n_0_time_tlock_max_i_13));
LUT2 #(
    .INIT(4'hE)) 
     time_tlock_max_i_14
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[7]),
        .O(n_0_time_tlock_max_i_14));
LUT2 #(
    .INIT(4'h8)) 
     time_tlock_max_i_15
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[5]),
        .O(n_0_time_tlock_max_i_15));
LUT2 #(
    .INIT(4'hE)) 
     time_tlock_max_i_16
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[3]),
        .O(n_0_time_tlock_max_i_16));
LUT2 #(
    .INIT(4'hE)) 
     time_tlock_max_i_17
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .O(n_0_time_tlock_max_i_17));
LUT2 #(
    .INIT(4'h1)) 
     time_tlock_max_i_18
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .O(n_0_time_tlock_max_i_18));
LUT2 #(
    .INIT(4'h2)) 
     time_tlock_max_i_19
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[4]),
        .O(n_0_time_tlock_max_i_19));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT4 #(
    .INIT(16'h00EA)) 
     time_tlock_max_i_1__0
       (.I0(time_tlock_max),
        .I1(time_tlock_max1),
        .I2(n_0_check_tlock_max_reg),
        .I3(n_0_reset_time_out_reg),
        .O(n_0_time_tlock_max_i_1__0));
LUT2 #(
    .INIT(4'h1)) 
     time_tlock_max_i_20
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[2]),
        .O(n_0_time_tlock_max_i_20));
LUT2 #(
    .INIT(4'h1)) 
     time_tlock_max_i_21
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .O(n_0_time_tlock_max_i_21));
LUT2 #(
    .INIT(4'hE)) 
     time_tlock_max_i_4
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .O(n_0_time_tlock_max_i_4));
LUT1 #(
    .INIT(2'h1)) 
     time_tlock_max_i_5
       (.I0(time_out_counter_reg[18]),
        .O(n_0_time_tlock_max_i_5));
LUT2 #(
    .INIT(4'h1)) 
     time_tlock_max_i_6
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .O(n_0_time_tlock_max_i_6));
LUT2 #(
    .INIT(4'hE)) 
     time_tlock_max_i_8
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .O(n_0_time_tlock_max_i_8));
LUT2 #(
    .INIT(4'h8)) 
     time_tlock_max_i_9
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .O(n_0_time_tlock_max_i_9));
FDRE #(
    .INIT(1'b0)) 
     time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_time_tlock_max_i_1__0),
        .Q(time_tlock_max),
        .R(1'b0));
CARRY4 time_tlock_max_reg_i_2
       (.CI(n_0_time_tlock_max_reg_i_3),
        .CO({NLW_time_tlock_max_reg_i_2_CO_UNCONNECTED[3:2],time_tlock_max1,n_3_time_tlock_max_reg_i_2}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,time_out_counter_reg[18],n_0_time_tlock_max_i_4}),
        .O(NLW_time_tlock_max_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,n_0_time_tlock_max_i_5,n_0_time_tlock_max_i_6}));
CARRY4 time_tlock_max_reg_i_3
       (.CI(n_0_time_tlock_max_reg_i_7),
        .CO({n_0_time_tlock_max_reg_i_3,n_1_time_tlock_max_reg_i_3,n_2_time_tlock_max_reg_i_3,n_3_time_tlock_max_reg_i_3}),
        .CYINIT(1'b0),
        .DI({time_out_counter_reg[15],n_0_time_tlock_max_i_8,1'b0,n_0_time_tlock_max_i_9}),
        .O(NLW_time_tlock_max_reg_i_3_O_UNCONNECTED[3:0]),
        .S({n_0_time_tlock_max_i_10,n_0_time_tlock_max_i_11,n_0_time_tlock_max_i_12,n_0_time_tlock_max_i_13}));
CARRY4 time_tlock_max_reg_i_7
       (.CI(1'b0),
        .CO({n_0_time_tlock_max_reg_i_7,n_1_time_tlock_max_reg_i_7,n_2_time_tlock_max_reg_i_7,n_3_time_tlock_max_reg_i_7}),
        .CYINIT(1'b0),
        .DI({n_0_time_tlock_max_i_14,n_0_time_tlock_max_i_15,n_0_time_tlock_max_i_16,n_0_time_tlock_max_i_17}),
        .O(NLW_time_tlock_max_reg_i_7_O_UNCONNECTED[3:0]),
        .S({n_0_time_tlock_max_i_18,n_0_time_tlock_max_i_19,n_0_time_tlock_max_i_20,n_0_time_tlock_max_i_21}));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_1__0 
       (.I0(n_0_run_phase_alignment_int_s3_reg),
        .O(\n_0_wait_bypass_count[0]_i_1__0 ));
LUT4 #(
    .INIT(16'h00FE)) 
     \wait_bypass_count[0]_i_2__0 
       (.I0(\n_0_wait_bypass_count[0]_i_4__0 ),
        .I1(wait_bypass_count_reg[3]),
        .I2(\n_0_wait_bypass_count[0]_i_5__0 ),
        .I3(rx_fsm_reset_done_int_s3),
        .O(\n_0_wait_bypass_count[0]_i_2__0 ));
LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
     \wait_bypass_count[0]_i_4__0 
       (.I0(wait_bypass_count_reg[9]),
        .I1(wait_bypass_count_reg[11]),
        .I2(wait_bypass_count_reg[1]),
        .I3(wait_bypass_count_reg[2]),
        .I4(wait_bypass_count_reg[12]),
        .I5(wait_bypass_count_reg[0]),
        .O(\n_0_wait_bypass_count[0]_i_4__0 ));
LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
     \wait_bypass_count[0]_i_5__0 
       (.I0(wait_bypass_count_reg[5]),
        .I1(wait_bypass_count_reg[4]),
        .I2(wait_bypass_count_reg[10]),
        .I3(wait_bypass_count_reg[8]),
        .I4(wait_bypass_count_reg[6]),
        .I5(wait_bypass_count_reg[7]),
        .O(\n_0_wait_bypass_count[0]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_6__0 
       (.I0(wait_bypass_count_reg[3]),
        .O(\n_0_wait_bypass_count[0]_i_6__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_7__0 
       (.I0(wait_bypass_count_reg[2]),
        .O(\n_0_wait_bypass_count[0]_i_7__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_8__0 
       (.I0(wait_bypass_count_reg[1]),
        .O(\n_0_wait_bypass_count[0]_i_8__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_9 
       (.I0(wait_bypass_count_reg[0]),
        .O(\n_0_wait_bypass_count[0]_i_9 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[12]_i_2__0 
       (.I0(wait_bypass_count_reg[12]),
        .O(\n_0_wait_bypass_count[12]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_2__0 
       (.I0(wait_bypass_count_reg[7]),
        .O(\n_0_wait_bypass_count[4]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_3__0 
       (.I0(wait_bypass_count_reg[6]),
        .O(\n_0_wait_bypass_count[4]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_4__0 
       (.I0(wait_bypass_count_reg[5]),
        .O(\n_0_wait_bypass_count[4]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_5__0 
       (.I0(wait_bypass_count_reg[4]),
        .O(\n_0_wait_bypass_count[4]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_2__0 
       (.I0(wait_bypass_count_reg[11]),
        .O(\n_0_wait_bypass_count[8]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_3__0 
       (.I0(wait_bypass_count_reg[10]),
        .O(\n_0_wait_bypass_count[8]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_4__0 
       (.I0(wait_bypass_count_reg[9]),
        .O(\n_0_wait_bypass_count[8]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_5__0 
       (.I0(wait_bypass_count_reg[8]),
        .O(\n_0_wait_bypass_count[8]_i_5__0 ));
FDRE \wait_bypass_count_reg[0] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_7_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\n_0_wait_bypass_count_reg[0]_i_3__0 ,\n_1_wait_bypass_count_reg[0]_i_3__0 ,\n_2_wait_bypass_count_reg[0]_i_3__0 ,\n_3_wait_bypass_count_reg[0]_i_3__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_wait_bypass_count_reg[0]_i_3__0 ,\n_5_wait_bypass_count_reg[0]_i_3__0 ,\n_6_wait_bypass_count_reg[0]_i_3__0 ,\n_7_wait_bypass_count_reg[0]_i_3__0 }),
        .S({\n_0_wait_bypass_count[0]_i_6__0 ,\n_0_wait_bypass_count[0]_i_7__0 ,\n_0_wait_bypass_count[0]_i_8__0 ,\n_0_wait_bypass_count[0]_i_9 }));
FDRE \wait_bypass_count_reg[10] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_5_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
FDRE \wait_bypass_count_reg[11] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_4_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
FDRE \wait_bypass_count_reg[12] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_7_wait_bypass_count_reg[12]_i_1__0 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\n_0_wait_bypass_count_reg[8]_i_1__0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\n_7_wait_bypass_count_reg[12]_i_1__0 }),
        .S({1'b0,1'b0,1'b0,\n_0_wait_bypass_count[12]_i_2__0 }));
FDRE \wait_bypass_count_reg[1] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_6_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
FDRE \wait_bypass_count_reg[2] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_5_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
FDRE \wait_bypass_count_reg[3] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_4_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
FDRE \wait_bypass_count_reg[4] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_7_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\n_0_wait_bypass_count_reg[0]_i_3__0 ),
        .CO({\n_0_wait_bypass_count_reg[4]_i_1__0 ,\n_1_wait_bypass_count_reg[4]_i_1__0 ,\n_2_wait_bypass_count_reg[4]_i_1__0 ,\n_3_wait_bypass_count_reg[4]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wait_bypass_count_reg[4]_i_1__0 ,\n_5_wait_bypass_count_reg[4]_i_1__0 ,\n_6_wait_bypass_count_reg[4]_i_1__0 ,\n_7_wait_bypass_count_reg[4]_i_1__0 }),
        .S({\n_0_wait_bypass_count[4]_i_2__0 ,\n_0_wait_bypass_count[4]_i_3__0 ,\n_0_wait_bypass_count[4]_i_4__0 ,\n_0_wait_bypass_count[4]_i_5__0 }));
FDRE \wait_bypass_count_reg[5] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_6_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
FDRE \wait_bypass_count_reg[6] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_5_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
FDRE \wait_bypass_count_reg[7] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_4_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
FDRE \wait_bypass_count_reg[8] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_7_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\n_0_wait_bypass_count_reg[4]_i_1__0 ),
        .CO({\n_0_wait_bypass_count_reg[8]_i_1__0 ,\n_1_wait_bypass_count_reg[8]_i_1__0 ,\n_2_wait_bypass_count_reg[8]_i_1__0 ,\n_3_wait_bypass_count_reg[8]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wait_bypass_count_reg[8]_i_1__0 ,\n_5_wait_bypass_count_reg[8]_i_1__0 ,\n_6_wait_bypass_count_reg[8]_i_1__0 ,\n_7_wait_bypass_count_reg[8]_i_1__0 }),
        .S({\n_0_wait_bypass_count[8]_i_2__0 ,\n_0_wait_bypass_count[8]_i_3__0 ,\n_0_wait_bypass_count[8]_i_4__0 ,\n_0_wait_bypass_count[8]_i_5__0 }));
FDRE \wait_bypass_count_reg[9] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_6_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_1__0 
       (.I0(wait_time_cnt_reg__0[0]),
        .O(wait_time_cnt0__0));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT2 #(
    .INIT(4'h9)) 
     \wait_time_cnt[1]_i_1__0 
       (.I0(wait_time_cnt_reg__0[0]),
        .I1(wait_time_cnt_reg__0[1]),
        .O(\n_0_wait_time_cnt[1]_i_1__0 ));
LUT3 #(
    .INIT(8'hE1)) 
     \wait_time_cnt[2]_i_1__0 
       (.I0(wait_time_cnt_reg__0[1]),
        .I1(wait_time_cnt_reg__0[0]),
        .I2(wait_time_cnt_reg__0[2]),
        .O(\n_0_wait_time_cnt[2]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT4 #(
    .INIT(16'hFE01)) 
     \wait_time_cnt[3]_i_1__0 
       (.I0(wait_time_cnt_reg__0[2]),
        .I1(wait_time_cnt_reg__0[0]),
        .I2(wait_time_cnt_reg__0[1]),
        .I3(wait_time_cnt_reg__0[3]),
        .O(\n_0_wait_time_cnt[3]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT5 #(
    .INIT(32'hFFFE0001)) 
     \wait_time_cnt[4]_i_1__0 
       (.I0(wait_time_cnt_reg__0[1]),
        .I1(wait_time_cnt_reg__0[0]),
        .I2(wait_time_cnt_reg__0[2]),
        .I3(wait_time_cnt_reg__0[3]),
        .I4(wait_time_cnt_reg__0[4]),
        .O(\n_0_wait_time_cnt[4]_i_1__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
     \wait_time_cnt[5]_i_1__0 
       (.I0(wait_time_cnt_reg__0[4]),
        .I1(wait_time_cnt_reg__0[3]),
        .I2(wait_time_cnt_reg__0[2]),
        .I3(wait_time_cnt_reg__0[0]),
        .I4(wait_time_cnt_reg__0[1]),
        .I5(wait_time_cnt_reg__0[5]),
        .O(\n_0_wait_time_cnt[5]_i_1__0 ));
LUT3 #(
    .INIT(8'h10)) 
     \wait_time_cnt[6]_i_1__0 
       (.I0(rx_state[1]),
        .I1(rx_state[3]),
        .I2(rx_state[0]),
        .O(\n_0_wait_time_cnt[6]_i_1__0 ));
LUT2 #(
    .INIT(4'hE)) 
     \wait_time_cnt[6]_i_2__0 
       (.I0(wait_time_cnt_reg__0[6]),
        .I1(\n_0_wait_time_cnt[6]_i_4__0 ),
        .O(\n_0_wait_time_cnt[6]_i_2__0 ));
LUT2 #(
    .INIT(4'h9)) 
     \wait_time_cnt[6]_i_3__0 
       (.I0(\n_0_wait_time_cnt[6]_i_4__0 ),
        .I1(wait_time_cnt_reg__0[6]),
        .O(\n_0_wait_time_cnt[6]_i_3__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \wait_time_cnt[6]_i_4__0 
       (.I0(wait_time_cnt_reg__0[0]),
        .I1(wait_time_cnt_reg__0[1]),
        .I2(wait_time_cnt_reg__0[4]),
        .I3(wait_time_cnt_reg__0[5]),
        .I4(wait_time_cnt_reg__0[2]),
        .I5(wait_time_cnt_reg__0[3]),
        .O(\n_0_wait_time_cnt[6]_i_4__0 ));
FDRE \wait_time_cnt_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2__0 ),
        .D(wait_time_cnt0__0),
        .Q(wait_time_cnt_reg__0[0]),
        .R(\n_0_wait_time_cnt[6]_i_1__0 ));
FDRE \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2__0 ),
        .D(\n_0_wait_time_cnt[1]_i_1__0 ),
        .Q(wait_time_cnt_reg__0[1]),
        .R(\n_0_wait_time_cnt[6]_i_1__0 ));
FDSE \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2__0 ),
        .D(\n_0_wait_time_cnt[2]_i_1__0 ),
        .Q(wait_time_cnt_reg__0[2]),
        .S(\n_0_wait_time_cnt[6]_i_1__0 ));
FDRE \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2__0 ),
        .D(\n_0_wait_time_cnt[3]_i_1__0 ),
        .Q(wait_time_cnt_reg__0[3]),
        .R(\n_0_wait_time_cnt[6]_i_1__0 ));
FDRE \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2__0 ),
        .D(\n_0_wait_time_cnt[4]_i_1__0 ),
        .Q(wait_time_cnt_reg__0[4]),
        .R(\n_0_wait_time_cnt[6]_i_1__0 ));
FDSE \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2__0 ),
        .D(\n_0_wait_time_cnt[5]_i_1__0 ),
        .Q(wait_time_cnt_reg__0[5]),
        .S(\n_0_wait_time_cnt[6]_i_1__0 ));
FDSE \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2__0 ),
        .D(\n_0_wait_time_cnt[6]_i_3__0 ),
        .Q(wait_time_cnt_reg__0[6]),
        .S(\n_0_wait_time_cnt[6]_i_1__0 ));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_TX_STARTUP_FSM" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_TX_STARTUP_FSM__parameterized0
   (CPLL_RESET,
    TXUSERRDY,
    gt0_gttxreset_in0_out,
    data_in,
    independent_clock_bufg,
    userclk,
    pma_reset,
    I5,
    gt0_rxresetdone_out,
    I1,
    mmcm_locked,
    cplllock);
  output CPLL_RESET;
  output TXUSERRDY;
  output gt0_gttxreset_in0_out;
  output data_in;
  input independent_clock_bufg;
  input userclk;
  input pma_reset;
  input I5;
  input gt0_rxresetdone_out;
  input I1;
  input mmcm_locked;
  input cplllock;

  wire CPLL_RESET;
  wire GTTXRESET;
  wire I1;
  wire I5;
  wire TXUSERRDY;
  wire clear;
  wire cplllock;
  wire data_in;
  wire data_out;
  wire gt0_gttxreset_in0_out;
  wire gt0_rxresetdone_out;
  wire gt0_txresetdone_out;
  wire independent_clock_bufg;
  wire [6:0]init_wait_count_reg__0;
  wire [9:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire mmcm_locked;
  wire n_0_CPLL_RESET_i_1;
  wire \n_0_FSM_sequential_tx_state[0]_i_1 ;
  wire \n_0_FSM_sequential_tx_state[0]_i_2 ;
  wire \n_0_FSM_sequential_tx_state[1]_i_1 ;
  wire \n_0_FSM_sequential_tx_state[1]_i_2 ;
  wire \n_0_FSM_sequential_tx_state[2]_i_1 ;
  wire \n_0_FSM_sequential_tx_state[3]_i_2 ;
  wire \n_0_FSM_sequential_tx_state[3]_i_4 ;
  wire n_0_TXUSERRDY_i_1;
  wire n_0_gttxreset_i_i_1;
  wire \n_0_init_wait_count[0]_i_1 ;
  wire \n_0_init_wait_count[6]_i_1 ;
  wire \n_0_init_wait_count[6]_i_3 ;
  wire n_0_init_wait_done_i_1;
  wire n_0_init_wait_done_reg;
  wire \n_0_mmcm_lock_count[2]_i_1 ;
  wire \n_0_mmcm_lock_count[3]_i_1 ;
  wire \n_0_mmcm_lock_count[4]_i_1 ;
  wire \n_0_mmcm_lock_count[5]_i_1 ;
  wire \n_0_mmcm_lock_count[9]_i_2 ;
  wire \n_0_mmcm_lock_count[9]_i_4 ;
  wire n_0_mmcm_lock_reclocked_i_2;
  wire n_0_pll_reset_asserted_i_1;
  wire n_0_pll_reset_asserted_reg;
  wire n_0_run_phase_alignment_int_i_1;
  wire n_0_run_phase_alignment_int_reg;
  wire n_0_sync_cplllock;
  wire n_0_sync_mmcm_lock_reclocked;
  wire n_0_time_out_2ms_i_1__0;
  wire n_0_time_out_2ms_i_2__0;
  wire n_0_time_out_2ms_reg;
  wire n_0_time_out_500us_i_1;
  wire n_0_time_out_500us_i_2;
  wire n_0_time_out_500us_reg;
  wire \n_0_time_out_counter[0]_i_10 ;
  wire \n_0_time_out_counter[0]_i_1__0 ;
  wire \n_0_time_out_counter[0]_i_3 ;
  wire \n_0_time_out_counter[0]_i_4 ;
  wire \n_0_time_out_counter[0]_i_5 ;
  wire \n_0_time_out_counter[0]_i_6 ;
  wire \n_0_time_out_counter[0]_i_7 ;
  wire \n_0_time_out_counter[0]_i_8__0 ;
  wire \n_0_time_out_counter[0]_i_9 ;
  wire \n_0_time_out_counter[12]_i_2 ;
  wire \n_0_time_out_counter[12]_i_3 ;
  wire \n_0_time_out_counter[12]_i_4 ;
  wire \n_0_time_out_counter[12]_i_5 ;
  wire \n_0_time_out_counter[16]_i_2 ;
  wire \n_0_time_out_counter[16]_i_3 ;
  wire \n_0_time_out_counter[16]_i_4 ;
  wire \n_0_time_out_counter[4]_i_2 ;
  wire \n_0_time_out_counter[4]_i_3 ;
  wire \n_0_time_out_counter[4]_i_4 ;
  wire \n_0_time_out_counter[4]_i_5 ;
  wire \n_0_time_out_counter[8]_i_2 ;
  wire \n_0_time_out_counter[8]_i_3 ;
  wire \n_0_time_out_counter[8]_i_4 ;
  wire \n_0_time_out_counter[8]_i_5 ;
  wire \n_0_time_out_counter_reg[0]_i_2 ;
  wire \n_0_time_out_counter_reg[12]_i_1 ;
  wire \n_0_time_out_counter_reg[4]_i_1 ;
  wire \n_0_time_out_counter_reg[8]_i_1 ;
  wire n_0_time_out_wait_bypass_i_1;
  wire n_0_time_out_wait_bypass_reg;
  wire n_0_time_tlock_max_i_1;
  wire n_0_time_tlock_max_i_2;
  wire n_0_time_tlock_max_i_3;
  wire n_0_time_tlock_max_reg;
  wire n_0_tx_fsm_reset_done_int_i_1;
  wire \n_0_wait_bypass_count[0]_i_1 ;
  wire \n_0_wait_bypass_count[0]_i_10 ;
  wire \n_0_wait_bypass_count[0]_i_2 ;
  wire \n_0_wait_bypass_count[0]_i_4 ;
  wire \n_0_wait_bypass_count[0]_i_5 ;
  wire \n_0_wait_bypass_count[0]_i_6 ;
  wire \n_0_wait_bypass_count[0]_i_7 ;
  wire \n_0_wait_bypass_count[0]_i_8 ;
  wire \n_0_wait_bypass_count[0]_i_9__0 ;
  wire \n_0_wait_bypass_count[12]_i_2 ;
  wire \n_0_wait_bypass_count[12]_i_3 ;
  wire \n_0_wait_bypass_count[12]_i_4 ;
  wire \n_0_wait_bypass_count[12]_i_5 ;
  wire \n_0_wait_bypass_count[16]_i_2 ;
  wire \n_0_wait_bypass_count[4]_i_2 ;
  wire \n_0_wait_bypass_count[4]_i_3 ;
  wire \n_0_wait_bypass_count[4]_i_4 ;
  wire \n_0_wait_bypass_count[4]_i_5 ;
  wire \n_0_wait_bypass_count[8]_i_2 ;
  wire \n_0_wait_bypass_count[8]_i_3 ;
  wire \n_0_wait_bypass_count[8]_i_4 ;
  wire \n_0_wait_bypass_count[8]_i_5 ;
  wire \n_0_wait_bypass_count_reg[0]_i_3 ;
  wire \n_0_wait_bypass_count_reg[12]_i_1 ;
  wire \n_0_wait_bypass_count_reg[4]_i_1 ;
  wire \n_0_wait_bypass_count_reg[8]_i_1 ;
  wire \n_0_wait_time_cnt[1]_i_1 ;
  wire \n_0_wait_time_cnt[2]_i_1 ;
  wire \n_0_wait_time_cnt[3]_i_1 ;
  wire \n_0_wait_time_cnt[4]_i_1 ;
  wire \n_0_wait_time_cnt[5]_i_1 ;
  wire \n_0_wait_time_cnt[6]_i_2 ;
  wire \n_0_wait_time_cnt[6]_i_3 ;
  wire \n_0_wait_time_cnt[6]_i_4 ;
  wire n_1_sync_cplllock;
  wire n_1_sync_mmcm_lock_reclocked;
  wire \n_1_time_out_counter_reg[0]_i_2 ;
  wire \n_1_time_out_counter_reg[12]_i_1 ;
  wire \n_1_time_out_counter_reg[4]_i_1 ;
  wire \n_1_time_out_counter_reg[8]_i_1 ;
  wire \n_1_wait_bypass_count_reg[0]_i_3 ;
  wire \n_1_wait_bypass_count_reg[12]_i_1 ;
  wire \n_1_wait_bypass_count_reg[4]_i_1 ;
  wire \n_1_wait_bypass_count_reg[8]_i_1 ;
  wire \n_2_time_out_counter_reg[0]_i_2 ;
  wire \n_2_time_out_counter_reg[12]_i_1 ;
  wire \n_2_time_out_counter_reg[16]_i_1 ;
  wire \n_2_time_out_counter_reg[4]_i_1 ;
  wire \n_2_time_out_counter_reg[8]_i_1 ;
  wire \n_2_wait_bypass_count_reg[0]_i_3 ;
  wire \n_2_wait_bypass_count_reg[12]_i_1 ;
  wire \n_2_wait_bypass_count_reg[4]_i_1 ;
  wire \n_2_wait_bypass_count_reg[8]_i_1 ;
  wire \n_3_time_out_counter_reg[0]_i_2 ;
  wire \n_3_time_out_counter_reg[12]_i_1 ;
  wire \n_3_time_out_counter_reg[16]_i_1 ;
  wire \n_3_time_out_counter_reg[4]_i_1 ;
  wire \n_3_time_out_counter_reg[8]_i_1 ;
  wire \n_3_wait_bypass_count_reg[0]_i_3 ;
  wire \n_3_wait_bypass_count_reg[12]_i_1 ;
  wire \n_3_wait_bypass_count_reg[4]_i_1 ;
  wire \n_3_wait_bypass_count_reg[8]_i_1 ;
  wire \n_4_time_out_counter_reg[0]_i_2 ;
  wire \n_4_time_out_counter_reg[12]_i_1 ;
  wire \n_4_time_out_counter_reg[4]_i_1 ;
  wire \n_4_time_out_counter_reg[8]_i_1 ;
  wire \n_4_wait_bypass_count_reg[0]_i_3 ;
  wire \n_4_wait_bypass_count_reg[12]_i_1 ;
  wire \n_4_wait_bypass_count_reg[4]_i_1 ;
  wire \n_4_wait_bypass_count_reg[8]_i_1 ;
  wire \n_5_time_out_counter_reg[0]_i_2 ;
  wire \n_5_time_out_counter_reg[12]_i_1 ;
  wire \n_5_time_out_counter_reg[16]_i_1 ;
  wire \n_5_time_out_counter_reg[4]_i_1 ;
  wire \n_5_time_out_counter_reg[8]_i_1 ;
  wire \n_5_wait_bypass_count_reg[0]_i_3 ;
  wire \n_5_wait_bypass_count_reg[12]_i_1 ;
  wire \n_5_wait_bypass_count_reg[4]_i_1 ;
  wire \n_5_wait_bypass_count_reg[8]_i_1 ;
  wire \n_6_time_out_counter_reg[0]_i_2 ;
  wire \n_6_time_out_counter_reg[12]_i_1 ;
  wire \n_6_time_out_counter_reg[16]_i_1 ;
  wire \n_6_time_out_counter_reg[4]_i_1 ;
  wire \n_6_time_out_counter_reg[8]_i_1 ;
  wire \n_6_wait_bypass_count_reg[0]_i_3 ;
  wire \n_6_wait_bypass_count_reg[12]_i_1 ;
  wire \n_6_wait_bypass_count_reg[4]_i_1 ;
  wire \n_6_wait_bypass_count_reg[8]_i_1 ;
  wire \n_7_time_out_counter_reg[0]_i_2 ;
  wire \n_7_time_out_counter_reg[12]_i_1 ;
  wire \n_7_time_out_counter_reg[16]_i_1 ;
  wire \n_7_time_out_counter_reg[4]_i_1 ;
  wire \n_7_time_out_counter_reg[8]_i_1 ;
  wire \n_7_wait_bypass_count_reg[0]_i_3 ;
  wire \n_7_wait_bypass_count_reg[12]_i_1 ;
  wire \n_7_wait_bypass_count_reg[16]_i_1 ;
  wire \n_7_wait_bypass_count_reg[4]_i_1 ;
  wire \n_7_wait_bypass_count_reg[8]_i_1 ;
  wire [6:1]p_0_in;
  wire [9:0]p_0_in__0;
  wire pma_reset;
  wire reset_time_out;
  wire run_phase_alignment_int_s3;
  wire [18:0]time_out_counter_reg;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire tx_fsm_reset_done_int_s2;
  wire tx_fsm_reset_done_int_s3;
(* RTL_KEEP = "yes" *)   wire [3:0]tx_state;
  wire tx_state12_out;
  wire tx_state13_out;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire userclk;
  wire [16:0]wait_bypass_count_reg;
  wire [0:0]wait_time_cnt0;
  wire [6:0]wait_time_cnt_reg__0;
  wire wait_time_done;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;

LUT6 #(
    .INIT(64'hFFFFFFF700000004)) 
     CPLL_RESET_i_1
       (.I0(n_0_pll_reset_asserted_reg),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(tx_state[3]),
        .I5(CPLL_RESET),
        .O(n_0_CPLL_RESET_i_1));
FDRE #(
    .INIT(1'b0)) 
     CPLL_RESET_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_CPLL_RESET_i_1),
        .Q(CPLL_RESET),
        .R(pma_reset));
LUT5 #(
    .INIT(32'h0F001F1F)) 
     \FSM_sequential_tx_state[0]_i_1 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(\n_0_FSM_sequential_tx_state[0]_i_2 ),
        .I4(tx_state[0]),
        .O(\n_0_FSM_sequential_tx_state[0]_i_1 ));
LUT6 #(
    .INIT(64'h22F0000022F0FFFF)) 
     \FSM_sequential_tx_state[0]_i_2 
       (.I0(n_0_time_out_500us_reg),
        .I1(reset_time_out),
        .I2(n_0_time_out_2ms_reg),
        .I3(tx_state[2]),
        .I4(tx_state[1]),
        .I5(\n_0_FSM_sequential_tx_state[1]_i_2 ),
        .O(\n_0_FSM_sequential_tx_state[0]_i_2 ));
LUT4 #(
    .INIT(16'h0062)) 
     \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[1]),
        .I1(tx_state[0]),
        .I2(\n_0_FSM_sequential_tx_state[1]_i_2 ),
        .I3(tx_state[3]),
        .O(\n_0_FSM_sequential_tx_state[1]_i_1 ));
LUT4 #(
    .INIT(16'hFFF7)) 
     \FSM_sequential_tx_state[1]_i_2 
       (.I0(tx_state[2]),
        .I1(n_0_time_tlock_max_reg),
        .I2(reset_time_out),
        .I3(mmcm_lock_reclocked),
        .O(\n_0_FSM_sequential_tx_state[1]_i_2 ));
LUT6 #(
    .INIT(64'h00000000222A662A)) 
     \FSM_sequential_tx_state[2]_i_1 
       (.I0(tx_state[2]),
        .I1(tx_state[0]),
        .I2(tx_state13_out),
        .I3(tx_state[1]),
        .I4(n_0_time_out_2ms_reg),
        .I5(tx_state[3]),
        .O(\n_0_FSM_sequential_tx_state[2]_i_1 ));
LUT3 #(
    .INIT(8'h10)) 
     \FSM_sequential_tx_state[2]_i_2 
       (.I0(mmcm_lock_reclocked),
        .I1(reset_time_out),
        .I2(n_0_time_tlock_max_reg),
        .O(tx_state13_out));
LUT6 #(
    .INIT(64'h0300004C00000044)) 
     \FSM_sequential_tx_state[3]_i_2 
       (.I0(time_out_wait_bypass_s3),
        .I1(tx_state[3]),
        .I2(tx_state12_out),
        .I3(tx_state[2]),
        .I4(tx_state[1]),
        .I5(tx_state[0]),
        .O(\n_0_FSM_sequential_tx_state[3]_i_2 ));
LUT2 #(
    .INIT(4'h1)) 
     \FSM_sequential_tx_state[3]_i_4 
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .O(\n_0_FSM_sequential_tx_state[3]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \FSM_sequential_tx_state[3]_i_5 
       (.I0(\n_0_wait_time_cnt[6]_i_4 ),
        .I1(wait_time_cnt_reg__0[6]),
        .O(wait_time_done));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \FSM_sequential_tx_state[3]_i_6 
       (.I0(n_0_time_out_500us_reg),
        .I1(reset_time_out),
        .O(tx_state12_out));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_tx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(n_1_sync_cplllock),
        .D(\n_0_FSM_sequential_tx_state[0]_i_1 ),
        .Q(tx_state[0]),
        .R(pma_reset));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_tx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(n_1_sync_cplllock),
        .D(\n_0_FSM_sequential_tx_state[1]_i_1 ),
        .Q(tx_state[1]),
        .R(pma_reset));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_tx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(n_1_sync_cplllock),
        .D(\n_0_FSM_sequential_tx_state[2]_i_1 ),
        .Q(tx_state[2]),
        .R(pma_reset));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_tx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(n_1_sync_cplllock),
        .D(\n_0_FSM_sequential_tx_state[3]_i_2 ),
        .Q(tx_state[3]),
        .R(pma_reset));
LUT5 #(
    .INIT(32'hFFFD0080)) 
     TXUSERRDY_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[1]),
        .I2(tx_state[2]),
        .I3(tx_state[3]),
        .I4(TXUSERRDY),
        .O(n_0_TXUSERRDY_i_1));
FDRE #(
    .INIT(1'b0)) 
     TXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_TXUSERRDY_i_1),
        .Q(TXUSERRDY),
        .R(pma_reset));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT2 #(
    .INIT(4'h8)) 
     data_sync1_i_1
       (.I0(gt0_txresetdone_out),
        .I1(gt0_rxresetdone_out),
        .O(data_in));
LUT5 #(
    .INIT(32'hFFFB0010)) 
     gttxreset_i_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[3]),
        .I4(GTTXRESET),
        .O(n_0_gttxreset_i_i_1));
FDRE #(
    .INIT(1'b0)) 
     gttxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_gttxreset_i_i_1),
        .Q(GTTXRESET),
        .R(pma_reset));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT3 #(
    .INIT(8'hEA)) 
     gtxe2_i_i_3
       (.I0(GTTXRESET),
        .I1(gt0_txresetdone_out),
        .I2(I5),
        .O(gt0_gttxreset_in0_out));
LUT1 #(
    .INIT(2'h1)) 
     \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .O(\n_0_init_wait_count[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[2]),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[3]),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[4]),
        .O(p_0_in[4]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[4]),
        .I5(init_wait_count_reg__0[5]),
        .O(p_0_in[5]));
LUT4 #(
    .INIT(16'hFFFB)) 
     \init_wait_count[6]_i_1 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[6]),
        .I2(init_wait_count_reg__0[0]),
        .I3(\n_0_init_wait_count[6]_i_3 ),
        .O(\n_0_init_wait_count[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT4 #(
    .INIT(16'hBF40)) 
     \init_wait_count[6]_i_2 
       (.I0(\n_0_init_wait_count[6]_i_3 ),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[4]),
        .I3(init_wait_count_reg__0[6]),
        .O(p_0_in[6]));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT4 #(
    .INIT(16'h7FFF)) 
     \init_wait_count[6]_i_3 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[5]),
        .O(\n_0_init_wait_count[6]_i_3 ));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1 ),
        .CLR(pma_reset),
        .D(\n_0_init_wait_count[0]_i_1 ),
        .Q(init_wait_count_reg__0[0]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1 ),
        .CLR(pma_reset),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg__0[1]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1 ),
        .CLR(pma_reset),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg__0[2]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1 ),
        .CLR(pma_reset),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg__0[3]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1 ),
        .CLR(pma_reset),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg__0[4]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1 ),
        .CLR(pma_reset),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg__0[5]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1 ),
        .CLR(pma_reset),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg__0[6]));
LUT5 #(
    .INIT(32'hFFFF0010)) 
     init_wait_done_i_1
       (.I0(\n_0_init_wait_count[6]_i_3 ),
        .I1(init_wait_count_reg__0[4]),
        .I2(init_wait_count_reg__0[6]),
        .I3(init_wait_count_reg__0[0]),
        .I4(n_0_init_wait_done_reg),
        .O(n_0_init_wait_done_i_1));
FDCE #(
    .INIT(1'b0)) 
     init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .CLR(pma_reset),
        .D(n_0_init_wait_done_i_1),
        .Q(n_0_init_wait_done_reg));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__0[0]));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[1]));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[2]),
        .O(\n_0_mmcm_lock_count[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .I3(mmcm_lock_count_reg__0[3]),
        .O(\n_0_mmcm_lock_count[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[4]),
        .O(\n_0_mmcm_lock_count[4]_i_1 ));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[3]),
        .I5(mmcm_lock_count_reg__0[5]),
        .O(\n_0_mmcm_lock_count[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'hB4)) 
     \mmcm_lock_count[6]_i_1 
       (.I0(\n_0_mmcm_lock_count[9]_i_4 ),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(mmcm_lock_count_reg__0[6]),
        .O(p_0_in__0[6]));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT4 #(
    .INIT(16'hBF40)) 
     \mmcm_lock_count[7]_i_1 
       (.I0(\n_0_mmcm_lock_count[9]_i_4 ),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(mmcm_lock_count_reg__0[5]),
        .I3(mmcm_lock_count_reg__0[7]),
        .O(p_0_in__0[7]));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT5 #(
    .INIT(32'hBFFF4000)) 
     \mmcm_lock_count[8]_i_1 
       (.I0(\n_0_mmcm_lock_count[9]_i_4 ),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(mmcm_lock_count_reg__0[7]),
        .I4(mmcm_lock_count_reg__0[8]),
        .O(p_0_in__0[8]));
LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
     \mmcm_lock_count[9]_i_2 
       (.I0(\n_0_mmcm_lock_count[9]_i_4 ),
        .I1(mmcm_lock_count_reg__0[7]),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[8]),
        .I5(mmcm_lock_count_reg__0[9]),
        .O(\n_0_mmcm_lock_count[9]_i_2 ));
LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
     \mmcm_lock_count[9]_i_3 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(mmcm_lock_count_reg__0[7]),
        .I4(\n_0_mmcm_lock_count[9]_i_4 ),
        .I5(mmcm_lock_count_reg__0[9]),
        .O(p_0_in__0[9]));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT5 #(
    .INIT(32'h7FFFFFFF)) 
     \mmcm_lock_count[9]_i_4 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[4]),
        .O(\n_0_mmcm_lock_count[9]_i_4 ));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(\n_0_mmcm_lock_count[2]_i_1 ),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(\n_0_mmcm_lock_count[3]_i_1 ),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(\n_0_mmcm_lock_count[4]_i_1 ),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(\n_0_mmcm_lock_count[5]_i_1 ),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[8]),
        .Q(mmcm_lock_count_reg__0[8]),
        .R(n_1_sync_mmcm_lock_reclocked));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[9]),
        .Q(mmcm_lock_count_reg__0[9]),
        .R(n_1_sync_mmcm_lock_reclocked));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT4 #(
    .INIT(16'h7FFF)) 
     mmcm_lock_reclocked_i_2
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(mmcm_lock_count_reg__0[5]),
        .I3(mmcm_lock_count_reg__0[8]),
        .O(n_0_mmcm_lock_reclocked_i_2));
FDRE #(
    .INIT(1'b0)) 
     mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_sync_mmcm_lock_reclocked),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
LUT5 #(
    .INIT(32'hF0F0F072)) 
     pll_reset_asserted_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[1]),
        .I2(n_0_pll_reset_asserted_reg),
        .I3(tx_state[2]),
        .I4(tx_state[3]),
        .O(n_0_pll_reset_asserted_i_1));
FDRE #(
    .INIT(1'b0)) 
     pll_reset_asserted_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_pll_reset_asserted_i_1),
        .Q(n_0_pll_reset_asserted_reg),
        .R(pma_reset));
FDRE #(
    .INIT(1'b0)) 
     reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_sync_cplllock),
        .Q(reset_time_out),
        .R(pma_reset));
LUT5 #(
    .INIT(32'hFEFF0002)) 
     run_phase_alignment_int_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[1]),
        .I2(tx_state[2]),
        .I3(tx_state[0]),
        .I4(n_0_run_phase_alignment_int_reg),
        .O(n_0_run_phase_alignment_int_i_1));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_run_phase_alignment_int_i_1),
        .Q(n_0_run_phase_alignment_int_reg),
        .R(pma_reset));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_s3_reg
       (.C(userclk),
        .CE(1'b1),
        .D(data_out),
        .Q(run_phase_alignment_int_s3),
        .R(1'b0));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_5 sync_TXRESETDONE
       (.I1(I1),
        .data_out(txresetdone_s2),
        .independent_clock_bufg(independent_clock_bufg));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_6 sync_cplllock
       (.E(n_1_sync_cplllock),
        .I1(n_0_init_wait_done_reg),
        .I2(\n_0_FSM_sequential_tx_state[3]_i_4 ),
        .I3(n_0_time_out_500us_reg),
        .I4(n_0_time_out_2ms_reg),
        .I5(n_0_time_tlock_max_reg),
        .I6(n_0_pll_reset_asserted_reg),
        .O1(n_0_sync_cplllock),
        .cplllock(cplllock),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .out(tx_state),
        .reset_time_out(reset_time_out),
        .txresetdone_s3(txresetdone_s3),
        .wait_time_done(wait_time_done));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_7 sync_mmcm_lock_reclocked
       (.I1(n_0_mmcm_lock_reclocked_i_2),
        .I2(\n_0_mmcm_lock_count[9]_i_4 ),
        .O1(n_0_sync_mmcm_lock_reclocked),
        .Q(mmcm_lock_count_reg__0[9]),
        .SR(n_1_sync_mmcm_lock_reclocked),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_locked(mmcm_locked));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_8 sync_run_phase_alignment_int
       (.data_in(n_0_run_phase_alignment_int_reg),
        .data_out(data_out),
        .userclk(userclk));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_9 sync_time_out_wait_bypass
       (.data_in(n_0_time_out_wait_bypass_reg),
        .data_out(time_out_wait_bypass_s2),
        .independent_clock_bufg(independent_clock_bufg));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_10 sync_tx_fsm_reset_done_int
       (.data_out(tx_fsm_reset_done_int_s2),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .userclk(userclk));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT4 #(
    .INIT(16'h00AE)) 
     time_out_2ms_i_1__0
       (.I0(n_0_time_out_2ms_reg),
        .I1(n_0_time_out_2ms_i_2__0),
        .I2(\n_0_time_out_counter[0]_i_3 ),
        .I3(reset_time_out),
        .O(n_0_time_out_2ms_i_1__0));
LUT6 #(
    .INIT(64'h0000000000400000)) 
     time_out_2ms_i_2__0
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[18]),
        .I2(time_out_counter_reg[12]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[17]),
        .I5(\n_0_time_out_counter[0]_i_5 ),
        .O(n_0_time_out_2ms_i_2__0));
FDRE #(
    .INIT(1'b0)) 
     time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_time_out_2ms_i_1__0),
        .Q(n_0_time_out_2ms_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000AAAAAAAE)) 
     time_out_500us_i_1
       (.I0(n_0_time_out_500us_reg),
        .I1(n_0_time_out_500us_i_2),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[18]),
        .I4(\n_0_time_out_counter[0]_i_3 ),
        .I5(reset_time_out),
        .O(n_0_time_out_500us_i_1));
LUT6 #(
    .INIT(64'h0040000000000000)) 
     time_out_500us_i_2
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[16]),
        .I5(time_out_counter_reg[15]),
        .O(n_0_time_out_500us_i_2));
FDRE #(
    .INIT(1'b0)) 
     time_out_500us_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_time_out_500us_i_1),
        .Q(n_0_time_out_500us_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \time_out_counter[0]_i_10 
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[1]),
        .I4(time_out_counter_reg[13]),
        .I5(time_out_counter_reg[3]),
        .O(\n_0_time_out_counter[0]_i_10 ));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
     \time_out_counter[0]_i_1__0 
       (.I0(\n_0_time_out_counter[0]_i_3 ),
        .I1(time_out_counter_reg[10]),
        .I2(\n_0_time_out_counter[0]_i_4 ),
        .I3(time_out_counter_reg[18]),
        .I4(time_out_counter_reg[12]),
        .I5(\n_0_time_out_counter[0]_i_5 ),
        .O(\n_0_time_out_counter[0]_i_1__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFDFFFF)) 
     \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[14]),
        .I2(\n_0_time_out_counter[0]_i_10 ),
        .I3(time_out_counter_reg[2]),
        .I4(time_out_counter_reg[9]),
        .I5(time_out_counter_reg[0]),
        .O(\n_0_time_out_counter[0]_i_3 ));
LUT2 #(
    .INIT(4'h2)) 
     \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[5]),
        .O(\n_0_time_out_counter[0]_i_4 ));
LUT3 #(
    .INIT(8'hEF)) 
     \time_out_counter[0]_i_5 
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[11]),
        .O(\n_0_time_out_counter[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_6 
       (.I0(time_out_counter_reg[3]),
        .O(\n_0_time_out_counter[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_7 
       (.I0(time_out_counter_reg[2]),
        .O(\n_0_time_out_counter[0]_i_7 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_8__0 
       (.I0(time_out_counter_reg[1]),
        .O(\n_0_time_out_counter[0]_i_8__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \time_out_counter[0]_i_9 
       (.I0(time_out_counter_reg[0]),
        .O(\n_0_time_out_counter[0]_i_9 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_2 
       (.I0(time_out_counter_reg[15]),
        .O(\n_0_time_out_counter[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_3 
       (.I0(time_out_counter_reg[14]),
        .O(\n_0_time_out_counter[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_4 
       (.I0(time_out_counter_reg[13]),
        .O(\n_0_time_out_counter[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_5 
       (.I0(time_out_counter_reg[12]),
        .O(\n_0_time_out_counter[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_2 
       (.I0(time_out_counter_reg[18]),
        .O(\n_0_time_out_counter[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_3 
       (.I0(time_out_counter_reg[17]),
        .O(\n_0_time_out_counter[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_4 
       (.I0(time_out_counter_reg[16]),
        .O(\n_0_time_out_counter[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_2 
       (.I0(time_out_counter_reg[7]),
        .O(\n_0_time_out_counter[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_3 
       (.I0(time_out_counter_reg[6]),
        .O(\n_0_time_out_counter[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_4 
       (.I0(time_out_counter_reg[5]),
        .O(\n_0_time_out_counter[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_5 
       (.I0(time_out_counter_reg[4]),
        .O(\n_0_time_out_counter[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_2 
       (.I0(time_out_counter_reg[11]),
        .O(\n_0_time_out_counter[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_3 
       (.I0(time_out_counter_reg[10]),
        .O(\n_0_time_out_counter[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_4 
       (.I0(time_out_counter_reg[9]),
        .O(\n_0_time_out_counter[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_5 
       (.I0(time_out_counter_reg[8]),
        .O(\n_0_time_out_counter[8]_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_time_out_counter_reg[0]_i_2 ,\n_1_time_out_counter_reg[0]_i_2 ,\n_2_time_out_counter_reg[0]_i_2 ,\n_3_time_out_counter_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_time_out_counter_reg[0]_i_2 ,\n_5_time_out_counter_reg[0]_i_2 ,\n_6_time_out_counter_reg[0]_i_2 ,\n_7_time_out_counter_reg[0]_i_2 }),
        .S({\n_0_time_out_counter[0]_i_6 ,\n_0_time_out_counter[0]_i_7 ,\n_0_time_out_counter[0]_i_8__0 ,\n_0_time_out_counter[0]_i_9 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\n_0_time_out_counter_reg[8]_i_1 ),
        .CO({\n_0_time_out_counter_reg[12]_i_1 ,\n_1_time_out_counter_reg[12]_i_1 ,\n_2_time_out_counter_reg[12]_i_1 ,\n_3_time_out_counter_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[12]_i_1 ,\n_5_time_out_counter_reg[12]_i_1 ,\n_6_time_out_counter_reg[12]_i_1 ,\n_7_time_out_counter_reg[12]_i_1 }),
        .S({\n_0_time_out_counter[12]_i_2 ,\n_0_time_out_counter[12]_i_3 ,\n_0_time_out_counter[12]_i_4 ,\n_0_time_out_counter[12]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[16]_i_1 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\n_0_time_out_counter_reg[12]_i_1 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:2],\n_2_time_out_counter_reg[16]_i_1 ,\n_3_time_out_counter_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3],\n_5_time_out_counter_reg[16]_i_1 ,\n_6_time_out_counter_reg[16]_i_1 ,\n_7_time_out_counter_reg[16]_i_1 }),
        .S({1'b0,\n_0_time_out_counter[16]_i_2 ,\n_0_time_out_counter[16]_i_3 ,\n_0_time_out_counter[16]_i_4 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[16]_i_1 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[16]_i_1 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\n_0_time_out_counter_reg[0]_i_2 ),
        .CO({\n_0_time_out_counter_reg[4]_i_1 ,\n_1_time_out_counter_reg[4]_i_1 ,\n_2_time_out_counter_reg[4]_i_1 ,\n_3_time_out_counter_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[4]_i_1 ,\n_5_time_out_counter_reg[4]_i_1 ,\n_6_time_out_counter_reg[4]_i_1 ,\n_7_time_out_counter_reg[4]_i_1 }),
        .S({\n_0_time_out_counter[4]_i_2 ,\n_0_time_out_counter[4]_i_3 ,\n_0_time_out_counter[4]_i_4 ,\n_0_time_out_counter[4]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\n_0_time_out_counter_reg[4]_i_1 ),
        .CO({\n_0_time_out_counter_reg[8]_i_1 ,\n_1_time_out_counter_reg[8]_i_1 ,\n_2_time_out_counter_reg[8]_i_1 ,\n_3_time_out_counter_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[8]_i_1 ,\n_5_time_out_counter_reg[8]_i_1 ,\n_6_time_out_counter_reg[8]_i_1 ,\n_7_time_out_counter_reg[8]_i_1 }),
        .S({\n_0_time_out_counter[8]_i_2 ,\n_0_time_out_counter[8]_i_3 ,\n_0_time_out_counter[8]_i_4 ,\n_0_time_out_counter[8]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
LUT6 #(
    .INIT(64'hFF00FF0100000000)) 
     time_out_wait_bypass_i_1
       (.I0(\n_0_wait_bypass_count[0]_i_4 ),
        .I1(\n_0_wait_bypass_count[0]_i_5 ),
        .I2(\n_0_wait_bypass_count[0]_i_6 ),
        .I3(n_0_time_out_wait_bypass_reg),
        .I4(tx_fsm_reset_done_int_s3),
        .I5(run_phase_alignment_int_s3),
        .O(n_0_time_out_wait_bypass_i_1));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_reg
       (.C(userclk),
        .CE(1'b1),
        .D(n_0_time_out_wait_bypass_i_1),
        .Q(n_0_time_out_wait_bypass_reg),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000AAAAAAAE)) 
     time_tlock_max_i_1
       (.I0(n_0_time_tlock_max_reg),
        .I1(n_0_time_tlock_max_i_2),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[18]),
        .I4(n_0_time_tlock_max_i_3),
        .I5(reset_time_out),
        .O(n_0_time_tlock_max_i_1));
LUT6 #(
    .INIT(64'h0000000000400000)) 
     time_tlock_max_i_2
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[5]),
        .I5(\n_0_time_out_counter[0]_i_5 ),
        .O(n_0_time_tlock_max_i_2));
LUT4 #(
    .INIT(16'hFFFB)) 
     time_tlock_max_i_3
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[2]),
        .I3(\n_0_time_out_counter[0]_i_10 ),
        .O(n_0_time_tlock_max_i_3));
FDRE #(
    .INIT(1'b0)) 
     time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_time_tlock_max_i_1),
        .Q(n_0_time_tlock_max_reg),
        .R(1'b0));
LUT5 #(
    .INIT(32'hFFFF0200)) 
     tx_fsm_reset_done_int_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[1]),
        .I2(tx_state[2]),
        .I3(tx_state[0]),
        .I4(gt0_txresetdone_out),
        .O(n_0_tx_fsm_reset_done_int_i_1));
FDRE #(
    .INIT(1'b0)) 
     tx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(n_0_tx_fsm_reset_done_int_i_1),
        .Q(gt0_txresetdone_out),
        .R(pma_reset));
FDRE #(
    .INIT(1'b0)) 
     tx_fsm_reset_done_int_s3_reg
       (.C(userclk),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_s2),
        .Q(tx_fsm_reset_done_int_s3),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     txresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3),
        .O(\n_0_wait_bypass_count[0]_i_1 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_10 
       (.I0(wait_bypass_count_reg[0]),
        .O(\n_0_wait_bypass_count[0]_i_10 ));
LUT4 #(
    .INIT(16'h00FE)) 
     \wait_bypass_count[0]_i_2 
       (.I0(\n_0_wait_bypass_count[0]_i_4 ),
        .I1(\n_0_wait_bypass_count[0]_i_5 ),
        .I2(\n_0_wait_bypass_count[0]_i_6 ),
        .I3(tx_fsm_reset_done_int_s3),
        .O(\n_0_wait_bypass_count[0]_i_2 ));
LUT5 #(
    .INIT(32'hBFFFFFFF)) 
     \wait_bypass_count[0]_i_4 
       (.I0(wait_bypass_count_reg[15]),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[2]),
        .I3(wait_bypass_count_reg[16]),
        .I4(wait_bypass_count_reg[0]),
        .O(\n_0_wait_bypass_count[0]_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
     \wait_bypass_count[0]_i_5 
       (.I0(wait_bypass_count_reg[9]),
        .I1(wait_bypass_count_reg[10]),
        .I2(wait_bypass_count_reg[13]),
        .I3(wait_bypass_count_reg[14]),
        .I4(wait_bypass_count_reg[11]),
        .I5(wait_bypass_count_reg[12]),
        .O(\n_0_wait_bypass_count[0]_i_5 ));
LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
     \wait_bypass_count[0]_i_6 
       (.I0(wait_bypass_count_reg[4]),
        .I1(wait_bypass_count_reg[3]),
        .I2(wait_bypass_count_reg[8]),
        .I3(wait_bypass_count_reg[7]),
        .I4(wait_bypass_count_reg[5]),
        .I5(wait_bypass_count_reg[6]),
        .O(\n_0_wait_bypass_count[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_7 
       (.I0(wait_bypass_count_reg[3]),
        .O(\n_0_wait_bypass_count[0]_i_7 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_8 
       (.I0(wait_bypass_count_reg[2]),
        .O(\n_0_wait_bypass_count[0]_i_8 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_9__0 
       (.I0(wait_bypass_count_reg[1]),
        .O(\n_0_wait_bypass_count[0]_i_9__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[12]_i_2 
       (.I0(wait_bypass_count_reg[15]),
        .O(\n_0_wait_bypass_count[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[12]_i_3 
       (.I0(wait_bypass_count_reg[14]),
        .O(\n_0_wait_bypass_count[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[12]_i_4 
       (.I0(wait_bypass_count_reg[13]),
        .O(\n_0_wait_bypass_count[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[12]_i_5 
       (.I0(wait_bypass_count_reg[12]),
        .O(\n_0_wait_bypass_count[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[16]_i_2 
       (.I0(wait_bypass_count_reg[16]),
        .O(\n_0_wait_bypass_count[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_2 
       (.I0(wait_bypass_count_reg[7]),
        .O(\n_0_wait_bypass_count[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_3 
       (.I0(wait_bypass_count_reg[6]),
        .O(\n_0_wait_bypass_count[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_4 
       (.I0(wait_bypass_count_reg[5]),
        .O(\n_0_wait_bypass_count[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_5 
       (.I0(wait_bypass_count_reg[4]),
        .O(\n_0_wait_bypass_count[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_2 
       (.I0(wait_bypass_count_reg[11]),
        .O(\n_0_wait_bypass_count[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_3 
       (.I0(wait_bypass_count_reg[10]),
        .O(\n_0_wait_bypass_count[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_4 
       (.I0(wait_bypass_count_reg[9]),
        .O(\n_0_wait_bypass_count[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_5 
       (.I0(wait_bypass_count_reg[8]),
        .O(\n_0_wait_bypass_count[8]_i_5 ));
FDRE \wait_bypass_count_reg[0] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_7_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\n_0_wait_bypass_count_reg[0]_i_3 ,\n_1_wait_bypass_count_reg[0]_i_3 ,\n_2_wait_bypass_count_reg[0]_i_3 ,\n_3_wait_bypass_count_reg[0]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_wait_bypass_count_reg[0]_i_3 ,\n_5_wait_bypass_count_reg[0]_i_3 ,\n_6_wait_bypass_count_reg[0]_i_3 ,\n_7_wait_bypass_count_reg[0]_i_3 }),
        .S({\n_0_wait_bypass_count[0]_i_7 ,\n_0_wait_bypass_count[0]_i_8 ,\n_0_wait_bypass_count[0]_i_9__0 ,\n_0_wait_bypass_count[0]_i_10 }));
FDRE \wait_bypass_count_reg[10] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_5_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE \wait_bypass_count_reg[11] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_4_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE \wait_bypass_count_reg[12] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_7_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[8]_i_1 ),
        .CO({\n_0_wait_bypass_count_reg[12]_i_1 ,\n_1_wait_bypass_count_reg[12]_i_1 ,\n_2_wait_bypass_count_reg[12]_i_1 ,\n_3_wait_bypass_count_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wait_bypass_count_reg[12]_i_1 ,\n_5_wait_bypass_count_reg[12]_i_1 ,\n_6_wait_bypass_count_reg[12]_i_1 ,\n_7_wait_bypass_count_reg[12]_i_1 }),
        .S({\n_0_wait_bypass_count[12]_i_2 ,\n_0_wait_bypass_count[12]_i_3 ,\n_0_wait_bypass_count[12]_i_4 ,\n_0_wait_bypass_count[12]_i_5 }));
FDRE \wait_bypass_count_reg[13] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_6_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[13]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE \wait_bypass_count_reg[14] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_5_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[14]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE \wait_bypass_count_reg[15] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_4_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[15]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE \wait_bypass_count_reg[16] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_7_wait_bypass_count_reg[16]_i_1 ),
        .Q(wait_bypass_count_reg[16]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
CARRY4 \wait_bypass_count_reg[16]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[12]_i_1 ),
        .CO(\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED [3:1],\n_7_wait_bypass_count_reg[16]_i_1 }),
        .S({1'b0,1'b0,1'b0,\n_0_wait_bypass_count[16]_i_2 }));
FDRE \wait_bypass_count_reg[1] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_6_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE \wait_bypass_count_reg[2] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_5_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE \wait_bypass_count_reg[3] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_4_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE \wait_bypass_count_reg[4] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_7_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[0]_i_3 ),
        .CO({\n_0_wait_bypass_count_reg[4]_i_1 ,\n_1_wait_bypass_count_reg[4]_i_1 ,\n_2_wait_bypass_count_reg[4]_i_1 ,\n_3_wait_bypass_count_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wait_bypass_count_reg[4]_i_1 ,\n_5_wait_bypass_count_reg[4]_i_1 ,\n_6_wait_bypass_count_reg[4]_i_1 ,\n_7_wait_bypass_count_reg[4]_i_1 }),
        .S({\n_0_wait_bypass_count[4]_i_2 ,\n_0_wait_bypass_count[4]_i_3 ,\n_0_wait_bypass_count[4]_i_4 ,\n_0_wait_bypass_count[4]_i_5 }));
FDRE \wait_bypass_count_reg[5] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_6_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE \wait_bypass_count_reg[6] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_5_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE \wait_bypass_count_reg[7] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_4_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
FDRE \wait_bypass_count_reg[8] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_7_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[4]_i_1 ),
        .CO({\n_0_wait_bypass_count_reg[8]_i_1 ,\n_1_wait_bypass_count_reg[8]_i_1 ,\n_2_wait_bypass_count_reg[8]_i_1 ,\n_3_wait_bypass_count_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wait_bypass_count_reg[8]_i_1 ,\n_5_wait_bypass_count_reg[8]_i_1 ,\n_6_wait_bypass_count_reg[8]_i_1 ,\n_7_wait_bypass_count_reg[8]_i_1 }),
        .S({\n_0_wait_bypass_count[8]_i_2 ,\n_0_wait_bypass_count[8]_i_3 ,\n_0_wait_bypass_count[8]_i_4 ,\n_0_wait_bypass_count[8]_i_5 }));
FDRE \wait_bypass_count_reg[9] 
       (.C(userclk),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_6_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_1 
       (.I0(wait_time_cnt_reg__0[0]),
        .O(wait_time_cnt0));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT2 #(
    .INIT(4'h9)) 
     \wait_time_cnt[1]_i_1 
       (.I0(wait_time_cnt_reg__0[0]),
        .I1(wait_time_cnt_reg__0[1]),
        .O(\n_0_wait_time_cnt[1]_i_1 ));
LUT3 #(
    .INIT(8'hE1)) 
     \wait_time_cnt[2]_i_1 
       (.I0(wait_time_cnt_reg__0[1]),
        .I1(wait_time_cnt_reg__0[0]),
        .I2(wait_time_cnt_reg__0[2]),
        .O(\n_0_wait_time_cnt[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT4 #(
    .INIT(16'hFE01)) 
     \wait_time_cnt[3]_i_1 
       (.I0(wait_time_cnt_reg__0[2]),
        .I1(wait_time_cnt_reg__0[0]),
        .I2(wait_time_cnt_reg__0[1]),
        .I3(wait_time_cnt_reg__0[3]),
        .O(\n_0_wait_time_cnt[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT5 #(
    .INIT(32'hFFFE0001)) 
     \wait_time_cnt[4]_i_1 
       (.I0(wait_time_cnt_reg__0[1]),
        .I1(wait_time_cnt_reg__0[0]),
        .I2(wait_time_cnt_reg__0[2]),
        .I3(wait_time_cnt_reg__0[3]),
        .I4(wait_time_cnt_reg__0[4]),
        .O(\n_0_wait_time_cnt[4]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
     \wait_time_cnt[5]_i_1 
       (.I0(wait_time_cnt_reg__0[4]),
        .I1(wait_time_cnt_reg__0[3]),
        .I2(wait_time_cnt_reg__0[2]),
        .I3(wait_time_cnt_reg__0[0]),
        .I4(wait_time_cnt_reg__0[1]),
        .I5(wait_time_cnt_reg__0[5]),
        .O(\n_0_wait_time_cnt[5]_i_1 ));
LUT4 #(
    .INIT(16'h020A)) 
     \wait_time_cnt[6]_i_1 
       (.I0(tx_state[0]),
        .I1(tx_state[1]),
        .I2(tx_state[3]),
        .I3(tx_state[2]),
        .O(clear));
LUT2 #(
    .INIT(4'hE)) 
     \wait_time_cnt[6]_i_2 
       (.I0(wait_time_cnt_reg__0[6]),
        .I1(\n_0_wait_time_cnt[6]_i_4 ),
        .O(\n_0_wait_time_cnt[6]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT2 #(
    .INIT(4'h9)) 
     \wait_time_cnt[6]_i_3 
       (.I0(\n_0_wait_time_cnt[6]_i_4 ),
        .I1(wait_time_cnt_reg__0[6]),
        .O(\n_0_wait_time_cnt[6]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \wait_time_cnt[6]_i_4 
       (.I0(wait_time_cnt_reg__0[0]),
        .I1(wait_time_cnt_reg__0[1]),
        .I2(wait_time_cnt_reg__0[4]),
        .I3(wait_time_cnt_reg__0[5]),
        .I4(wait_time_cnt_reg__0[2]),
        .I5(wait_time_cnt_reg__0[3]),
        .O(\n_0_wait_time_cnt[6]_i_4 ));
FDRE \wait_time_cnt_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2 ),
        .D(wait_time_cnt0),
        .Q(wait_time_cnt_reg__0[0]),
        .R(clear));
FDRE \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2 ),
        .D(\n_0_wait_time_cnt[1]_i_1 ),
        .Q(wait_time_cnt_reg__0[1]),
        .R(clear));
FDSE \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2 ),
        .D(\n_0_wait_time_cnt[2]_i_1 ),
        .Q(wait_time_cnt_reg__0[2]),
        .S(clear));
FDRE \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2 ),
        .D(\n_0_wait_time_cnt[3]_i_1 ),
        .Q(wait_time_cnt_reg__0[3]),
        .R(clear));
FDRE \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2 ),
        .D(\n_0_wait_time_cnt[4]_i_1 ),
        .Q(wait_time_cnt_reg__0[4]),
        .R(clear));
FDSE \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2 ),
        .D(\n_0_wait_time_cnt[5]_i_1 ),
        .Q(wait_time_cnt_reg__0[5]),
        .S(clear));
FDSE \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2 ),
        .D(\n_0_wait_time_cnt[6]_i_3 ),
        .Q(wait_time_cnt_reg__0[6]),
        .S(clear));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_block
   (status_vector,
    cplllock,
    txn,
    txp,
    txoutclk,
    resetdone,
    rxoutclk,
    O1,
    gmii_rxd,
    gmii_rx_er,
    gmii_rx_dv,
    userclk2,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    reset,
    mmcm_locked,
    signal_detect,
    independent_clock_bufg,
    userclk,
    gtrefclk,
    rxn,
    rxp,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    pma_reset,
    configuration_vector);
  output [6:0]status_vector;
  output cplllock;
  output txn;
  output txp;
  output txoutclk;
  output resetdone;
  output rxoutclk;
  output O1;
  output [7:0]gmii_rxd;
  output gmii_rx_er;
  output gmii_rx_dv;
  input userclk2;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  input reset;
  input mmcm_locked;
  input signal_detect;
  input independent_clock_bufg;
  input userclk;
  input gtrefclk;
  input rxn;
  input rxp;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input pma_reset;
  input [2:0]configuration_vector;

  wire I_0;
  wire O1;
  wire [2:0]configuration_vector;
  wire cplllock;
  wire data_in;
  wire encommaalign;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gtrefclk;
  wire independent_clock_bufg;
  wire mmcm_locked;
  wire n_10_gig_eth_pcs_pma_basex_v15_1_core;
  wire n_11_gig_eth_pcs_pma_basex_v15_1_core;
  wire n_14_gig_eth_pcs_pma_basex_v15_1_core;
  wire n_25_gig_eth_pcs_pma_basex_v15_1_core;
  wire n_26_gig_eth_pcs_pma_basex_v15_1_core;
  wire n_27_gig_eth_pcs_pma_basex_v15_1_core;
  wire n_28_gig_eth_pcs_pma_basex_v15_1_core;
  wire n_29_gig_eth_pcs_pma_basex_v15_1_core;
  wire n_30_gig_eth_pcs_pma_basex_v15_1_core;
  wire n_31_gig_eth_pcs_pma_basex_v15_1_core;
  wire n_32_gig_eth_pcs_pma_basex_v15_1_core;
  wire pma_reset;
  wire powerdown;
  wire reset;
  wire resetdone;
  wire rxbuferr;
  wire rxchariscomma;
  wire rxcharisk;
  wire [1:0]rxclkcorcnt;
  wire [7:0]rxdata;
  wire rxdisperr;
  wire rxn;
  wire rxnotintable;
  wire rxoutclk;
  wire rxp;
  wire rxreset;
  wire signal_detect;
  wire [6:0]status_vector;
  wire txbuferr;
  wire txn;
  wire txoutclk;
  wire txp;
  wire txreset;
  wire userclk;
  wire userclk2;

gig_eth_pcs_pma_basex_v15_1_gig_ethernet_pcs_pma_v14_3__parameterized0 gig_eth_pcs_pma_basex_v15_1_core
       (.D(n_10_gig_eth_pcs_pma_basex_v15_1_core),
        .I1(rxdata),
        .O1(n_11_gig_eth_pcs_pma_basex_v15_1_core),
        .O2(n_14_gig_eth_pcs_pma_basex_v15_1_core),
        .O3({n_25_gig_eth_pcs_pma_basex_v15_1_core,n_26_gig_eth_pcs_pma_basex_v15_1_core,n_27_gig_eth_pcs_pma_basex_v15_1_core,n_28_gig_eth_pcs_pma_basex_v15_1_core,n_29_gig_eth_pcs_pma_basex_v15_1_core,n_30_gig_eth_pcs_pma_basex_v15_1_core,n_31_gig_eth_pcs_pma_basex_v15_1_core,n_32_gig_eth_pcs_pma_basex_v15_1_core}),
        .Q(rxclkcorcnt),
        .SR(O1),
        .configuration_vector(configuration_vector),
        .encommaalign(encommaalign),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .mmcm_locked(mmcm_locked),
        .powerdown(powerdown),
        .reset(reset),
        .resetdone(resetdone),
        .rxbuferr(rxbuferr),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .rxreset(rxreset),
        .signal_detect(signal_detect),
        .status_vector(status_vector),
        .txbuferr(txbuferr),
        .txreset(txreset),
        .userclk2(userclk2));
(* box_type = "PRIMITIVE" *) 
   BUFH rxrecclkbufh
       (.I(I_0),
        .O(rxoutclk));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0 sync_block_reset_done
       (.data_in(data_in),
        .resetdone(resetdone),
        .userclk2(userclk2));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_transceiver__parameterized0 transceiver_inst
       (.D(n_10_gig_eth_pcs_pma_basex_v15_1_core),
        .I1(rxreset),
        .I2(n_14_gig_eth_pcs_pma_basex_v15_1_core),
        .I3(n_11_gig_eth_pcs_pma_basex_v15_1_core),
        .I4({n_25_gig_eth_pcs_pma_basex_v15_1_core,n_26_gig_eth_pcs_pma_basex_v15_1_core,n_27_gig_eth_pcs_pma_basex_v15_1_core,n_28_gig_eth_pcs_pma_basex_v15_1_core,n_29_gig_eth_pcs_pma_basex_v15_1_core,n_30_gig_eth_pcs_pma_basex_v15_1_core,n_31_gig_eth_pcs_pma_basex_v15_1_core,n_32_gig_eth_pcs_pma_basex_v15_1_core}),
        .I_0(I_0),
        .O1(rxclkcorcnt),
        .Q(rxdata),
        .SR(txreset),
        .cplllock(cplllock),
        .data_in(data_in),
        .encommaalign(encommaalign),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gtrefclk(gtrefclk),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .pma_reset(pma_reset),
        .powerdown(powerdown),
        .rxbuferr(rxbuferr),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxdisperr(rxdisperr),
        .rxn(rxn),
        .rxnotintable(rxnotintable),
        .rxp(rxp),
        .status_vector(status_vector[1]),
        .txbuferr(txbuferr),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk),
        .userclk2(userclk2));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_reset_sync" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync
   (reset_out,
    userclk,
    encommaalign);
  output reset_out;
  input userclk;
  input encommaalign;

  wire encommaalign;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;
  wire userclk;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync1
       (.C(userclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(encommaalign),
        .Q(reset_sync_reg1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync2
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(encommaalign),
        .Q(reset_sync_reg2));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync3
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(encommaalign),
        .Q(reset_sync_reg3));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync4
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(encommaalign),
        .Q(reset_sync_reg4));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync5
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(encommaalign),
        .Q(reset_sync_reg5));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync6
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_reset_sync" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_0
   (reset_out,
    userclk,
    I1);
  output reset_out;
  input userclk;
  input [0:0]I1;

  wire [0:0]I1;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;
  wire userclk;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync1
       (.C(userclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(I1),
        .Q(reset_sync_reg1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync2
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(I1),
        .Q(reset_sync_reg2));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync3
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(I1),
        .Q(reset_sync_reg3));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync4
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(I1),
        .Q(reset_sync_reg4));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync5
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(I1),
        .Q(reset_sync_reg5));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync6
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_reset_sync" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_1
   (reset_out,
    userclk,
    SR);
  output reset_out;
  input userclk;
  input [0:0]SR;

  wire [0:0]SR;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;
  wire userclk;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync1
       (.C(userclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(reset_sync_reg1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync2
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(SR),
        .Q(reset_sync_reg2));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync3
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(SR),
        .Q(reset_sync_reg3));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync4
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(SR),
        .Q(reset_sync_reg4));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync5
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(SR),
        .Q(reset_sync_reg5));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync6
       (.C(userclk),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_reset_sync" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_3
   (O1,
    reset_out,
    ack_flag,
    userclk2,
    CPLL_RESET);
  output O1;
  output reset_out;
  input ack_flag;
  input userclk2;
  input CPLL_RESET;

  wire CPLL_RESET;
  wire O1;
  wire ack_flag;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;
  wire userclk2;

LUT2 #(
    .INIT(4'h2)) 
     flag2_i_1
       (.I0(reset_out),
        .I1(ack_flag),
        .O(O1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync1
       (.C(userclk2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(CPLL_RESET),
        .Q(reset_sync_reg1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync2
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg1),
        .PRE(CPLL_RESET),
        .Q(reset_sync_reg2));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync3
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg2),
        .PRE(CPLL_RESET),
        .Q(reset_sync_reg3));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync4
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg3),
        .PRE(CPLL_RESET),
        .Q(reset_sync_reg4));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync5
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg4),
        .PRE(CPLL_RESET),
        .Q(reset_sync_reg5));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync6
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_sync_reg5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_reset_wtd_timer" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_wtd_timer
   (reset,
    independent_clock_bufg,
    data_out);
  output reset;
  input independent_clock_bufg;
  input data_out;

  wire [5:5]counter_stg1_reg__0;
  wire [4:0]counter_stg1_reg__1;
  wire [11:0]counter_stg2_reg;
  wire counter_stg30;
  wire [11:0]counter_stg3_reg;
  wire data_out;
  wire independent_clock_bufg;
  wire \n_0_counter_stg1[5]_i_1 ;
  wire \n_0_counter_stg2[0]_i_1 ;
  wire \n_0_counter_stg2[0]_i_3 ;
  wire \n_0_counter_stg2[0]_i_4 ;
  wire \n_0_counter_stg2[0]_i_5 ;
  wire \n_0_counter_stg2[0]_i_6 ;
  wire \n_0_counter_stg2[4]_i_2 ;
  wire \n_0_counter_stg2[4]_i_3 ;
  wire \n_0_counter_stg2[4]_i_4 ;
  wire \n_0_counter_stg2[4]_i_5 ;
  wire \n_0_counter_stg2[8]_i_2 ;
  wire \n_0_counter_stg2[8]_i_3 ;
  wire \n_0_counter_stg2[8]_i_4 ;
  wire \n_0_counter_stg2[8]_i_5 ;
  wire \n_0_counter_stg2_reg[0]_i_2 ;
  wire \n_0_counter_stg2_reg[4]_i_1 ;
  wire \n_0_counter_stg3[0]_i_3 ;
  wire \n_0_counter_stg3[0]_i_4 ;
  wire \n_0_counter_stg3[0]_i_5 ;
  wire \n_0_counter_stg3[0]_i_6 ;
  wire \n_0_counter_stg3[0]_i_7 ;
  wire \n_0_counter_stg3[0]_i_8 ;
  wire \n_0_counter_stg3[0]_i_9 ;
  wire \n_0_counter_stg3[4]_i_2 ;
  wire \n_0_counter_stg3[4]_i_3 ;
  wire \n_0_counter_stg3[4]_i_4 ;
  wire \n_0_counter_stg3[4]_i_5 ;
  wire \n_0_counter_stg3[8]_i_2 ;
  wire \n_0_counter_stg3[8]_i_3 ;
  wire \n_0_counter_stg3[8]_i_4 ;
  wire \n_0_counter_stg3[8]_i_5 ;
  wire \n_0_counter_stg3_reg[0]_i_2 ;
  wire \n_0_counter_stg3_reg[4]_i_1 ;
  wire n_0_reset_i_2;
  wire n_0_reset_i_3;
  wire n_0_reset_i_4;
  wire n_0_reset_i_5;
  wire \n_1_counter_stg2_reg[0]_i_2 ;
  wire \n_1_counter_stg2_reg[4]_i_1 ;
  wire \n_1_counter_stg2_reg[8]_i_1 ;
  wire \n_1_counter_stg3_reg[0]_i_2 ;
  wire \n_1_counter_stg3_reg[4]_i_1 ;
  wire \n_1_counter_stg3_reg[8]_i_1 ;
  wire \n_2_counter_stg2_reg[0]_i_2 ;
  wire \n_2_counter_stg2_reg[4]_i_1 ;
  wire \n_2_counter_stg2_reg[8]_i_1 ;
  wire \n_2_counter_stg3_reg[0]_i_2 ;
  wire \n_2_counter_stg3_reg[4]_i_1 ;
  wire \n_2_counter_stg3_reg[8]_i_1 ;
  wire \n_3_counter_stg2_reg[0]_i_2 ;
  wire \n_3_counter_stg2_reg[4]_i_1 ;
  wire \n_3_counter_stg2_reg[8]_i_1 ;
  wire \n_3_counter_stg3_reg[0]_i_2 ;
  wire \n_3_counter_stg3_reg[4]_i_1 ;
  wire \n_3_counter_stg3_reg[8]_i_1 ;
  wire \n_4_counter_stg2_reg[0]_i_2 ;
  wire \n_4_counter_stg2_reg[4]_i_1 ;
  wire \n_4_counter_stg2_reg[8]_i_1 ;
  wire \n_4_counter_stg3_reg[0]_i_2 ;
  wire \n_4_counter_stg3_reg[4]_i_1 ;
  wire \n_4_counter_stg3_reg[8]_i_1 ;
  wire \n_5_counter_stg2_reg[0]_i_2 ;
  wire \n_5_counter_stg2_reg[4]_i_1 ;
  wire \n_5_counter_stg2_reg[8]_i_1 ;
  wire \n_5_counter_stg3_reg[0]_i_2 ;
  wire \n_5_counter_stg3_reg[4]_i_1 ;
  wire \n_5_counter_stg3_reg[8]_i_1 ;
  wire \n_6_counter_stg2_reg[0]_i_2 ;
  wire \n_6_counter_stg2_reg[4]_i_1 ;
  wire \n_6_counter_stg2_reg[8]_i_1 ;
  wire \n_6_counter_stg3_reg[0]_i_2 ;
  wire \n_6_counter_stg3_reg[4]_i_1 ;
  wire \n_6_counter_stg3_reg[8]_i_1 ;
  wire \n_7_counter_stg2_reg[0]_i_2 ;
  wire \n_7_counter_stg2_reg[4]_i_1 ;
  wire \n_7_counter_stg2_reg[8]_i_1 ;
  wire \n_7_counter_stg3_reg[0]_i_2 ;
  wire \n_7_counter_stg3_reg[4]_i_1 ;
  wire \n_7_counter_stg3_reg[8]_i_1 ;
  wire [5:0]plusOp__0;
  wire reset;
  wire reset0;
  wire [3:3]\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED ;

(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \counter_stg1[0]_i_1 
       (.I0(counter_stg1_reg__1[0]),
        .O(plusOp__0[0]));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \counter_stg1[1]_i_1 
       (.I0(counter_stg1_reg__1[0]),
        .I1(counter_stg1_reg__1[1]),
        .O(plusOp__0[1]));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \counter_stg1[2]_i_1 
       (.I0(counter_stg1_reg__1[1]),
        .I1(counter_stg1_reg__1[0]),
        .I2(counter_stg1_reg__1[2]),
        .O(plusOp__0[2]));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \counter_stg1[3]_i_1 
       (.I0(counter_stg1_reg__1[2]),
        .I1(counter_stg1_reg__1[0]),
        .I2(counter_stg1_reg__1[1]),
        .I3(counter_stg1_reg__1[3]),
        .O(plusOp__0[3]));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \counter_stg1[4]_i_1 
       (.I0(counter_stg1_reg__1[3]),
        .I1(counter_stg1_reg__1[1]),
        .I2(counter_stg1_reg__1[0]),
        .I3(counter_stg1_reg__1[2]),
        .I4(counter_stg1_reg__1[4]),
        .O(plusOp__0[4]));
LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
     \counter_stg1[5]_i_1 
       (.I0(n_0_reset_i_2),
        .I1(n_0_reset_i_3),
        .I2(n_0_reset_i_4),
        .I3(n_0_reset_i_5),
        .I4(\n_0_counter_stg2[0]_i_1 ),
        .I5(data_out),
        .O(\n_0_counter_stg1[5]_i_1 ));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \counter_stg1[5]_i_2 
       (.I0(counter_stg1_reg__1[4]),
        .I1(counter_stg1_reg__1[2]),
        .I2(counter_stg1_reg__1[0]),
        .I3(counter_stg1_reg__1[1]),
        .I4(counter_stg1_reg__1[3]),
        .I5(counter_stg1_reg__0),
        .O(plusOp__0[5]));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg1_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp__0[0]),
        .Q(counter_stg1_reg__1[0]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg1_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp__0[1]),
        .Q(counter_stg1_reg__1[1]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg1_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp__0[2]),
        .Q(counter_stg1_reg__1[2]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg1_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp__0[3]),
        .Q(counter_stg1_reg__1[3]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg1_reg[4] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp__0[4]),
        .Q(counter_stg1_reg__1[4]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg1_reg[5] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(plusOp__0[5]),
        .Q(counter_stg1_reg__0),
        .R(\n_0_counter_stg1[5]_i_1 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \counter_stg2[0]_i_1 
       (.I0(counter_stg1_reg__1[4]),
        .I1(counter_stg1_reg__1[2]),
        .I2(counter_stg1_reg__1[0]),
        .I3(counter_stg1_reg__1[1]),
        .I4(counter_stg1_reg__1[3]),
        .I5(counter_stg1_reg__0),
        .O(\n_0_counter_stg2[0]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[0]_i_3 
       (.I0(counter_stg2_reg[3]),
        .O(\n_0_counter_stg2[0]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[0]_i_4 
       (.I0(counter_stg2_reg[2]),
        .O(\n_0_counter_stg2[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[0]_i_5 
       (.I0(counter_stg2_reg[1]),
        .O(\n_0_counter_stg2[0]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \counter_stg2[0]_i_6 
       (.I0(counter_stg2_reg[0]),
        .O(\n_0_counter_stg2[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[4]_i_2 
       (.I0(counter_stg2_reg[7]),
        .O(\n_0_counter_stg2[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[4]_i_3 
       (.I0(counter_stg2_reg[6]),
        .O(\n_0_counter_stg2[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[4]_i_4 
       (.I0(counter_stg2_reg[5]),
        .O(\n_0_counter_stg2[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[4]_i_5 
       (.I0(counter_stg2_reg[4]),
        .O(\n_0_counter_stg2[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[8]_i_2 
       (.I0(counter_stg2_reg[11]),
        .O(\n_0_counter_stg2[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[8]_i_3 
       (.I0(counter_stg2_reg[10]),
        .O(\n_0_counter_stg2[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[8]_i_4 
       (.I0(counter_stg2_reg[9]),
        .O(\n_0_counter_stg2[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg2[8]_i_5 
       (.I0(counter_stg2_reg[8]),
        .O(\n_0_counter_stg2[8]_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_counter_stg2[0]_i_1 ),
        .D(\n_7_counter_stg2_reg[0]_i_2 ),
        .Q(counter_stg2_reg[0]),
        .R(\n_0_counter_stg1[5]_i_1 ));
CARRY4 \counter_stg2_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_counter_stg2_reg[0]_i_2 ,\n_1_counter_stg2_reg[0]_i_2 ,\n_2_counter_stg2_reg[0]_i_2 ,\n_3_counter_stg2_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_counter_stg2_reg[0]_i_2 ,\n_5_counter_stg2_reg[0]_i_2 ,\n_6_counter_stg2_reg[0]_i_2 ,\n_7_counter_stg2_reg[0]_i_2 }),
        .S({\n_0_counter_stg2[0]_i_3 ,\n_0_counter_stg2[0]_i_4 ,\n_0_counter_stg2[0]_i_5 ,\n_0_counter_stg2[0]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[10] 
       (.C(independent_clock_bufg),
        .CE(\n_0_counter_stg2[0]_i_1 ),
        .D(\n_5_counter_stg2_reg[8]_i_1 ),
        .Q(counter_stg2_reg[10]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[11] 
       (.C(independent_clock_bufg),
        .CE(\n_0_counter_stg2[0]_i_1 ),
        .D(\n_4_counter_stg2_reg[8]_i_1 ),
        .Q(counter_stg2_reg[11]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_counter_stg2[0]_i_1 ),
        .D(\n_6_counter_stg2_reg[0]_i_2 ),
        .Q(counter_stg2_reg[1]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_counter_stg2[0]_i_1 ),
        .D(\n_5_counter_stg2_reg[0]_i_2 ),
        .Q(counter_stg2_reg[2]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_counter_stg2[0]_i_1 ),
        .D(\n_4_counter_stg2_reg[0]_i_2 ),
        .Q(counter_stg2_reg[3]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_counter_stg2[0]_i_1 ),
        .D(\n_7_counter_stg2_reg[4]_i_1 ),
        .Q(counter_stg2_reg[4]),
        .R(\n_0_counter_stg1[5]_i_1 ));
CARRY4 \counter_stg2_reg[4]_i_1 
       (.CI(\n_0_counter_stg2_reg[0]_i_2 ),
        .CO({\n_0_counter_stg2_reg[4]_i_1 ,\n_1_counter_stg2_reg[4]_i_1 ,\n_2_counter_stg2_reg[4]_i_1 ,\n_3_counter_stg2_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_stg2_reg[4]_i_1 ,\n_5_counter_stg2_reg[4]_i_1 ,\n_6_counter_stg2_reg[4]_i_1 ,\n_7_counter_stg2_reg[4]_i_1 }),
        .S({\n_0_counter_stg2[4]_i_2 ,\n_0_counter_stg2[4]_i_3 ,\n_0_counter_stg2[4]_i_4 ,\n_0_counter_stg2[4]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_counter_stg2[0]_i_1 ),
        .D(\n_6_counter_stg2_reg[4]_i_1 ),
        .Q(counter_stg2_reg[5]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_counter_stg2[0]_i_1 ),
        .D(\n_5_counter_stg2_reg[4]_i_1 ),
        .Q(counter_stg2_reg[6]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_counter_stg2[0]_i_1 ),
        .D(\n_4_counter_stg2_reg[4]_i_1 ),
        .Q(counter_stg2_reg[7]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\n_0_counter_stg2[0]_i_1 ),
        .D(\n_7_counter_stg2_reg[8]_i_1 ),
        .Q(counter_stg2_reg[8]),
        .R(\n_0_counter_stg1[5]_i_1 ));
CARRY4 \counter_stg2_reg[8]_i_1 
       (.CI(\n_0_counter_stg2_reg[4]_i_1 ),
        .CO({\NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED [3],\n_1_counter_stg2_reg[8]_i_1 ,\n_2_counter_stg2_reg[8]_i_1 ,\n_3_counter_stg2_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_stg2_reg[8]_i_1 ,\n_5_counter_stg2_reg[8]_i_1 ,\n_6_counter_stg2_reg[8]_i_1 ,\n_7_counter_stg2_reg[8]_i_1 }),
        .S({\n_0_counter_stg2[8]_i_2 ,\n_0_counter_stg2[8]_i_3 ,\n_0_counter_stg2[8]_i_4 ,\n_0_counter_stg2[8]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg2_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_counter_stg2[0]_i_1 ),
        .D(\n_6_counter_stg2_reg[8]_i_1 ),
        .Q(counter_stg2_reg[9]),
        .R(\n_0_counter_stg1[5]_i_1 ));
LUT4 #(
    .INIT(16'h8000)) 
     \counter_stg3[0]_i_1 
       (.I0(counter_stg2_reg[10]),
        .I1(\n_0_counter_stg3[0]_i_3 ),
        .I2(\n_0_counter_stg3[0]_i_4 ),
        .I3(\n_0_counter_stg3[0]_i_5 ),
        .O(counter_stg30));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \counter_stg3[0]_i_3 
       (.I0(counter_stg1_reg__1[3]),
        .I1(counter_stg1_reg__1[1]),
        .I2(counter_stg1_reg__1[0]),
        .I3(counter_stg1_reg__1[2]),
        .I4(counter_stg1_reg__1[4]),
        .O(\n_0_counter_stg3[0]_i_3 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \counter_stg3[0]_i_4 
       (.I0(counter_stg2_reg[5]),
        .I1(counter_stg2_reg[1]),
        .I2(counter_stg2_reg[9]),
        .I3(counter_stg1_reg__0),
        .I4(counter_stg2_reg[7]),
        .I5(counter_stg2_reg[6]),
        .O(\n_0_counter_stg3[0]_i_4 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \counter_stg3[0]_i_5 
       (.I0(counter_stg2_reg[4]),
        .I1(counter_stg2_reg[11]),
        .I2(counter_stg2_reg[2]),
        .I3(counter_stg2_reg[0]),
        .I4(counter_stg2_reg[8]),
        .I5(counter_stg2_reg[3]),
        .O(\n_0_counter_stg3[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[0]_i_6 
       (.I0(counter_stg3_reg[3]),
        .O(\n_0_counter_stg3[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[0]_i_7 
       (.I0(counter_stg3_reg[2]),
        .O(\n_0_counter_stg3[0]_i_7 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[0]_i_8 
       (.I0(counter_stg3_reg[1]),
        .O(\n_0_counter_stg3[0]_i_8 ));
LUT1 #(
    .INIT(2'h1)) 
     \counter_stg3[0]_i_9 
       (.I0(counter_stg3_reg[0]),
        .O(\n_0_counter_stg3[0]_i_9 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[4]_i_2 
       (.I0(counter_stg3_reg[7]),
        .O(\n_0_counter_stg3[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[4]_i_3 
       (.I0(counter_stg3_reg[6]),
        .O(\n_0_counter_stg3[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[4]_i_4 
       (.I0(counter_stg3_reg[5]),
        .O(\n_0_counter_stg3[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[4]_i_5 
       (.I0(counter_stg3_reg[4]),
        .O(\n_0_counter_stg3[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[8]_i_2 
       (.I0(counter_stg3_reg[11]),
        .O(\n_0_counter_stg3[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[8]_i_3 
       (.I0(counter_stg3_reg[10]),
        .O(\n_0_counter_stg3[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[8]_i_4 
       (.I0(counter_stg3_reg[9]),
        .O(\n_0_counter_stg3[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \counter_stg3[8]_i_5 
       (.I0(counter_stg3_reg[8]),
        .O(\n_0_counter_stg3[8]_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[0] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_7_counter_stg3_reg[0]_i_2 ),
        .Q(counter_stg3_reg[0]),
        .R(\n_0_counter_stg1[5]_i_1 ));
CARRY4 \counter_stg3_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_counter_stg3_reg[0]_i_2 ,\n_1_counter_stg3_reg[0]_i_2 ,\n_2_counter_stg3_reg[0]_i_2 ,\n_3_counter_stg3_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_counter_stg3_reg[0]_i_2 ,\n_5_counter_stg3_reg[0]_i_2 ,\n_6_counter_stg3_reg[0]_i_2 ,\n_7_counter_stg3_reg[0]_i_2 }),
        .S({\n_0_counter_stg3[0]_i_6 ,\n_0_counter_stg3[0]_i_7 ,\n_0_counter_stg3[0]_i_8 ,\n_0_counter_stg3[0]_i_9 }));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[10] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_5_counter_stg3_reg[8]_i_1 ),
        .Q(counter_stg3_reg[10]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[11] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_4_counter_stg3_reg[8]_i_1 ),
        .Q(counter_stg3_reg[11]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[1] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_6_counter_stg3_reg[0]_i_2 ),
        .Q(counter_stg3_reg[1]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[2] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_5_counter_stg3_reg[0]_i_2 ),
        .Q(counter_stg3_reg[2]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[3] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_4_counter_stg3_reg[0]_i_2 ),
        .Q(counter_stg3_reg[3]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[4] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_7_counter_stg3_reg[4]_i_1 ),
        .Q(counter_stg3_reg[4]),
        .R(\n_0_counter_stg1[5]_i_1 ));
CARRY4 \counter_stg3_reg[4]_i_1 
       (.CI(\n_0_counter_stg3_reg[0]_i_2 ),
        .CO({\n_0_counter_stg3_reg[4]_i_1 ,\n_1_counter_stg3_reg[4]_i_1 ,\n_2_counter_stg3_reg[4]_i_1 ,\n_3_counter_stg3_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_stg3_reg[4]_i_1 ,\n_5_counter_stg3_reg[4]_i_1 ,\n_6_counter_stg3_reg[4]_i_1 ,\n_7_counter_stg3_reg[4]_i_1 }),
        .S({\n_0_counter_stg3[4]_i_2 ,\n_0_counter_stg3[4]_i_3 ,\n_0_counter_stg3[4]_i_4 ,\n_0_counter_stg3[4]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[5] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_6_counter_stg3_reg[4]_i_1 ),
        .Q(counter_stg3_reg[5]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[6] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_5_counter_stg3_reg[4]_i_1 ),
        .Q(counter_stg3_reg[6]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[7] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_4_counter_stg3_reg[4]_i_1 ),
        .Q(counter_stg3_reg[7]),
        .R(\n_0_counter_stg1[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[8] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_7_counter_stg3_reg[8]_i_1 ),
        .Q(counter_stg3_reg[8]),
        .R(\n_0_counter_stg1[5]_i_1 ));
CARRY4 \counter_stg3_reg[8]_i_1 
       (.CI(\n_0_counter_stg3_reg[4]_i_1 ),
        .CO({\NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED [3],\n_1_counter_stg3_reg[8]_i_1 ,\n_2_counter_stg3_reg[8]_i_1 ,\n_3_counter_stg3_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_stg3_reg[8]_i_1 ,\n_5_counter_stg3_reg[8]_i_1 ,\n_6_counter_stg3_reg[8]_i_1 ,\n_7_counter_stg3_reg[8]_i_1 }),
        .S({\n_0_counter_stg3[8]_i_2 ,\n_0_counter_stg3[8]_i_3 ,\n_0_counter_stg3[8]_i_4 ,\n_0_counter_stg3[8]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \counter_stg3_reg[9] 
       (.C(independent_clock_bufg),
        .CE(counter_stg30),
        .D(\n_6_counter_stg3_reg[8]_i_1 ),
        .Q(counter_stg3_reg[9]),
        .R(\n_0_counter_stg1[5]_i_1 ));
LUT5 #(
    .INIT(32'h80000000)) 
     reset_i_1
       (.I0(n_0_reset_i_2),
        .I1(n_0_reset_i_3),
        .I2(n_0_reset_i_4),
        .I3(n_0_reset_i_5),
        .I4(counter_stg1_reg__0),
        .O(reset0));
LUT6 #(
    .INIT(64'h4000000000000000)) 
     reset_i_2
       (.I0(counter_stg3_reg[8]),
        .I1(counter_stg3_reg[7]),
        .I2(counter_stg2_reg[4]),
        .I3(counter_stg2_reg[8]),
        .I4(counter_stg2_reg[10]),
        .I5(counter_stg2_reg[11]),
        .O(n_0_reset_i_2));
LUT6 #(
    .INIT(64'h0040000000000000)) 
     reset_i_3
       (.I0(counter_stg3_reg[3]),
        .I1(counter_stg3_reg[4]),
        .I2(counter_stg3_reg[11]),
        .I3(counter_stg3_reg[10]),
        .I4(counter_stg3_reg[5]),
        .I5(counter_stg3_reg[6]),
        .O(n_0_reset_i_3));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     reset_i_4
       (.I0(counter_stg2_reg[6]),
        .I1(counter_stg2_reg[7]),
        .I2(counter_stg3_reg[9]),
        .I3(counter_stg3_reg[0]),
        .I4(counter_stg2_reg[9]),
        .I5(counter_stg3_reg[1]),
        .O(n_0_reset_i_4));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     reset_i_5
       (.I0(counter_stg2_reg[2]),
        .I1(counter_stg2_reg[3]),
        .I2(counter_stg2_reg[5]),
        .I3(counter_stg3_reg[2]),
        .I4(counter_stg2_reg[0]),
        .I5(counter_stg2_reg[1]),
        .O(n_0_reset_i_5));
FDRE reset_reg
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(reset0),
        .Q(reset),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0
   (resetdone,
    data_in,
    userclk2);
  output resetdone;
  input data_in;
  input userclk2;

  wire data_in;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire resetdone;
  wire userclk2;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(resetdone),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_10
   (data_out,
    gt0_txresetdone_out,
    userclk);
  output data_out;
  input gt0_txresetdone_out;
  input userclk;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_txresetdone_out;
  wire userclk;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_txresetdone_out),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_11
   (data_out,
    I2,
    independent_clock_bufg);
  output data_out;
  input I2;
  input independent_clock_bufg;

  wire I2;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(I2),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_12
   (O1,
    O2,
    O3,
    out,
    recclk_mon_count_reset,
    I1,
    I2,
    I3,
    rxresetdone_s3,
    I4,
    cplllock,
    independent_clock_bufg);
  output O1;
  output O2;
  output O3;
  input [3:0]out;
  input recclk_mon_count_reset;
  input I1;
  input I2;
  input I3;
  input rxresetdone_s3;
  input I4;
  input cplllock;
  input independent_clock_bufg;

  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire O1;
  wire O2;
  wire O3;
  wire cplllock;
  wire cplllock_sync;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire \n_0_FSM_sequential_rx_state[3]_i_8 ;
  wire [3:0]out;
  wire recclk_mon_count_reset;
  wire rxresetdone_s3;

LUT6 #(
    .INIT(64'h88A8FFFF88A80000)) 
     \FSM_sequential_rx_state[3]_i_5 
       (.I0(out[1]),
        .I1(rxresetdone_s3),
        .I2(I4),
        .I3(I3),
        .I4(out[2]),
        .I5(\n_0_FSM_sequential_rx_state[3]_i_8 ),
        .O(O3));
LUT4 #(
    .INIT(16'h5455)) 
     \FSM_sequential_rx_state[3]_i_8 
       (.I0(out[3]),
        .I1(I4),
        .I2(cplllock_sync),
        .I3(out[1]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_8 ));
LUT6 #(
    .INIT(64'hEFFFFFFF00100010)) 
     adapt_count_reset_i_1
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(cplllock_sync),
        .I5(recclk_mon_count_reset),
        .O(O1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(cplllock),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(cplllock_sync),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFF10FFFFFF100000)) 
     reset_time_out_i_1__0
       (.I0(out[3]),
        .I1(out[2]),
        .I2(cplllock_sync),
        .I3(I1),
        .I4(I2),
        .I5(I3),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_13
   (O1,
    E,
    O2,
    I1,
    I2,
    out,
    data_in,
    I3,
    I4,
    I5,
    mmcm_lock_reclocked,
    time_tlock_max,
    I6,
    rxresetdone_s3,
    I7,
    data_out,
    independent_clock_bufg);
  output O1;
  output [0:0]E;
  output O2;
  input I1;
  input I2;
  input [3:0]out;
  input data_in;
  input I3;
  input I4;
  input I5;
  input mmcm_lock_reclocked;
  input time_tlock_max;
  input I6;
  input rxresetdone_s3;
  input I7;
  input data_out;
  input independent_clock_bufg;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire O1;
  wire O2;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_valid_sync;
  wire independent_clock_bufg;
  wire mmcm_lock_reclocked;
  wire \n_0_FSM_sequential_rx_state[3]_i_3 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_6 ;
  wire n_0_reset_time_out_i_4;
  wire [3:0]out;
  wire rxresetdone_s3;
  wire time_tlock_max;

LUT5 #(
    .INIT(32'hFEFEFEAE)) 
     \FSM_sequential_rx_state[3]_i_1 
       (.I0(\n_0_FSM_sequential_rx_state[3]_i_3 ),
        .I1(I3),
        .I2(out[0]),
        .I3(I4),
        .I4(\n_0_FSM_sequential_rx_state[3]_i_6 ),
        .O(E));
LUT5 #(
    .INIT(32'hCCCC4430)) 
     \FSM_sequential_rx_state[3]_i_3 
       (.I0(data_valid_sync),
        .I1(out[3]),
        .I2(I5),
        .I3(out[1]),
        .I4(out[2]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_3 ));
LUT6 #(
    .INIT(64'hCCCCCCCCB8B8BBB8)) 
     \FSM_sequential_rx_state[3]_i_6 
       (.I0(data_valid_sync),
        .I1(out[3]),
        .I2(mmcm_lock_reclocked),
        .I3(time_tlock_max),
        .I4(I6),
        .I5(out[1]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_6 ));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_out),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_valid_sync),
        .R(1'b0));
LUT6 #(
    .INIT(64'h8F88FFFF8F880000)) 
     reset_time_out_i_2__0
       (.I0(rxresetdone_s3),
        .I1(out[2]),
        .I2(data_valid_sync),
        .I3(out[3]),
        .I4(out[1]),
        .I5(n_0_reset_time_out_i_4),
        .O(O2));
LUT6 #(
    .INIT(64'hFFF3DDF333F311F3)) 
     reset_time_out_i_4
       (.I0(out[3]),
        .I1(out[2]),
        .I2(I7),
        .I3(out[0]),
        .I4(data_valid_sync),
        .I5(mmcm_lock_reclocked),
        .O(n_0_reset_time_out_i_4));
LUT6 #(
    .INIT(64'hFF5FF5FF00008000)) 
     rx_fsm_reset_done_int_i_1
       (.I0(I1),
        .I1(I2),
        .I2(data_valid_sync),
        .I3(out[1]),
        .I4(out[0]),
        .I5(data_in),
        .O(O1));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_14
   (O1,
    SR,
    mmcm_lock_reclocked,
    I1,
    Q,
    I2,
    mmcm_locked,
    independent_clock_bufg);
  output O1;
  output [0:0]SR;
  input mmcm_lock_reclocked;
  input I1;
  input [0:0]Q;
  input I2;
  input mmcm_locked;
  input independent_clock_bufg;

  wire I1;
  wire I2;
  wire O1;
  wire [0:0]Q;
  wire [0:0]SR;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_locked;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_locked),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(mmcm_lock_i),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[9]_i_1__0 
       (.I0(mmcm_lock_i),
        .O(SR));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT5 #(
    .INIT(32'hAABA0000)) 
     mmcm_lock_reclocked_i_1__0
       (.I0(mmcm_lock_reclocked),
        .I1(I1),
        .I2(Q),
        .I3(I2),
        .I4(mmcm_lock_i),
        .O(O1));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_15
   (data_out,
    data_in,
    userclk);
  output data_out;
  input data_in;
  input userclk;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(userclk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_16
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_17
   (data_out,
    data_in,
    userclk);
  output data_out;
  input data_in;
  input userclk;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(userclk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_2
   (data_out,
    status_vector,
    independent_clock_bufg);
  output data_out;
  input [0:0]status_vector;
  input independent_clock_bufg;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire [0:0]status_vector;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(status_vector),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_4
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_5
   (data_out,
    I1,
    independent_clock_bufg);
  output data_out;
  input I1;
  input independent_clock_bufg;

  wire I1;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(I1),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_6
   (O1,
    E,
    out,
    I1,
    reset_time_out,
    I2,
    wait_time_done,
    I3,
    txresetdone_s3,
    I4,
    I5,
    mmcm_lock_reclocked,
    I6,
    cplllock,
    independent_clock_bufg);
  output O1;
  output [0:0]E;
  input [3:0]out;
  input I1;
  input reset_time_out;
  input I2;
  input wait_time_done;
  input I3;
  input txresetdone_s3;
  input I4;
  input I5;
  input mmcm_lock_reclocked;
  input I6;
  input cplllock;
  input independent_clock_bufg;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire O1;
  wire cplllock;
  wire cplllock_sync;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire mmcm_lock_reclocked;
  wire \n_0_FSM_sequential_tx_state[3]_i_7 ;
  wire \n_0_FSM_sequential_tx_state[3]_i_8 ;
  wire \n_0_FSM_sequential_tx_state_reg[3]_i_3 ;
  wire n_0_reset_time_out_i_2;
  wire n_0_reset_time_out_i_3;
  wire [3:0]out;
  wire reset_time_out;
  wire txresetdone_s3;
  wire wait_time_done;

LUT6 #(
    .INIT(64'h4F4AEFEF4F4AEAEA)) 
     \FSM_sequential_tx_state[3]_i_1 
       (.I0(out[3]),
        .I1(\n_0_FSM_sequential_tx_state_reg[3]_i_3 ),
        .I2(out[0]),
        .I3(I1),
        .I4(I2),
        .I5(wait_time_done),
        .O(E));
LUT6 #(
    .INIT(64'hF400F400F4FFF400)) 
     \FSM_sequential_tx_state[3]_i_7 
       (.I0(reset_time_out),
        .I1(I5),
        .I2(mmcm_lock_reclocked),
        .I3(out[2]),
        .I4(I6),
        .I5(cplllock_sync),
        .O(\n_0_FSM_sequential_tx_state[3]_i_7 ));
LUT6 #(
    .INIT(64'hF4FFF4FFF4FFF400)) 
     \FSM_sequential_tx_state[3]_i_8 
       (.I0(reset_time_out),
        .I1(I3),
        .I2(txresetdone_s3),
        .I3(out[2]),
        .I4(I4),
        .I5(cplllock_sync),
        .O(\n_0_FSM_sequential_tx_state[3]_i_8 ));
MUXF7 \FSM_sequential_tx_state_reg[3]_i_3 
       (.I0(\n_0_FSM_sequential_tx_state[3]_i_7 ),
        .I1(\n_0_FSM_sequential_tx_state[3]_i_8 ),
        .O(\n_0_FSM_sequential_tx_state_reg[3]_i_3 ),
        .S(out[1]));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(cplllock),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(cplllock_sync),
        .R(1'b0));
LUT6 #(
    .INIT(64'hF9F8FFFFF9F80000)) 
     reset_time_out_i_1
       (.I0(out[3]),
        .I1(out[0]),
        .I2(n_0_reset_time_out_i_2),
        .I3(I1),
        .I4(n_0_reset_time_out_i_3),
        .I5(reset_time_out),
        .O(O1));
LUT5 #(
    .INIT(32'hAFC0A0C0)) 
     reset_time_out_i_2
       (.I0(txresetdone_s3),
        .I1(cplllock_sync),
        .I2(out[1]),
        .I3(out[2]),
        .I4(mmcm_lock_reclocked),
        .O(n_0_reset_time_out_i_2));
LUT6 #(
    .INIT(64'h505040FF505040FA)) 
     reset_time_out_i_3
       (.I0(out[3]),
        .I1(cplllock_sync),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(I1),
        .O(n_0_reset_time_out_i_3));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_7
   (O1,
    SR,
    mmcm_lock_reclocked,
    I1,
    Q,
    I2,
    mmcm_locked,
    independent_clock_bufg);
  output O1;
  output [0:0]SR;
  input mmcm_lock_reclocked;
  input I1;
  input [0:0]Q;
  input I2;
  input mmcm_locked;
  input independent_clock_bufg;

  wire I1;
  wire I2;
  wire O1;
  wire [0:0]Q;
  wire [0:0]SR;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_locked;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(mmcm_locked),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(mmcm_lock_i),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[9]_i_1 
       (.I0(mmcm_lock_i),
        .O(SR));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT5 #(
    .INIT(32'hAABA0000)) 
     mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(I1),
        .I2(Q),
        .I3(I2),
        .I4(mmcm_lock_i),
        .O(O1));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_8
   (data_out,
    data_in,
    userclk);
  output data_out;
  input data_in;
  input userclk;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire userclk;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(userclk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(userclk),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_9
   (data_out,
    data_in,
    independent_clock_bufg);
  output data_out;
  input data_in;
  input independent_clock_bufg;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire independent_clock_bufg;

(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gig_eth_pcs_pma_basex_v15_1_transceiver" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_transceiver__parameterized0
   (cplllock,
    txn,
    txp,
    I_0,
    txoutclk,
    rxnotintable,
    rxbuferr,
    txbuferr,
    rxdisperr,
    rxchariscomma,
    rxcharisk,
    Q,
    O1,
    data_in,
    independent_clock_bufg,
    userclk2,
    gtrefclk,
    rxn,
    rxp,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    userclk,
    SR,
    I1,
    powerdown,
    D,
    I2,
    I3,
    pma_reset,
    status_vector,
    encommaalign,
    mmcm_locked,
    I4);
  output cplllock;
  output txn;
  output txp;
  output I_0;
  output txoutclk;
  output rxnotintable;
  output rxbuferr;
  output txbuferr;
  output rxdisperr;
  output rxchariscomma;
  output rxcharisk;
  output [7:0]Q;
  output [1:0]O1;
  output data_in;
  input independent_clock_bufg;
  input userclk2;
  input gtrefclk;
  input rxn;
  input rxp;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input userclk;
  input [0:0]SR;
  input [0:0]I1;
  input powerdown;
  input [0:0]D;
  input [0:0]I2;
  input [0:0]I3;
  input pma_reset;
  input [0:0]status_vector;
  input encommaalign;
  input mmcm_locked;
  input [7:0]I4;

  wire [0:0]D;
  wire [0:0]I1;
  wire [0:0]I2;
  wire [0:0]I3;
  wire [7:0]I4;
  wire I_0;
  wire [1:0]O1;
  wire [7:0]Q;
  wire [0:0]SR;
  wire cplllock;
  wire data_in;
  wire encommaalign;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire [1:0]gt0_rxchariscomma_out;
  wire [1:0]gt0_rxcharisk_out;
  wire [1:0]gt0_rxclkcorcnt_out;
  wire [15:0]gt0_rxdata_out;
  wire [1:0]gt0_rxdisperr_out;
  wire gt0_rxmcommaalignen_in;
  wire [1:0]gt0_rxnotintable_out;
  wire gtrefclk;
  wire independent_clock_bufg;
  wire mmcm_locked;
  wire \n_0_rxbufstatus_reg_reg[2] ;
  wire n_0_rxchariscomma_i_1;
  wire n_0_rxcharisk_i_1;
  wire \n_0_rxdata[0]_i_1 ;
  wire \n_0_rxdata[1]_i_1 ;
  wire \n_0_rxdata[2]_i_1 ;
  wire \n_0_rxdata[3]_i_1 ;
  wire \n_0_rxdata[4]_i_1 ;
  wire \n_0_rxdata[5]_i_1 ;
  wire \n_0_rxdata[6]_i_1 ;
  wire \n_0_rxdata[7]_i_1 ;
  wire n_0_rxdisperr_i_1;
  wire n_0_rxnotintable_i_1;
  wire n_0_sync_block_data_valid;
  wire n_0_toggle_i_1;
  wire \n_0_txbufstatus_reg_reg[1] ;
  wire n_7_gtwizard_inst;
  wire n_8_gtwizard_inst;
  wire pma_reset;
  wire powerdown;
  wire reset;
  wire reset_out;
  wire reset_out0_in;
  wire rxbuferr;
  wire rxchariscomma;
  wire [1:0]rxchariscomma_double;
  wire [1:0]rxchariscomma_reg__0;
  wire rxcharisk;
  wire [1:0]rxcharisk_double;
  wire [1:0]rxcharisk_reg__0;
  wire [15:0]rxdata_double;
  wire [15:0]rxdata_reg;
  wire rxdisperr;
  wire [1:0]rxdisperr_double;
  wire [1:0]rxdisperr_reg__0;
  wire rxn;
  wire rxnotintable;
  wire [1:0]rxnotintable_double;
  wire [1:0]rxnotintable_reg__0;
  wire rxp;
  wire rxpowerdown;
  wire rxpowerdown_double;
  wire rxpowerdown_reg__0;
  wire [0:0]status_vector;
  wire toggle;
  wire txbuferr;
  wire [1:0]txchardispmode_double;
  wire [1:0]txchardispmode_int;
  wire txchardispmode_reg;
  wire [1:0]txchardispval_double;
  wire [1:0]txchardispval_int;
  wire txchardispval_reg;
  wire [1:0]txcharisk_double;
  wire [1:0]txcharisk_int;
  wire txcharisk_reg;
  wire [15:0]txdata_double;
  wire [15:0]txdata_int;
  wire [7:0]txdata_reg;
  wire txn;
  wire txoutclk;
  wire txp;
  wire txpowerdown;
  wire txpowerdown_double;
  wire txpowerdown_reg__0;
  wire userclk;
  wire userclk2;

gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD__parameterized0 gtwizard_inst
       (.D(gt0_rxclkcorcnt_out),
        .I1(txchardispmode_int),
        .I2(txchardispval_int),
        .I3(txcharisk_int),
        .I4(reset_out0_in),
        .I5(reset_out),
        .I_0(I_0),
        .O1(gt0_rxdata_out),
        .O2(gt0_rxchariscomma_out),
        .O3(gt0_rxcharisk_out),
        .O4(gt0_rxdisperr_out),
        .O5(gt0_rxnotintable_out),
        .Q(txdata_int),
        .RXBUFSTATUS(n_8_gtwizard_inst),
        .RXPD(rxpowerdown),
        .TXBUFSTATUS(n_7_gtwizard_inst),
        .TXPD(txpowerdown),
        .cplllock(cplllock),
        .data_in(data_in),
        .data_out(n_0_sync_block_data_valid),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gtrefclk(gtrefclk),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked(mmcm_locked),
        .pma_reset(pma_reset),
        .reset(reset),
        .reset_out(gt0_rxmcommaalignen_in),
        .rxn(rxn),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .userclk(userclk),
        .userclk2(userclk2));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync reclock_encommaalign
       (.encommaalign(encommaalign),
        .reset_out(gt0_rxmcommaalignen_in),
        .userclk(userclk));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_0 reclock_rxreset
       (.I1(I1),
        .reset_out(reset_out0_in),
        .userclk(userclk));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_1 reclock_txreset
       (.SR(SR),
        .reset_out(reset_out),
        .userclk(userclk));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_wtd_timer reset_wtd_timer
       (.data_out(n_0_sync_block_data_valid),
        .independent_clock_bufg(independent_clock_bufg),
        .reset(reset));
FDRE rxbuferr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_rxbufstatus_reg_reg[2] ),
        .Q(rxbuferr),
        .R(1'b0));
FDRE \rxbufstatus_reg_reg[2] 
       (.C(userclk),
        .CE(1'b1),
        .D(n_8_gtwizard_inst),
        .Q(\n_0_rxbufstatus_reg_reg[2] ),
        .R(1'b0));
FDRE \rxchariscomma_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxchariscomma_reg__0[0]),
        .Q(rxchariscomma_double[0]),
        .R(I1));
FDRE \rxchariscomma_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxchariscomma_reg__0[1]),
        .Q(rxchariscomma_double[1]),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     rxchariscomma_i_1
       (.I0(rxchariscomma_double[1]),
        .I1(toggle),
        .I2(rxchariscomma_double[0]),
        .O(n_0_rxchariscomma_i_1));
FDRE rxchariscomma_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_rxchariscomma_i_1),
        .Q(rxchariscomma),
        .R(I1));
FDRE \rxchariscomma_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxchariscomma_out[0]),
        .Q(rxchariscomma_reg__0[0]),
        .R(1'b0));
FDRE \rxchariscomma_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxchariscomma_out[1]),
        .Q(rxchariscomma_reg__0[1]),
        .R(1'b0));
FDRE \rxcharisk_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxcharisk_reg__0[0]),
        .Q(rxcharisk_double[0]),
        .R(I1));
FDRE \rxcharisk_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxcharisk_reg__0[1]),
        .Q(rxcharisk_double[1]),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     rxcharisk_i_1
       (.I0(rxcharisk_double[1]),
        .I1(toggle),
        .I2(rxcharisk_double[0]),
        .O(n_0_rxcharisk_i_1));
FDRE rxcharisk_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_rxcharisk_i_1),
        .Q(rxcharisk),
        .R(I1));
FDRE \rxcharisk_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxcharisk_out[0]),
        .Q(rxcharisk_reg__0[0]),
        .R(1'b0));
FDRE \rxcharisk_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxcharisk_out[1]),
        .Q(rxcharisk_reg__0[1]),
        .R(1'b0));
FDRE \rxclkcorcnt_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gt0_rxclkcorcnt_out[0]),
        .Q(O1[0]),
        .R(1'b0));
FDRE \rxclkcorcnt_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(gt0_rxclkcorcnt_out[1]),
        .Q(O1[1]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \rxdata[0]_i_1 
       (.I0(rxdata_double[8]),
        .I1(rxdata_double[0]),
        .I2(toggle),
        .O(\n_0_rxdata[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \rxdata[1]_i_1 
       (.I0(rxdata_double[9]),
        .I1(rxdata_double[1]),
        .I2(toggle),
        .O(\n_0_rxdata[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \rxdata[2]_i_1 
       (.I0(rxdata_double[10]),
        .I1(rxdata_double[2]),
        .I2(toggle),
        .O(\n_0_rxdata[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \rxdata[3]_i_1 
       (.I0(rxdata_double[11]),
        .I1(rxdata_double[3]),
        .I2(toggle),
        .O(\n_0_rxdata[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \rxdata[4]_i_1 
       (.I0(rxdata_double[12]),
        .I1(rxdata_double[4]),
        .I2(toggle),
        .O(\n_0_rxdata[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \rxdata[5]_i_1 
       (.I0(rxdata_double[13]),
        .I1(rxdata_double[5]),
        .I2(toggle),
        .O(\n_0_rxdata[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \rxdata[6]_i_1 
       (.I0(rxdata_double[14]),
        .I1(rxdata_double[6]),
        .I2(toggle),
        .O(\n_0_rxdata[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \rxdata[7]_i_1 
       (.I0(rxdata_double[15]),
        .I1(rxdata_double[7]),
        .I2(toggle),
        .O(\n_0_rxdata[7]_i_1 ));
FDRE \rxdata_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[0]),
        .Q(rxdata_double[0]),
        .R(I1));
FDRE \rxdata_double_reg[10] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[10]),
        .Q(rxdata_double[10]),
        .R(I1));
FDRE \rxdata_double_reg[11] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[11]),
        .Q(rxdata_double[11]),
        .R(I1));
FDRE \rxdata_double_reg[12] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[12]),
        .Q(rxdata_double[12]),
        .R(I1));
FDRE \rxdata_double_reg[13] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[13]),
        .Q(rxdata_double[13]),
        .R(I1));
FDRE \rxdata_double_reg[14] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[14]),
        .Q(rxdata_double[14]),
        .R(I1));
FDRE \rxdata_double_reg[15] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[15]),
        .Q(rxdata_double[15]),
        .R(I1));
FDRE \rxdata_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[1]),
        .Q(rxdata_double[1]),
        .R(I1));
FDRE \rxdata_double_reg[2] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[2]),
        .Q(rxdata_double[2]),
        .R(I1));
FDRE \rxdata_double_reg[3] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[3]),
        .Q(rxdata_double[3]),
        .R(I1));
FDRE \rxdata_double_reg[4] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[4]),
        .Q(rxdata_double[4]),
        .R(I1));
FDRE \rxdata_double_reg[5] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[5]),
        .Q(rxdata_double[5]),
        .R(I1));
FDRE \rxdata_double_reg[6] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[6]),
        .Q(rxdata_double[6]),
        .R(I1));
FDRE \rxdata_double_reg[7] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[7]),
        .Q(rxdata_double[7]),
        .R(I1));
FDRE \rxdata_double_reg[8] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[8]),
        .Q(rxdata_double[8]),
        .R(I1));
FDRE \rxdata_double_reg[9] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[9]),
        .Q(rxdata_double[9]),
        .R(I1));
FDRE \rxdata_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_rxdata[0]_i_1 ),
        .Q(Q[0]),
        .R(I1));
FDRE \rxdata_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_rxdata[1]_i_1 ),
        .Q(Q[1]),
        .R(I1));
FDRE \rxdata_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_rxdata[2]_i_1 ),
        .Q(Q[2]),
        .R(I1));
FDRE \rxdata_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_rxdata[3]_i_1 ),
        .Q(Q[3]),
        .R(I1));
FDRE \rxdata_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_rxdata[4]_i_1 ),
        .Q(Q[4]),
        .R(I1));
FDRE \rxdata_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_rxdata[5]_i_1 ),
        .Q(Q[5]),
        .R(I1));
FDRE \rxdata_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_rxdata[6]_i_1 ),
        .Q(Q[6]),
        .R(I1));
FDRE \rxdata_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_rxdata[7]_i_1 ),
        .Q(Q[7]),
        .R(I1));
FDRE \rxdata_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdata_out[0]),
        .Q(rxdata_reg[0]),
        .R(1'b0));
FDRE \rxdata_reg_reg[10] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdata_out[10]),
        .Q(rxdata_reg[10]),
        .R(1'b0));
FDRE \rxdata_reg_reg[11] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdata_out[11]),
        .Q(rxdata_reg[11]),
        .R(1'b0));
FDRE \rxdata_reg_reg[12] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdata_out[12]),
        .Q(rxdata_reg[12]),
        .R(1'b0));
FDRE \rxdata_reg_reg[13] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdata_out[13]),
        .Q(rxdata_reg[13]),
        .R(1'b0));
FDRE \rxdata_reg_reg[14] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdata_out[14]),
        .Q(rxdata_reg[14]),
        .R(1'b0));
FDRE \rxdata_reg_reg[15] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdata_out[15]),
        .Q(rxdata_reg[15]),
        .R(1'b0));
FDRE \rxdata_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdata_out[1]),
        .Q(rxdata_reg[1]),
        .R(1'b0));
FDRE \rxdata_reg_reg[2] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdata_out[2]),
        .Q(rxdata_reg[2]),
        .R(1'b0));
FDRE \rxdata_reg_reg[3] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdata_out[3]),
        .Q(rxdata_reg[3]),
        .R(1'b0));
FDRE \rxdata_reg_reg[4] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdata_out[4]),
        .Q(rxdata_reg[4]),
        .R(1'b0));
FDRE \rxdata_reg_reg[5] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdata_out[5]),
        .Q(rxdata_reg[5]),
        .R(1'b0));
FDRE \rxdata_reg_reg[6] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdata_out[6]),
        .Q(rxdata_reg[6]),
        .R(1'b0));
FDRE \rxdata_reg_reg[7] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdata_out[7]),
        .Q(rxdata_reg[7]),
        .R(1'b0));
FDRE \rxdata_reg_reg[8] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdata_out[8]),
        .Q(rxdata_reg[8]),
        .R(1'b0));
FDRE \rxdata_reg_reg[9] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdata_out[9]),
        .Q(rxdata_reg[9]),
        .R(1'b0));
FDRE \rxdisperr_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdisperr_reg__0[0]),
        .Q(rxdisperr_double[0]),
        .R(I1));
FDRE \rxdisperr_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdisperr_reg__0[1]),
        .Q(rxdisperr_double[1]),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     rxdisperr_i_1
       (.I0(rxdisperr_double[1]),
        .I1(toggle),
        .I2(rxdisperr_double[0]),
        .O(n_0_rxdisperr_i_1));
FDRE rxdisperr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_rxdisperr_i_1),
        .Q(rxdisperr),
        .R(I1));
FDRE \rxdisperr_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdisperr_out[0]),
        .Q(rxdisperr_reg__0[0]),
        .R(1'b0));
FDRE \rxdisperr_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxdisperr_out[1]),
        .Q(rxdisperr_reg__0[1]),
        .R(1'b0));
FDRE \rxnotintable_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxnotintable_reg__0[0]),
        .Q(rxnotintable_double[0]),
        .R(I1));
FDRE \rxnotintable_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxnotintable_reg__0[1]),
        .Q(rxnotintable_double[1]),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     rxnotintable_i_1
       (.I0(rxnotintable_double[1]),
        .I1(toggle),
        .I2(rxnotintable_double[0]),
        .O(n_0_rxnotintable_i_1));
FDRE rxnotintable_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_rxnotintable_i_1),
        .Q(rxnotintable),
        .R(I1));
FDRE \rxnotintable_reg_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxnotintable_out[0]),
        .Q(rxnotintable_reg__0[0]),
        .R(1'b0));
FDRE \rxnotintable_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(gt0_rxnotintable_out[1]),
        .Q(rxnotintable_reg__0[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     rxpowerdown_double_reg
       (.C(userclk2),
        .CE(toggle),
        .D(rxpowerdown_reg__0),
        .Q(rxpowerdown_double),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     rxpowerdown_reg
       (.C(userclk),
        .CE(1'b1),
        .D(rxpowerdown_double),
        .Q(rxpowerdown),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     rxpowerdown_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(powerdown),
        .Q(rxpowerdown_reg__0),
        .R(I1));
gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_2 sync_block_data_valid
       (.data_out(n_0_sync_block_data_valid),
        .independent_clock_bufg(independent_clock_bufg),
        .status_vector(status_vector));
LUT1 #(
    .INIT(2'h1)) 
     toggle_i_1
       (.I0(toggle),
        .O(n_0_toggle_i_1));
FDRE toggle_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(n_0_toggle_i_1),
        .Q(toggle),
        .R(SR));
FDRE txbuferr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(\n_0_txbufstatus_reg_reg[1] ),
        .Q(txbuferr),
        .R(1'b0));
FDRE \txbufstatus_reg_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(n_7_gtwizard_inst),
        .Q(\n_0_txbufstatus_reg_reg[1] ),
        .R(1'b0));
FDRE \txchardispmode_double_reg[0] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(txchardispmode_reg),
        .Q(txchardispmode_double[0]),
        .R(SR));
FDRE \txchardispmode_double_reg[1] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(D),
        .Q(txchardispmode_double[1]),
        .R(SR));
FDRE \txchardispmode_int_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(txchardispmode_double[0]),
        .Q(txchardispmode_int[0]),
        .R(1'b0));
FDRE \txchardispmode_int_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(txchardispmode_double[1]),
        .Q(txchardispmode_int[1]),
        .R(1'b0));
FDRE txchardispmode_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(D),
        .Q(txchardispmode_reg),
        .R(SR));
FDRE \txchardispval_double_reg[0] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(txchardispval_reg),
        .Q(txchardispval_double[0]),
        .R(SR));
FDRE \txchardispval_double_reg[1] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(I2),
        .Q(txchardispval_double[1]),
        .R(SR));
FDRE \txchardispval_int_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(txchardispval_double[0]),
        .Q(txchardispval_int[0]),
        .R(1'b0));
FDRE \txchardispval_int_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(txchardispval_double[1]),
        .Q(txchardispval_int[1]),
        .R(1'b0));
FDRE txchardispval_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I2),
        .Q(txchardispval_reg),
        .R(SR));
FDRE \txcharisk_double_reg[0] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(txcharisk_reg),
        .Q(txcharisk_double[0]),
        .R(SR));
FDRE \txcharisk_double_reg[1] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(I3),
        .Q(txcharisk_double[1]),
        .R(SR));
FDRE \txcharisk_int_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(txcharisk_double[0]),
        .Q(txcharisk_int[0]),
        .R(1'b0));
FDRE \txcharisk_int_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(txcharisk_double[1]),
        .Q(txcharisk_int[1]),
        .R(1'b0));
FDRE txcharisk_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(I3),
        .Q(txcharisk_reg),
        .R(SR));
FDRE \txdata_double_reg[0] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(txdata_reg[0]),
        .Q(txdata_double[0]),
        .R(SR));
FDRE \txdata_double_reg[10] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(I4[2]),
        .Q(txdata_double[10]),
        .R(SR));
FDRE \txdata_double_reg[11] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(I4[3]),
        .Q(txdata_double[11]),
        .R(SR));
FDRE \txdata_double_reg[12] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(I4[4]),
        .Q(txdata_double[12]),
        .R(SR));
FDRE \txdata_double_reg[13] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(I4[5]),
        .Q(txdata_double[13]),
        .R(SR));
FDRE \txdata_double_reg[14] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(I4[6]),
        .Q(txdata_double[14]),
        .R(SR));
FDRE \txdata_double_reg[15] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(I4[7]),
        .Q(txdata_double[15]),
        .R(SR));
FDRE \txdata_double_reg[1] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(txdata_reg[1]),
        .Q(txdata_double[1]),
        .R(SR));
FDRE \txdata_double_reg[2] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(txdata_reg[2]),
        .Q(txdata_double[2]),
        .R(SR));
FDRE \txdata_double_reg[3] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(txdata_reg[3]),
        .Q(txdata_double[3]),
        .R(SR));
FDRE \txdata_double_reg[4] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(txdata_reg[4]),
        .Q(txdata_double[4]),
        .R(SR));
FDRE \txdata_double_reg[5] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(txdata_reg[5]),
        .Q(txdata_double[5]),
        .R(SR));
FDRE \txdata_double_reg[6] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(txdata_reg[6]),
        .Q(txdata_double[6]),
        .R(SR));
FDRE \txdata_double_reg[7] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(txdata_reg[7]),
        .Q(txdata_double[7]),
        .R(SR));
FDRE \txdata_double_reg[8] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(I4[0]),
        .Q(txdata_double[8]),
        .R(SR));
FDRE \txdata_double_reg[9] 
       (.C(userclk2),
        .CE(n_0_toggle_i_1),
        .D(I4[1]),
        .Q(txdata_double[9]),
        .R(SR));
FDRE \txdata_int_reg[0] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[0]),
        .Q(txdata_int[0]),
        .R(1'b0));
FDRE \txdata_int_reg[10] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[10]),
        .Q(txdata_int[10]),
        .R(1'b0));
FDRE \txdata_int_reg[11] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[11]),
        .Q(txdata_int[11]),
        .R(1'b0));
FDRE \txdata_int_reg[12] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[12]),
        .Q(txdata_int[12]),
        .R(1'b0));
FDRE \txdata_int_reg[13] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[13]),
        .Q(txdata_int[13]),
        .R(1'b0));
FDRE \txdata_int_reg[14] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[14]),
        .Q(txdata_int[14]),
        .R(1'b0));
FDRE \txdata_int_reg[15] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[15]),
        .Q(txdata_int[15]),
        .R(1'b0));
FDRE \txdata_int_reg[1] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[1]),
        .Q(txdata_int[1]),
        .R(1'b0));
FDRE \txdata_int_reg[2] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[2]),
        .Q(txdata_int[2]),
        .R(1'b0));
FDRE \txdata_int_reg[3] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[3]),
        .Q(txdata_int[3]),
        .R(1'b0));
FDRE \txdata_int_reg[4] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[4]),
        .Q(txdata_int[4]),
        .R(1'b0));
FDRE \txdata_int_reg[5] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[5]),
        .Q(txdata_int[5]),
        .R(1'b0));
FDRE \txdata_int_reg[6] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[6]),
        .Q(txdata_int[6]),
        .R(1'b0));
FDRE \txdata_int_reg[7] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[7]),
        .Q(txdata_int[7]),
        .R(1'b0));
FDRE \txdata_int_reg[8] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[8]),
        .Q(txdata_int[8]),
        .R(1'b0));
FDRE \txdata_int_reg[9] 
       (.C(userclk),
        .CE(1'b1),
        .D(txdata_double[9]),
        .Q(txdata_int[9]),
        .R(1'b0));
FDRE \txdata_reg_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(I4[0]),
        .Q(txdata_reg[0]),
        .R(SR));
FDRE \txdata_reg_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(I4[1]),
        .Q(txdata_reg[1]),
        .R(SR));
FDRE \txdata_reg_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(I4[2]),
        .Q(txdata_reg[2]),
        .R(SR));
FDRE \txdata_reg_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(I4[3]),
        .Q(txdata_reg[3]),
        .R(SR));
FDRE \txdata_reg_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(I4[4]),
        .Q(txdata_reg[4]),
        .R(SR));
FDRE \txdata_reg_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(I4[5]),
        .Q(txdata_reg[5]),
        .R(SR));
FDRE \txdata_reg_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(I4[6]),
        .Q(txdata_reg[6]),
        .R(SR));
FDRE \txdata_reg_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(I4[7]),
        .Q(txdata_reg[7]),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     txpowerdown_double_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txpowerdown_reg__0),
        .Q(txpowerdown_double),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     txpowerdown_reg
       (.C(userclk),
        .CE(1'b1),
        .D(txpowerdown_double),
        .Q(txpowerdown),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     txpowerdown_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(powerdown),
        .Q(txpowerdown_reg__0),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_v14_3" *) 
module gig_eth_pcs_pma_basex_v15_1_gig_ethernet_pcs_pma_v14_3__parameterized0
   (txreset,
    rxreset,
    gmii_rx_er,
    status_vector,
    D,
    O1,
    encommaalign,
    gmii_rx_dv,
    O2,
    SR,
    powerdown,
    gmii_rxd,
    O3,
    userclk2,
    gmii_tx_er,
    gmii_tx_en,
    rxnotintable,
    rxbuferr,
    txbuferr,
    rxdisperr,
    gmii_txd,
    reset,
    mmcm_locked,
    signal_detect,
    configuration_vector,
    Q,
    rxcharisk,
    rxchariscomma,
    resetdone,
    I1);
  output txreset;
  output rxreset;
  output gmii_rx_er;
  output [6:0]status_vector;
  output [0:0]D;
  output [0:0]O1;
  output encommaalign;
  output gmii_rx_dv;
  output [0:0]O2;
  output [0:0]SR;
  output powerdown;
  output [7:0]gmii_rxd;
  output [7:0]O3;
  input userclk2;
  input gmii_tx_er;
  input gmii_tx_en;
  input rxnotintable;
  input rxbuferr;
  input txbuferr;
  input rxdisperr;
  input [7:0]gmii_txd;
  input reset;
  input mmcm_locked;
  input signal_detect;
  input [2:0]configuration_vector;
  input [1:0]Q;
  input rxcharisk;
  input rxchariscomma;
  input resetdone;
  input [7:0]I1;

  wire [0:0]D;
  wire [7:0]I1;
  wire [0:0]O1;
  wire [0:0]O2;
  wire [7:0]O3;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [2:0]configuration_vector;
  wire encommaalign;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire mmcm_locked;
  wire powerdown;
  wire reset;
  wire resetdone;
  wire rxbuferr;
  wire rxchariscomma;
  wire rxcharisk;
  wire rxdisperr;
  wire rxnotintable;
  wire rxreset;
  wire signal_detect;
  wire [6:0]status_vector;
  wire txbuferr;
  wire txreset;
  wire userclk2;

gig_eth_pcs_pma_basex_v15_1_GPCS_PMA_GEN gpcs_pma_inst
       (.D(D),
        .I1(I1),
        .O1(O1),
        .O2(O2),
        .O3(SR),
        .O4(powerdown),
        .O5(O3),
        .Q(Q),
        .SR(rxreset),
        .SS(txreset),
        .configuration_vector(configuration_vector),
        .encommaalign(encommaalign),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .mmcm_locked(mmcm_locked),
        .reset(reset),
        .resetdone(resetdone),
        .rxbuferr(rxbuferr),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .signal_detect(signal_detect),
        .status_vector(status_vector),
        .txbuferr(txbuferr),
        .userclk2(userclk2));
endmodule

(* ORIG_REF_NAME = "sync_block" *) 
module gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0
   (SIGNAL_DETECT_MOD,
    O4,
    signal_detect,
    userclk2);
  output SIGNAL_DETECT_MOD;
  input O4;
  input signal_detect;
  input userclk2;

  wire O4;
  wire SIGNAL_DETECT_MOD;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire signal_detect;
  wire userclk2;

LUT2 #(
    .INIT(4'h2)) 
     SIGNAL_DETECT_REG_i_1
       (.I0(data_out),
        .I1(O4),
        .O(SIGNAL_DETECT_MOD));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(signal_detect),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
