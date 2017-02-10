-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.3.1 (win64) Build 1034051 Fri Oct  3 17:14:12 MDT 2014
-- Date        : Fri Mar 11 14:57:16 2016
-- Host        : DAQ-PC running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               c:/VivadoProject/kc705_ipbus/kc705_ipbus.srcs/sources_1/ip/gig_eth_pcs_pma_basex_v15_1/gig_eth_pcs_pma_basex_v15_1_funcsim.vhdl
-- Design      : gig_eth_pcs_pma_basex_v15_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_RX__parameterized0\ is
  port (
    gmii_rx_er : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    userclk2 : in STD_LOGIC;
    I1 : in STD_LOGIC;
    SYNC_STATUS_REG0 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    RXNOTINTABLE_INT : in STD_LOGIC;
    RXEVEN : in STD_LOGIC;
    RXSYNC_STATUS : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    D_1 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    I4 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_RX__parameterized0\ : entity is "RX";
end \gig_eth_pcs_pma_basex_v15_1_RX__parameterized0\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_RX__parameterized0\ is
  signal C : STD_LOGIC;
  signal C0 : STD_LOGIC;
  signal CGBAD : STD_LOGIC;
  signal CGBAD_REG1 : STD_LOGIC;
  signal CGBAD_REG2 : STD_LOGIC;
  signal CGBAD_REG3 : STD_LOGIC;
  signal C_HDR_REMOVED : STD_LOGIC;
  signal C_HDR_REMOVED_REG : STD_LOGIC;
  signal C_REG1 : STD_LOGIC;
  signal C_REG2 : STD_LOGIC;
  signal C_REG3 : STD_LOGIC;
  signal D0p0 : STD_LOGIC;
  signal D0p0_REG : STD_LOGIC;
  signal EOP : STD_LOGIC;
  signal EOP0 : STD_LOGIC;
  signal EOP_REG1 : STD_LOGIC;
  signal EOP_REG10 : STD_LOGIC;
  signal EXTEND_ERR : STD_LOGIC;
  signal EXTEND_ERR0 : STD_LOGIC;
  signal EXTEND_REG1 : STD_LOGIC;
  signal EXTEND_REG2 : STD_LOGIC;
  signal EXTEND_REG3 : STD_LOGIC;
  signal EXT_ILLEGAL_K : STD_LOGIC;
  signal EXT_ILLEGAL_K0 : STD_LOGIC;
  signal EXT_ILLEGAL_K_REG1 : STD_LOGIC;
  signal EXT_ILLEGAL_K_REG2 : STD_LOGIC;
  signal FALSE_CARRIER : STD_LOGIC;
  signal FALSE_CARRIER_REG1 : STD_LOGIC;
  signal FALSE_CARRIER_REG2 : STD_LOGIC;
  signal FALSE_CARRIER_REG3 : STD_LOGIC;
  signal FALSE_DATA : STD_LOGIC;
  signal FALSE_DATA0 : STD_LOGIC;
  signal FALSE_K : STD_LOGIC;
  signal FALSE_K0 : STD_LOGIC;
  signal FALSE_NIT : STD_LOGIC;
  signal FALSE_NIT0 : STD_LOGIC;
  signal FROM_RX_CX : STD_LOGIC;
  signal FROM_RX_CX0 : STD_LOGIC;
  signal I : STD_LOGIC;
  signal I0 : STD_LOGIC;
  signal I350_in : STD_LOGIC;
  signal ILLEGAL_K : STD_LOGIC;
  signal ILLEGAL_K0 : STD_LOGIC;
  signal ILLEGAL_K_REG1 : STD_LOGIC;
  signal ILLEGAL_K_REG2 : STD_LOGIC;
  signal K23p7 : STD_LOGIC;
  signal K28p5 : STD_LOGIC;
  signal K28p5_REG1 : STD_LOGIC;
  signal K29p7 : STD_LOGIC;
  signal R : STD_LOGIC;
  signal RUDI_C0 : STD_LOGIC;
  signal RUDI_I0 : STD_LOGIC;
  signal RXCHARISK_REG1 : STD_LOGIC;
  signal RXDATA_REG5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RX_CONFIG_VALID_INT : STD_LOGIC;
  signal RX_CONFIG_VALID_INT0 : STD_LOGIC;
  signal RX_DATA_ERROR : STD_LOGIC;
  signal RX_DATA_ERROR0 : STD_LOGIC;
  signal RX_ER0 : STD_LOGIC;
  signal R_REG1 : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0 : STD_LOGIC;
  signal S2 : STD_LOGIC;
  signal SOP : STD_LOGIC;
  signal SOP0 : STD_LOGIC;
  signal SOP_REG1 : STD_LOGIC;
  signal SOP_REG2 : STD_LOGIC;
  signal SOP_REG3 : STD_LOGIC;
  signal SYNC_STATUS_REG : STD_LOGIC;
  signal T : STD_LOGIC;
  signal T_REG1 : STD_LOGIC;
  signal T_REG2 : STD_LOGIC;
  signal WAIT_FOR_K : STD_LOGIC;
  signal \^gmii_rx_dv\ : STD_LOGIC;
  signal n_0_D0p0_REG_i_2 : STD_LOGIC;
  signal n_0_EOP_i_2 : STD_LOGIC;
  signal n_0_EXTEND_i_1 : STD_LOGIC;
  signal n_0_EXTEND_i_2 : STD_LOGIC;
  signal n_0_EXTEND_reg : STD_LOGIC;
  signal n_0_FALSE_CARRIER_i_1 : STD_LOGIC;
  signal n_0_FALSE_CARRIER_i_2 : STD_LOGIC;
  signal n_0_FALSE_CARRIER_i_3 : STD_LOGIC;
  signal n_0_FALSE_DATA_i_2 : STD_LOGIC;
  signal n_0_FALSE_DATA_i_3 : STD_LOGIC;
  signal n_0_FALSE_DATA_i_4 : STD_LOGIC;
  signal n_0_FALSE_K_i_2 : STD_LOGIC;
  signal n_0_FALSE_K_i_3 : STD_LOGIC;
  signal n_0_FALSE_NIT_i_2 : STD_LOGIC;
  signal n_0_FALSE_NIT_i_3 : STD_LOGIC;
  signal n_0_FALSE_NIT_i_4 : STD_LOGIC;
  signal n_0_FROM_RX_CX_i_2 : STD_LOGIC;
  signal \n_0_IDLE_REG_reg[0]\ : STD_LOGIC;
  signal \n_0_IDLE_REG_reg[2]\ : STD_LOGIC;
  signal n_0_I_REG_reg : STD_LOGIC;
  signal n_0_I_i_2 : STD_LOGIC;
  signal n_0_I_i_4 : STD_LOGIC;
  signal n_0_RECEIVE_i_1 : STD_LOGIC;
  signal n_0_RECEIVE_reg : STD_LOGIC;
  signal \n_0_RXDATA_REG4_reg[0]_srl4\ : STD_LOGIC;
  signal \n_0_RXDATA_REG4_reg[1]_srl4\ : STD_LOGIC;
  signal \n_0_RXDATA_REG4_reg[2]_srl4\ : STD_LOGIC;
  signal \n_0_RXDATA_REG4_reg[3]_srl4\ : STD_LOGIC;
  signal \n_0_RXDATA_REG4_reg[4]_srl4\ : STD_LOGIC;
  signal \n_0_RXDATA_REG4_reg[5]_srl4\ : STD_LOGIC;
  signal \n_0_RXDATA_REG4_reg[6]_srl4\ : STD_LOGIC;
  signal \n_0_RXDATA_REG4_reg[7]_srl4\ : STD_LOGIC;
  signal \n_0_RXD[0]_i_1\ : STD_LOGIC;
  signal \n_0_RXD[1]_i_1\ : STD_LOGIC;
  signal \n_0_RXD[2]_i_1\ : STD_LOGIC;
  signal \n_0_RXD[3]_i_1\ : STD_LOGIC;
  signal \n_0_RXD[4]_i_1\ : STD_LOGIC;
  signal \n_0_RXD[5]_i_1\ : STD_LOGIC;
  signal \n_0_RXD[6]_i_1\ : STD_LOGIC;
  signal \n_0_RXD[7]_i_1\ : STD_LOGIC;
  signal n_0_RX_CONFIG_VALID_INT_i_2 : STD_LOGIC;
  signal \n_0_RX_CONFIG_VALID_REG_reg[0]\ : STD_LOGIC;
  signal \n_0_RX_CONFIG_VALID_REG_reg[3]\ : STD_LOGIC;
  signal n_0_RX_DATA_ERROR_i_2 : STD_LOGIC;
  signal n_0_RX_DATA_ERROR_i_3 : STD_LOGIC;
  signal n_0_RX_DV_i_1 : STD_LOGIC;
  signal n_0_RX_DV_i_2 : STD_LOGIC;
  signal n_0_RX_DV_i_3 : STD_LOGIC;
  signal n_0_RX_ER_i_2 : STD_LOGIC;
  signal n_0_RX_INVALID_i_1 : STD_LOGIC;
  signal n_0_R_i_2 : STD_LOGIC;
  signal n_0_S_i_2 : STD_LOGIC;
  signal n_0_WAIT_FOR_K_i_1 : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of CGBAD_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of C_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of D0p0_REG_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of D0p0_REG_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of EOP_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of FALSE_CARRIER_i_3 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of FALSE_K_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of FALSE_K_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of FALSE_NIT_i_4 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of FROM_RX_CX_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ILLEGAL_K_i_1 : label is "soft_lutpair7";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \RXDATA_REG4_reg[0]_srl4\ : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg ";
  attribute srl_name : string;
  attribute srl_name of \RXDATA_REG4_reg[0]_srl4\ : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[0]_srl4 ";
  attribute srl_bus_name of \RXDATA_REG4_reg[1]_srl4\ : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg ";
  attribute srl_name of \RXDATA_REG4_reg[1]_srl4\ : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[1]_srl4 ";
  attribute srl_bus_name of \RXDATA_REG4_reg[2]_srl4\ : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg ";
  attribute srl_name of \RXDATA_REG4_reg[2]_srl4\ : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[2]_srl4 ";
  attribute srl_bus_name of \RXDATA_REG4_reg[3]_srl4\ : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg ";
  attribute srl_name of \RXDATA_REG4_reg[3]_srl4\ : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[3]_srl4 ";
  attribute srl_bus_name of \RXDATA_REG4_reg[4]_srl4\ : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg ";
  attribute srl_name of \RXDATA_REG4_reg[4]_srl4\ : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[4]_srl4 ";
  attribute srl_bus_name of \RXDATA_REG4_reg[5]_srl4\ : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg ";
  attribute srl_name of \RXDATA_REG4_reg[5]_srl4\ : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[5]_srl4 ";
  attribute srl_bus_name of \RXDATA_REG4_reg[6]_srl4\ : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg ";
  attribute srl_name of \RXDATA_REG4_reg[6]_srl4\ : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[6]_srl4 ";
  attribute srl_bus_name of \RXDATA_REG4_reg[7]_srl4\ : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg ";
  attribute srl_name of \RXDATA_REG4_reg[7]_srl4\ : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[7]_srl4 ";
  attribute SOFT_HLUTNM of \RXD[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \RXD[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \RXD[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \RXD[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \RXD[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \RXD[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \RXD[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of RX_CONFIG_VALID_INT_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of RX_ER_i_2 : label is "soft_lutpair3";
begin
  gmii_rx_dv <= \^gmii_rx_dv\;
  status_vector(2 downto 0) <= \^status_vector\(2 downto 0);
CGBAD_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => CGBAD,
      Q => CGBAD_REG1,
      R => '0'
    );
CGBAD_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => CGBAD_REG1,
      Q => CGBAD_REG2,
      R => '0'
    );
CGBAD_REG3_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => CGBAD_REG2,
      Q => CGBAD_REG3,
      R => I1
    );
CGBAD_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => RXNOTINTABLE_INT,
      I1 => p_0_in,
      I2 => D_1,
      O => S2
    );
CGBAD_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => S2,
      Q => CGBAD,
      R => I1
    );
C_HDR_REMOVED_REG_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => I4(1),
      I1 => C_REG2,
      I2 => I4(0),
      O => C_HDR_REMOVED
    );
C_HDR_REMOVED_REG_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => C_HDR_REMOVED,
      Q => C_HDR_REMOVED_REG,
      R => '0'
    );
C_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => C,
      Q => C_REG1,
      R => '0'
    );
C_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => C_REG1,
      Q => C_REG2,
      R => '0'
    );
C_REG3_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => C_REG2,
      Q => C_REG3,
      R => '0'
    );
C_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I350_in,
      I1 => K28p5_REG1,
      O => C0
    );
C_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => C0,
      Q => C,
      R => '0'
    );
D0p0_REG_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(6),
      I3 => Q(7),
      I4 => n_0_D0p0_REG_i_2,
      O => D0p0
    );
D0p0_REG_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => Q(5),
      I1 => Q(2),
      I2 => Q(4),
      I3 => Q(3),
      I4 => I2,
      O => n_0_D0p0_REG_i_2
    );
D0p0_REG_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => D0p0,
      Q => D0p0_REG,
      R => '0'
    );
EOP_REG1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => n_0_EXTEND_reg,
      I1 => EXTEND_REG1,
      I2 => EOP,
      O => EOP_REG10
    );
EOP_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => EOP_REG10,
      Q => EOP_REG1,
      R => I1
    );
EOP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8888888"
    )
    port map (
      I0 => n_0_I_REG_reg,
      I1 => K28p5_REG1,
      I2 => RXEVEN,
      I3 => C_REG1,
      I4 => D0p0_REG,
      I5 => n_0_EOP_i_2,
      O => EOP0
    );
EOP_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888000"
    )
    port map (
      I0 => T_REG2,
      I1 => R_REG1,
      I2 => K28p5_REG1,
      I3 => RXEVEN,
      I4 => R,
      O => n_0_EOP_i_2
    );
EOP_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => EOP0,
      Q => EOP,
      R => I1
    );
EXTEND_ERR_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => EXTEND_REG3,
      I1 => CGBAD_REG3,
      I2 => EXT_ILLEGAL_K_REG2,
      O => EXTEND_ERR0
    );
EXTEND_ERR_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => EXTEND_ERR0,
      Q => EXTEND_ERR,
      R => SYNC_STATUS_REG0
    );
EXTEND_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_EXTEND_reg,
      Q => EXTEND_REG1,
      R => '0'
    );
EXTEND_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => EXTEND_REG1,
      Q => EXTEND_REG2,
      R => '0'
    );
EXTEND_REG3_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => EXTEND_REG2,
      Q => EXTEND_REG3,
      R => '0'
    );
EXTEND_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333011133330000"
    )
    port map (
      I0 => S,
      I1 => SYNC_STATUS_REG0,
      I2 => RXEVEN,
      I3 => K28p5_REG1,
      I4 => n_0_EXTEND_i_2,
      I5 => n_0_EXTEND_reg,
      O => n_0_EXTEND_i_1
    );
EXTEND_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => R_REG1,
      I1 => n_0_RECEIVE_reg,
      I2 => R,
      O => n_0_EXTEND_i_2
    );
EXTEND_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_EXTEND_i_1,
      Q => n_0_EXTEND_reg,
      R => '0'
    );
EXT_ILLEGAL_K_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => EXT_ILLEGAL_K,
      Q => EXT_ILLEGAL_K_REG1,
      R => SYNC_STATUS_REG0
    );
EXT_ILLEGAL_K_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => EXT_ILLEGAL_K_REG1,
      Q => EXT_ILLEGAL_K_REG2,
      R => SYNC_STATUS_REG0
    );
EXT_ILLEGAL_K_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000444"
    )
    port map (
      I0 => S,
      I1 => EXTEND_REG1,
      I2 => K28p5_REG1,
      I3 => RXEVEN,
      I4 => R,
      O => EXT_ILLEGAL_K0
    );
EXT_ILLEGAL_K_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => EXT_ILLEGAL_K0,
      Q => EXT_ILLEGAL_K,
      R => SYNC_STATUS_REG0
    );
FALSE_CARRIER_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => FALSE_CARRIER,
      Q => FALSE_CARRIER_REG1,
      R => '0'
    );
FALSE_CARRIER_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => FALSE_CARRIER_REG1,
      Q => FALSE_CARRIER_REG2,
      R => '0'
    );
FALSE_CARRIER_REG3_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => FALSE_CARRIER_REG2,
      Q => FALSE_CARRIER_REG3,
      R => SYNC_STATUS_REG0
    );
FALSE_CARRIER_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004FFF00004444"
    )
    port map (
      I0 => n_0_FALSE_CARRIER_i_2,
      I1 => n_0_FALSE_CARRIER_i_3,
      I2 => K28p5_REG1,
      I3 => RXEVEN,
      I4 => SYNC_STATUS_REG0,
      I5 => FALSE_CARRIER,
      O => n_0_FALSE_CARRIER_i_1
    );
FALSE_CARRIER_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => FALSE_NIT,
      I1 => FALSE_DATA,
      I2 => FALSE_K,
      O => n_0_FALSE_CARRIER_i_2
    );
FALSE_CARRIER_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => K28p5_REG1,
      I1 => S,
      I2 => n_0_I_REG_reg,
      O => n_0_FALSE_CARRIER_i_3
    );
FALSE_CARRIER_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_FALSE_CARRIER_i_1,
      Q => FALSE_CARRIER,
      R => '0'
    );
FALSE_DATA_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
    port map (
      I0 => n_0_FALSE_DATA_i_2,
      I1 => Q(6),
      I2 => RXNOTINTABLE_INT,
      I3 => Q(5),
      I4 => Q(7),
      I5 => n_0_FALSE_DATA_i_3,
      O => FALSE_DATA0
    );
FALSE_DATA_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000040000C8"
    )
    port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(4),
      I3 => Q(0),
      I4 => Q(1),
      I5 => I2,
      O => n_0_FALSE_DATA_i_2
    );
FALSE_DATA_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1700000000000000"
    )
    port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(3),
      I3 => n_0_FALSE_DATA_i_4,
      I4 => Q(1),
      I5 => Q(0),
      O => n_0_FALSE_DATA_i_3
    );
FALSE_DATA_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => I2,
      I1 => RXNOTINTABLE_INT,
      I2 => Q(6),
      I3 => Q(7),
      I4 => Q(5),
      O => n_0_FALSE_DATA_i_4
    );
FALSE_DATA_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => FALSE_DATA0,
      Q => FALSE_DATA,
      R => I1
    );
FALSE_K_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900000000000000"
    )
    port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => RXNOTINTABLE_INT,
      I3 => Q(7),
      I4 => n_0_FALSE_K_i_2,
      I5 => n_0_FALSE_K_i_3,
      O => FALSE_K0
    );
FALSE_K_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => Q(1),
      I1 => Q(0),
      O => n_0_FALSE_K_i_2
    );
FALSE_K_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I2,
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(4),
      O => n_0_FALSE_K_i_3
    );
FALSE_K_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => FALSE_K0,
      Q => FALSE_K,
      R => I1
    );
FALSE_NIT_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF280028002800"
    )
    port map (
      I0 => n_0_FALSE_NIT_i_2,
      I1 => D_1,
      I2 => Q(7),
      I3 => RXNOTINTABLE_INT,
      I4 => n_0_FALSE_NIT_i_3,
      I5 => n_0_FALSE_NIT_i_4,
      O => FALSE_NIT0
    );
FALSE_NIT_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000088F0000000"
    )
    port map (
      I0 => n_0_FALSE_K_i_3,
      I1 => Q(5),
      I2 => n_0_D0p0_REG_i_2,
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(6),
      O => n_0_FALSE_NIT_i_2
    );
FALSE_NIT_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0000000008800"
    )
    port map (
      I0 => n_0_FALSE_K_i_3,
      I1 => Q(5),
      I2 => n_0_D0p0_REG_i_2,
      I3 => Q(6),
      I4 => Q(7),
      I5 => D_1,
      O => n_0_FALSE_NIT_i_3
    );
FALSE_NIT_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
    port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => RXNOTINTABLE_INT,
      O => n_0_FALSE_NIT_i_4
    );
FALSE_NIT_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => FALSE_NIT0,
      Q => FALSE_NIT,
      R => I1
    );
FROM_RX_CX_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFECFFECFFECA8A8"
    )
    port map (
      I0 => C_REG3,
      I1 => CGBAD,
      I2 => n_0_FROM_RX_CX_i_2,
      I3 => RXCHARISK_REG1,
      I4 => C_REG2,
      I5 => C_REG1,
      O => FROM_RX_CX0
    );
FROM_RX_CX_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => K28p5_REG1,
      I1 => RXEVEN,
      O => n_0_FROM_RX_CX_i_2
    );
FROM_RX_CX_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => FROM_RX_CX0,
      Q => FROM_RX_CX,
      R => SYNC_STATUS_REG0
    );
\IDLE_REG_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_I_REG_reg,
      Q => \n_0_IDLE_REG_reg[0]\,
      R => I1
    );
\IDLE_REG_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_IDLE_REG_reg[0]\,
      Q => p_0_in1_in,
      R => I1
    );
\IDLE_REG_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => p_0_in1_in,
      Q => \n_0_IDLE_REG_reg[2]\,
      R => I1
    );
ILLEGAL_K_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => ILLEGAL_K,
      Q => ILLEGAL_K_REG1,
      R => SYNC_STATUS_REG0
    );
ILLEGAL_K_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => ILLEGAL_K_REG1,
      Q => ILLEGAL_K_REG2,
      R => SYNC_STATUS_REG0
    );
ILLEGAL_K_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => R,
      I1 => T,
      I2 => K28p5_REG1,
      I3 => RXCHARISK_REG1,
      O => ILLEGAL_K0
    );
ILLEGAL_K_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => ILLEGAL_K0,
      Q => ILLEGAL_K,
      R => SYNC_STATUS_REG0
    );
I_REG_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => I,
      Q => n_0_I_REG_reg,
      R => '0'
    );
I_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3323222222222222"
    )
    port map (
      I0 => n_0_I_i_2,
      I1 => I350_in,
      I2 => I2,
      I3 => RXSYNC_STATUS,
      I4 => RXEVEN,
      I5 => K28p5_REG1,
      O => I0
    );
I_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080808000"
    )
    port map (
      I0 => n_0_I_REG_reg,
      I1 => RXEVEN,
      I2 => RXSYNC_STATUS,
      I3 => FALSE_K,
      I4 => FALSE_DATA,
      I5 => FALSE_NIT,
      O => n_0_I_i_2
    );
I_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F200000002000"
    )
    port map (
      I0 => n_0_D0p0_REG_i_2,
      I1 => Q(7),
      I2 => Q(6),
      I3 => Q(1),
      I4 => Q(0),
      I5 => n_0_I_i_4,
      O => I350_in
    );
I_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
    port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(7),
      I3 => Q(5),
      I4 => I2,
      I5 => Q(3),
      O => n_0_I_i_4
    );
I_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => I0,
      Q => I,
      R => '0'
    );
K28p5_REG1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
    port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(5),
      I3 => Q(7),
      I4 => Q(6),
      I5 => n_0_FALSE_K_i_3,
      O => K28p5
    );
K28p5_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => K28p5,
      Q => K28p5_REG1,
      R => '0'
    );
RECEIVE_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44044400"
    )
    port map (
      I0 => I1,
      I1 => RXSYNC_STATUS,
      I2 => EOP,
      I3 => SOP_REG2,
      I4 => n_0_RECEIVE_reg,
      O => n_0_RECEIVE_i_1
    );
RECEIVE_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_RECEIVE_i_1,
      Q => n_0_RECEIVE_reg,
      R => '0'
    );
RUDI_C_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => p_1_in,
      I1 => \n_0_RX_CONFIG_VALID_REG_reg[0]\,
      I2 => \n_0_RX_CONFIG_VALID_REG_reg[3]\,
      I3 => p_0_in2_in,
      O => RUDI_C0
    );
RUDI_C_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => RUDI_C0,
      Q => \^status_vector\(0),
      R => I1
    );
RUDI_I_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_IDLE_REG_reg[2]\,
      I1 => p_0_in1_in,
      O => RUDI_I0
    );
RUDI_I_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => RUDI_I0,
      Q => \^status_vector\(1),
      R => I1
    );
RXCHARISK_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => I2,
      Q => RXCHARISK_REG1,
      R => '0'
    );
\RXDATA_REG4_reg[0]_srl4\: unisim.vcomponents.SRL16E
    port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(0),
      Q => \n_0_RXDATA_REG4_reg[0]_srl4\
    );
\RXDATA_REG4_reg[1]_srl4\: unisim.vcomponents.SRL16E
    port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(1),
      Q => \n_0_RXDATA_REG4_reg[1]_srl4\
    );
\RXDATA_REG4_reg[2]_srl4\: unisim.vcomponents.SRL16E
    port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(2),
      Q => \n_0_RXDATA_REG4_reg[2]_srl4\
    );
\RXDATA_REG4_reg[3]_srl4\: unisim.vcomponents.SRL16E
    port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(3),
      Q => \n_0_RXDATA_REG4_reg[3]_srl4\
    );
\RXDATA_REG4_reg[4]_srl4\: unisim.vcomponents.SRL16E
    port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(4),
      Q => \n_0_RXDATA_REG4_reg[4]_srl4\
    );
\RXDATA_REG4_reg[5]_srl4\: unisim.vcomponents.SRL16E
    port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(5),
      Q => \n_0_RXDATA_REG4_reg[5]_srl4\
    );
\RXDATA_REG4_reg[6]_srl4\: unisim.vcomponents.SRL16E
    port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(6),
      Q => \n_0_RXDATA_REG4_reg[6]_srl4\
    );
\RXDATA_REG4_reg[7]_srl4\: unisim.vcomponents.SRL16E
    port map (
      A0 => '1',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => Q(7),
      Q => \n_0_RXDATA_REG4_reg[7]_srl4\
    );
\RXDATA_REG5_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RXDATA_REG4_reg[0]_srl4\,
      Q => RXDATA_REG5(0),
      R => '0'
    );
\RXDATA_REG5_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RXDATA_REG4_reg[1]_srl4\,
      Q => RXDATA_REG5(1),
      R => '0'
    );
\RXDATA_REG5_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RXDATA_REG4_reg[2]_srl4\,
      Q => RXDATA_REG5(2),
      R => '0'
    );
\RXDATA_REG5_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RXDATA_REG4_reg[3]_srl4\,
      Q => RXDATA_REG5(3),
      R => '0'
    );
\RXDATA_REG5_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RXDATA_REG4_reg[4]_srl4\,
      Q => RXDATA_REG5(4),
      R => '0'
    );
\RXDATA_REG5_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RXDATA_REG4_reg[5]_srl4\,
      Q => RXDATA_REG5(5),
      R => '0'
    );
\RXDATA_REG5_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RXDATA_REG4_reg[6]_srl4\,
      Q => RXDATA_REG5(6),
      R => '0'
    );
\RXDATA_REG5_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RXDATA_REG4_reg[7]_srl4\,
      Q => RXDATA_REG5(7),
      R => '0'
    );
\RXD[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFAE"
    )
    port map (
      I0 => SOP_REG3,
      I1 => EXTEND_REG1,
      I2 => FALSE_CARRIER_REG3,
      I3 => RXDATA_REG5(0),
      O => \n_0_RXD[0]_i_1\
    );
\RXD[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
    port map (
      I0 => FALSE_CARRIER_REG3,
      I1 => EXTEND_REG1,
      I2 => SOP_REG3,
      I3 => RXDATA_REG5(1),
      O => \n_0_RXD[1]_i_1\
    );
\RXD[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => SOP_REG3,
      I1 => FALSE_CARRIER_REG3,
      I2 => EXTEND_REG1,
      I3 => RXDATA_REG5(2),
      O => \n_0_RXD[2]_i_1\
    );
\RXD[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F0E"
    )
    port map (
      I0 => FALSE_CARRIER_REG3,
      I1 => EXTEND_REG1,
      I2 => SOP_REG3,
      I3 => RXDATA_REG5(3),
      O => \n_0_RXD[3]_i_1\
    );
\RXD[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFAEE"
    )
    port map (
      I0 => SOP_REG3,
      I1 => RXDATA_REG5(4),
      I2 => EXTEND_ERR,
      I3 => EXTEND_REG1,
      I4 => FALSE_CARRIER_REG3,
      O => \n_0_RXD[4]_i_1\
    );
\RXD[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => RXDATA_REG5(5),
      I1 => SOP_REG3,
      I2 => FALSE_CARRIER_REG3,
      I3 => EXTEND_REG1,
      O => \n_0_RXD[5]_i_1\
    );
\RXD[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      I0 => FALSE_CARRIER_REG3,
      I1 => EXTEND_REG1,
      I2 => RXDATA_REG5(6),
      I3 => SOP_REG3,
      O => \n_0_RXD[6]_i_1\
    );
\RXD[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => RXDATA_REG5(7),
      I1 => SOP_REG3,
      I2 => FALSE_CARRIER_REG3,
      I3 => EXTEND_REG1,
      O => \n_0_RXD[7]_i_1\
    );
\RXD_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RXD[0]_i_1\,
      Q => gmii_rxd(0),
      R => SR(0)
    );
\RXD_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RXD[1]_i_1\,
      Q => gmii_rxd(1),
      R => SR(0)
    );
\RXD_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RXD[2]_i_1\,
      Q => gmii_rxd(2),
      R => SR(0)
    );
\RXD_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RXD[3]_i_1\,
      Q => gmii_rxd(3),
      R => SR(0)
    );
\RXD_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RXD[4]_i_1\,
      Q => gmii_rxd(4),
      R => SR(0)
    );
\RXD_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RXD[5]_i_1\,
      Q => gmii_rxd(5),
      R => SR(0)
    );
\RXD_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RXD[6]_i_1\,
      Q => gmii_rxd(6),
      R => SR(0)
    );
\RXD_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RXD[7]_i_1\,
      Q => gmii_rxd(7),
      R => SR(0)
    );
RX_CONFIG_VALID_INT_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000E00"
    )
    port map (
      I0 => C_HDR_REMOVED_REG,
      I1 => C_REG1,
      I2 => I2,
      I3 => RXSYNC_STATUS,
      I4 => n_0_RX_CONFIG_VALID_INT_i_2,
      I5 => S2,
      O => RX_CONFIG_VALID_INT0
    );
RX_CONFIG_VALID_INT_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => CGBAD,
      I1 => RXCHARISK_REG1,
      O => n_0_RX_CONFIG_VALID_INT_i_2
    );
RX_CONFIG_VALID_INT_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => RX_CONFIG_VALID_INT0,
      Q => RX_CONFIG_VALID_INT,
      R => I1
    );
\RX_CONFIG_VALID_REG_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => RX_CONFIG_VALID_INT,
      Q => \n_0_RX_CONFIG_VALID_REG_reg[0]\,
      R => I1
    );
\RX_CONFIG_VALID_REG_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_RX_CONFIG_VALID_REG_reg[0]\,
      Q => p_0_in2_in,
      R => I1
    );
\RX_CONFIG_VALID_REG_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => p_0_in2_in,
      Q => p_1_in,
      R => I1
    );
\RX_CONFIG_VALID_REG_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => p_1_in,
      Q => \n_0_RX_CONFIG_VALID_REG_reg[3]\,
      R => I1
    );
RX_DATA_ERROR_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00BA00"
    )
    port map (
      I0 => n_0_RX_DATA_ERROR_i_2,
      I1 => T_REG1,
      I2 => R,
      I3 => n_0_RX_DATA_ERROR_i_3,
      I4 => T_REG2,
      I5 => K28p5_REG1,
      O => RX_DATA_ERROR0
    );
RX_DATA_ERROR_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => CGBAD_REG3,
      I1 => ILLEGAL_K_REG2,
      I2 => n_0_I_REG_reg,
      I3 => C_REG1,
      O => n_0_RX_DATA_ERROR_i_2
    );
RX_DATA_ERROR_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08FFFF00000000"
    )
    port map (
      I0 => T_REG2,
      I1 => n_0_FROM_RX_CX_i_2,
      I2 => R,
      I3 => n_0_RX_DATA_ERROR_i_2,
      I4 => R_REG1,
      I5 => n_0_RECEIVE_reg,
      O => n_0_RX_DATA_ERROR_i_3
    );
RX_DATA_ERROR_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => RX_DATA_ERROR0,
      Q => RX_DATA_ERROR,
      R => SYNC_STATUS_REG0
    );
RX_DV_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5333333350000000"
    )
    port map (
      I0 => I1,
      I1 => n_0_RX_DV_i_2,
      I2 => n_0_RX_DV_i_3,
      I3 => RXSYNC_STATUS,
      I4 => SOP_REG3,
      I5 => \^gmii_rx_dv\,
      O => n_0_RX_DV_i_1
    );
RX_DV_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEF"
    )
    port map (
      I0 => EOP_REG1,
      I1 => I1,
      I2 => RXSYNC_STATUS,
      I3 => n_0_RECEIVE_reg,
      O => n_0_RX_DV_i_2
    );
RX_DV_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => I3,
      I1 => SR(0),
      O => n_0_RX_DV_i_3
    );
RX_DV_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_RX_DV_i_1,
      Q => \^gmii_rx_dv\,
      R => '0'
    );
RX_ER_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E000E000F0000"
    )
    port map (
      I0 => n_0_RX_ER_i_2,
      I1 => RX_DATA_ERROR,
      I2 => I3,
      I3 => SR(0),
      I4 => n_0_RECEIVE_reg,
      I5 => RXSYNC_STATUS,
      O => RX_ER0
    );
RX_ER_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => FALSE_CARRIER_REG3,
      I1 => EXTEND_REG1,
      O => n_0_RX_ER_i_2
    );
RX_ER_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => RX_ER0,
      Q => gmii_rx_er,
      R => I1
    );
RX_INVALID_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B000A0"
    )
    port map (
      I0 => FROM_RX_CX,
      I1 => K28p5_REG1,
      I2 => RXSYNC_STATUS,
      I3 => I1,
      I4 => \^status_vector\(2),
      O => n_0_RX_INVALID_i_1
    );
RX_INVALID_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_RX_INVALID_i_1,
      Q => \^status_vector\(2),
      R => '0'
    );
R_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => R,
      Q => R_REG1,
      R => '0'
    );
R_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
    port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => n_0_R_i_2,
      I3 => Q(3),
      I4 => Q(6),
      I5 => I2,
      O => K23p7
    );
R_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Q(5),
      I1 => Q(7),
      I2 => Q(2),
      I3 => Q(4),
      O => n_0_R_i_2
    );
R_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => K23p7,
      Q => R,
      R => '0'
    );
SOP_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => SOP,
      Q => SOP_REG1,
      R => '0'
    );
SOP_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => SOP_REG1,
      Q => SOP_REG2,
      R => '0'
    );
SOP_REG3_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => SOP_REG2,
      Q => SOP_REG3,
      R => '0'
    );
SOP_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
    port map (
      I0 => WAIT_FOR_K,
      I1 => S,
      I2 => RXSYNC_STATUS,
      I3 => n_0_I_REG_reg,
      I4 => n_0_EXTEND_reg,
      O => SOP0
    );
SOP_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => SOP0,
      Q => SOP,
      R => I1
    );
SYNC_STATUS_REG_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => '1',
      Q => SYNC_STATUS_REG,
      R => SYNC_STATUS_REG0
    );
\S_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
    port map (
      I0 => I2,
      I1 => Q(3),
      I2 => n_0_S_i_2,
      I3 => Q(5),
      I4 => Q(7),
      I5 => S2,
      O => S0
    );
S_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
    port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(6),
      I3 => Q(2),
      I4 => Q(4),
      O => n_0_S_i_2
    );
S_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => S0,
      Q => S,
      R => '0'
    );
T_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => T,
      Q => T_REG1,
      R => '0'
    );
T_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => T_REG1,
      Q => T_REG2,
      R => '0'
    );
T_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
    port map (
      I0 => Q(7),
      I1 => Q(5),
      I2 => Q(1),
      I3 => Q(6),
      I4 => Q(0),
      I5 => n_0_FALSE_K_i_3,
      O => K29p7
    );
T_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => K29p7,
      Q => T,
      R => '0'
    );
WAIT_FOR_K_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07000F0000000F00"
    )
    port map (
      I0 => K28p5_REG1,
      I1 => RXEVEN,
      I2 => I1,
      I3 => RXSYNC_STATUS,
      I4 => SYNC_STATUS_REG,
      I5 => WAIT_FOR_K,
      O => n_0_WAIT_FOR_K_i_1
    );
WAIT_FOR_K_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_WAIT_FOR_K_i_1,
      Q => WAIT_FOR_K,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_eth_pcs_pma_basex_v15_1_SYNCHRONISE is
  port (
    RXEVEN : out STD_LOGIC;
    RXSYNC_STATUS : out STD_LOGIC;
    encommaalign : out STD_LOGIC;
    SYNC_STATUS_REG0 : out STD_LOGIC;
    STATUS_VECTOR_0_PRE0 : out STD_LOGIC;
    SIGNAL_DETECT_MOD : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    LOOPBACK_INT : in STD_LOGIC;
    D_1 : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    RXNOTINTABLE_INT : in STD_LOGIC;
    resetdone : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_eth_pcs_pma_basex_v15_1_SYNCHRONISE : entity is "SYNCHRONISE";
end gig_eth_pcs_pma_basex_v15_1_SYNCHRONISE;

architecture STRUCTURE of gig_eth_pcs_pma_basex_v15_1_SYNCHRONISE is
  signal CGBAD : STD_LOGIC;
  signal GOOD_CGS : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rxeven\ : STD_LOGIC;
  signal \^rxsync_status\ : STD_LOGIC;
  signal SIGNAL_DETECT_REG : STD_LOGIC;
  signal STATE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal SYNC_STATUS0 : STD_LOGIC;
  signal \^encommaalign\ : STD_LOGIC;
  signal n_0_ENCOMMAALIGN_i_1 : STD_LOGIC;
  signal n_0_EVEN_i_1 : STD_LOGIC;
  signal \n_0_FSM_sequential_STATE[0]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_STATE[0]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_sequential_STATE[1]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_STATE[1]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_sequential_STATE[2]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_STATE[2]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_sequential_STATE[3]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_STATE[3]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_STATE[3]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_sequential_STATE_reg[0]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_STATE_reg[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_STATE_reg[2]_i_1\ : STD_LOGIC;
  signal \n_0_GOOD_CGS[0]_i_1\ : STD_LOGIC;
  signal \n_0_GOOD_CGS[1]_i_1\ : STD_LOGIC;
  signal \n_0_GOOD_CGS[1]_i_2\ : STD_LOGIC;
  signal n_0_SYNC_STATUS_i_1 : STD_LOGIC;
  signal n_0_SYNC_STATUS_i_2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ENCOMMAALIGN_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of EVEN_i_1 : label is "soft_lutpair12";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_STATE_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_STATE_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_STATE_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_STATE_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM of \GOOD_CGS[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \GOOD_CGS[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of SYNC_STATUS_REG_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of SYNC_STATUS_i_1 : label is "soft_lutpair11";
begin
  RXEVEN <= \^rxeven\;
  RXSYNC_STATUS <= \^rxsync_status\;
  encommaalign <= \^encommaalign\;
ENCOMMAALIGN_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => \^encommaalign\,
      I1 => n_0_SYNC_STATUS_i_2,
      I2 => SYNC_STATUS0,
      O => n_0_ENCOMMAALIGN_i_1
    );
ENCOMMAALIGN_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_ENCOMMAALIGN_i_1,
      Q => \^encommaalign\,
      R => '0'
    );
EVEN_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
    port map (
      I0 => \^rxsync_status\,
      I1 => I2,
      I2 => \^rxeven\,
      O => n_0_EVEN_i_1
    );
EVEN_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_EVEN_i_1,
      Q => \^rxeven\,
      R => I1
    );
\FSM_sequential_STATE[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"61156000"
    )
    port map (
      I0 => STATE(0),
      I1 => CGBAD,
      I2 => STATE(1),
      I3 => STATE(2),
      I4 => I2,
      O => \n_0_FSM_sequential_STATE[0]_i_2\
    );
\FSM_sequential_STATE[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F000DF"
    )
    port map (
      I0 => GOOD_CGS(1),
      I1 => GOOD_CGS(0),
      I2 => STATE(0),
      I3 => STATE(2),
      I4 => STATE(1),
      I5 => CGBAD,
      O => \n_0_FSM_sequential_STATE[0]_i_3\
    );
\FSM_sequential_STATE[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30330044"
    )
    port map (
      I0 => I3,
      I1 => STATE(0),
      I2 => STATE(2),
      I3 => CGBAD,
      I4 => STATE(1),
      O => \n_0_FSM_sequential_STATE[1]_i_2\
    );
\FSM_sequential_STATE[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF0004FF"
    )
    port map (
      I0 => CGBAD,
      I1 => GOOD_CGS(1),
      I2 => GOOD_CGS(0),
      I3 => STATE(0),
      I4 => STATE(1),
      I5 => STATE(2),
      O => \n_0_FSM_sequential_STATE[1]_i_3\
    );
\FSM_sequential_STATE[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30370040"
    )
    port map (
      I0 => I3,
      I1 => STATE(0),
      I2 => STATE(1),
      I3 => CGBAD,
      I4 => STATE(2),
      O => \n_0_FSM_sequential_STATE[2]_i_2\
    );
\FSM_sequential_STATE[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000140E1414"
    )
    port map (
      I0 => STATE(0),
      I1 => STATE(1),
      I2 => STATE(2),
      I3 => GOOD_CGS(0),
      I4 => GOOD_CGS(1),
      I5 => CGBAD,
      O => \n_0_FSM_sequential_STATE[2]_i_3\
    );
\FSM_sequential_STATE[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => LOOPBACK_INT,
      I1 => SIGNAL_DETECT_REG,
      I2 => I1,
      O => \n_0_FSM_sequential_STATE[3]_i_1\
    );
\FSM_sequential_STATE[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE000E0003030F0"
    )
    port map (
      I0 => \n_0_FSM_sequential_STATE[3]_i_3\,
      I1 => CGBAD,
      I2 => STATE(3),
      I3 => STATE(2),
      I4 => STATE(1),
      I5 => STATE(0),
      O => \n_0_FSM_sequential_STATE[3]_i_2\
    );
\FSM_sequential_STATE[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => GOOD_CGS(0),
      I1 => GOOD_CGS(1),
      O => \n_0_FSM_sequential_STATE[3]_i_3\
    );
\FSM_sequential_STATE[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
    port map (
      I0 => \^rxeven\,
      I1 => I2,
      I2 => D_1,
      I3 => p_0_in,
      I4 => RXNOTINTABLE_INT,
      O => CGBAD
    );
\FSM_sequential_STATE_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_FSM_sequential_STATE_reg[0]_i_1\,
      Q => STATE(0),
      R => \n_0_FSM_sequential_STATE[3]_i_1\
    );
\FSM_sequential_STATE_reg[0]_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_FSM_sequential_STATE[0]_i_2\,
      I1 => \n_0_FSM_sequential_STATE[0]_i_3\,
      O => \n_0_FSM_sequential_STATE_reg[0]_i_1\,
      S => STATE(3)
    );
\FSM_sequential_STATE_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_FSM_sequential_STATE_reg[1]_i_1\,
      Q => STATE(1),
      R => \n_0_FSM_sequential_STATE[3]_i_1\
    );
\FSM_sequential_STATE_reg[1]_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_FSM_sequential_STATE[1]_i_2\,
      I1 => \n_0_FSM_sequential_STATE[1]_i_3\,
      O => \n_0_FSM_sequential_STATE_reg[1]_i_1\,
      S => STATE(3)
    );
\FSM_sequential_STATE_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_FSM_sequential_STATE_reg[2]_i_1\,
      Q => STATE(2),
      R => \n_0_FSM_sequential_STATE[3]_i_1\
    );
\FSM_sequential_STATE_reg[2]_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_FSM_sequential_STATE[2]_i_2\,
      I1 => \n_0_FSM_sequential_STATE[2]_i_3\,
      O => \n_0_FSM_sequential_STATE_reg[2]_i_1\,
      S => STATE(3)
    );
\FSM_sequential_STATE_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_FSM_sequential_STATE[3]_i_2\,
      Q => STATE(3),
      R => \n_0_FSM_sequential_STATE[3]_i_1\
    );
\GOOD_CGS[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
    port map (
      I0 => GOOD_CGS(0),
      I1 => CGBAD,
      I2 => \n_0_GOOD_CGS[1]_i_2\,
      O => \n_0_GOOD_CGS[0]_i_1\
    );
\GOOD_CGS[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"009A"
    )
    port map (
      I0 => GOOD_CGS(1),
      I1 => CGBAD,
      I2 => GOOD_CGS(0),
      I3 => \n_0_GOOD_CGS[1]_i_2\,
      O => \n_0_GOOD_CGS[1]_i_1\
    );
\GOOD_CGS[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABBEAAA"
    )
    port map (
      I0 => I1,
      I1 => STATE(0),
      I2 => STATE(1),
      I3 => STATE(2),
      I4 => STATE(3),
      O => \n_0_GOOD_CGS[1]_i_2\
    );
\GOOD_CGS_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_GOOD_CGS[0]_i_1\,
      Q => GOOD_CGS(0),
      R => '0'
    );
\GOOD_CGS_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_GOOD_CGS[1]_i_1\,
      Q => GOOD_CGS(1),
      R => '0'
    );
SIGNAL_DETECT_REG_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => SIGNAL_DETECT_MOD,
      Q => SIGNAL_DETECT_REG,
      R => '0'
    );
STATUS_VECTOR_0_PRE_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^rxsync_status\,
      I1 => resetdone,
      O => STATUS_VECTOR_0_PRE0
    );
SYNC_STATUS_REG_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => I1,
      I1 => \^rxsync_status\,
      O => SYNC_STATUS_REG0
    );
SYNC_STATUS_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => \^rxsync_status\,
      I1 => n_0_SYNC_STATUS_i_2,
      I2 => SYNC_STATUS0,
      O => n_0_SYNC_STATUS_i_1
    );
SYNC_STATUS_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14010001"
    )
    port map (
      I0 => STATE(0),
      I1 => STATE(1),
      I2 => STATE(2),
      I3 => STATE(3),
      I4 => CGBAD,
      O => n_0_SYNC_STATUS_i_2
    );
SYNC_STATUS_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
    port map (
      I0 => I3,
      I1 => STATE(0),
      I2 => STATE(2),
      I3 => STATE(1),
      I4 => STATE(3),
      I5 => CGBAD,
      O => SYNC_STATUS0
    );
SYNC_STATUS_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_SYNC_STATUS_i_1,
      Q => \^rxsync_status\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_TX__parameterized0\ is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O11 : out STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    gmii_tx_en : in STD_LOGIC;
    I1 : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    LOOPBACK_INT : in STD_LOGIC;
    rxcharisk : in STD_LOGIC;
    rxchariscomma : in STD_LOGIC;
    I2 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_TX__parameterized0\ : entity is "TX";
end \gig_eth_pcs_pma_basex_v15_1_TX__parameterized0\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_TX__parameterized0\ is
  signal CODE_GRPISK : STD_LOGIC;
  signal DISP3 : STD_LOGIC;
  signal DISP5 : STD_LOGIC;
  signal DISPARITY : STD_LOGIC;
  signal K28p5 : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0 : STD_LOGIC;
  signal T : STD_LOGIC;
  signal T0 : STD_LOGIC;
  signal TRIGGER_S : STD_LOGIC;
  signal TRIGGER_S0 : STD_LOGIC;
  signal TRIGGER_T : STD_LOGIC;
  signal TXCHARDISPMODE_INT : STD_LOGIC;
  signal TXCHARDISPVAL : STD_LOGIC;
  signal TXCHARISK_INT : STD_LOGIC;
  signal TXDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TXD_REG1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TX_EN_REG1 : STD_LOGIC;
  signal TX_ER_REG1 : STD_LOGIC;
  signal TX_EVEN : STD_LOGIC;
  signal XMIT_CONFIG_INT : STD_LOGIC;
  signal XMIT_DATA_INT : STD_LOGIC;
  signal n_0_C1_OR_C2_i_1 : STD_LOGIC;
  signal n_0_C1_OR_C2_reg : STD_LOGIC;
  signal n_0_CODE_GRPISK_i_1 : STD_LOGIC;
  signal \n_0_CODE_GRP[0]_i_1\ : STD_LOGIC;
  signal \n_0_CODE_GRP[0]_i_2\ : STD_LOGIC;
  signal \n_0_CODE_GRP[1]_i_1\ : STD_LOGIC;
  signal \n_0_CODE_GRP[1]_i_2\ : STD_LOGIC;
  signal \n_0_CODE_GRP[2]_i_1\ : STD_LOGIC;
  signal \n_0_CODE_GRP[2]_i_2\ : STD_LOGIC;
  signal \n_0_CODE_GRP[3]_i_1\ : STD_LOGIC;
  signal \n_0_CODE_GRP[3]_i_2\ : STD_LOGIC;
  signal \n_0_CODE_GRP[3]_i_3\ : STD_LOGIC;
  signal \n_0_CODE_GRP[3]_i_4\ : STD_LOGIC;
  signal \n_0_CODE_GRP[4]_i_1\ : STD_LOGIC;
  signal \n_0_CODE_GRP[5]_i_1\ : STD_LOGIC;
  signal \n_0_CODE_GRP[6]_i_1\ : STD_LOGIC;
  signal \n_0_CODE_GRP[7]_i_1\ : STD_LOGIC;
  signal \n_0_CODE_GRP[7]_i_2\ : STD_LOGIC;
  signal \n_0_CODE_GRP_CNT_reg[1]\ : STD_LOGIC;
  signal \n_0_CODE_GRP_reg[0]\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA[0]_i_1\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA[2]_i_1\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA[6]_i_1\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA_reg[0]\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA_reg[2]\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA_reg[3]\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA_reg[6]\ : STD_LOGIC;
  signal n_0_INSERT_IDLE_i_1 : STD_LOGIC;
  signal n_0_INSERT_IDLE_reg : STD_LOGIC;
  signal n_0_K28p5_i_1 : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXCHARISK_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXDATA[0]_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXDATA[1]_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXDATA[2]_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXDATA[3]_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXDATA[4]_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXDATA[5]_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXDATA[6]_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXDATA[7]_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DISP.DISPARITY_i_1\ : STD_LOGIC;
  signal \n_0_R_i_1__0\ : STD_LOGIC;
  signal n_0_R_reg : STD_LOGIC;
  signal n_0_SYNC_DISPARITY_i_1 : STD_LOGIC;
  signal n_0_SYNC_DISPARITY_reg : STD_LOGIC;
  signal n_0_TX_PACKET_i_1 : STD_LOGIC;
  signal n_0_TX_PACKET_reg : STD_LOGIC;
  signal n_0_V_i_1 : STD_LOGIC;
  signal n_0_V_i_2 : STD_LOGIC;
  signal n_0_V_i_3 : STD_LOGIC;
  signal n_0_V_i_4 : STD_LOGIC;
  signal n_0_V_i_5 : STD_LOGIC;
  signal n_0_V_reg : STD_LOGIC;
  signal n_0_XMIT_CONFIG_INT_i_1 : STD_LOGIC;
  signal n_0_XMIT_DATA_INT_i_1 : STD_LOGIC;
  signal n_0_XMIT_DATA_INT_reg : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in18_in : STD_LOGIC;
  signal p_0_in37_in : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_12_out : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal p_1_in36_in : STD_LOGIC;
  signal p_35_in : STD_LOGIC;
  signal p_49_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of C1_OR_C2_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \CODE_GRP[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \CODE_GRP[3]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \CODE_GRP[3]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \CODE_GRP[7]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \CODE_GRP_CNT[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \CODE_GRP_CNT[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \CONFIG_DATA[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \CONFIG_DATA[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \CONFIG_DATA[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \CONFIG_DATA[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of INSERT_IDLE_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of K28p5_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \NO_QSGMII_CHAR.TXCHARDISPMODE_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \NO_QSGMII_CHAR.TXCHARDISPVAL_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \NO_QSGMII_DATA.TXCHARISK_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \NO_QSGMII_DATA.TXDATA[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \NO_QSGMII_DATA.TXDATA[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \NO_QSGMII_DATA.TXDATA[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of TRIGGER_S_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of TRIGGER_T_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXDATA_INT[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXDATA_INT[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXDATA_INT[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXDATA_INT[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXDATA_INT[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXDATA_INT[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXDATA_INT[6]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXDATA_INT[7]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXCHARDISPMODE_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXCHARDISPVAL_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXCHARISK_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[7]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[7]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of V_i_3 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of XMIT_CONFIG_INT_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of XMIT_DATA_INT_i_1 : label is "soft_lutpair25";
begin
C1_OR_C2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F80"
    )
    port map (
      I0 => XMIT_CONFIG_INT,
      I1 => TX_EVEN,
      I2 => \n_0_CODE_GRP_CNT_reg[1]\,
      I3 => n_0_C1_OR_C2_reg,
      O => n_0_C1_OR_C2_i_1
    );
C1_OR_C2_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_C1_OR_C2_i_1,
      Q => n_0_C1_OR_C2_reg,
      R => I1
    );
CODE_GRPISK_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030FFFF3030FF55"
    )
    port map (
      I0 => n_0_TX_PACKET_reg,
      I1 => \n_0_CODE_GRP_CNT_reg[1]\,
      I2 => TX_EVEN,
      I3 => \n_0_CODE_GRP[7]_i_2\,
      I4 => XMIT_CONFIG_INT,
      I5 => SR(0),
      O => n_0_CODE_GRPISK_i_1
    );
CODE_GRPISK_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_CODE_GRPISK_i_1,
      Q => CODE_GRPISK,
      R => '0'
    );
\CODE_GRP[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFAABAA"
    )
    port map (
      I0 => \n_0_CODE_GRP[0]_i_2\,
      I1 => SR(0),
      I2 => XMIT_CONFIG_INT,
      I3 => S,
      I4 => \n_0_CONFIG_DATA_reg[0]\,
      O => \n_0_CODE_GRP[0]_i_1\
    );
\CODE_GRP[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFF8"
    )
    port map (
      I0 => n_0_TX_PACKET_reg,
      I1 => TXD_REG1(0),
      I2 => n_0_R_reg,
      I3 => T,
      I4 => \n_0_CODE_GRP[3]_i_4\,
      I5 => n_0_V_reg,
      O => \n_0_CODE_GRP[0]_i_2\
    );
\CODE_GRP[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAABAAAAAAABA"
    )
    port map (
      I0 => \n_0_CODE_GRP[1]_i_2\,
      I1 => T,
      I2 => n_0_R_reg,
      I3 => SR(0),
      I4 => XMIT_CONFIG_INT,
      I5 => \n_0_CONFIG_DATA_reg[6]\,
      O => \n_0_CODE_GRP[1]_i_1\
    );
\CODE_GRP[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0E0E0F0E0E0E"
    )
    port map (
      I0 => S,
      I1 => n_0_V_reg,
      I2 => \n_0_CODE_GRP[3]_i_4\,
      I3 => n_0_TX_PACKET_reg,
      I4 => TXD_REG1(1),
      I5 => T,
      O => \n_0_CODE_GRP[1]_i_2\
    );
\CODE_GRP[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BB0000"
    )
    port map (
      I0 => \n_0_CONFIG_DATA_reg[2]\,
      I1 => XMIT_CONFIG_INT,
      I2 => SR(0),
      I3 => S,
      I4 => \n_0_CODE_GRP[2]_i_2\,
      O => \n_0_CODE_GRP[2]_i_1\
    );
\CODE_GRP[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
    port map (
      I0 => \n_0_CODE_GRP[3]_i_4\,
      I1 => n_0_TX_PACKET_reg,
      I2 => TXD_REG1(2),
      I3 => n_0_R_reg,
      I4 => T,
      I5 => n_0_V_reg,
      O => \n_0_CODE_GRP[2]_i_2\
    );
\CODE_GRP[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA20AA22"
    )
    port map (
      I0 => \n_0_CODE_GRP[3]_i_2\,
      I1 => n_0_R_reg,
      I2 => TXD_REG1(3),
      I3 => \n_0_CODE_GRP[3]_i_3\,
      I4 => n_0_TX_PACKET_reg,
      I5 => \n_0_CODE_GRP[3]_i_4\,
      O => \n_0_CODE_GRP[3]_i_1\
    );
\CODE_GRP[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \n_0_CONFIG_DATA_reg[3]\,
      I1 => XMIT_CONFIG_INT,
      O => \n_0_CODE_GRP[3]_i_2\
    );
\CODE_GRP[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => S,
      I1 => T,
      I2 => n_0_V_reg,
      O => \n_0_CODE_GRP[3]_i_3\
    );
\CODE_GRP[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => XMIT_CONFIG_INT,
      I1 => SR(0),
      O => \n_0_CODE_GRP[3]_i_4\
    );
\CODE_GRP[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFCFCFCFCFCACF"
    )
    port map (
      I0 => TXD_REG1(4),
      I1 => \n_0_CONFIG_DATA_reg[2]\,
      I2 => XMIT_CONFIG_INT,
      I3 => n_0_TX_PACKET_reg,
      I4 => SR(0),
      I5 => \n_0_CODE_GRP[7]_i_2\,
      O => \n_0_CODE_GRP[4]_i_1\
    );
\CODE_GRP[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFCFCFCFCFCACF"
    )
    port map (
      I0 => TXD_REG1(5),
      I1 => \n_0_CONFIG_DATA_reg[2]\,
      I2 => XMIT_CONFIG_INT,
      I3 => n_0_TX_PACKET_reg,
      I4 => SR(0),
      I5 => \n_0_CODE_GRP[7]_i_2\,
      O => \n_0_CODE_GRP[5]_i_1\
    );
\CODE_GRP[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF322200003222"
    )
    port map (
      I0 => \n_0_CODE_GRP[7]_i_2\,
      I1 => SR(0),
      I2 => TXD_REG1(6),
      I3 => n_0_TX_PACKET_reg,
      I4 => XMIT_CONFIG_INT,
      I5 => \n_0_CONFIG_DATA_reg[6]\,
      O => \n_0_CODE_GRP[6]_i_1\
    );
\CODE_GRP[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCFCFCFCFCFCACF"
    )
    port map (
      I0 => TXD_REG1(7),
      I1 => \n_0_CONFIG_DATA_reg[2]\,
      I2 => XMIT_CONFIG_INT,
      I3 => n_0_TX_PACKET_reg,
      I4 => SR(0),
      I5 => \n_0_CODE_GRP[7]_i_2\,
      O => \n_0_CODE_GRP[7]_i_1\
    );
\CODE_GRP[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => n_0_V_reg,
      I1 => T,
      I2 => S,
      I3 => n_0_R_reg,
      O => \n_0_CODE_GRP[7]_i_2\
    );
\CODE_GRP_CNT[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => TX_EVEN,
      O => plusOp(0)
    );
\CODE_GRP_CNT[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \n_0_CODE_GRP_CNT_reg[1]\,
      I1 => TX_EVEN,
      O => plusOp(1)
    );
\CODE_GRP_CNT_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => userclk2,
      CE => '1',
      D => plusOp(0),
      Q => TX_EVEN,
      S => I1
    );
\CODE_GRP_CNT_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => userclk2,
      CE => '1',
      D => plusOp(1),
      Q => \n_0_CODE_GRP_CNT_reg[1]\,
      S => I1
    );
\CODE_GRP_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_CODE_GRP[0]_i_1\,
      Q => \n_0_CODE_GRP_reg[0]\,
      R => '0'
    );
\CODE_GRP_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_CODE_GRP[1]_i_1\,
      Q => p_1_in,
      R => '0'
    );
\CODE_GRP_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_CODE_GRP[2]_i_1\,
      Q => p_0_in18_in,
      R => '0'
    );
\CODE_GRP_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_CODE_GRP[3]_i_1\,
      Q => p_0_in,
      R => '0'
    );
\CODE_GRP_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_CODE_GRP[4]_i_1\,
      Q => p_1_in1_in,
      R => '0'
    );
\CODE_GRP_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_CODE_GRP[5]_i_1\,
      Q => p_1_in36_in,
      R => '0'
    );
\CODE_GRP_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_CODE_GRP[6]_i_1\,
      Q => p_35_in,
      R => '0'
    );
\CODE_GRP_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_CODE_GRP[7]_i_1\,
      Q => p_0_in37_in,
      R => '0'
    );
\CONFIG_DATA[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => \n_0_CODE_GRP_CNT_reg[1]\,
      I1 => TX_EVEN,
      I2 => n_0_C1_OR_C2_reg,
      O => \n_0_CONFIG_DATA[0]_i_1\
    );
\CONFIG_DATA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
    port map (
      I0 => TX_EVEN,
      I1 => n_0_C1_OR_C2_reg,
      I2 => \n_0_CODE_GRP_CNT_reg[1]\,
      O => \n_0_CONFIG_DATA[2]_i_1\
    );
\CONFIG_DATA[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => TX_EVEN,
      I1 => \n_0_CODE_GRP_CNT_reg[1]\,
      O => XMIT_DATA_INT
    );
\CONFIG_DATA[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => \n_0_CODE_GRP_CNT_reg[1]\,
      I1 => TX_EVEN,
      I2 => n_0_C1_OR_C2_reg,
      O => \n_0_CONFIG_DATA[6]_i_1\
    );
\CONFIG_DATA_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_CONFIG_DATA[0]_i_1\,
      Q => \n_0_CONFIG_DATA_reg[0]\,
      R => I1
    );
\CONFIG_DATA_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_CONFIG_DATA[2]_i_1\,
      Q => \n_0_CONFIG_DATA_reg[2]\,
      R => I1
    );
\CONFIG_DATA_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => XMIT_DATA_INT,
      Q => \n_0_CONFIG_DATA_reg[3]\,
      R => I1
    );
\CONFIG_DATA_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_CONFIG_DATA[6]_i_1\,
      Q => \n_0_CONFIG_DATA_reg[6]\,
      R => I1
    );
INSERT_IDLE_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AB"
    )
    port map (
      I0 => SR(0),
      I1 => \n_0_CODE_GRP[7]_i_2\,
      I2 => n_0_TX_PACKET_reg,
      I3 => XMIT_CONFIG_INT,
      O => n_0_INSERT_IDLE_i_1
    );
INSERT_IDLE_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_INSERT_IDLE_i_1,
      Q => n_0_INSERT_IDLE_reg,
      R => '0'
    );
K28p5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XMIT_CONFIG_INT,
      I1 => \n_0_CONFIG_DATA_reg[3]\,
      O => n_0_K28p5_i_1
    );
K28p5_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_K28p5_i_1,
      Q => K28p5,
      R => '0'
    );
\NO_QSGMII_CHAR.TXCHARDISPMODE_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => n_0_SYNC_DISPARITY_reg,
      I1 => TX_EVEN,
      O => p_12_out
    );
\NO_QSGMII_CHAR.TXCHARDISPMODE_reg\: unisim.vcomponents.FDSE
    port map (
      C => userclk2,
      CE => '1',
      D => p_12_out,
      Q => TXCHARDISPMODE_INT,
      S => I1
    );
\NO_QSGMII_CHAR.TXCHARDISPVAL_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => TX_EVEN,
      I1 => n_0_SYNC_DISPARITY_reg,
      I2 => DISPARITY,
      O => p_10_out
    );
\NO_QSGMII_CHAR.TXCHARDISPVAL_reg\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => p_10_out,
      Q => TXCHARDISPVAL,
      R => I1
    );
\NO_QSGMII_DATA.TXCHARISK_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => CODE_GRPISK,
      I1 => I1,
      I2 => TX_EVEN,
      I3 => n_0_INSERT_IDLE_reg,
      O => \n_0_NO_QSGMII_DATA.TXCHARISK_i_1\
    );
\NO_QSGMII_DATA.TXCHARISK_reg\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_NO_QSGMII_DATA.TXCHARISK_i_1\,
      Q => TXCHARISK_INT,
      R => '0'
    );
\NO_QSGMII_DATA.TXDATA[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BF0080"
    )
    port map (
      I0 => DISPARITY,
      I1 => n_0_INSERT_IDLE_reg,
      I2 => TX_EVEN,
      I3 => I1,
      I4 => \n_0_CODE_GRP_reg[0]\,
      O => \n_0_NO_QSGMII_DATA.TXDATA[0]_i_1\
    );
\NO_QSGMII_DATA.TXDATA[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => p_1_in,
      I1 => I1,
      I2 => TX_EVEN,
      I3 => n_0_INSERT_IDLE_reg,
      O => \n_0_NO_QSGMII_DATA.TXDATA[1]_i_1\
    );
\NO_QSGMII_DATA.TXDATA[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BF0080"
    )
    port map (
      I0 => DISPARITY,
      I1 => n_0_INSERT_IDLE_reg,
      I2 => TX_EVEN,
      I3 => I1,
      I4 => p_0_in18_in,
      O => \n_0_NO_QSGMII_DATA.TXDATA[2]_i_1\
    );
\NO_QSGMII_DATA.TXDATA[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => p_0_in,
      I1 => I1,
      I2 => TX_EVEN,
      I3 => n_0_INSERT_IDLE_reg,
      O => \n_0_NO_QSGMII_DATA.TXDATA[3]_i_1\
    );
\NO_QSGMII_DATA.TXDATA[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0040"
    )
    port map (
      I0 => DISPARITY,
      I1 => n_0_INSERT_IDLE_reg,
      I2 => TX_EVEN,
      I3 => I1,
      I4 => p_1_in1_in,
      O => \n_0_NO_QSGMII_DATA.TXDATA[4]_i_1\
    );
\NO_QSGMII_DATA.TXDATA[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => p_1_in36_in,
      I1 => I1,
      I2 => TX_EVEN,
      I3 => n_0_INSERT_IDLE_reg,
      O => \n_0_NO_QSGMII_DATA.TXDATA[5]_i_1\
    );
\NO_QSGMII_DATA.TXDATA[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => p_35_in,
      I1 => I1,
      I2 => TX_EVEN,
      I3 => n_0_INSERT_IDLE_reg,
      O => \n_0_NO_QSGMII_DATA.TXDATA[6]_i_1\
    );
\NO_QSGMII_DATA.TXDATA[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BF0080"
    )
    port map (
      I0 => DISPARITY,
      I1 => n_0_INSERT_IDLE_reg,
      I2 => TX_EVEN,
      I3 => I1,
      I4 => p_0_in37_in,
      O => \n_0_NO_QSGMII_DATA.TXDATA[7]_i_1\
    );
\NO_QSGMII_DATA.TXDATA_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_NO_QSGMII_DATA.TXDATA[0]_i_1\,
      Q => TXDATA(0),
      R => '0'
    );
\NO_QSGMII_DATA.TXDATA_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_NO_QSGMII_DATA.TXDATA[1]_i_1\,
      Q => TXDATA(1),
      R => '0'
    );
\NO_QSGMII_DATA.TXDATA_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_NO_QSGMII_DATA.TXDATA[2]_i_1\,
      Q => TXDATA(2),
      R => '0'
    );
\NO_QSGMII_DATA.TXDATA_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_NO_QSGMII_DATA.TXDATA[3]_i_1\,
      Q => TXDATA(3),
      R => '0'
    );
\NO_QSGMII_DATA.TXDATA_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_NO_QSGMII_DATA.TXDATA[4]_i_1\,
      Q => TXDATA(4),
      R => '0'
    );
\NO_QSGMII_DATA.TXDATA_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_NO_QSGMII_DATA.TXDATA[5]_i_1\,
      Q => TXDATA(5),
      R => '0'
    );
\NO_QSGMII_DATA.TXDATA_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_NO_QSGMII_DATA.TXDATA[6]_i_1\,
      Q => TXDATA(6),
      R => '0'
    );
\NO_QSGMII_DATA.TXDATA_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_NO_QSGMII_DATA.TXDATA[7]_i_1\,
      Q => TXDATA(7),
      R => '0'
    );
\NO_QSGMII_DISP.DISPARITY_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000009990FFF0666"
    )
    port map (
      I0 => DISP3,
      I1 => DISP5,
      I2 => TX_EVEN,
      I3 => n_0_INSERT_IDLE_reg,
      I4 => K28p5,
      I5 => DISPARITY,
      O => \n_0_NO_QSGMII_DISP.DISPARITY_i_1\
    );
\NO_QSGMII_DISP.DISPARITY_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"83"
    )
    port map (
      I0 => p_0_in37_in,
      I1 => p_35_in,
      I2 => p_1_in36_in,
      O => DISP3
    );
\NO_QSGMII_DISP.DISPARITY_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E881811F"
    )
    port map (
      I0 => p_1_in1_in,
      I1 => p_0_in,
      I2 => \n_0_CODE_GRP_reg[0]\,
      I3 => p_1_in,
      I4 => p_0_in18_in,
      O => DISP5
    );
\NO_QSGMII_DISP.DISPARITY_reg\: unisim.vcomponents.FDSE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_NO_QSGMII_DISP.DISPARITY_i_1\,
      Q => DISPARITY,
      S => I1
    );
\R_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B0B0A0A0A0A0A"
    )
    port map (
      I0 => T,
      I1 => S,
      I2 => I1,
      I3 => TX_EVEN,
      I4 => TX_ER_REG1,
      I5 => n_0_R_reg,
      O => \n_0_R_i_1__0\
    );
R_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_R_i_1__0\,
      Q => n_0_R_reg,
      R => '0'
    );
SYNC_DISPARITY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2F2020202F"
    )
    port map (
      I0 => TX_EVEN,
      I1 => \n_0_CODE_GRP_CNT_reg[1]\,
      I2 => XMIT_CONFIG_INT,
      I3 => n_0_TX_PACKET_reg,
      I4 => \n_0_CODE_GRP[7]_i_2\,
      I5 => SR(0),
      O => n_0_SYNC_DISPARITY_i_1
    );
SYNC_DISPARITY_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_SYNC_DISPARITY_i_1,
      Q => n_0_SYNC_DISPARITY_reg,
      R => '0'
    );
S_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000B000000"
    )
    port map (
      I0 => TX_ER_REG1,
      I1 => TX_EVEN,
      I2 => TX_EN_REG1,
      I3 => gmii_tx_en,
      I4 => n_0_XMIT_DATA_INT_reg,
      I5 => TRIGGER_S,
      O => S0
    );
S_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => S0,
      Q => S,
      R => I1
    );
TRIGGER_S_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => TX_EN_REG1,
      I1 => gmii_tx_en,
      I2 => TX_EVEN,
      I3 => TX_ER_REG1,
      O => TRIGGER_S0
    );
TRIGGER_S_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => TRIGGER_S0,
      Q => TRIGGER_S,
      R => I1
    );
TRIGGER_T_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => TX_EN_REG1,
      I1 => gmii_tx_en,
      O => p_49_in
    );
TRIGGER_T_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => p_49_in,
      Q => TRIGGER_T,
      R => I1
    );
\TXD_REG1_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(0),
      Q => TXD_REG1(0),
      R => '0'
    );
\TXD_REG1_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(1),
      Q => TXD_REG1(1),
      R => '0'
    );
\TXD_REG1_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(2),
      Q => TXD_REG1(2),
      R => '0'
    );
\TXD_REG1_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(3),
      Q => TXD_REG1(3),
      R => '0'
    );
\TXD_REG1_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(4),
      Q => TXD_REG1(4),
      R => '0'
    );
\TXD_REG1_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(5),
      Q => TXD_REG1(5),
      R => '0'
    );
\TXD_REG1_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(6),
      Q => TXD_REG1(6),
      R => '0'
    );
\TXD_REG1_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => gmii_txd(7),
      Q => TXD_REG1(7),
      R => '0'
    );
TX_EN_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => gmii_tx_en,
      Q => TX_EN_REG1,
      R => '0'
    );
TX_ER_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => gmii_tx_er,
      Q => TX_ER_REG1,
      R => '0'
    );
TX_PACKET_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B0A"
    )
    port map (
      I0 => S,
      I1 => T,
      I2 => I1,
      I3 => n_0_TX_PACKET_reg,
      O => n_0_TX_PACKET_i_1
    );
TX_PACKET_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_TX_PACKET_i_1,
      Q => n_0_TX_PACKET_reg,
      R => '0'
    );
\T_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00E000E000E0"
    )
    port map (
      I0 => n_0_TX_PACKET_reg,
      I1 => S,
      I2 => TX_EN_REG1,
      I3 => gmii_tx_en,
      I4 => n_0_V_reg,
      I5 => TRIGGER_T,
      O => T0
    );
T_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => T0,
      Q => T,
      R => I1
    );
\USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXCHARISK_INT,
      I1 => LOOPBACK_INT,
      I2 => rxchariscomma,
      O => O9
    );
\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXCHARISK_INT,
      I1 => LOOPBACK_INT,
      I2 => rxcharisk,
      O => O8
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXDATA(0),
      I1 => LOOPBACK_INT,
      I2 => I2(0),
      O => O10(0)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXDATA(1),
      I1 => LOOPBACK_INT,
      I2 => I2(1),
      O => O10(1)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXDATA(2),
      I1 => LOOPBACK_INT,
      I2 => I2(2),
      O => O10(2)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXDATA(3),
      I1 => LOOPBACK_INT,
      I2 => I2(3),
      O => O10(3)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXDATA(4),
      I1 => LOOPBACK_INT,
      I2 => I2(4),
      O => O10(4)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXDATA(5),
      I1 => LOOPBACK_INT,
      I2 => I2(5),
      O => O10(5)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXDATA(6),
      I1 => LOOPBACK_INT,
      I2 => I2(6),
      O => O10(6)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXDATA(7),
      I1 => LOOPBACK_INT,
      I2 => I2(7),
      O => O10(7)
    );
\USE_ROCKET_IO.TXCHARDISPMODE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TX_EVEN,
      I1 => LOOPBACK_INT,
      I2 => TXCHARDISPMODE_INT,
      O => O2
    );
\USE_ROCKET_IO.TXCHARDISPVAL_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => TXCHARDISPVAL,
      I1 => I1,
      I2 => LOOPBACK_INT,
      O => O1
    );
\USE_ROCKET_IO.TXCHARISK_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TX_EVEN,
      I1 => LOOPBACK_INT,
      I2 => TXCHARISK_INT,
      O => O7
    );
\USE_ROCKET_IO.TXDATA[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => TXDATA(0),
      I1 => I1,
      I2 => LOOPBACK_INT,
      O => D(0)
    );
\USE_ROCKET_IO.TXDATA[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => TXDATA(1),
      I1 => I1,
      I2 => LOOPBACK_INT,
      O => D(1)
    );
\USE_ROCKET_IO.TXDATA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => TXDATA(2),
      I1 => I1,
      I2 => LOOPBACK_INT,
      O => O6
    );
\USE_ROCKET_IO.TXDATA[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => TXDATA(3),
      I1 => I1,
      I2 => LOOPBACK_INT,
      O => O5
    );
\USE_ROCKET_IO.TXDATA[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => TXDATA(4),
      I1 => I1,
      I2 => LOOPBACK_INT,
      O => D(2)
    );
\USE_ROCKET_IO.TXDATA[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => TXDATA(5),
      I1 => I1,
      I2 => LOOPBACK_INT,
      O => O4
    );
\USE_ROCKET_IO.TXDATA[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0704"
    )
    port map (
      I0 => TX_EVEN,
      I1 => LOOPBACK_INT,
      I2 => I1,
      I3 => TXDATA(6),
      O => D(3)
    );
\USE_ROCKET_IO.TXDATA[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => I1,
      I1 => LOOPBACK_INT,
      I2 => TX_EVEN,
      O => O11
    );
\USE_ROCKET_IO.TXDATA[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => TXDATA(7),
      I1 => I1,
      I2 => LOOPBACK_INT,
      O => O3
    );
V_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F80088"
    )
    port map (
      I0 => n_0_V_i_2,
      I1 => n_0_XMIT_DATA_INT_reg,
      I2 => S,
      I3 => I1,
      I4 => n_0_V_reg,
      O => n_0_V_i_1
    );
V_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => n_0_V_i_3,
      I1 => n_0_V_i_4,
      I2 => n_0_V_i_5,
      O => n_0_V_i_2
    );
V_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8080808"
    )
    port map (
      I0 => TX_ER_REG1,
      I1 => TX_EN_REG1,
      I2 => n_0_TX_PACKET_reg,
      I3 => gmii_tx_er,
      I4 => gmii_tx_en,
      O => n_0_V_i_3
    );
V_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000F000F000E00"
    )
    port map (
      I0 => gmii_txd(5),
      I1 => gmii_txd(7),
      I2 => gmii_tx_en,
      I3 => gmii_tx_er,
      I4 => gmii_txd(6),
      I5 => gmii_txd(4),
      O => n_0_V_i_4
    );
V_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07000F000F000F00"
    )
    port map (
      I0 => gmii_txd(2),
      I1 => gmii_txd(1),
      I2 => gmii_tx_en,
      I3 => gmii_tx_er,
      I4 => gmii_txd(0),
      I5 => gmii_txd(3),
      O => n_0_V_i_5
    );
V_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_V_i_1,
      Q => n_0_V_reg,
      R => '0'
    );
XMIT_CONFIG_INT_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => TX_EVEN,
      I1 => \n_0_CODE_GRP_CNT_reg[1]\,
      I2 => XMIT_CONFIG_INT,
      O => n_0_XMIT_CONFIG_INT_i_1
    );
XMIT_CONFIG_INT_reg: unisim.vcomponents.FDSE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_XMIT_CONFIG_INT_i_1,
      Q => XMIT_CONFIG_INT,
      S => I1
    );
XMIT_DATA_INT_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => \n_0_CODE_GRP_CNT_reg[1]\,
      I1 => TX_EVEN,
      I2 => n_0_XMIT_DATA_INT_reg,
      O => n_0_XMIT_DATA_INT_i_1
    );
XMIT_DATA_INT_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_XMIT_DATA_INT_i_1,
      Q => n_0_XMIT_DATA_INT_reg,
      R => I1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_GT__parameterized0\ is
  port (
    cplllock : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    I_0 : out STD_LOGIC;
    O1 : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    O2 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O7 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ack_flag : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    gtrefclk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    gt0_gttxreset_in0_out : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_in : in STD_LOGIC;
    gt0_qplloutrefclk_in : in STD_LOGIC;
    RXDFELFHOLD : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    RXUSERRDY : in STD_LOGIC;
    userclk : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    TXUSERRDY : in STD_LOGIC;
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I4 : in STD_LOGIC;
    reset_out_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_GT__parameterized0\ : entity is "gig_eth_pcs_pma_basex_v15_1_GTWIZARD_GT";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_GT__parameterized0\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_GT__parameterized0\ is
  signal C : STD_LOGIC;
  signal CPLLPD : STD_LOGIC;
  signal CPLLREFCLKLOST : STD_LOGIC;
  signal CPLLRESET : STD_LOGIC;
  signal D0_in : STD_LOGIC;
  signal D0_in1_in : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal Q_1 : STD_LOGIC;
  signal \^ack_flag\ : STD_LOGIC;
  signal cpllreset_ovrd_i : STD_LOGIC;
  signal flag : STD_LOGIC;
  signal flag2 : STD_LOGIC;
  signal n_0_ack_flag_i_1 : STD_LOGIC;
  signal n_0_ack_sync_reg1 : STD_LOGIC;
  signal n_0_ack_sync_reg2 : STD_LOGIC;
  signal n_0_ack_sync_reg3 : STD_LOGIC;
  signal n_0_ack_sync_reg4 : STD_LOGIC;
  signal n_0_ack_sync_reg5 : STD_LOGIC;
  signal \n_0_cpllpd_wait_reg[94]_srl31\ : STD_LOGIC;
  signal \n_0_cpllreset_wait_reg[126]_srl31\ : STD_LOGIC;
  signal n_0_data_sync_reg2 : STD_LOGIC;
  signal n_0_data_sync_reg3 : STD_LOGIC;
  signal n_0_data_sync_reg4 : STD_LOGIC;
  signal n_0_flag_i_1 : STD_LOGIC;
  signal n_0_gtxe2_i : STD_LOGIC;
  signal n_10_gtxe2_i : STD_LOGIC;
  signal n_16_gtxe2_i : STD_LOGIC;
  signal n_170_gtxe2_i : STD_LOGIC;
  signal n_171_gtxe2_i : STD_LOGIC;
  signal n_172_gtxe2_i : STD_LOGIC;
  signal n_173_gtxe2_i : STD_LOGIC;
  signal n_174_gtxe2_i : STD_LOGIC;
  signal n_175_gtxe2_i : STD_LOGIC;
  signal n_176_gtxe2_i : STD_LOGIC;
  signal n_177_gtxe2_i : STD_LOGIC;
  signal n_178_gtxe2_i : STD_LOGIC;
  signal n_179_gtxe2_i : STD_LOGIC;
  signal n_180_gtxe2_i : STD_LOGIC;
  signal n_181_gtxe2_i : STD_LOGIC;
  signal n_182_gtxe2_i : STD_LOGIC;
  signal n_183_gtxe2_i : STD_LOGIC;
  signal n_184_gtxe2_i : STD_LOGIC;
  signal \n_1_cpllpd_wait_reg[31]_srl32\ : STD_LOGIC;
  signal \n_1_cpllpd_wait_reg[63]_srl32\ : STD_LOGIC;
  signal \n_1_cpllreset_wait_reg[31]_srl32\ : STD_LOGIC;
  signal \n_1_cpllreset_wait_reg[63]_srl32\ : STD_LOGIC;
  signal \n_1_cpllreset_wait_reg[95]_srl32\ : STD_LOGIC;
  signal n_27_gtxe2_i : STD_LOGIC;
  signal n_38_gtxe2_i : STD_LOGIC;
  signal n_39_gtxe2_i : STD_LOGIC;
  signal n_3_gtxe2_i : STD_LOGIC;
  signal n_46_gtxe2_i : STD_LOGIC;
  signal n_47_gtxe2_i : STD_LOGIC;
  signal n_48_gtxe2_i : STD_LOGIC;
  signal n_49_gtxe2_i : STD_LOGIC;
  signal n_4_gtxe2_i : STD_LOGIC;
  signal n_50_gtxe2_i : STD_LOGIC;
  signal n_51_gtxe2_i : STD_LOGIC;
  signal n_52_gtxe2_i : STD_LOGIC;
  signal n_53_gtxe2_i : STD_LOGIC;
  signal n_54_gtxe2_i : STD_LOGIC;
  signal n_55_gtxe2_i : STD_LOGIC;
  signal n_56_gtxe2_i : STD_LOGIC;
  signal n_57_gtxe2_i : STD_LOGIC;
  signal n_58_gtxe2_i : STD_LOGIC;
  signal n_59_gtxe2_i : STD_LOGIC;
  signal n_60_gtxe2_i : STD_LOGIC;
  signal n_61_gtxe2_i : STD_LOGIC;
  signal n_81_gtxe2_i : STD_LOGIC;
  signal n_83_gtxe2_i : STD_LOGIC;
  signal n_84_gtxe2_i : STD_LOGIC;
  signal n_9_gtxe2_i : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 16 );
  signal NLW_gtxe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_TSTOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of ack_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of ack_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ack_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of ack_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of ack_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of ack_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of ack_sync_reg2 : label is "FD";
  attribute box_type of ack_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of ack_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of ack_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of ack_sync_reg3 : label is "FD";
  attribute box_type of ack_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of ack_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of ack_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of ack_sync_reg4 : label is "FD";
  attribute box_type of ack_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of ack_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of ack_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of ack_sync_reg5 : label is "FD";
  attribute box_type of ack_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of ack_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of ack_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of ack_sync_reg6 : label is "FD";
  attribute box_type of ack_sync_reg6 : label is "PRIMITIVE";
  attribute box_type of bufg_gtrefclk0_in : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \cpllpd_wait_reg[31]_srl32\ : label is "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg ";
  attribute srl_name : string;
  attribute srl_name of \cpllpd_wait_reg[31]_srl32\ : label is "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg[31]_srl32 ";
  attribute srl_bus_name of \cpllpd_wait_reg[63]_srl32\ : label is "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg ";
  attribute srl_name of \cpllpd_wait_reg[63]_srl32\ : label is "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg[63]_srl32 ";
  attribute srl_bus_name of \cpllpd_wait_reg[94]_srl31\ : label is "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg ";
  attribute srl_name of \cpllpd_wait_reg[94]_srl31\ : label is "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllpd_wait_reg[94]_srl31 ";
  attribute srl_bus_name of \cpllreset_wait_reg[126]_srl31\ : label is "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[126]_srl31\ : label is "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg[126]_srl31 ";
  attribute srl_bus_name of \cpllreset_wait_reg[31]_srl32\ : label is "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[31]_srl32\ : label is "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg[31]_srl32 ";
  attribute srl_bus_name of \cpllreset_wait_reg[63]_srl32\ : label is "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[63]_srl32\ : label is "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg[63]_srl32 ";
  attribute srl_bus_name of \cpllreset_wait_reg[95]_srl32\ : label is "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg ";
  attribute srl_name of \cpllreset_wait_reg[95]_srl32\ : label is "\U0/transceiver_inst/gtwizard_inst/U0/gtwizard_i/gt0_GTWIZARD_i/cpllreset_wait_reg[95]_srl32 ";
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
  attribute box_type of gtxe2_i : label is "PRIMITIVE";
begin
  ack_flag <= \^ack_flag\;
ack_flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF90"
    )
    port map (
      I0 => n_0_ack_sync_reg5,
      I1 => Q_1,
      I2 => \^ack_flag\,
      I3 => flag2,
      O => n_0_ack_flag_i_1
    );
ack_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_ack_flag_i_1,
      Q => \^ack_flag\,
      R => '0'
    );
ack_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => D0_in1_in,
      Q => n_0_ack_sync_reg1,
      R => '0'
    );
ack_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_ack_sync_reg1,
      Q => n_0_ack_sync_reg2,
      R => '0'
    );
ack_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_ack_sync_reg2,
      Q => n_0_ack_sync_reg3,
      R => '0'
    );
ack_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_ack_sync_reg3,
      Q => n_0_ack_sync_reg4,
      R => '0'
    );
ack_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_ack_sync_reg4,
      Q => n_0_ack_sync_reg5,
      R => '0'
    );
ack_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_ack_sync_reg5,
      Q => Q_1,
      R => '0'
    );
bufg_gtrefclk0_in: unisim.vcomponents.BUFG
    port map (
      I => gtrefclk,
      O => C
    );
\cpllpd_wait_reg[31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"FFFFFFFF"
    )
    port map (
      A(4) => '1',
      A(3) => '1',
      A(2) => '1',
      A(1) => '1',
      A(0) => '1',
      CE => '1',
      CLK => C,
      D => '0',
      Q => \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED\,
      Q31 => \n_1_cpllpd_wait_reg[31]_srl32\
    );
\cpllpd_wait_reg[63]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"FFFFFFFF"
    )
    port map (
      A(4) => '1',
      A(3) => '1',
      A(2) => '1',
      A(1) => '1',
      A(0) => '1',
      CE => '1',
      CLK => C,
      D => \n_1_cpllpd_wait_reg[31]_srl32\,
      Q => \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED\,
      Q31 => \n_1_cpllpd_wait_reg[63]_srl32\
    );
\cpllpd_wait_reg[94]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"7FFFFFFF"
    )
    port map (
      A(4) => '1',
      A(3) => '1',
      A(2) => '1',
      A(1) => '1',
      A(0) => '0',
      CE => '1',
      CLK => C,
      D => \n_1_cpllpd_wait_reg[63]_srl32\,
      Q => \n_0_cpllpd_wait_reg[94]_srl31\,
      Q31 => \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED\
    );
\cpllpd_wait_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => C,
      CE => '1',
      D => \n_0_cpllpd_wait_reg[94]_srl31\,
      Q => CPLLPD,
      R => '0'
    );
\cpllreset_wait_reg[126]_srl31\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      A(4) => '1',
      A(3) => '1',
      A(2) => '1',
      A(1) => '1',
      A(0) => '0',
      CE => '1',
      CLK => C,
      D => \n_1_cpllreset_wait_reg[95]_srl32\,
      Q => \n_0_cpllreset_wait_reg[126]_srl31\,
      Q31 => \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED\
    );
\cpllreset_wait_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => C,
      CE => '1',
      D => \n_0_cpllreset_wait_reg[126]_srl31\,
      Q => cpllreset_ovrd_i,
      R => '0'
    );
\cpllreset_wait_reg[31]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"000000FF"
    )
    port map (
      A(4) => '1',
      A(3) => '1',
      A(2) => '1',
      A(1) => '1',
      A(0) => '1',
      CE => '1',
      CLK => C,
      D => '0',
      Q => \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED\,
      Q31 => \n_1_cpllreset_wait_reg[31]_srl32\
    );
\cpllreset_wait_reg[63]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      A(4) => '1',
      A(3) => '1',
      A(2) => '1',
      A(1) => '1',
      A(0) => '1',
      CE => '1',
      CLK => C,
      D => \n_1_cpllreset_wait_reg[31]_srl32\,
      Q => \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED\,
      Q31 => \n_1_cpllreset_wait_reg[63]_srl32\
    );
\cpllreset_wait_reg[95]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
    port map (
      A(4) => '1',
      A(3) => '1',
      A(2) => '1',
      A(1) => '1',
      A(0) => '1',
      CE => '1',
      CLK => C,
      D => \n_1_cpllreset_wait_reg[63]_srl32\,
      Q => \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED\,
      Q31 => \n_1_cpllreset_wait_reg[95]_srl32\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => C,
      CE => '1',
      D => flag,
      Q => D_0,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => C,
      CE => '1',
      D => D_0,
      Q => n_0_data_sync_reg2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => C,
      CE => '1',
      D => n_0_data_sync_reg2,
      Q => n_0_data_sync_reg3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => C,
      CE => '1',
      D => n_0_data_sync_reg3,
      Q => n_0_data_sync_reg4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => C,
      CE => '1',
      D => n_0_data_sync_reg4,
      Q => D0_in,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => C,
      CE => '1',
      D => D0_in,
      Q => D0_in1_in,
      R => '0'
    );
flag2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => I4,
      Q => flag2,
      R => '0'
    );
flag_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
    port map (
      I0 => \^ack_flag\,
      I1 => reset_out_1,
      I2 => flag,
      O => n_0_flag_i_1
    );
flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_flag_i_1,
      Q => flag,
      R => '0'
    );
gtxe2_i: unisim.vcomponents.GTXE2_CHANNEL
    generic map(
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"0001111111",
      ALIGN_COMMA_WORD => 2,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 1,
      CHAN_BOND_SEQ_1_1 => B"0000000000",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 36,
      CLK_COR_MIN_LAT => 33,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0110111100",
      CLK_COR_SEQ_1_2 => B"0001010000",
      CLK_COR_SEQ_1_3 => B"0000000000",
      CLK_COR_SEQ_1_4 => B"0000000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0110111100",
      CLK_COR_SEQ_2_2 => B"0010110101",
      CLK_COR_SEQ_2_3 => B"0000000000",
      CLK_COR_SEQ_2_4 => B"0000000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "TRUE",
      CLK_COR_SEQ_LEN => 2,
      CPLL_CFG => X"BC07DC",
      CPLL_FBDIV => 4,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG => X"00001E",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DMONITOR_CFG => X"000A00",
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "TRUE",
      ES_HORZ_OFFSET => X"000",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CPLLLOCKDETCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_RSV => X"00018480",
      PMA_RSV2 => X"2050",
      PMA_RSV3 => B"00",
      PMA_RSV4 => X"00000000",
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FULL",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 61,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 8,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"03000023FF40080020",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"010101",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDFELPMRESET_TIME => B"0001111",
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_HF_CFG => B"00000011110000",
      RXLPM_LF_CFG => B"00000011110000",
      RXOOB_CFG => B"0000110",
      RXOUT_DIV => 4,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"000000",
      RXPH_MONITOR_SEL => B"00000",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '1',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RX_BIAS_CFG => B"000000000100",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 5,
      RX_CLKMUX_PD => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"010",
      RX_DATA_WIDTH => 20,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DFE_GAIN_CFG => X"020FEA",
      RX_DFE_H2_CFG => B"000000000000",
      RX_DFE_H3_CFG => B"000001000000",
      RX_DFE_H4_CFG => B"00011110000",
      RX_DFE_H5_CFG => B"00011100000",
      RX_DFE_KL_CFG => B"0000011111110",
      RX_DFE_KL_CFG2 => X"301148AC",
      RX_DFE_LPM_CFG => X"0954",
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DFE_UT_CFG => B"10001111000000000",
      RX_DFE_VP_CFG => B"00011111100000011",
      RX_DFE_XYD_CFG => B"0000000000000",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_INT_DATAWIDTH => 0,
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"0101",
      SATA_BURST_VAL => B"100",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_CPLLREFCLK_SEL => B"001",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "TRUE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "4.0",
      TERM_RCAL_CFG => B"10000",
      TERM_RCAL_OVRD => '0',
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOUT_DIV => 4,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPMARESET_TIME => B"00001",
      TX_CLK25_DIV => 5,
      TX_CLKMUX_PD => '1',
      TX_DATA_WIDTH => 20,
      TX_DEEMPH0 => B"00000",
      TX_DEEMPH1 => B"00000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_INT_DATAWIDTH => 0,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_QPI_STATUS_EN => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXOUT",
      UCODEER_CLR => '0'
    )
    port map (
      CFGRESET => '0',
      CLKRSVD(3) => '0',
      CLKRSVD(2) => '0',
      CLKRSVD(1) => '0',
      CLKRSVD(0) => '0',
      CPLLFBCLKLOST => n_0_gtxe2_i,
      CPLLLOCK => cplllock,
      CPLLLOCKDETCLK => independent_clock_bufg,
      CPLLLOCKEN => '1',
      CPLLPD => CPLLPD,
      CPLLREFCLKLOST => CPLLREFCLKLOST,
      CPLLREFCLKSEL(2) => '0',
      CPLLREFCLKSEL(1) => '0',
      CPLLREFCLKSEL(0) => '1',
      CPLLRESET => CPLLRESET,
      DMONITOROUT(7) => n_177_gtxe2_i,
      DMONITOROUT(6) => n_178_gtxe2_i,
      DMONITOROUT(5) => n_179_gtxe2_i,
      DMONITOROUT(4) => n_180_gtxe2_i,
      DMONITOROUT(3) => n_181_gtxe2_i,
      DMONITOROUT(2) => n_182_gtxe2_i,
      DMONITOROUT(1) => n_183_gtxe2_i,
      DMONITOROUT(0) => n_184_gtxe2_i,
      DRPADDR(8) => '0',
      DRPADDR(7) => '0',
      DRPADDR(6) => '0',
      DRPADDR(5) => '0',
      DRPADDR(4) => '0',
      DRPADDR(3) => '0',
      DRPADDR(2) => '0',
      DRPADDR(1) => '0',
      DRPADDR(0) => '0',
      DRPCLK => userclk2,
      DRPDI(15) => '0',
      DRPDI(14) => '0',
      DRPDI(13) => '0',
      DRPDI(12) => '0',
      DRPDI(11) => '0',
      DRPDI(10) => '0',
      DRPDI(9) => '0',
      DRPDI(8) => '0',
      DRPDI(7) => '0',
      DRPDI(6) => '0',
      DRPDI(5) => '0',
      DRPDI(4) => '0',
      DRPDI(3) => '0',
      DRPDI(2) => '0',
      DRPDI(1) => '0',
      DRPDI(0) => '0',
      DRPDO(15) => n_46_gtxe2_i,
      DRPDO(14) => n_47_gtxe2_i,
      DRPDO(13) => n_48_gtxe2_i,
      DRPDO(12) => n_49_gtxe2_i,
      DRPDO(11) => n_50_gtxe2_i,
      DRPDO(10) => n_51_gtxe2_i,
      DRPDO(9) => n_52_gtxe2_i,
      DRPDO(8) => n_53_gtxe2_i,
      DRPDO(7) => n_54_gtxe2_i,
      DRPDO(6) => n_55_gtxe2_i,
      DRPDO(5) => n_56_gtxe2_i,
      DRPDO(4) => n_57_gtxe2_i,
      DRPDO(3) => n_58_gtxe2_i,
      DRPDO(2) => n_59_gtxe2_i,
      DRPDO(1) => n_60_gtxe2_i,
      DRPDO(0) => n_61_gtxe2_i,
      DRPEN => '0',
      DRPRDY => n_3_gtxe2_i,
      DRPWE => '0',
      EYESCANDATAERROR => n_4_gtxe2_i,
      EYESCANMODE => '0',
      EYESCANRESET => '0',
      EYESCANTRIGGER => '0',
      GTGREFCLK => '0',
      GTNORTHREFCLK0 => '0',
      GTNORTHREFCLK1 => '0',
      GTREFCLK0 => gtrefclk,
      GTREFCLK1 => '0',
      GTREFCLKMONITOR => NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED,
      GTRESETSEL => '0',
      GTRSVD(15) => '0',
      GTRSVD(14) => '0',
      GTRSVD(13) => '0',
      GTRSVD(12) => '0',
      GTRSVD(11) => '0',
      GTRSVD(10) => '0',
      GTRSVD(9) => '0',
      GTRSVD(8) => '0',
      GTRSVD(7) => '0',
      GTRSVD(6) => '0',
      GTRSVD(5) => '0',
      GTRSVD(4) => '0',
      GTRSVD(3) => '0',
      GTRSVD(2) => '0',
      GTRSVD(1) => '0',
      GTRSVD(0) => '0',
      GTRXRESET => data_in,
      GTSOUTHREFCLK0 => '0',
      GTSOUTHREFCLK1 => '0',
      GTTXRESET => gt0_gttxreset_in0_out,
      GTXRXN => rxn,
      GTXRXP => rxp,
      GTXTXN => txn,
      GTXTXP => txp,
      LOOPBACK(2) => '0',
      LOOPBACK(1) => '0',
      LOOPBACK(0) => '0',
      PCSRSVDIN(15) => '0',
      PCSRSVDIN(14) => '0',
      PCSRSVDIN(13) => '0',
      PCSRSVDIN(12) => '0',
      PCSRSVDIN(11) => '0',
      PCSRSVDIN(10) => '0',
      PCSRSVDIN(9) => '0',
      PCSRSVDIN(8) => '0',
      PCSRSVDIN(7) => '0',
      PCSRSVDIN(6) => '0',
      PCSRSVDIN(5) => '0',
      PCSRSVDIN(4) => '0',
      PCSRSVDIN(3) => '0',
      PCSRSVDIN(2) => '0',
      PCSRSVDIN(1) => '0',
      PCSRSVDIN(0) => '0',
      PCSRSVDIN2(4) => '0',
      PCSRSVDIN2(3) => '0',
      PCSRSVDIN2(2) => '0',
      PCSRSVDIN2(1) => '0',
      PCSRSVDIN2(0) => '0',
      PCSRSVDOUT(15 downto 0) => NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtxe2_i_PHYSTATUS_UNCONNECTED,
      PMARSVDIN(4) => '0',
      PMARSVDIN(3) => '0',
      PMARSVDIN(2) => '0',
      PMARSVDIN(1) => '0',
      PMARSVDIN(0) => '0',
      PMARSVDIN2(4) => '0',
      PMARSVDIN2(3) => '0',
      PMARSVDIN2(2) => '0',
      PMARSVDIN2(1) => '0',
      PMARSVDIN2(0) => '0',
      QPLLCLK => gt0_qplloutclk_in,
      QPLLREFCLK => gt0_qplloutrefclk_in,
      RESETOVRD => '0',
      RX8B10BEN => '1',
      RXBUFRESET => '0',
      RXBUFSTATUS(2) => RXBUFSTATUS(0),
      RXBUFSTATUS(1) => n_83_gtxe2_i,
      RXBUFSTATUS(0) => n_84_gtxe2_i,
      RXBYTEISALIGNED => n_9_gtxe2_i,
      RXBYTEREALIGN => n_10_gtxe2_i,
      RXCDRFREQRESET => '0',
      RXCDRHOLD => '0',
      RXCDRLOCK => NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED,
      RXCDROVRDEN => '0',
      RXCDRRESET => '0',
      RXCDRRESETRSV => '0',
      RXCHANBONDSEQ => NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(7 downto 2) => NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED(7 downto 2),
      RXCHARISCOMMA(1 downto 0) => O4(1 downto 0),
      RXCHARISK(7 downto 2) => NLW_gtxe2_i_RXCHARISK_UNCONNECTED(7 downto 2),
      RXCHARISK(1 downto 0) => O5(1 downto 0),
      RXCHBONDEN => '0',
      RXCHBONDI(4) => '0',
      RXCHBONDI(3) => '0',
      RXCHBONDI(2) => '0',
      RXCHBONDI(1) => '0',
      RXCHBONDI(0) => '0',
      RXCHBONDLEVEL(2) => '0',
      RXCHBONDLEVEL(1) => '0',
      RXCHBONDLEVEL(0) => '0',
      RXCHBONDMASTER => '0',
      RXCHBONDO(4 downto 0) => NLW_gtxe2_i_RXCHBONDO_UNCONNECTED(4 downto 0),
      RXCHBONDSLAVE => '0',
      RXCLKCORCNT(1 downto 0) => D(1 downto 0),
      RXCOMINITDET => NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => n_16_gtxe2_i,
      RXCOMMADETEN => '1',
      RXCOMSASDET => NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(63 downto 16) => NLW_gtxe2_i_RXDATA_UNCONNECTED(63 downto 16),
      RXDATA(15 downto 0) => O3(15 downto 0),
      RXDATAVALID => NLW_gtxe2_i_RXDATAVALID_UNCONNECTED,
      RXDDIEN => '0',
      RXDFEAGCHOLD => RXDFELFHOLD,
      RXDFEAGCOVRDEN => '0',
      RXDFECM1EN => '0',
      RXDFELFHOLD => RXDFELFHOLD,
      RXDFELFOVRDEN => '1',
      RXDFELPMRESET => '0',
      RXDFETAP2HOLD => '0',
      RXDFETAP2OVRDEN => '0',
      RXDFETAP3HOLD => '0',
      RXDFETAP3OVRDEN => '0',
      RXDFETAP4HOLD => '0',
      RXDFETAP4OVRDEN => '0',
      RXDFETAP5HOLD => '0',
      RXDFETAP5OVRDEN => '0',
      RXDFEUTHOLD => '0',
      RXDFEUTOVRDEN => '0',
      RXDFEVPHOLD => '0',
      RXDFEVPOVRDEN => '0',
      RXDFEVSEN => '0',
      RXDFEXYDEN => '1',
      RXDFEXYDHOLD => '0',
      RXDFEXYDOVRDEN => '0',
      RXDISPERR(7 downto 2) => NLW_gtxe2_i_RXDISPERR_UNCONNECTED(7 downto 2),
      RXDISPERR(1 downto 0) => O6(1 downto 0),
      RXDLYBYPASS => '1',
      RXDLYEN => '0',
      RXDLYOVRDEN => '0',
      RXDLYSRESET => '0',
      RXDLYSRESETDONE => NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtxe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1) => '1',
      RXELECIDLEMODE(0) => '1',
      RXGEARBOXSLIP => '0',
      RXHEADER(2 downto 0) => NLW_gtxe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMEN => '0',
      RXLPMHFHOLD => '0',
      RXLPMHFOVRDEN => '0',
      RXLPMLFHOLD => '0',
      RXLPMLFKLOVRDEN => '0',
      RXMCOMMAALIGNEN => reset_out,
      RXMONITOROUT(6) => n_170_gtxe2_i,
      RXMONITOROUT(5) => n_171_gtxe2_i,
      RXMONITOROUT(4) => n_172_gtxe2_i,
      RXMONITOROUT(3) => n_173_gtxe2_i,
      RXMONITOROUT(2) => n_174_gtxe2_i,
      RXMONITOROUT(1) => n_175_gtxe2_i,
      RXMONITOROUT(0) => n_176_gtxe2_i,
      RXMONITORSEL(1) => '0',
      RXMONITORSEL(0) => '0',
      RXNOTINTABLE(7 downto 2) => NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED(7 downto 2),
      RXNOTINTABLE(1 downto 0) => O7(1 downto 0),
      RXOOBRESET => '0',
      RXOSHOLD => '0',
      RXOSOVRDEN => '0',
      RXOUTCLK => I_0,
      RXOUTCLKFABRIC => NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2) => '0',
      RXOUTCLKSEL(1) => '1',
      RXOUTCLKSEL(0) => '0',
      RXPCOMMAALIGNEN => reset_out,
      RXPCSRESET => reset,
      RXPD(1) => RXPD(0),
      RXPD(0) => RXPD(0),
      RXPHALIGN => '0',
      RXPHALIGNDONE => NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => '0',
      RXPHDLYPD => '0',
      RXPHDLYRESET => '0',
      RXPHMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => '0',
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => '0',
      RXPOLARITY => '0',
      RXPRBSCNTRESET => '0',
      RXPRBSERR => n_27_gtxe2_i,
      RXPRBSSEL(2) => '0',
      RXPRBSSEL(1) => '0',
      RXPRBSSEL(0) => '0',
      RXQPIEN => '0',
      RXQPISENN => NLW_gtxe2_i_RXQPISENN_UNCONNECTED,
      RXQPISENP => NLW_gtxe2_i_RXQPISENP_UNCONNECTED,
      RXRATE(2) => '0',
      RXRATE(1) => '0',
      RXRATE(0) => '0',
      RXRATEDONE => NLW_gtxe2_i_RXRATEDONE_UNCONNECTED,
      RXRESETDONE => O1,
      RXSLIDE => '0',
      RXSTARTOFSEQ => NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED,
      RXSTATUS(2 downto 0) => NLW_gtxe2_i_RXSTATUS_UNCONNECTED(2 downto 0),
      RXSYSCLKSEL(1) => '0',
      RXSYSCLKSEL(0) => '0',
      RXUSERRDY => RXUSERRDY,
      RXUSRCLK => userclk,
      RXUSRCLK2 => userclk,
      RXVALID => NLW_gtxe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => '0',
      TSTIN(19) => '1',
      TSTIN(18) => '1',
      TSTIN(17) => '1',
      TSTIN(16) => '1',
      TSTIN(15) => '1',
      TSTIN(14) => '1',
      TSTIN(13) => '1',
      TSTIN(12) => '1',
      TSTIN(11) => '1',
      TSTIN(10) => '1',
      TSTIN(9) => '1',
      TSTIN(8) => '1',
      TSTIN(7) => '1',
      TSTIN(6) => '1',
      TSTIN(5) => '1',
      TSTIN(4) => '1',
      TSTIN(3) => '1',
      TSTIN(2) => '1',
      TSTIN(1) => '1',
      TSTIN(0) => '1',
      TSTOUT(9 downto 0) => NLW_gtxe2_i_TSTOUT_UNCONNECTED(9 downto 0),
      TX8B10BBYPASS(7) => '0',
      TX8B10BBYPASS(6) => '0',
      TX8B10BBYPASS(5) => '0',
      TX8B10BBYPASS(4) => '0',
      TX8B10BBYPASS(3) => '0',
      TX8B10BBYPASS(2) => '0',
      TX8B10BBYPASS(1) => '0',
      TX8B10BBYPASS(0) => '0',
      TX8B10BEN => '1',
      TXBUFDIFFCTRL(2) => '1',
      TXBUFDIFFCTRL(1) => '0',
      TXBUFDIFFCTRL(0) => '0',
      TXBUFSTATUS(1) => TXBUFSTATUS(0),
      TXBUFSTATUS(0) => n_81_gtxe2_i,
      TXCHARDISPMODE(7) => '0',
      TXCHARDISPMODE(6) => '0',
      TXCHARDISPMODE(5) => '0',
      TXCHARDISPMODE(4) => '0',
      TXCHARDISPMODE(3) => '0',
      TXCHARDISPMODE(2) => '0',
      TXCHARDISPMODE(1 downto 0) => I1(1 downto 0),
      TXCHARDISPVAL(7) => '0',
      TXCHARDISPVAL(6) => '0',
      TXCHARDISPVAL(5) => '0',
      TXCHARDISPVAL(4) => '0',
      TXCHARDISPVAL(3) => '0',
      TXCHARDISPVAL(2) => '0',
      TXCHARDISPVAL(1 downto 0) => I2(1 downto 0),
      TXCHARISK(7) => '0',
      TXCHARISK(6) => '0',
      TXCHARISK(5) => '0',
      TXCHARISK(4) => '0',
      TXCHARISK(3) => '0',
      TXCHARISK(2) => '0',
      TXCHARISK(1 downto 0) => I3(1 downto 0),
      TXCOMFINISH => NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => '0',
      TXCOMSAS => '0',
      TXCOMWAKE => '0',
      TXDATA(63) => '0',
      TXDATA(62) => '0',
      TXDATA(61) => '0',
      TXDATA(60) => '0',
      TXDATA(59) => '0',
      TXDATA(58) => '0',
      TXDATA(57) => '0',
      TXDATA(56) => '0',
      TXDATA(55) => '0',
      TXDATA(54) => '0',
      TXDATA(53) => '0',
      TXDATA(52) => '0',
      TXDATA(51) => '0',
      TXDATA(50) => '0',
      TXDATA(49) => '0',
      TXDATA(48) => '0',
      TXDATA(47) => '0',
      TXDATA(46) => '0',
      TXDATA(45) => '0',
      TXDATA(44) => '0',
      TXDATA(43) => '0',
      TXDATA(42) => '0',
      TXDATA(41) => '0',
      TXDATA(40) => '0',
      TXDATA(39) => '0',
      TXDATA(38) => '0',
      TXDATA(37) => '0',
      TXDATA(36) => '0',
      TXDATA(35) => '0',
      TXDATA(34) => '0',
      TXDATA(33) => '0',
      TXDATA(32) => '0',
      TXDATA(31) => '0',
      TXDATA(30) => '0',
      TXDATA(29) => '0',
      TXDATA(28) => '0',
      TXDATA(27) => '0',
      TXDATA(26) => '0',
      TXDATA(25) => '0',
      TXDATA(24) => '0',
      TXDATA(23) => '0',
      TXDATA(22) => '0',
      TXDATA(21) => '0',
      TXDATA(20) => '0',
      TXDATA(19) => '0',
      TXDATA(18) => '0',
      TXDATA(17) => '0',
      TXDATA(16) => '0',
      TXDATA(15 downto 0) => Q(15 downto 0),
      TXDEEMPH => '0',
      TXDETECTRX => '0',
      TXDIFFCTRL(3) => '0',
      TXDIFFCTRL(2) => '0',
      TXDIFFCTRL(1) => '0',
      TXDIFFCTRL(0) => '0',
      TXDIFFPD => '0',
      TXDLYBYPASS => '1',
      TXDLYEN => '0',
      TXDLYHOLD => '0',
      TXDLYOVRDEN => '0',
      TXDLYSRESET => '0',
      TXDLYSRESETDONE => NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => '0',
      TXELECIDLE => TXPD(0),
      TXGEARBOXREADY => NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2) => '0',
      TXHEADER(1) => '0',
      TXHEADER(0) => '0',
      TXINHIBIT => '0',
      TXMAINCURSOR(6) => '0',
      TXMAINCURSOR(5) => '0',
      TXMAINCURSOR(4) => '0',
      TXMAINCURSOR(3) => '0',
      TXMAINCURSOR(2) => '0',
      TXMAINCURSOR(1) => '0',
      TXMAINCURSOR(0) => '0',
      TXMARGIN(2) => '0',
      TXMARGIN(1) => '0',
      TXMARGIN(0) => '0',
      TXOUTCLK => txoutclk,
      TXOUTCLKFABRIC => n_38_gtxe2_i,
      TXOUTCLKPCS => n_39_gtxe2_i,
      TXOUTCLKSEL(2) => '1',
      TXOUTCLKSEL(1) => '0',
      TXOUTCLKSEL(0) => '0',
      TXPCSRESET => '0',
      TXPD(1) => TXPD(0),
      TXPD(0) => TXPD(0),
      TXPDELECIDLEMODE => '0',
      TXPHALIGN => '0',
      TXPHALIGNDONE => NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED,
      TXPHALIGNEN => '0',
      TXPHDLYPD => '0',
      TXPHDLYRESET => '0',
      TXPHDLYTSTCLK => '0',
      TXPHINIT => '0',
      TXPHINITDONE => NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED,
      TXPHOVRDEN => '0',
      TXPISOPD => '0',
      TXPMARESET => '0',
      TXPOLARITY => '0',
      TXPOSTCURSOR(4) => '0',
      TXPOSTCURSOR(3) => '0',
      TXPOSTCURSOR(2) => '0',
      TXPOSTCURSOR(1) => '0',
      TXPOSTCURSOR(0) => '0',
      TXPOSTCURSORINV => '0',
      TXPRBSFORCEERR => '0',
      TXPRBSSEL(2) => '0',
      TXPRBSSEL(1) => '0',
      TXPRBSSEL(0) => '0',
      TXPRECURSOR(4) => '0',
      TXPRECURSOR(3) => '0',
      TXPRECURSOR(2) => '0',
      TXPRECURSOR(1) => '0',
      TXPRECURSOR(0) => '0',
      TXPRECURSORINV => '0',
      TXQPIBIASEN => '0',
      TXQPISENN => NLW_gtxe2_i_TXQPISENN_UNCONNECTED,
      TXQPISENP => NLW_gtxe2_i_TXQPISENP_UNCONNECTED,
      TXQPISTRONGPDOWN => '0',
      TXQPIWEAKPUP => '0',
      TXRATE(2) => '0',
      TXRATE(1) => '0',
      TXRATE(0) => '0',
      TXRATEDONE => NLW_gtxe2_i_TXRATEDONE_UNCONNECTED,
      TXRESETDONE => O2,
      TXSEQUENCE(6) => '0',
      TXSEQUENCE(5) => '0',
      TXSEQUENCE(4) => '0',
      TXSEQUENCE(3) => '0',
      TXSEQUENCE(2) => '0',
      TXSEQUENCE(1) => '0',
      TXSEQUENCE(0) => '0',
      TXSTARTSEQ => '0',
      TXSWING => '0',
      TXSYSCLKSEL(1) => '0',
      TXSYSCLKSEL(0) => '0',
      TXUSERRDY => TXUSERRDY,
      TXUSRCLK => userclk,
      TXUSRCLK2 => userclk
    );
gtxe2_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
    port map (
      I0 => cpllreset_ovrd_i,
      I1 => D0_in,
      I2 => D0_in1_in,
      O => CPLLRESET
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync is
  port (
    reset_out : out STD_LOGIC;
    userclk : in STD_LOGIC;
    encommaalign : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync : entity is "gig_eth_pcs_pma_basex_v15_1_reset_sync";
end gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync;

architecture STRUCTURE of gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => '0',
      PRE => encommaalign,
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => reset_sync_reg1,
      PRE => encommaalign,
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => reset_sync_reg2,
      PRE => encommaalign,
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => reset_sync_reg3,
      PRE => encommaalign,
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => reset_sync_reg4,
      PRE => encommaalign,
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_0 is
  port (
    reset_out : out STD_LOGIC;
    userclk : in STD_LOGIC;
    I1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_0 : entity is "gig_eth_pcs_pma_basex_v15_1_reset_sync";
end gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_0;

architecture STRUCTURE of gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_0 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => '0',
      PRE => I1(0),
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => reset_sync_reg1,
      PRE => I1(0),
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => reset_sync_reg2,
      PRE => I1(0),
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => reset_sync_reg3,
      PRE => I1(0),
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => reset_sync_reg4,
      PRE => I1(0),
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_1 is
  port (
    reset_out : out STD_LOGIC;
    userclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_1 : entity is "gig_eth_pcs_pma_basex_v15_1_reset_sync";
end gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_1;

architecture STRUCTURE of gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_1 is
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => '0',
      PRE => SR(0),
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => reset_sync_reg1,
      PRE => SR(0),
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => reset_sync_reg2,
      PRE => SR(0),
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => reset_sync_reg3,
      PRE => SR(0),
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => reset_sync_reg4,
      PRE => SR(0),
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => reset_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_3 is
  port (
    O1 : out STD_LOGIC;
    reset_out : out STD_LOGIC;
    ack_flag : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    CPLL_RESET : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_3 : entity is "gig_eth_pcs_pma_basex_v15_1_reset_sync";
end gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_3;

architecture STRUCTURE of gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_3 is
  signal \^reset_out\ : STD_LOGIC;
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is std.standard.true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
  reset_out <= \^reset_out\;
flag2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \^reset_out\,
      I1 => ack_flag,
      O => O1
    );
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => '0',
      PRE => CPLL_RESET,
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg1,
      PRE => CPLL_RESET,
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg2,
      PRE => CPLL_RESET,
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg3,
      PRE => CPLL_RESET,
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg4,
      PRE => CPLL_RESET,
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => reset_sync_reg5,
      PRE => '0',
      Q => \^reset_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_wtd_timer is
  port (
    reset : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    data_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_wtd_timer : entity is "gig_eth_pcs_pma_basex_v15_1_reset_wtd_timer";
end gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_wtd_timer;

architecture STRUCTURE of gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_wtd_timer is
  signal \counter_stg1_reg__0\ : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \counter_stg1_reg__1\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal counter_stg2_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal counter_stg30 : STD_LOGIC;
  signal counter_stg3_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \n_0_counter_stg1[5]_i_1\ : STD_LOGIC;
  signal \n_0_counter_stg2[0]_i_1\ : STD_LOGIC;
  signal \n_0_counter_stg2[0]_i_3\ : STD_LOGIC;
  signal \n_0_counter_stg2[0]_i_4\ : STD_LOGIC;
  signal \n_0_counter_stg2[0]_i_5\ : STD_LOGIC;
  signal \n_0_counter_stg2[0]_i_6\ : STD_LOGIC;
  signal \n_0_counter_stg2[4]_i_2\ : STD_LOGIC;
  signal \n_0_counter_stg2[4]_i_3\ : STD_LOGIC;
  signal \n_0_counter_stg2[4]_i_4\ : STD_LOGIC;
  signal \n_0_counter_stg2[4]_i_5\ : STD_LOGIC;
  signal \n_0_counter_stg2[8]_i_2\ : STD_LOGIC;
  signal \n_0_counter_stg2[8]_i_3\ : STD_LOGIC;
  signal \n_0_counter_stg2[8]_i_4\ : STD_LOGIC;
  signal \n_0_counter_stg2[8]_i_5\ : STD_LOGIC;
  signal \n_0_counter_stg2_reg[0]_i_2\ : STD_LOGIC;
  signal \n_0_counter_stg2_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_counter_stg3[0]_i_3\ : STD_LOGIC;
  signal \n_0_counter_stg3[0]_i_4\ : STD_LOGIC;
  signal \n_0_counter_stg3[0]_i_5\ : STD_LOGIC;
  signal \n_0_counter_stg3[0]_i_6\ : STD_LOGIC;
  signal \n_0_counter_stg3[0]_i_7\ : STD_LOGIC;
  signal \n_0_counter_stg3[0]_i_8\ : STD_LOGIC;
  signal \n_0_counter_stg3[0]_i_9\ : STD_LOGIC;
  signal \n_0_counter_stg3[4]_i_2\ : STD_LOGIC;
  signal \n_0_counter_stg3[4]_i_3\ : STD_LOGIC;
  signal \n_0_counter_stg3[4]_i_4\ : STD_LOGIC;
  signal \n_0_counter_stg3[4]_i_5\ : STD_LOGIC;
  signal \n_0_counter_stg3[8]_i_2\ : STD_LOGIC;
  signal \n_0_counter_stg3[8]_i_3\ : STD_LOGIC;
  signal \n_0_counter_stg3[8]_i_4\ : STD_LOGIC;
  signal \n_0_counter_stg3[8]_i_5\ : STD_LOGIC;
  signal \n_0_counter_stg3_reg[0]_i_2\ : STD_LOGIC;
  signal \n_0_counter_stg3_reg[4]_i_1\ : STD_LOGIC;
  signal n_0_reset_i_2 : STD_LOGIC;
  signal n_0_reset_i_3 : STD_LOGIC;
  signal n_0_reset_i_4 : STD_LOGIC;
  signal n_0_reset_i_5 : STD_LOGIC;
  signal \n_1_counter_stg2_reg[0]_i_2\ : STD_LOGIC;
  signal \n_1_counter_stg2_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_counter_stg2_reg[8]_i_1\ : STD_LOGIC;
  signal \n_1_counter_stg3_reg[0]_i_2\ : STD_LOGIC;
  signal \n_1_counter_stg3_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_counter_stg3_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_counter_stg2_reg[0]_i_2\ : STD_LOGIC;
  signal \n_2_counter_stg2_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_counter_stg2_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_counter_stg3_reg[0]_i_2\ : STD_LOGIC;
  signal \n_2_counter_stg3_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_counter_stg3_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_counter_stg2_reg[0]_i_2\ : STD_LOGIC;
  signal \n_3_counter_stg2_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_counter_stg2_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_counter_stg3_reg[0]_i_2\ : STD_LOGIC;
  signal \n_3_counter_stg3_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_counter_stg3_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_counter_stg2_reg[0]_i_2\ : STD_LOGIC;
  signal \n_4_counter_stg2_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_counter_stg2_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_counter_stg3_reg[0]_i_2\ : STD_LOGIC;
  signal \n_4_counter_stg3_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_counter_stg3_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_counter_stg2_reg[0]_i_2\ : STD_LOGIC;
  signal \n_5_counter_stg2_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_counter_stg2_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_counter_stg3_reg[0]_i_2\ : STD_LOGIC;
  signal \n_5_counter_stg3_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_counter_stg3_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_counter_stg2_reg[0]_i_2\ : STD_LOGIC;
  signal \n_6_counter_stg2_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_counter_stg2_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_counter_stg3_reg[0]_i_2\ : STD_LOGIC;
  signal \n_6_counter_stg3_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_counter_stg3_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_counter_stg2_reg[0]_i_2\ : STD_LOGIC;
  signal \n_7_counter_stg2_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_counter_stg2_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_counter_stg3_reg[0]_i_2\ : STD_LOGIC;
  signal \n_7_counter_stg3_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_counter_stg3_reg[8]_i_1\ : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal reset0 : STD_LOGIC;
  signal \NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_stg1[0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \counter_stg1[1]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \counter_stg1[2]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \counter_stg1[3]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \counter_stg1[4]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \counter_stg3[0]_i_3\ : label is "soft_lutpair67";
begin
\counter_stg1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \counter_stg1_reg__1\(0),
      O => \plusOp__0\(0)
    );
\counter_stg1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \counter_stg1_reg__1\(0),
      I1 => \counter_stg1_reg__1\(1),
      O => \plusOp__0\(1)
    );
\counter_stg1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \counter_stg1_reg__1\(1),
      I1 => \counter_stg1_reg__1\(0),
      I2 => \counter_stg1_reg__1\(2),
      O => \plusOp__0\(2)
    );
\counter_stg1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \counter_stg1_reg__1\(2),
      I1 => \counter_stg1_reg__1\(0),
      I2 => \counter_stg1_reg__1\(1),
      I3 => \counter_stg1_reg__1\(3),
      O => \plusOp__0\(3)
    );
\counter_stg1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \counter_stg1_reg__1\(3),
      I1 => \counter_stg1_reg__1\(1),
      I2 => \counter_stg1_reg__1\(0),
      I3 => \counter_stg1_reg__1\(2),
      I4 => \counter_stg1_reg__1\(4),
      O => \plusOp__0\(4)
    );
\counter_stg1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
    port map (
      I0 => n_0_reset_i_2,
      I1 => n_0_reset_i_3,
      I2 => n_0_reset_i_4,
      I3 => n_0_reset_i_5,
      I4 => \n_0_counter_stg2[0]_i_1\,
      I5 => data_out,
      O => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg1[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      I0 => \counter_stg1_reg__1\(4),
      I1 => \counter_stg1_reg__1\(2),
      I2 => \counter_stg1_reg__1\(0),
      I3 => \counter_stg1_reg__1\(1),
      I4 => \counter_stg1_reg__1\(3),
      I5 => \counter_stg1_reg__0\(5),
      O => \plusOp__0\(5)
    );
\counter_stg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \plusOp__0\(0),
      Q => \counter_stg1_reg__1\(0),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \plusOp__0\(1),
      Q => \counter_stg1_reg__1\(1),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \plusOp__0\(2),
      Q => \counter_stg1_reg__1\(2),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \plusOp__0\(3),
      Q => \counter_stg1_reg__1\(3),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \plusOp__0\(4),
      Q => \counter_stg1_reg__1\(4),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \plusOp__0\(5),
      Q => \counter_stg1_reg__0\(5),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \counter_stg1_reg__1\(4),
      I1 => \counter_stg1_reg__1\(2),
      I2 => \counter_stg1_reg__1\(0),
      I3 => \counter_stg1_reg__1\(1),
      I4 => \counter_stg1_reg__1\(3),
      I5 => \counter_stg1_reg__0\(5),
      O => \n_0_counter_stg2[0]_i_1\
    );
\counter_stg2[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg2_reg(3),
      O => \n_0_counter_stg2[0]_i_3\
    );
\counter_stg2[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg2_reg(2),
      O => \n_0_counter_stg2[0]_i_4\
    );
\counter_stg2[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg2_reg(1),
      O => \n_0_counter_stg2[0]_i_5\
    );
\counter_stg2[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => counter_stg2_reg(0),
      O => \n_0_counter_stg2[0]_i_6\
    );
\counter_stg2[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg2_reg(7),
      O => \n_0_counter_stg2[4]_i_2\
    );
\counter_stg2[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg2_reg(6),
      O => \n_0_counter_stg2[4]_i_3\
    );
\counter_stg2[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg2_reg(5),
      O => \n_0_counter_stg2[4]_i_4\
    );
\counter_stg2[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg2_reg(4),
      O => \n_0_counter_stg2[4]_i_5\
    );
\counter_stg2[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg2_reg(11),
      O => \n_0_counter_stg2[8]_i_2\
    );
\counter_stg2[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg2_reg(10),
      O => \n_0_counter_stg2[8]_i_3\
    );
\counter_stg2[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg2_reg(9),
      O => \n_0_counter_stg2[8]_i_4\
    );
\counter_stg2[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg2_reg(8),
      O => \n_0_counter_stg2[8]_i_5\
    );
\counter_stg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_counter_stg2[0]_i_1\,
      D => \n_7_counter_stg2_reg[0]_i_2\,
      Q => counter_stg2_reg(0),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg2_reg[0]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_counter_stg2_reg[0]_i_2\,
      CO(2) => \n_1_counter_stg2_reg[0]_i_2\,
      CO(1) => \n_2_counter_stg2_reg[0]_i_2\,
      CO(0) => \n_3_counter_stg2_reg[0]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_counter_stg2_reg[0]_i_2\,
      O(2) => \n_5_counter_stg2_reg[0]_i_2\,
      O(1) => \n_6_counter_stg2_reg[0]_i_2\,
      O(0) => \n_7_counter_stg2_reg[0]_i_2\,
      S(3) => \n_0_counter_stg2[0]_i_3\,
      S(2) => \n_0_counter_stg2[0]_i_4\,
      S(1) => \n_0_counter_stg2[0]_i_5\,
      S(0) => \n_0_counter_stg2[0]_i_6\
    );
\counter_stg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_counter_stg2[0]_i_1\,
      D => \n_5_counter_stg2_reg[8]_i_1\,
      Q => counter_stg2_reg(10),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_counter_stg2[0]_i_1\,
      D => \n_4_counter_stg2_reg[8]_i_1\,
      Q => counter_stg2_reg(11),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_counter_stg2[0]_i_1\,
      D => \n_6_counter_stg2_reg[0]_i_2\,
      Q => counter_stg2_reg(1),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_counter_stg2[0]_i_1\,
      D => \n_5_counter_stg2_reg[0]_i_2\,
      Q => counter_stg2_reg(2),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_counter_stg2[0]_i_1\,
      D => \n_4_counter_stg2_reg[0]_i_2\,
      Q => counter_stg2_reg(3),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_counter_stg2[0]_i_1\,
      D => \n_7_counter_stg2_reg[4]_i_1\,
      Q => counter_stg2_reg(4),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg2_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_counter_stg2_reg[0]_i_2\,
      CO(3) => \n_0_counter_stg2_reg[4]_i_1\,
      CO(2) => \n_1_counter_stg2_reg[4]_i_1\,
      CO(1) => \n_2_counter_stg2_reg[4]_i_1\,
      CO(0) => \n_3_counter_stg2_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_counter_stg2_reg[4]_i_1\,
      O(2) => \n_5_counter_stg2_reg[4]_i_1\,
      O(1) => \n_6_counter_stg2_reg[4]_i_1\,
      O(0) => \n_7_counter_stg2_reg[4]_i_1\,
      S(3) => \n_0_counter_stg2[4]_i_2\,
      S(2) => \n_0_counter_stg2[4]_i_3\,
      S(1) => \n_0_counter_stg2[4]_i_4\,
      S(0) => \n_0_counter_stg2[4]_i_5\
    );
\counter_stg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_counter_stg2[0]_i_1\,
      D => \n_6_counter_stg2_reg[4]_i_1\,
      Q => counter_stg2_reg(5),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_counter_stg2[0]_i_1\,
      D => \n_5_counter_stg2_reg[4]_i_1\,
      Q => counter_stg2_reg(6),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_counter_stg2[0]_i_1\,
      D => \n_4_counter_stg2_reg[4]_i_1\,
      Q => counter_stg2_reg(7),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_counter_stg2[0]_i_1\,
      D => \n_7_counter_stg2_reg[8]_i_1\,
      Q => counter_stg2_reg(8),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg2_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_counter_stg2_reg[4]_i_1\,
      CO(3) => \NLW_counter_stg2_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \n_1_counter_stg2_reg[8]_i_1\,
      CO(1) => \n_2_counter_stg2_reg[8]_i_1\,
      CO(0) => \n_3_counter_stg2_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_counter_stg2_reg[8]_i_1\,
      O(2) => \n_5_counter_stg2_reg[8]_i_1\,
      O(1) => \n_6_counter_stg2_reg[8]_i_1\,
      O(0) => \n_7_counter_stg2_reg[8]_i_1\,
      S(3) => \n_0_counter_stg2[8]_i_2\,
      S(2) => \n_0_counter_stg2[8]_i_3\,
      S(1) => \n_0_counter_stg2[8]_i_4\,
      S(0) => \n_0_counter_stg2[8]_i_5\
    );
\counter_stg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_counter_stg2[0]_i_1\,
      D => \n_6_counter_stg2_reg[8]_i_1\,
      Q => counter_stg2_reg(9),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg3[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => counter_stg2_reg(10),
      I1 => \n_0_counter_stg3[0]_i_3\,
      I2 => \n_0_counter_stg3[0]_i_4\,
      I3 => \n_0_counter_stg3[0]_i_5\,
      O => counter_stg30
    );
\counter_stg3[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \counter_stg1_reg__1\(3),
      I1 => \counter_stg1_reg__1\(1),
      I2 => \counter_stg1_reg__1\(0),
      I3 => \counter_stg1_reg__1\(2),
      I4 => \counter_stg1_reg__1\(4),
      O => \n_0_counter_stg3[0]_i_3\
    );
\counter_stg3[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => counter_stg2_reg(5),
      I1 => counter_stg2_reg(1),
      I2 => counter_stg2_reg(9),
      I3 => \counter_stg1_reg__0\(5),
      I4 => counter_stg2_reg(7),
      I5 => counter_stg2_reg(6),
      O => \n_0_counter_stg3[0]_i_4\
    );
\counter_stg3[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => counter_stg2_reg(4),
      I1 => counter_stg2_reg(11),
      I2 => counter_stg2_reg(2),
      I3 => counter_stg2_reg(0),
      I4 => counter_stg2_reg(8),
      I5 => counter_stg2_reg(3),
      O => \n_0_counter_stg3[0]_i_5\
    );
\counter_stg3[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg3_reg(3),
      O => \n_0_counter_stg3[0]_i_6\
    );
\counter_stg3[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg3_reg(2),
      O => \n_0_counter_stg3[0]_i_7\
    );
\counter_stg3[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg3_reg(1),
      O => \n_0_counter_stg3[0]_i_8\
    );
\counter_stg3[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => counter_stg3_reg(0),
      O => \n_0_counter_stg3[0]_i_9\
    );
\counter_stg3[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg3_reg(7),
      O => \n_0_counter_stg3[4]_i_2\
    );
\counter_stg3[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg3_reg(6),
      O => \n_0_counter_stg3[4]_i_3\
    );
\counter_stg3[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg3_reg(5),
      O => \n_0_counter_stg3[4]_i_4\
    );
\counter_stg3[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg3_reg(4),
      O => \n_0_counter_stg3[4]_i_5\
    );
\counter_stg3[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg3_reg(11),
      O => \n_0_counter_stg3[8]_i_2\
    );
\counter_stg3[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg3_reg(10),
      O => \n_0_counter_stg3[8]_i_3\
    );
\counter_stg3[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg3_reg(9),
      O => \n_0_counter_stg3[8]_i_4\
    );
\counter_stg3[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter_stg3_reg(8),
      O => \n_0_counter_stg3[8]_i_5\
    );
\counter_stg3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \n_7_counter_stg3_reg[0]_i_2\,
      Q => counter_stg3_reg(0),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg3_reg[0]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_counter_stg3_reg[0]_i_2\,
      CO(2) => \n_1_counter_stg3_reg[0]_i_2\,
      CO(1) => \n_2_counter_stg3_reg[0]_i_2\,
      CO(0) => \n_3_counter_stg3_reg[0]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_counter_stg3_reg[0]_i_2\,
      O(2) => \n_5_counter_stg3_reg[0]_i_2\,
      O(1) => \n_6_counter_stg3_reg[0]_i_2\,
      O(0) => \n_7_counter_stg3_reg[0]_i_2\,
      S(3) => \n_0_counter_stg3[0]_i_6\,
      S(2) => \n_0_counter_stg3[0]_i_7\,
      S(1) => \n_0_counter_stg3[0]_i_8\,
      S(0) => \n_0_counter_stg3[0]_i_9\
    );
\counter_stg3_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \n_5_counter_stg3_reg[8]_i_1\,
      Q => counter_stg3_reg(10),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg3_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \n_4_counter_stg3_reg[8]_i_1\,
      Q => counter_stg3_reg(11),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \n_6_counter_stg3_reg[0]_i_2\,
      Q => counter_stg3_reg(1),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \n_5_counter_stg3_reg[0]_i_2\,
      Q => counter_stg3_reg(2),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \n_4_counter_stg3_reg[0]_i_2\,
      Q => counter_stg3_reg(3),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \n_7_counter_stg3_reg[4]_i_1\,
      Q => counter_stg3_reg(4),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg3_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_counter_stg3_reg[0]_i_2\,
      CO(3) => \n_0_counter_stg3_reg[4]_i_1\,
      CO(2) => \n_1_counter_stg3_reg[4]_i_1\,
      CO(1) => \n_2_counter_stg3_reg[4]_i_1\,
      CO(0) => \n_3_counter_stg3_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_counter_stg3_reg[4]_i_1\,
      O(2) => \n_5_counter_stg3_reg[4]_i_1\,
      O(1) => \n_6_counter_stg3_reg[4]_i_1\,
      O(0) => \n_7_counter_stg3_reg[4]_i_1\,
      S(3) => \n_0_counter_stg3[4]_i_2\,
      S(2) => \n_0_counter_stg3[4]_i_3\,
      S(1) => \n_0_counter_stg3[4]_i_4\,
      S(0) => \n_0_counter_stg3[4]_i_5\
    );
\counter_stg3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \n_6_counter_stg3_reg[4]_i_1\,
      Q => counter_stg3_reg(5),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \n_5_counter_stg3_reg[4]_i_1\,
      Q => counter_stg3_reg(6),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \n_4_counter_stg3_reg[4]_i_1\,
      Q => counter_stg3_reg(7),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \n_7_counter_stg3_reg[8]_i_1\,
      Q => counter_stg3_reg(8),
      R => \n_0_counter_stg1[5]_i_1\
    );
\counter_stg3_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_counter_stg3_reg[4]_i_1\,
      CO(3) => \NLW_counter_stg3_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \n_1_counter_stg3_reg[8]_i_1\,
      CO(1) => \n_2_counter_stg3_reg[8]_i_1\,
      CO(0) => \n_3_counter_stg3_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_counter_stg3_reg[8]_i_1\,
      O(2) => \n_5_counter_stg3_reg[8]_i_1\,
      O(1) => \n_6_counter_stg3_reg[8]_i_1\,
      O(0) => \n_7_counter_stg3_reg[8]_i_1\,
      S(3) => \n_0_counter_stg3[8]_i_2\,
      S(2) => \n_0_counter_stg3[8]_i_3\,
      S(1) => \n_0_counter_stg3[8]_i_4\,
      S(0) => \n_0_counter_stg3[8]_i_5\
    );
\counter_stg3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => counter_stg30,
      D => \n_6_counter_stg3_reg[8]_i_1\,
      Q => counter_stg3_reg(9),
      R => \n_0_counter_stg1[5]_i_1\
    );
reset_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => n_0_reset_i_2,
      I1 => n_0_reset_i_3,
      I2 => n_0_reset_i_4,
      I3 => n_0_reset_i_5,
      I4 => \counter_stg1_reg__0\(5),
      O => reset0
    );
reset_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => counter_stg3_reg(8),
      I1 => counter_stg3_reg(7),
      I2 => counter_stg2_reg(4),
      I3 => counter_stg2_reg(8),
      I4 => counter_stg2_reg(10),
      I5 => counter_stg2_reg(11),
      O => n_0_reset_i_2
    );
reset_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
    port map (
      I0 => counter_stg3_reg(3),
      I1 => counter_stg3_reg(4),
      I2 => counter_stg3_reg(11),
      I3 => counter_stg3_reg(10),
      I4 => counter_stg3_reg(5),
      I5 => counter_stg3_reg(6),
      O => n_0_reset_i_3
    );
reset_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => counter_stg2_reg(6),
      I1 => counter_stg2_reg(7),
      I2 => counter_stg3_reg(9),
      I3 => counter_stg3_reg(0),
      I4 => counter_stg2_reg(9),
      I5 => counter_stg3_reg(1),
      O => n_0_reset_i_4
    );
reset_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => counter_stg2_reg(2),
      I1 => counter_stg2_reg(3),
      I2 => counter_stg2_reg(5),
      I3 => counter_stg3_reg(2),
      I4 => counter_stg2_reg(0),
      I5 => counter_stg2_reg(1),
      O => n_0_reset_i_5
    );
reset_reg: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => reset0,
      Q => reset,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0\ is
  port (
    resetdone : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0\ : entity is "gig_eth_pcs_pma_basex_v15_1_sync_block";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0\ is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => data_sync5,
      Q => resetdone,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_10\ is
  port (
    data_out : out STD_LOGIC;
    gt0_txresetdone_out : in STD_LOGIC;
    userclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_10\ : entity is "gig_eth_pcs_pma_basex_v15_1_sync_block";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_10\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_10\ is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => gt0_txresetdone_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_11\ is
  port (
    data_out : out STD_LOGIC;
    I2 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_11\ : entity is "gig_eth_pcs_pma_basex_v15_1_sync_block";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_11\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_11\ is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => I2,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_12\ is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    recclk_mon_count_reset : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    rxresetdone_s3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    cplllock : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_12\ : entity is "gig_eth_pcs_pma_basex_v15_1_sync_block";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_12\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_12\ is
  signal cplllock_sync : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[3]_i_8\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
\FSM_sequential_rx_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88A8FFFF88A80000"
    )
    port map (
      I0 => \out\(1),
      I1 => rxresetdone_s3,
      I2 => I4,
      I3 => I3,
      I4 => \out\(2),
      I5 => \n_0_FSM_sequential_rx_state[3]_i_8\,
      O => O3
    );
\FSM_sequential_rx_state[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5455"
    )
    port map (
      I0 => \out\(3),
      I1 => I4,
      I2 => cplllock_sync,
      I3 => \out\(1),
      O => \n_0_FSM_sequential_rx_state[3]_i_8\
    );
adapt_count_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00100010"
    )
    port map (
      I0 => \out\(3),
      I1 => \out\(2),
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => cplllock_sync,
      I5 => recclk_mon_count_reset,
      O => O1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => cplllock,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => cplllock_sync,
      R => '0'
    );
\reset_time_out_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF10FFFFFF100000"
    )
    port map (
      I0 => \out\(3),
      I1 => \out\(2),
      I2 => cplllock_sync,
      I3 => I1,
      I4 => I2,
      I5 => I3,
      O => O2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_13\ is
  port (
    O1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    O2 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_in : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    time_tlock_max : in STD_LOGIC;
    I6 : in STD_LOGIC;
    rxresetdone_s3 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    data_out : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_13\ : entity is "gig_eth_pcs_pma_basex_v15_1_sync_block";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_13\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_13\ is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal data_valid_sync : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[3]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[3]_i_6\ : STD_LOGIC;
  signal n_0_reset_time_out_i_4 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
\FSM_sequential_rx_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEAE"
    )
    port map (
      I0 => \n_0_FSM_sequential_rx_state[3]_i_3\,
      I1 => I3,
      I2 => \out\(0),
      I3 => I4,
      I4 => \n_0_FSM_sequential_rx_state[3]_i_6\,
      O => E(0)
    );
\FSM_sequential_rx_state[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC4430"
    )
    port map (
      I0 => data_valid_sync,
      I1 => \out\(3),
      I2 => I5,
      I3 => \out\(1),
      I4 => \out\(2),
      O => \n_0_FSM_sequential_rx_state[3]_i_3\
    );
\FSM_sequential_rx_state[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCB8B8BBB8"
    )
    port map (
      I0 => data_valid_sync,
      I1 => \out\(3),
      I2 => mmcm_lock_reclocked,
      I3 => time_tlock_max,
      I4 => I6,
      I5 => \out\(1),
      O => \n_0_FSM_sequential_rx_state[3]_i_6\
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_out,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_valid_sync,
      R => '0'
    );
\reset_time_out_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F88FFFF8F880000"
    )
    port map (
      I0 => rxresetdone_s3,
      I1 => \out\(2),
      I2 => data_valid_sync,
      I3 => \out\(3),
      I4 => \out\(1),
      I5 => n_0_reset_time_out_i_4,
      O => O2
    );
reset_time_out_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF3DDF333F311F3"
    )
    port map (
      I0 => \out\(3),
      I1 => \out\(2),
      I2 => I7,
      I3 => \out\(0),
      I4 => data_valid_sync,
      I5 => mmcm_lock_reclocked,
      O => n_0_reset_time_out_i_4
    );
rx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5FF5FF00008000"
    )
    port map (
      I0 => I1,
      I1 => I2,
      I2 => data_valid_sync,
      I3 => \out\(1),
      I4 => \out\(0),
      I5 => data_in,
      O => O1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_14\ is
  port (
    O1 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    mmcm_lock_reclocked : in STD_LOGIC;
    I1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    I2 : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_14\ : entity is "gig_eth_pcs_pma_basex_v15_1_sync_block";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_14\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_14\ is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal mmcm_lock_i : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \mmcm_lock_reclocked_i_1__0\ : label is "soft_lutpair37";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => mmcm_locked,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => mmcm_lock_i,
      R => '0'
    );
\mmcm_lock_count[9]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => mmcm_lock_i,
      O => SR(0)
    );
\mmcm_lock_reclocked_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABA0000"
    )
    port map (
      I0 => mmcm_lock_reclocked,
      I1 => I1,
      I2 => Q(0),
      I3 => I2,
      I4 => mmcm_lock_i,
      O => O1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_15\ is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_15\ : entity is "gig_eth_pcs_pma_basex_v15_1_sync_block";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_15\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_15\ is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_16\ is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_16\ : entity is "gig_eth_pcs_pma_basex_v15_1_sync_block";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_16\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_16\ is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_17\ is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_17\ : entity is "gig_eth_pcs_pma_basex_v15_1_sync_block";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_17\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_17\ is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_2\ is
  port (
    data_out : out STD_LOGIC;
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_2\ : entity is "gig_eth_pcs_pma_basex_v15_1_sync_block";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_2\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_2\ is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => status_vector(0),
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_4\ is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_4\ : entity is "gig_eth_pcs_pma_basex_v15_1_sync_block";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_4\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_4\ is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_5\ is
  port (
    data_out : out STD_LOGIC;
    I1 : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_5\ : entity is "gig_eth_pcs_pma_basex_v15_1_sync_block";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_5\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_5\ is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => I1,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_6\ is
  port (
    O1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I1 : in STD_LOGIC;
    reset_time_out : in STD_LOGIC;
    I2 : in STD_LOGIC;
    wait_time_done : in STD_LOGIC;
    I3 : in STD_LOGIC;
    txresetdone_s3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    I6 : in STD_LOGIC;
    cplllock : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_6\ : entity is "gig_eth_pcs_pma_basex_v15_1_sync_block";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_6\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_6\ is
  signal cplllock_sync : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[3]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[3]_i_8\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state_reg[3]_i_3\ : STD_LOGIC;
  signal n_0_reset_time_out_i_2 : STD_LOGIC;
  signal n_0_reset_time_out_i_3 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
\FSM_sequential_tx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4AEFEF4F4AEAEA"
    )
    port map (
      I0 => \out\(3),
      I1 => \n_0_FSM_sequential_tx_state_reg[3]_i_3\,
      I2 => \out\(0),
      I3 => I1,
      I4 => I2,
      I5 => wait_time_done,
      O => E(0)
    );
\FSM_sequential_tx_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F400F400F4FFF400"
    )
    port map (
      I0 => reset_time_out,
      I1 => I5,
      I2 => mmcm_lock_reclocked,
      I3 => \out\(2),
      I4 => I6,
      I5 => cplllock_sync,
      O => \n_0_FSM_sequential_tx_state[3]_i_7\
    );
\FSM_sequential_tx_state[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4FFF4FFF400"
    )
    port map (
      I0 => reset_time_out,
      I1 => I3,
      I2 => txresetdone_s3,
      I3 => \out\(2),
      I4 => I4,
      I5 => cplllock_sync,
      O => \n_0_FSM_sequential_tx_state[3]_i_8\
    );
\FSM_sequential_tx_state_reg[3]_i_3\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_FSM_sequential_tx_state[3]_i_7\,
      I1 => \n_0_FSM_sequential_tx_state[3]_i_8\,
      O => \n_0_FSM_sequential_tx_state_reg[3]_i_3\,
      S => \out\(1)
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => cplllock,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => cplllock_sync,
      R => '0'
    );
reset_time_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9F8FFFFF9F80000"
    )
    port map (
      I0 => \out\(3),
      I1 => \out\(0),
      I2 => n_0_reset_time_out_i_2,
      I3 => I1,
      I4 => n_0_reset_time_out_i_3,
      I5 => reset_time_out,
      O => O1
    );
reset_time_out_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
    port map (
      I0 => txresetdone_s3,
      I1 => cplllock_sync,
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => mmcm_lock_reclocked,
      O => n_0_reset_time_out_i_2
    );
reset_time_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505040FF505040FA"
    )
    port map (
      I0 => \out\(3),
      I1 => cplllock_sync,
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => \out\(2),
      I5 => I1,
      O => n_0_reset_time_out_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_7\ is
  port (
    O1 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    mmcm_lock_reclocked : in STD_LOGIC;
    I1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    I2 : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_7\ : entity is "gig_eth_pcs_pma_basex_v15_1_sync_block";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_7\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_7\ is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  signal mmcm_lock_i : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of mmcm_lock_reclocked_i_1 : label is "soft_lutpair52";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => mmcm_locked,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => mmcm_lock_i,
      R => '0'
    );
\mmcm_lock_count[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => mmcm_lock_i,
      O => SR(0)
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABA0000"
    )
    port map (
      I0 => mmcm_lock_reclocked,
      I1 => I1,
      I2 => Q(0),
      I3 => I2,
      I4 => mmcm_lock_i,
      O => O1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_8\ is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    userclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_8\ : entity is "gig_eth_pcs_pma_basex_v15_1_sync_block";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_8\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_8\ is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_9\ is
  port (
    data_out : out STD_LOGIC;
    data_in : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_9\ : entity is "gig_eth_pcs_pma_basex_v15_1_sync_block";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_9\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_9\ is
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_in,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0\ is
  port (
    SIGNAL_DETECT_MOD : out STD_LOGIC;
    O4 : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    userclk2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0\ : entity is "sync_block";
end \gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0\ is
  signal data_out : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is std.standard.true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is std.standard.true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
SIGNAL_DETECT_REG_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => data_out,
      I1 => O4,
      O => SIGNAL_DETECT_MOD
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => signal_detect,
      Q => data_sync1,
      R => '0'
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => data_sync1,
      Q => data_sync2,
      R => '0'
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => data_sync2,
      Q => data_sync3,
      R => '0'
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => data_sync3,
      Q => data_sync4,
      R => '0'
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => data_sync4,
      Q => data_sync5,
      R => '0'
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => data_sync5,
      Q => data_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_eth_pcs_pma_basex_v15_1_GPCS_PMA_GEN is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    gmii_rx_er : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    encommaalign : out STD_LOGIC;
    gmii_rx_dv : out STD_LOGIC;
    O2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    userclk2 : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_tx_en : in STD_LOGIC;
    rxnotintable : in STD_LOGIC;
    rxbuferr : in STD_LOGIC;
    txbuferr : in STD_LOGIC;
    rxdisperr : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcharisk : in STD_LOGIC;
    rxchariscomma : in STD_LOGIC;
    resetdone : in STD_LOGIC;
    I1 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_eth_pcs_pma_basex_v15_1_GPCS_PMA_GEN : entity is "GPCS_PMA_GEN";
end gig_eth_pcs_pma_basex_v15_1_GPCS_PMA_GEN;

architecture STRUCTURE of gig_eth_pcs_pma_basex_v15_1_GPCS_PMA_GEN is
  signal D_1 : STD_LOGIC;
  signal LOOPBACK_INT : STD_LOGIC;
  signal MGT_RX_RESET_INT : STD_LOGIC;
  signal MGT_TX_RESET_INT : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal Q_0 : STD_LOGIC;
  signal RESET_INT : STD_LOGIC;
  signal RESET_INT_PIPE : STD_LOGIC;
  signal RXEVEN : STD_LOGIC;
  signal RXNOTINTABLE_INT : STD_LOGIC;
  signal RXNOTINTABLE_SRL : STD_LOGIC;
  signal RXSYNC_STATUS : STD_LOGIC;
  signal RX_RST_SM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal SIGNAL_DETECT_MOD : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SRESET : STD_LOGIC;
  signal SRESET_PIPE : STD_LOGIC;
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal STATUS_VECTOR_0_PRE : STD_LOGIC;
  signal STATUS_VECTOR_0_PRE0 : STD_LOGIC;
  signal SYNC_STATUS_REG : STD_LOGIC;
  signal SYNC_STATUS_REG0 : STD_LOGIC;
  signal TXBUFERR_INT : STD_LOGIC;
  signal TX_RST_SM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[0]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[0]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_2\ : STD_LOGIC;
  signal \n_0_MGT_RESET.RESET_INT_PIPE_i_1\ : STD_LOGIC;
  signal \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1\ : STD_LOGIC;
  signal \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1\ : STD_LOGIC;
  signal \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1\ : STD_LOGIC;
  signal n_0_TRANSMITTER : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1\ : STD_LOGIC;
  signal n_10_TRANSMITTER : STD_LOGIC;
  signal n_11_TRANSMITTER : STD_LOGIC;
  signal n_12_TRANSMITTER : STD_LOGIC;
  signal n_13_TRANSMITTER : STD_LOGIC;
  signal n_14_TRANSMITTER : STD_LOGIC;
  signal n_15_TRANSMITTER : STD_LOGIC;
  signal n_16_TRANSMITTER : STD_LOGIC;
  signal n_17_TRANSMITTER : STD_LOGIC;
  signal n_18_TRANSMITTER : STD_LOGIC;
  signal n_19_TRANSMITTER : STD_LOGIC;
  signal n_1_TRANSMITTER : STD_LOGIC;
  signal n_20_TRANSMITTER : STD_LOGIC;
  signal n_21_TRANSMITTER : STD_LOGIC;
  signal n_2_TRANSMITTER : STD_LOGIC;
  signal n_3_TRANSMITTER : STD_LOGIC;
  signal n_4_TRANSMITTER : STD_LOGIC;
  signal n_5_TRANSMITTER : STD_LOGIC;
  signal n_6_TRANSMITTER : STD_LOGIC;
  signal n_7_TRANSMITTER : STD_LOGIC;
  signal n_8_TRANSMITTER : STD_LOGIC;
  signal n_9_TRANSMITTER : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of DELAY_RXDISPERR : label is "SRL16";
  attribute box_type : string;
  attribute box_type of DELAY_RXDISPERR : label is "PRIMITIVE";
  attribute srl_name : string;
  attribute srl_name of DELAY_RXDISPERR : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/DELAY_RXDISPERR ";
  attribute XILINX_LEGACY_PRIM of DELAY_RXNOTINTABLE : label is "SRL16";
  attribute box_type of DELAY_RXNOTINTABLE : label is "PRIMITIVE";
  attribute srl_name of DELAY_RXNOTINTABLE : label is "\U0/gig_eth_pcs_pma_basex_v15_1_core/gpcs_pma_inst/DELAY_RXNOTINTABLE ";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[3]\ : label is "yes";
  attribute KEEP of \FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[3]\ : label is "yes";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \MGT_RESET.RESET_INT_PIPE_reg\ : label is std.standard.true;
  attribute ASYNC_REG of \MGT_RESET.RESET_INT_reg\ : label is std.standard.true;
  attribute ASYNC_REG of \MGT_RESET.SRESET_PIPE_reg\ : label is std.standard.true;
  attribute ASYNC_REG of \MGT_RESET.SRESET_reg\ : label is std.standard.true;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1\ : label is "soft_lutpair36";
begin
  O3 <= \^o3\;
  O4 <= \^o4\;
  SR(0) <= \^sr\(0);
  SS(0) <= \^ss\(0);
DELAY_RXDISPERR: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => D_1,
      Q => Q_0
    );
DELAY_RXNOTINTABLE: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => userclk2,
      D => RXNOTINTABLE_INT,
      Q => RXNOTINTABLE_SRL
    );
\FSM_sequential_USE_ROCKET_IO.RX_RST_SM[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1554"
    )
    port map (
      I0 => RX_RST_SM(0),
      I1 => RX_RST_SM(2),
      I2 => RX_RST_SM(3),
      I3 => RX_RST_SM(1),
      O => \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[0]_i_1\
    );
\FSM_sequential_USE_ROCKET_IO.RX_RST_SM[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2666"
    )
    port map (
      I0 => RX_RST_SM(0),
      I1 => RX_RST_SM(1),
      I2 => RX_RST_SM(3),
      I3 => RX_RST_SM(2),
      O => \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[1]_i_1\
    );
\FSM_sequential_USE_ROCKET_IO.RX_RST_SM[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"34CC"
    )
    port map (
      I0 => RX_RST_SM(3),
      I1 => RX_RST_SM(2),
      I2 => RX_RST_SM(0),
      I3 => RX_RST_SM(1),
      O => \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[2]_i_1\
    );
\FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => RESET_INT,
      I1 => p_0_in,
      O => p_0_out
    );
\FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F80"
    )
    port map (
      I0 => RX_RST_SM(0),
      I1 => RX_RST_SM(1),
      I2 => RX_RST_SM(2),
      I3 => RX_RST_SM(3),
      O => \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_2\
    );
\FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[0]_i_1\,
      Q => RX_RST_SM(0),
      S => p_0_out
    );
\FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[1]_i_1\,
      Q => RX_RST_SM(1),
      R => p_0_out
    );
\FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[2]_i_1\,
      Q => RX_RST_SM(2),
      R => p_0_out
    );
\FSM_sequential_USE_ROCKET_IO.RX_RST_SM_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_FSM_sequential_USE_ROCKET_IO.RX_RST_SM[3]_i_2\,
      Q => RX_RST_SM(3),
      R => p_0_out
    );
\FSM_sequential_USE_ROCKET_IO.TX_RST_SM[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1554"
    )
    port map (
      I0 => TX_RST_SM(0),
      I1 => TX_RST_SM(2),
      I2 => TX_RST_SM(3),
      I3 => TX_RST_SM(1),
      O => \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[0]_i_1\
    );
\FSM_sequential_USE_ROCKET_IO.TX_RST_SM[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2666"
    )
    port map (
      I0 => TX_RST_SM(0),
      I1 => TX_RST_SM(1),
      I2 => TX_RST_SM(3),
      I3 => TX_RST_SM(2),
      O => \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[1]_i_1\
    );
\FSM_sequential_USE_ROCKET_IO.TX_RST_SM[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"34CC"
    )
    port map (
      I0 => TX_RST_SM(3),
      I1 => TX_RST_SM(2),
      I2 => TX_RST_SM(0),
      I3 => TX_RST_SM(1),
      O => \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[2]_i_1\
    );
\FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => RESET_INT,
      I1 => TXBUFERR_INT,
      O => p_1_out
    );
\FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F80"
    )
    port map (
      I0 => TX_RST_SM(0),
      I1 => TX_RST_SM(1),
      I2 => TX_RST_SM(2),
      I3 => TX_RST_SM(3),
      O => \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_2\
    );
\FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[0]_i_1\,
      Q => TX_RST_SM(0),
      S => p_1_out
    );
\FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[1]_i_1\,
      Q => TX_RST_SM(1),
      R => p_1_out
    );
\FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[2]_i_1\,
      Q => TX_RST_SM(2),
      R => p_1_out
    );
\FSM_sequential_USE_ROCKET_IO.TX_RST_SM_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_FSM_sequential_USE_ROCKET_IO.TX_RST_SM[3]_i_2\,
      Q => TX_RST_SM(3),
      R => p_1_out
    );
\MGT_RESET.RESET_INT_PIPE_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => reset,
      I1 => mmcm_locked,
      O => \n_0_MGT_RESET.RESET_INT_PIPE_i_1\
    );
\MGT_RESET.RESET_INT_PIPE_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => '0',
      PRE => \n_0_MGT_RESET.RESET_INT_PIPE_i_1\,
      Q => RESET_INT_PIPE
    );
\MGT_RESET.RESET_INT_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => RESET_INT_PIPE,
      PRE => \n_0_MGT_RESET.RESET_INT_PIPE_i_1\,
      Q => RESET_INT
    );
\MGT_RESET.SRESET_PIPE_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => RESET_INT,
      Q => SRESET_PIPE,
      R => '0'
    );
\MGT_RESET.SRESET_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => SRESET_PIPE,
      Q => SRESET,
      S => RESET_INT
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => configuration_vector(0),
      I1 => SRESET,
      O => \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1\
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => configuration_vector(1),
      I1 => SRESET,
      O => \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1\
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => configuration_vector(2),
      I1 => SRESET,
      O => \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1\
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1\,
      Q => LOOPBACK_INT,
      R => '0'
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1\,
      Q => \^o4\,
      R => '0'
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1\,
      Q => \^o3\,
      R => '0'
    );
RECEIVER: entity work.\gig_eth_pcs_pma_basex_v15_1_RX__parameterized0\
    port map (
      D_1 => D_1,
      I1 => \^sr\(0),
      I2 => \n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg\,
      I3 => \^o4\,
      I4(1) => \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1]\,
      I4(0) => \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0]\,
      Q(7) => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7]\,
      Q(6) => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6]\,
      Q(5) => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5]\,
      Q(4) => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4]\,
      Q(3) => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3]\,
      Q(2) => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2]\,
      Q(1) => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1]\,
      Q(0) => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0]\,
      RXEVEN => RXEVEN,
      RXNOTINTABLE_INT => RXNOTINTABLE_INT,
      RXSYNC_STATUS => RXSYNC_STATUS,
      SR(0) => \^o3\,
      SYNC_STATUS_REG0 => SYNC_STATUS_REG0,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      p_0_in => p_0_in,
      status_vector(2 downto 0) => status_vector(4 downto 2),
      userclk2 => userclk2
    );
RXDISPERR_REG_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => Q_0,
      Q => status_vector(5),
      R => '0'
    );
RXNOTINTABLE_REG_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => RXNOTINTABLE_SRL,
      Q => status_vector(6),
      R => '0'
    );
STATUS_VECTOR_0_PRE_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => STATUS_VECTOR_0_PRE0,
      Q => STATUS_VECTOR_0_PRE,
      R => '0'
    );
\STATUS_VECTOR_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => STATUS_VECTOR_0_PRE,
      Q => status_vector(0),
      R => '0'
    );
\STATUS_VECTOR_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => SYNC_STATUS_REG,
      Q => status_vector(1),
      R => '0'
    );
SYNCHRONISATION: entity work.gig_eth_pcs_pma_basex_v15_1_SYNCHRONISE
    port map (
      D_1 => D_1,
      I1 => \^sr\(0),
      I2 => \n_0_USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg\,
      I3 => \n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg\,
      LOOPBACK_INT => LOOPBACK_INT,
      RXEVEN => RXEVEN,
      RXNOTINTABLE_INT => RXNOTINTABLE_INT,
      RXSYNC_STATUS => RXSYNC_STATUS,
      SIGNAL_DETECT_MOD => SIGNAL_DETECT_MOD,
      STATUS_VECTOR_0_PRE0 => STATUS_VECTOR_0_PRE0,
      SYNC_STATUS_REG0 => SYNC_STATUS_REG0,
      encommaalign => encommaalign,
      p_0_in => p_0_in,
      resetdone => resetdone,
      userclk2 => userclk2
    );
SYNC_SIGNAL_DETECT: entity work.\gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0\
    port map (
      O4 => \^o4\,
      SIGNAL_DETECT_MOD => SIGNAL_DETECT_MOD,
      signal_detect => signal_detect,
      userclk2 => userclk2
    );
SYNC_STATUS_REG_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => RXSYNC_STATUS,
      Q => SYNC_STATUS_REG,
      R => '0'
    );
TRANSMITTER: entity work.\gig_eth_pcs_pma_basex_v15_1_TX__parameterized0\
    port map (
      D(3) => n_3_TRANSMITTER,
      D(2) => n_4_TRANSMITTER,
      D(1) => n_5_TRANSMITTER,
      D(0) => n_6_TRANSMITTER,
      I1 => \^ss\(0),
      I2(7 downto 0) => I1(7 downto 0),
      LOOPBACK_INT => LOOPBACK_INT,
      O1 => n_0_TRANSMITTER,
      O10(7) => n_13_TRANSMITTER,
      O10(6) => n_14_TRANSMITTER,
      O10(5) => n_15_TRANSMITTER,
      O10(4) => n_16_TRANSMITTER,
      O10(3) => n_17_TRANSMITTER,
      O10(2) => n_18_TRANSMITTER,
      O10(1) => n_19_TRANSMITTER,
      O10(0) => n_20_TRANSMITTER,
      O11 => n_21_TRANSMITTER,
      O2 => n_1_TRANSMITTER,
      O3 => n_2_TRANSMITTER,
      O4 => n_7_TRANSMITTER,
      O5 => n_8_TRANSMITTER,
      O6 => n_9_TRANSMITTER,
      O7 => n_10_TRANSMITTER,
      O8 => n_11_TRANSMITTER,
      O9 => n_12_TRANSMITTER,
      SR(0) => \^o3\,
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      rxchariscomma => rxchariscomma,
      rxcharisk => rxcharisk,
      userclk2 => userclk2
    );
\USE_ROCKET_IO.MGT_RX_RESET_INT_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFE"
    )
    port map (
      I0 => RX_RST_SM(0),
      I1 => RX_RST_SM(1),
      I2 => RX_RST_SM(2),
      I3 => RX_RST_SM(3),
      O => MGT_RX_RESET_INT
    );
\USE_ROCKET_IO.MGT_RX_RESET_INT_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => MGT_RX_RESET_INT,
      Q => \^sr\(0),
      S => p_0_out
    );
\USE_ROCKET_IO.MGT_TX_RESET_INT_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFE"
    )
    port map (
      I0 => TX_RST_SM(0),
      I1 => TX_RST_SM(1),
      I2 => TX_RST_SM(2),
      I3 => TX_RST_SM(3),
      O => MGT_TX_RESET_INT
    );
\USE_ROCKET_IO.MGT_TX_RESET_INT_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => MGT_TX_RESET_INT,
      Q => \^ss\(0),
      S => p_1_out
    );
\USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => rxbuferr,
      Q => p_0_in,
      R => \n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1\
    );
\USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_12_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg\,
      R => \^sr\(0)
    );
\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_11_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg\,
      R => \^sr\(0)
    );
\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => Q(0),
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0]\,
      R => \n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1\
    );
\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => Q(1),
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1]\,
      R => \n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1\
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_20_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0]\,
      R => \^sr\(0)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_19_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1]\,
      R => \^sr\(0)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_18_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2]\,
      R => \^sr\(0)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_17_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3]\,
      R => \^sr\(0)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_16_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4]\,
      R => \^sr\(0)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_15_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5]\,
      R => \^sr\(0)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_14_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6]\,
      R => \^sr\(0)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => n_13_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7]\,
      R => \^sr\(0)
    );
\USE_ROCKET_IO.NO_1588.RXDISPERR_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => rxdisperr,
      Q => D_1,
      R => \n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1\
    );
\USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \^sr\(0),
      I1 => LOOPBACK_INT,
      O => \n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1\
    );
\USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => rxnotintable,
      Q => RXNOTINTABLE_INT,
      R => \n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1\
    );
\USE_ROCKET_IO.TXBUFERR_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => txbuferr,
      Q => TXBUFERR_INT,
      R => \^ss\(0)
    );
\USE_ROCKET_IO.TXCHARDISPMODE_reg\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_1_TRANSMITTER,
      Q => D(0),
      R => \^ss\(0)
    );
\USE_ROCKET_IO.TXCHARDISPVAL_reg\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_TRANSMITTER,
      Q => O2(0),
      R => '0'
    );
\USE_ROCKET_IO.TXCHARISK_reg\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_10_TRANSMITTER,
      Q => O1(0),
      R => \^ss\(0)
    );
\USE_ROCKET_IO.TXDATA_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_6_TRANSMITTER,
      Q => O5(0),
      R => '0'
    );
\USE_ROCKET_IO.TXDATA_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_5_TRANSMITTER,
      Q => O5(1),
      R => '0'
    );
\USE_ROCKET_IO.TXDATA_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => userclk2,
      CE => '1',
      D => n_9_TRANSMITTER,
      Q => O5(2),
      S => n_21_TRANSMITTER
    );
\USE_ROCKET_IO.TXDATA_reg[3]\: unisim.vcomponents.FDSE
    port map (
      C => userclk2,
      CE => '1',
      D => n_8_TRANSMITTER,
      Q => O5(3),
      S => n_21_TRANSMITTER
    );
\USE_ROCKET_IO.TXDATA_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_4_TRANSMITTER,
      Q => O5(4),
      R => '0'
    );
\USE_ROCKET_IO.TXDATA_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => userclk2,
      CE => '1',
      D => n_7_TRANSMITTER,
      Q => O5(5),
      S => n_21_TRANSMITTER
    );
\USE_ROCKET_IO.TXDATA_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_3_TRANSMITTER,
      Q => O5(6),
      R => '0'
    );
\USE_ROCKET_IO.TXDATA_reg[7]\: unisim.vcomponents.FDSE
    port map (
      C => userclk2,
      CE => '1',
      D => n_2_TRANSMITTER,
      Q => O5(7),
      S => n_21_TRANSMITTER
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_multi_gt__parameterized0\ is
  port (
    cplllock : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    I_0 : out STD_LOGIC;
    O1 : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    O2 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O7 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ack_flag : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    gtrefclk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    gt0_gttxreset_in0_out : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_in : in STD_LOGIC;
    gt0_qplloutrefclk_in : in STD_LOGIC;
    RXDFELFHOLD : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    RXUSERRDY : in STD_LOGIC;
    userclk : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    TXUSERRDY : in STD_LOGIC;
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I4 : in STD_LOGIC;
    reset_out_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_multi_gt__parameterized0\ : entity is "gig_eth_pcs_pma_basex_v15_1_GTWIZARD_multi_gt";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_multi_gt__parameterized0\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_multi_gt__parameterized0\ is
begin
gt0_GTWIZARD_i: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_GT__parameterized0\
    port map (
      D(1 downto 0) => D(1 downto 0),
      I1(1 downto 0) => I1(1 downto 0),
      I2(1 downto 0) => I2(1 downto 0),
      I3(1 downto 0) => I3(1 downto 0),
      I4 => I4,
      I_0 => I_0,
      O1 => O1,
      O2 => O2,
      O3(15 downto 0) => O3(15 downto 0),
      O4(1 downto 0) => O4(1 downto 0),
      O5(1 downto 0) => O5(1 downto 0),
      O6(1 downto 0) => O6(1 downto 0),
      O7(1 downto 0) => O7(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXDFELFHOLD => RXDFELFHOLD,
      RXPD(0) => RXPD(0),
      RXUSERRDY => RXUSERRDY,
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      TXUSERRDY => TXUSERRDY,
      ack_flag => ack_flag,
      cplllock => cplllock,
      data_in => data_in,
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_qplloutclk_in => gt0_qplloutclk_in,
      gt0_qplloutrefclk_in => gt0_qplloutrefclk_in,
      gtrefclk => gtrefclk,
      independent_clock_bufg => independent_clock_bufg,
      reset => reset,
      reset_out => reset_out,
      reset_out_1 => reset_out_1,
      rxn => rxn,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk,
      userclk2 => userclk2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_RX_STARTUP_FSM__parameterized0\ is
  port (
    gt0_rxresetdone_out : out STD_LOGIC;
    RXUSERRDY : out STD_LOGIC;
    RXDFELFHOLD : out STD_LOGIC;
    data_in : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    userclk : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    data_out : in STD_LOGIC;
    cplllock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_RX_STARTUP_FSM__parameterized0\ : entity is "gig_eth_pcs_pma_basex_v15_1_RX_STARTUP_FSM";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_RX_STARTUP_FSM__parameterized0\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_RX_STARTUP_FSM__parameterized0\ is
  signal GTRXRESET : STD_LOGIC;
  signal \^rxdfelfhold\ : STD_LOGIC;
  signal \^rxuserrdy\ : STD_LOGIC;
  signal \adapt_wait_hw.adapt_count_reg\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal data_out_0 : STD_LOGIC;
  signal \^gt0_rxresetdone_out\ : STD_LOGIC;
  signal \init_wait_count_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \mmcm_lock_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[0]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[0]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[3]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rx_state[3]_i_4\ : STD_LOGIC;
  signal n_0_RXDFEAGCHOLD_i_1 : STD_LOGIC;
  signal n_0_RXUSERRDY_i_1 : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[0]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[0]_i_10\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[0]_i_11\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[0]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[0]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[0]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[0]_i_6\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[0]_i_7\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[0]_i_8\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[0]_i_9\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[12]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[12]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[12]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[12]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[16]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[16]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[16]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[16]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[20]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[20]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[20]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[4]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[4]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[4]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[4]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[8]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[8]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[8]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[8]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.time_out_adapt_i_1\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.time_out_adapt_i_2\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.time_out_adapt_i_3\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.time_out_adapt_i_4\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.time_out_adapt_i_5\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.time_out_adapt_reg\ : STD_LOGIC;
  signal n_0_check_tlock_max_i_1 : STD_LOGIC;
  signal n_0_check_tlock_max_reg : STD_LOGIC;
  signal n_0_gtrxreset_i_i_1 : STD_LOGIC;
  signal \n_0_init_wait_count[0]_i_1__0\ : STD_LOGIC;
  signal \n_0_init_wait_count[6]_i_1__0\ : STD_LOGIC;
  signal \n_0_init_wait_count[6]_i_3__0\ : STD_LOGIC;
  signal \n_0_init_wait_done_i_1__0\ : STD_LOGIC;
  signal n_0_init_wait_done_reg : STD_LOGIC;
  signal \n_0_mmcm_lock_count[2]_i_1__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[3]_i_1__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[4]_i_1__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[5]_i_1__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_2__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_4__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_reclocked_i_2__0\ : STD_LOGIC;
  signal \n_0_reset_time_out_i_3__0\ : STD_LOGIC;
  signal n_0_reset_time_out_reg : STD_LOGIC;
  signal \n_0_run_phase_alignment_int_i_1__0\ : STD_LOGIC;
  signal n_0_run_phase_alignment_int_reg : STD_LOGIC;
  signal n_0_run_phase_alignment_int_s3_reg : STD_LOGIC;
  signal n_0_rx_fsm_reset_done_int_i_2 : STD_LOGIC;
  signal n_0_rx_fsm_reset_done_int_i_3 : STD_LOGIC;
  signal n_0_sync_cplllock : STD_LOGIC;
  signal n_0_sync_data_valid : STD_LOGIC;
  signal n_0_sync_mmcm_lock_reclocked : STD_LOGIC;
  signal n_0_time_out_1us_i_1 : STD_LOGIC;
  signal n_0_time_out_1us_i_2 : STD_LOGIC;
  signal n_0_time_out_1us_i_3 : STD_LOGIC;
  signal n_0_time_out_1us_reg : STD_LOGIC;
  signal n_0_time_out_2ms_i_1 : STD_LOGIC;
  signal n_0_time_out_2ms_i_2 : STD_LOGIC;
  signal n_0_time_out_2ms_i_3 : STD_LOGIC;
  signal n_0_time_out_2ms_reg : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_1\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_3__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_4__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_5__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_6__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_7__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_8\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_9__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_3__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_4__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_5__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_3__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_4__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_3__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_4__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_5__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_3__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_4__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_5__0\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_0_time_out_wait_bypass_i_1__0\ : STD_LOGIC;
  signal n_0_time_out_wait_bypass_reg : STD_LOGIC;
  signal n_0_time_tlock_max_i_10 : STD_LOGIC;
  signal n_0_time_tlock_max_i_11 : STD_LOGIC;
  signal n_0_time_tlock_max_i_12 : STD_LOGIC;
  signal n_0_time_tlock_max_i_13 : STD_LOGIC;
  signal n_0_time_tlock_max_i_14 : STD_LOGIC;
  signal n_0_time_tlock_max_i_15 : STD_LOGIC;
  signal n_0_time_tlock_max_i_16 : STD_LOGIC;
  signal n_0_time_tlock_max_i_17 : STD_LOGIC;
  signal n_0_time_tlock_max_i_18 : STD_LOGIC;
  signal n_0_time_tlock_max_i_19 : STD_LOGIC;
  signal \n_0_time_tlock_max_i_1__0\ : STD_LOGIC;
  signal n_0_time_tlock_max_i_20 : STD_LOGIC;
  signal n_0_time_tlock_max_i_21 : STD_LOGIC;
  signal n_0_time_tlock_max_i_4 : STD_LOGIC;
  signal n_0_time_tlock_max_i_5 : STD_LOGIC;
  signal n_0_time_tlock_max_i_6 : STD_LOGIC;
  signal n_0_time_tlock_max_i_8 : STD_LOGIC;
  signal n_0_time_tlock_max_i_9 : STD_LOGIC;
  signal n_0_time_tlock_max_reg_i_3 : STD_LOGIC;
  signal n_0_time_tlock_max_reg_i_7 : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_2__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_4__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_5__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_6__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_7__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_8__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_9\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[12]_i_2__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_2__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_3__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_4__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_5__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_2__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_3__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_4__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_5__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[1]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[2]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[3]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[4]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[5]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[6]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[6]_i_2__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[6]_i_3__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[6]_i_4__0\ : STD_LOGIC;
  signal \n_1_adapt_wait_hw.adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_1_adapt_wait_hw.adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_wait_hw.adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_wait_hw.adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_wait_hw.adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal n_1_sync_cplllock : STD_LOGIC;
  signal n_1_sync_data_valid : STD_LOGIC;
  signal n_1_sync_mmcm_lock_reclocked : STD_LOGIC;
  signal \n_1_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal n_1_time_tlock_max_reg_i_3 : STD_LOGIC;
  signal n_1_time_tlock_max_reg_i_7 : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_2_adapt_wait_hw.adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_2_adapt_wait_hw.adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_wait_hw.adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_wait_hw.adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_wait_hw.adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_wait_hw.adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal n_2_sync_cplllock : STD_LOGIC;
  signal n_2_sync_data_valid : STD_LOGIC;
  signal \n_2_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal n_2_time_tlock_max_reg_i_3 : STD_LOGIC;
  signal n_2_time_tlock_max_reg_i_7 : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_3_adapt_wait_hw.adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_3_adapt_wait_hw.adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_wait_hw.adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_wait_hw.adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_wait_hw.adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_wait_hw.adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal n_3_time_tlock_max_reg_i_2 : STD_LOGIC;
  signal n_3_time_tlock_max_reg_i_3 : STD_LOGIC;
  signal n_3_time_tlock_max_reg_i_7 : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_4_adapt_wait_hw.adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_4_adapt_wait_hw.adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_wait_hw.adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_wait_hw.adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_wait_hw.adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_5_adapt_wait_hw.adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_5_adapt_wait_hw.adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_wait_hw.adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_wait_hw.adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_wait_hw.adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_wait_hw.adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_6_adapt_wait_hw.adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_6_adapt_wait_hw.adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_wait_hw.adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_wait_hw.adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_wait_hw.adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_wait_hw.adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_7_adapt_wait_hw.adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_7_adapt_wait_hw.adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_wait_hw.adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_wait_hw.adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_wait_hw.adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_wait_hw.adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal recclk_mon_count_reset : STD_LOGIC;
  signal rx_fsm_reset_done_int_s2 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal rx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_state15_out : STD_LOGIC;
  signal rx_state16_out : STD_LOGIC;
  signal rxresetdone_s2 : STD_LOGIC;
  signal rxresetdone_s3 : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max : STD_LOGIC;
  signal time_tlock_max1 : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wait_time_cnt0__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \wait_time_cnt_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_adapt_wait_hw.adapt_count_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_adapt_wait_hw.adapt_count_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_time_tlock_max_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_time_tlock_max_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_time_tlock_max_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_time_tlock_max_reg_i_7_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_rx_state[2]_i_2\ : label is "soft_lutpair46";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_rx_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rx_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rx_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rx_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM of \adapt_wait_hw.adapt_count[0]_i_7\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \adapt_wait_hw.time_out_adapt_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_2__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_3__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \mmcm_lock_count[0]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mmcm_lock_count[8]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_4__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \mmcm_lock_reclocked_i_2__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of rx_fsm_reset_done_int_i_3 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of time_out_1us_i_1 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of time_out_1us_i_2 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of time_out_2ms_i_3 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \time_tlock_max_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \wait_time_cnt[0]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1__0\ : label is "soft_lutpair39";
begin
  RXDFELFHOLD <= \^rxdfelfhold\;
  RXUSERRDY <= \^rxuserrdy\;
  gt0_rxresetdone_out <= \^gt0_rxresetdone_out\;
\FSM_sequential_rx_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"444F"
    )
    port map (
      I0 => rx_state(3),
      I1 => \n_0_FSM_sequential_rx_state[0]_i_2\,
      I2 => rx_state(2),
      I3 => rx_state(0),
      O => \n_0_FSM_sequential_rx_state[0]_i_1\
    );
\FSM_sequential_rx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4E0AEE2A4E0ACE0A"
    )
    port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => rx_state(0),
      I3 => n_0_time_out_2ms_reg,
      I4 => n_0_reset_time_out_reg,
      I5 => time_tlock_max,
      O => \n_0_FSM_sequential_rx_state[0]_i_2\
    );
\FSM_sequential_rx_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F0000FFDF00"
    )
    port map (
      I0 => time_tlock_max,
      I1 => n_0_reset_time_out_reg,
      I2 => rx_state(2),
      I3 => rx_state(0),
      I4 => rx_state(1),
      I5 => rx_state(3),
      O => \n_0_FSM_sequential_rx_state[1]_i_1\
    );
\FSM_sequential_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111004015150040"
    )
    port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => rx_state(1),
      I3 => n_0_time_out_2ms_reg,
      I4 => rx_state(2),
      I5 => rx_state16_out,
      O => \n_0_FSM_sequential_rx_state[2]_i_1\
    );
\FSM_sequential_rx_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_tlock_max,
      I1 => n_0_reset_time_out_reg,
      O => rx_state16_out
    );
\FSM_sequential_rx_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A00A2500A00A2"
    )
    port map (
      I0 => rx_state(3),
      I1 => time_out_wait_bypass_s3,
      I2 => rx_state(1),
      I3 => rx_state(2),
      I4 => rx_state(0),
      I5 => rx_state15_out,
      O => \n_0_FSM_sequential_rx_state[3]_i_2\
    );
\FSM_sequential_rx_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F1F101010"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(6),
      I1 => \n_0_wait_time_cnt[6]_i_4__0\,
      I2 => rx_state(1),
      I3 => I1,
      I4 => rx_state(2),
      I5 => rx_state(3),
      O => \n_0_FSM_sequential_rx_state[3]_i_4\
    );
\FSM_sequential_rx_state[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => n_0_time_out_2ms_reg,
      I1 => n_0_reset_time_out_reg,
      O => rx_state15_out
    );
\FSM_sequential_rx_state_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => n_1_sync_data_valid,
      D => \n_0_FSM_sequential_rx_state[0]_i_1\,
      Q => rx_state(0),
      R => pma_reset
    );
\FSM_sequential_rx_state_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => n_1_sync_data_valid,
      D => \n_0_FSM_sequential_rx_state[1]_i_1\,
      Q => rx_state(1),
      R => pma_reset
    );
\FSM_sequential_rx_state_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => n_1_sync_data_valid,
      D => \n_0_FSM_sequential_rx_state[2]_i_1\,
      Q => rx_state(2),
      R => pma_reset
    );
\FSM_sequential_rx_state_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => n_1_sync_data_valid,
      D => \n_0_FSM_sequential_rx_state[3]_i_2\,
      Q => rx_state(3),
      R => pma_reset
    );
RXDFEAGCHOLD_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
    port map (
      I0 => rx_state(2),
      I1 => rx_state(1),
      I2 => \n_0_adapt_wait_hw.time_out_adapt_reg\,
      I3 => rx_state(0),
      I4 => rx_state(3),
      I5 => \^rxdfelfhold\,
      O => n_0_RXDFEAGCHOLD_i_1
    );
RXDFEAGCHOLD_reg: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_RXDFEAGCHOLD_i_1,
      Q => \^rxdfelfhold\,
      R => pma_reset
    );
RXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD2000"
    )
    port map (
      I0 => rx_state(0),
      I1 => rx_state(3),
      I2 => rx_state(2),
      I3 => rx_state(1),
      I4 => \^rxuserrdy\,
      O => n_0_RXUSERRDY_i_1
    );
RXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_RXUSERRDY_i_1,
      Q => \^rxuserrdy\,
      R => pma_reset
    );
adapt_count_reset_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_sync_cplllock,
      Q => recclk_mon_count_reset,
      S => pma_reset
    );
\adapt_wait_hw.adapt_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFFFFFFFFFF"
    )
    port map (
      I0 => \n_0_adapt_wait_hw.adapt_count[0]_i_3\,
      I1 => \n_0_adapt_wait_hw.adapt_count[0]_i_4\,
      I2 => \adapt_wait_hw.adapt_count_reg\(5),
      I3 => \n_0_adapt_wait_hw.adapt_count[0]_i_5\,
      I4 => \n_0_adapt_wait_hw.adapt_count[0]_i_6\,
      I5 => \n_0_adapt_wait_hw.adapt_count[0]_i_7\,
      O => \n_0_adapt_wait_hw.adapt_count[0]_i_1\
    );
\adapt_wait_hw.adapt_count[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(1),
      O => \n_0_adapt_wait_hw.adapt_count[0]_i_10\
    );
\adapt_wait_hw.adapt_count[0]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(0),
      O => \n_0_adapt_wait_hw.adapt_count[0]_i_11\
    );
\adapt_wait_hw.adapt_count[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(9),
      I1 => \adapt_wait_hw.adapt_count_reg\(19),
      I2 => \adapt_wait_hw.adapt_count_reg\(18),
      I3 => \adapt_wait_hw.adapt_count_reg\(4),
      I4 => \adapt_wait_hw.adapt_count_reg\(17),
      I5 => \adapt_wait_hw.adapt_count_reg\(16),
      O => \n_0_adapt_wait_hw.adapt_count[0]_i_3\
    );
\adapt_wait_hw.adapt_count[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(1),
      I1 => \adapt_wait_hw.adapt_count_reg\(12),
      I2 => \adapt_wait_hw.adapt_count_reg\(3),
      I3 => \adapt_wait_hw.adapt_count_reg\(0),
      I4 => \adapt_wait_hw.adapt_count_reg\(20),
      I5 => \adapt_wait_hw.adapt_count_reg\(2),
      O => \n_0_adapt_wait_hw.adapt_count[0]_i_4\
    );
\adapt_wait_hw.adapt_count[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(6),
      I1 => \adapt_wait_hw.adapt_count_reg\(8),
      O => \n_0_adapt_wait_hw.adapt_count[0]_i_5\
    );
\adapt_wait_hw.adapt_count[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(13),
      I1 => \adapt_wait_hw.adapt_count_reg\(7),
      I2 => \adapt_wait_hw.adapt_count_reg\(22),
      I3 => \adapt_wait_hw.adapt_count_reg\(21),
      I4 => \adapt_wait_hw.adapt_count_reg\(10),
      I5 => \adapt_wait_hw.adapt_count_reg\(11),
      O => \n_0_adapt_wait_hw.adapt_count[0]_i_6\
    );
\adapt_wait_hw.adapt_count[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(14),
      I1 => \adapt_wait_hw.adapt_count_reg\(15),
      O => \n_0_adapt_wait_hw.adapt_count[0]_i_7\
    );
\adapt_wait_hw.adapt_count[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(3),
      O => \n_0_adapt_wait_hw.adapt_count[0]_i_8\
    );
\adapt_wait_hw.adapt_count[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(2),
      O => \n_0_adapt_wait_hw.adapt_count[0]_i_9\
    );
\adapt_wait_hw.adapt_count[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(15),
      O => \n_0_adapt_wait_hw.adapt_count[12]_i_2\
    );
\adapt_wait_hw.adapt_count[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(14),
      O => \n_0_adapt_wait_hw.adapt_count[12]_i_3\
    );
\adapt_wait_hw.adapt_count[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(13),
      O => \n_0_adapt_wait_hw.adapt_count[12]_i_4\
    );
\adapt_wait_hw.adapt_count[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(12),
      O => \n_0_adapt_wait_hw.adapt_count[12]_i_5\
    );
\adapt_wait_hw.adapt_count[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(19),
      O => \n_0_adapt_wait_hw.adapt_count[16]_i_2\
    );
\adapt_wait_hw.adapt_count[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(18),
      O => \n_0_adapt_wait_hw.adapt_count[16]_i_3\
    );
\adapt_wait_hw.adapt_count[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(17),
      O => \n_0_adapt_wait_hw.adapt_count[16]_i_4\
    );
\adapt_wait_hw.adapt_count[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(16),
      O => \n_0_adapt_wait_hw.adapt_count[16]_i_5\
    );
\adapt_wait_hw.adapt_count[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(22),
      O => \n_0_adapt_wait_hw.adapt_count[20]_i_2\
    );
\adapt_wait_hw.adapt_count[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(21),
      O => \n_0_adapt_wait_hw.adapt_count[20]_i_3\
    );
\adapt_wait_hw.adapt_count[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(20),
      O => \n_0_adapt_wait_hw.adapt_count[20]_i_4\
    );
\adapt_wait_hw.adapt_count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(7),
      O => \n_0_adapt_wait_hw.adapt_count[4]_i_2\
    );
\adapt_wait_hw.adapt_count[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(6),
      O => \n_0_adapt_wait_hw.adapt_count[4]_i_3\
    );
\adapt_wait_hw.adapt_count[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(5),
      O => \n_0_adapt_wait_hw.adapt_count[4]_i_4\
    );
\adapt_wait_hw.adapt_count[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(4),
      O => \n_0_adapt_wait_hw.adapt_count[4]_i_5\
    );
\adapt_wait_hw.adapt_count[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(11),
      O => \n_0_adapt_wait_hw.adapt_count[8]_i_2\
    );
\adapt_wait_hw.adapt_count[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(10),
      O => \n_0_adapt_wait_hw.adapt_count[8]_i_3\
    );
\adapt_wait_hw.adapt_count[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(9),
      O => \n_0_adapt_wait_hw.adapt_count[8]_i_4\
    );
\adapt_wait_hw.adapt_count[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(8),
      O => \n_0_adapt_wait_hw.adapt_count[8]_i_5\
    );
\adapt_wait_hw.adapt_count_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_7_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      Q => \adapt_wait_hw.adapt_count_reg\(0),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      CO(2) => \n_1_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      CO(1) => \n_2_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      CO(0) => \n_3_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      O(2) => \n_5_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      O(1) => \n_6_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      O(0) => \n_7_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      S(3) => \n_0_adapt_wait_hw.adapt_count[0]_i_8\,
      S(2) => \n_0_adapt_wait_hw.adapt_count[0]_i_9\,
      S(1) => \n_0_adapt_wait_hw.adapt_count[0]_i_10\,
      S(0) => \n_0_adapt_wait_hw.adapt_count[0]_i_11\
    );
\adapt_wait_hw.adapt_count_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_5_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(10),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_4_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(11),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_7_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(12),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      CO(3) => \n_0_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      CO(2) => \n_1_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      CO(1) => \n_2_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      CO(0) => \n_3_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      O(2) => \n_5_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      O(1) => \n_6_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      O(0) => \n_7_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      S(3) => \n_0_adapt_wait_hw.adapt_count[12]_i_2\,
      S(2) => \n_0_adapt_wait_hw.adapt_count[12]_i_3\,
      S(1) => \n_0_adapt_wait_hw.adapt_count[12]_i_4\,
      S(0) => \n_0_adapt_wait_hw.adapt_count[12]_i_5\
    );
\adapt_wait_hw.adapt_count_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_6_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(13),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_5_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(14),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_4_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(15),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_7_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(16),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      CO(3) => \n_0_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      CO(2) => \n_1_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      CO(1) => \n_2_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      CO(0) => \n_3_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      O(2) => \n_5_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      O(1) => \n_6_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      O(0) => \n_7_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      S(3) => \n_0_adapt_wait_hw.adapt_count[16]_i_2\,
      S(2) => \n_0_adapt_wait_hw.adapt_count[16]_i_3\,
      S(1) => \n_0_adapt_wait_hw.adapt_count[16]_i_4\,
      S(0) => \n_0_adapt_wait_hw.adapt_count[16]_i_5\
    );
\adapt_wait_hw.adapt_count_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_6_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(17),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_5_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(18),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_4_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(19),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_6_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      Q => \adapt_wait_hw.adapt_count_reg\(1),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_7_adapt_wait_hw.adapt_count_reg[20]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(20),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      CO(3 downto 2) => \NLW_adapt_wait_hw.adapt_count_reg[20]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_2_adapt_wait_hw.adapt_count_reg[20]_i_1\,
      CO(0) => \n_3_adapt_wait_hw.adapt_count_reg[20]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \NLW_adapt_wait_hw.adapt_count_reg[20]_i_1_O_UNCONNECTED\(3),
      O(2) => \n_5_adapt_wait_hw.adapt_count_reg[20]_i_1\,
      O(1) => \n_6_adapt_wait_hw.adapt_count_reg[20]_i_1\,
      O(0) => \n_7_adapt_wait_hw.adapt_count_reg[20]_i_1\,
      S(3) => '0',
      S(2) => \n_0_adapt_wait_hw.adapt_count[20]_i_2\,
      S(1) => \n_0_adapt_wait_hw.adapt_count[20]_i_3\,
      S(0) => \n_0_adapt_wait_hw.adapt_count[20]_i_4\
    );
\adapt_wait_hw.adapt_count_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_6_adapt_wait_hw.adapt_count_reg[20]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(21),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_5_adapt_wait_hw.adapt_count_reg[20]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(22),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_5_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      Q => \adapt_wait_hw.adapt_count_reg\(2),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_4_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      Q => \adapt_wait_hw.adapt_count_reg\(3),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_7_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(4),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      CO(3) => \n_0_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      CO(2) => \n_1_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      CO(1) => \n_2_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      CO(0) => \n_3_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      O(2) => \n_5_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      O(1) => \n_6_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      O(0) => \n_7_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      S(3) => \n_0_adapt_wait_hw.adapt_count[4]_i_2\,
      S(2) => \n_0_adapt_wait_hw.adapt_count[4]_i_3\,
      S(1) => \n_0_adapt_wait_hw.adapt_count[4]_i_4\,
      S(0) => \n_0_adapt_wait_hw.adapt_count[4]_i_5\
    );
\adapt_wait_hw.adapt_count_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_6_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(5),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_5_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(6),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_4_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(7),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_7_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(8),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      CO(3) => \n_0_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      CO(2) => \n_1_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      CO(1) => \n_2_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      CO(0) => \n_3_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      O(2) => \n_5_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      O(1) => \n_6_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      O(0) => \n_7_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      S(3) => \n_0_adapt_wait_hw.adapt_count[8]_i_2\,
      S(2) => \n_0_adapt_wait_hw.adapt_count[8]_i_3\,
      S(1) => \n_0_adapt_wait_hw.adapt_count[8]_i_4\,
      S(0) => \n_0_adapt_wait_hw.adapt_count[8]_i_5\
    );
\adapt_wait_hw.adapt_count_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_6_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(9),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.time_out_adapt_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
    port map (
      I0 => \n_0_adapt_wait_hw.time_out_adapt_reg\,
      I1 => \adapt_wait_hw.adapt_count_reg\(15),
      I2 => \adapt_wait_hw.adapt_count_reg\(14),
      I3 => \n_0_adapt_wait_hw.time_out_adapt_i_2\,
      I4 => recclk_mon_count_reset,
      O => \n_0_adapt_wait_hw.time_out_adapt_i_1\
    );
\adapt_wait_hw.time_out_adapt_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
    port map (
      I0 => \n_0_adapt_wait_hw.time_out_adapt_i_3\,
      I1 => \adapt_wait_hw.adapt_count_reg\(5),
      I2 => \adapt_wait_hw.adapt_count_reg\(8),
      I3 => \adapt_wait_hw.adapt_count_reg\(6),
      I4 => \n_0_adapt_wait_hw.time_out_adapt_i_4\,
      I5 => \n_0_adapt_wait_hw.time_out_adapt_i_5\,
      O => \n_0_adapt_wait_hw.time_out_adapt_i_2\
    );
\adapt_wait_hw.time_out_adapt_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(7),
      I1 => \adapt_wait_hw.adapt_count_reg\(13),
      I2 => \adapt_wait_hw.adapt_count_reg\(21),
      I3 => \adapt_wait_hw.adapt_count_reg\(22),
      I4 => \adapt_wait_hw.adapt_count_reg\(11),
      I5 => \adapt_wait_hw.adapt_count_reg\(10),
      O => \n_0_adapt_wait_hw.time_out_adapt_i_3\
    );
\adapt_wait_hw.time_out_adapt_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(12),
      I1 => \adapt_wait_hw.adapt_count_reg\(1),
      I2 => \adapt_wait_hw.adapt_count_reg\(0),
      I3 => \adapt_wait_hw.adapt_count_reg\(3),
      I4 => \adapt_wait_hw.adapt_count_reg\(2),
      I5 => \adapt_wait_hw.adapt_count_reg\(20),
      O => \n_0_adapt_wait_hw.time_out_adapt_i_4\
    );
\adapt_wait_hw.time_out_adapt_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(19),
      I1 => \adapt_wait_hw.adapt_count_reg\(9),
      I2 => \adapt_wait_hw.adapt_count_reg\(4),
      I3 => \adapt_wait_hw.adapt_count_reg\(18),
      I4 => \adapt_wait_hw.adapt_count_reg\(16),
      I5 => \adapt_wait_hw.adapt_count_reg\(17),
      O => \n_0_adapt_wait_hw.time_out_adapt_i_5\
    );
\adapt_wait_hw.time_out_adapt_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \n_0_adapt_wait_hw.time_out_adapt_i_1\,
      Q => \n_0_adapt_wait_hw.time_out_adapt_reg\,
      R => '0'
    );
check_tlock_max_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
    port map (
      I0 => rx_state(2),
      I1 => rx_state(0),
      I2 => rx_state(3),
      I3 => rx_state(1),
      I4 => n_0_check_tlock_max_reg,
      O => n_0_check_tlock_max_i_1
    );
check_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_check_tlock_max_i_1,
      Q => n_0_check_tlock_max_reg,
      R => pma_reset
    );
gtrxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0004"
    )
    port map (
      I0 => rx_state(2),
      I1 => rx_state(0),
      I2 => rx_state(3),
      I3 => rx_state(1),
      I4 => GTRXRESET,
      O => n_0_gtrxreset_i_i_1
    );
gtrxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_gtrxreset_i_i_1,
      Q => GTRXRESET,
      R => pma_reset
    );
gtxe2_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => GTRXRESET,
      I1 => \^gt0_rxresetdone_out\,
      I2 => I4,
      O => data_in
    );
\init_wait_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \init_wait_count_reg__0\(0),
      O => \n_0_init_wait_count[0]_i_1__0\
    );
\init_wait_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\init_wait_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(2),
      O => \p_0_in__1\(2)
    );
\init_wait_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(3),
      O => \p_0_in__1\(3)
    );
\init_wait_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(3),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(4),
      O => \p_0_in__1\(4)
    );
\init_wait_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(3),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(4),
      I5 => \init_wait_count_reg__0\(5),
      O => \p_0_in__1\(5)
    );
\init_wait_count[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(6),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \n_0_init_wait_count[6]_i_3__0\,
      O => \n_0_init_wait_count[6]_i_1__0\
    );
\init_wait_count[6]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
    port map (
      I0 => \n_0_init_wait_count[6]_i_3__0\,
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(4),
      I3 => \init_wait_count_reg__0\(6),
      O => \p_0_in__1\(6)
    );
\init_wait_count[6]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => \init_wait_count_reg__0\(3),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(5),
      O => \n_0_init_wait_count[6]_i_3__0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1__0\,
      CLR => pma_reset,
      D => \n_0_init_wait_count[0]_i_1__0\,
      Q => \init_wait_count_reg__0\(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1__0\,
      CLR => pma_reset,
      D => \p_0_in__1\(1),
      Q => \init_wait_count_reg__0\(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1__0\,
      CLR => pma_reset,
      D => \p_0_in__1\(2),
      Q => \init_wait_count_reg__0\(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1__0\,
      CLR => pma_reset,
      D => \p_0_in__1\(3),
      Q => \init_wait_count_reg__0\(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1__0\,
      CLR => pma_reset,
      D => \p_0_in__1\(4),
      Q => \init_wait_count_reg__0\(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1__0\,
      CLR => pma_reset,
      D => \p_0_in__1\(5),
      Q => \init_wait_count_reg__0\(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1__0\,
      CLR => pma_reset,
      D => \p_0_in__1\(6),
      Q => \init_wait_count_reg__0\(6)
    );
\init_wait_done_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
    port map (
      I0 => \n_0_init_wait_count[6]_i_3__0\,
      I1 => \init_wait_count_reg__0\(4),
      I2 => \init_wait_count_reg__0\(6),
      I3 => \init_wait_count_reg__0\(0),
      I4 => n_0_init_wait_done_reg,
      O => \n_0_init_wait_done_i_1__0\
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      CLR => pma_reset,
      D => \n_0_init_wait_done_i_1__0\,
      Q => n_0_init_wait_done_reg
    );
\mmcm_lock_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__2\(0)
    );
\mmcm_lock_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__2\(1)
    );
\mmcm_lock_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(1),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(2),
      O => \n_0_mmcm_lock_count[2]_i_1__0\
    );
\mmcm_lock_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(1),
      I3 => \mmcm_lock_count_reg__0\(3),
      O => \n_0_mmcm_lock_count[3]_i_1__0\
    );
\mmcm_lock_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(2),
      I4 => \mmcm_lock_count_reg__0\(4),
      O => \n_0_mmcm_lock_count[4]_i_1__0\
    );
\mmcm_lock_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      I4 => \mmcm_lock_count_reg__0\(3),
      I5 => \mmcm_lock_count_reg__0\(5),
      O => \n_0_mmcm_lock_count[5]_i_1__0\
    );
\mmcm_lock_count[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
    port map (
      I0 => \n_0_mmcm_lock_count[9]_i_4__0\,
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \mmcm_lock_count_reg__0\(6),
      O => \p_0_in__2\(6)
    );
\mmcm_lock_count[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
    port map (
      I0 => \n_0_mmcm_lock_count[9]_i_4__0\,
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \mmcm_lock_count_reg__0\(5),
      I3 => \mmcm_lock_count_reg__0\(7),
      O => \p_0_in__2\(7)
    );
\mmcm_lock_count[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
    port map (
      I0 => \n_0_mmcm_lock_count[9]_i_4__0\,
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count_reg__0\(7),
      I4 => \mmcm_lock_count_reg__0\(8),
      O => \p_0_in__2\(8)
    );
\mmcm_lock_count[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
    port map (
      I0 => \n_0_mmcm_lock_count[9]_i_4__0\,
      I1 => \mmcm_lock_count_reg__0\(7),
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count_reg__0\(5),
      I4 => \mmcm_lock_count_reg__0\(8),
      I5 => \mmcm_lock_count_reg__0\(9),
      O => \n_0_mmcm_lock_count[9]_i_2__0\
    );
\mmcm_lock_count[9]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00008000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count_reg__0\(7),
      I4 => \n_0_mmcm_lock_count[9]_i_4__0\,
      I5 => \mmcm_lock_count_reg__0\(9),
      O => \p_0_in__2\(9)
    );
\mmcm_lock_count[9]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(2),
      I4 => \mmcm_lock_count_reg__0\(4),
      O => \n_0_mmcm_lock_count[9]_i_4__0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(0),
      Q => \mmcm_lock_count_reg__0\(0),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(1),
      Q => \mmcm_lock_count_reg__0\(1),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \n_0_mmcm_lock_count[2]_i_1__0\,
      Q => \mmcm_lock_count_reg__0\(2),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \n_0_mmcm_lock_count[3]_i_1__0\,
      Q => \mmcm_lock_count_reg__0\(3),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \n_0_mmcm_lock_count[4]_i_1__0\,
      Q => \mmcm_lock_count_reg__0\(4),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \n_0_mmcm_lock_count[5]_i_1__0\,
      Q => \mmcm_lock_count_reg__0\(5),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(6),
      Q => \mmcm_lock_count_reg__0\(6),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(7),
      Q => \mmcm_lock_count_reg__0\(7),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(8),
      Q => \mmcm_lock_count_reg__0\(8),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(9),
      Q => \mmcm_lock_count_reg__0\(9),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_reclocked_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \mmcm_lock_count_reg__0\(5),
      I3 => \mmcm_lock_count_reg__0\(8),
      O => \n_0_mmcm_lock_reclocked_i_2__0\
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_sync_mmcm_lock_reclocked,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
\reset_time_out_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0333FF08"
    )
    port map (
      I0 => I1,
      I1 => rx_state(2),
      I2 => rx_state(1),
      I3 => rx_state(0),
      I4 => rx_state(3),
      O => \n_0_reset_time_out_i_3__0\
    );
reset_time_out_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_1_sync_cplllock,
      Q => n_0_reset_time_out_reg,
      S => pma_reset
    );
\run_phase_alignment_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0002"
    )
    port map (
      I0 => rx_state(3),
      I1 => rx_state(0),
      I2 => rx_state(2),
      I3 => rx_state(1),
      I4 => n_0_run_phase_alignment_int_reg,
      O => \n_0_run_phase_alignment_int_i_1__0\
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \n_0_run_phase_alignment_int_i_1__0\,
      Q => n_0_run_phase_alignment_int_reg,
      R => pma_reset
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_out_0,
      Q => n_0_run_phase_alignment_int_s3_reg,
      R => '0'
    );
rx_fsm_reset_done_int_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_state(3),
      I1 => rx_state(2),
      O => n_0_rx_fsm_reset_done_int_i_2
    );
rx_fsm_reset_done_int_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => n_0_time_out_1us_reg,
      I1 => n_0_reset_time_out_reg,
      O => n_0_rx_fsm_reset_done_int_i_3
    );
rx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_sync_data_valid,
      Q => \^gt0_rxresetdone_out\,
      R => pma_reset
    );
rx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => rx_fsm_reset_done_int_s2,
      Q => rx_fsm_reset_done_int_s3,
      R => '0'
    );
rxresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => rxresetdone_s2,
      Q => rxresetdone_s3,
      R => '0'
    );
sync_RXRESETDONE: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_11\
    port map (
      I2 => I2,
      data_out => rxresetdone_s2,
      independent_clock_bufg => independent_clock_bufg
    );
sync_cplllock: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_12\
    port map (
      I1 => n_2_sync_data_valid,
      I2 => \n_0_reset_time_out_i_3__0\,
      I3 => n_0_reset_time_out_reg,
      I4 => n_0_time_out_2ms_reg,
      O1 => n_0_sync_cplllock,
      O2 => n_1_sync_cplllock,
      O3 => n_2_sync_cplllock,
      cplllock => cplllock,
      independent_clock_bufg => independent_clock_bufg,
      \out\(3 downto 0) => rx_state(3 downto 0),
      recclk_mon_count_reset => recclk_mon_count_reset,
      rxresetdone_s3 => rxresetdone_s3
    );
sync_data_valid: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_13\
    port map (
      E(0) => n_1_sync_data_valid,
      I1 => n_0_rx_fsm_reset_done_int_i_2,
      I2 => n_0_rx_fsm_reset_done_int_i_3,
      I3 => \n_0_FSM_sequential_rx_state[3]_i_4\,
      I4 => n_2_sync_cplllock,
      I5 => n_0_init_wait_done_reg,
      I6 => n_0_reset_time_out_reg,
      I7 => I1,
      O1 => n_0_sync_data_valid,
      O2 => n_2_sync_data_valid,
      data_in => \^gt0_rxresetdone_out\,
      data_out => data_out,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      \out\(3 downto 0) => rx_state(3 downto 0),
      rxresetdone_s3 => rxresetdone_s3,
      time_tlock_max => time_tlock_max
    );
sync_mmcm_lock_reclocked: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_14\
    port map (
      I1 => \n_0_mmcm_lock_reclocked_i_2__0\,
      I2 => \n_0_mmcm_lock_count[9]_i_4__0\,
      O1 => n_0_sync_mmcm_lock_reclocked,
      Q(0) => \mmcm_lock_count_reg__0\(9),
      SR(0) => n_1_sync_mmcm_lock_reclocked,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      mmcm_locked => mmcm_locked
    );
sync_run_phase_alignment_int: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_15\
    port map (
      data_in => n_0_run_phase_alignment_int_reg,
      data_out => data_out_0,
      userclk => userclk
    );
sync_time_out_wait_bypass: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_16\
    port map (
      data_in => n_0_time_out_wait_bypass_reg,
      data_out => time_out_wait_bypass_s2,
      independent_clock_bufg => independent_clock_bufg
    );
sync_tx_fsm_reset_done_int: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_17\
    port map (
      data_in => \^gt0_rxresetdone_out\,
      data_out => rx_fsm_reset_done_int_s2,
      userclk => userclk
    );
time_out_1us_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
    port map (
      I0 => n_0_time_out_1us_reg,
      I1 => n_0_time_out_1us_i_2,
      I2 => \n_0_time_out_counter[0]_i_3__0\,
      I3 => n_0_reset_time_out_reg,
      O => n_0_time_out_1us_i_1
    );
time_out_1us_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(18),
      I3 => n_0_time_out_1us_i_3,
      O => n_0_time_out_1us_i_2
    );
time_out_1us_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
    port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(3),
      I2 => time_out_counter_reg(6),
      I3 => time_out_counter_reg(8),
      I4 => time_out_counter_reg(11),
      I5 => time_out_counter_reg(12),
      O => n_0_time_out_1us_i_3
    );
time_out_1us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_time_out_1us_i_1,
      Q => n_0_time_out_1us_reg,
      R => '0'
    );
time_out_2ms_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAABAAA"
    )
    port map (
      I0 => n_0_time_out_2ms_reg,
      I1 => time_out_counter_reg(8),
      I2 => time_out_counter_reg(9),
      I3 => n_0_time_out_2ms_i_2,
      I4 => \n_0_time_out_counter[0]_i_3__0\,
      I5 => n_0_reset_time_out_reg,
      O => n_0_time_out_2ms_i_1
    );
time_out_2ms_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
    port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(12),
      I2 => time_out_counter_reg(6),
      I3 => time_out_counter_reg(17),
      I4 => time_out_counter_reg(18),
      I5 => n_0_time_out_2ms_i_3,
      O => n_0_time_out_2ms_i_2
    );
time_out_2ms_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(3),
      O => n_0_time_out_2ms_i_3
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_time_out_2ms_i_1,
      Q => n_0_time_out_2ms_reg,
      R => '0'
    );
\time_out_counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
    port map (
      I0 => \n_0_time_out_counter[0]_i_3__0\,
      I1 => time_out_counter_reg(3),
      I2 => time_out_counter_reg(2),
      I3 => \n_0_time_out_counter[0]_i_4__0\,
      I4 => time_out_counter_reg(8),
      I5 => time_out_counter_reg(9),
      O => \n_0_time_out_counter[0]_i_1\
    );
\time_out_counter[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
    port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(0),
      I2 => \n_0_time_out_counter[0]_i_9__0\,
      I3 => time_out_counter_reg(5),
      I4 => time_out_counter_reg(7),
      O => \n_0_time_out_counter[0]_i_3__0\
    );
\time_out_counter[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
    port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(17),
      I2 => time_out_counter_reg(11),
      I3 => time_out_counter_reg(12),
      I4 => time_out_counter_reg(18),
      O => \n_0_time_out_counter[0]_i_4__0\
    );
\time_out_counter[0]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(3),
      O => \n_0_time_out_counter[0]_i_5__0\
    );
\time_out_counter[0]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(2),
      O => \n_0_time_out_counter[0]_i_6__0\
    );
\time_out_counter[0]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(1),
      O => \n_0_time_out_counter[0]_i_7__0\
    );
\time_out_counter[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => time_out_counter_reg(0),
      O => \n_0_time_out_counter[0]_i_8\
    );
\time_out_counter[0]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(16),
      I2 => time_out_counter_reg(13),
      I3 => time_out_counter_reg(4),
      I4 => time_out_counter_reg(14),
      I5 => time_out_counter_reg(15),
      O => \n_0_time_out_counter[0]_i_9__0\
    );
\time_out_counter[12]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(15),
      O => \n_0_time_out_counter[12]_i_2__0\
    );
\time_out_counter[12]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(14),
      O => \n_0_time_out_counter[12]_i_3__0\
    );
\time_out_counter[12]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(13),
      O => \n_0_time_out_counter[12]_i_4__0\
    );
\time_out_counter[12]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(12),
      O => \n_0_time_out_counter[12]_i_5__0\
    );
\time_out_counter[16]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(18),
      O => \n_0_time_out_counter[16]_i_2__0\
    );
\time_out_counter[16]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(17),
      O => \n_0_time_out_counter[16]_i_3__0\
    );
\time_out_counter[16]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(16),
      O => \n_0_time_out_counter[16]_i_4__0\
    );
\time_out_counter[4]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(7),
      O => \n_0_time_out_counter[4]_i_2__0\
    );
\time_out_counter[4]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(6),
      O => \n_0_time_out_counter[4]_i_3__0\
    );
\time_out_counter[4]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(5),
      O => \n_0_time_out_counter[4]_i_4__0\
    );
\time_out_counter[4]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(4),
      O => \n_0_time_out_counter[4]_i_5__0\
    );
\time_out_counter[8]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(11),
      O => \n_0_time_out_counter[8]_i_2__0\
    );
\time_out_counter[8]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(10),
      O => \n_0_time_out_counter[8]_i_3__0\
    );
\time_out_counter[8]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(9),
      O => \n_0_time_out_counter[8]_i_4__0\
    );
\time_out_counter[8]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(8),
      O => \n_0_time_out_counter[8]_i_5__0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_7_time_out_counter_reg[0]_i_2__0\,
      Q => time_out_counter_reg(0),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_time_out_counter_reg[0]_i_2__0\,
      CO(2) => \n_1_time_out_counter_reg[0]_i_2__0\,
      CO(1) => \n_2_time_out_counter_reg[0]_i_2__0\,
      CO(0) => \n_3_time_out_counter_reg[0]_i_2__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_time_out_counter_reg[0]_i_2__0\,
      O(2) => \n_5_time_out_counter_reg[0]_i_2__0\,
      O(1) => \n_6_time_out_counter_reg[0]_i_2__0\,
      O(0) => \n_7_time_out_counter_reg[0]_i_2__0\,
      S(3) => \n_0_time_out_counter[0]_i_5__0\,
      S(2) => \n_0_time_out_counter[0]_i_6__0\,
      S(1) => \n_0_time_out_counter[0]_i_7__0\,
      S(0) => \n_0_time_out_counter[0]_i_8\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_5_time_out_counter_reg[8]_i_1__0\,
      Q => time_out_counter_reg(10),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_4_time_out_counter_reg[8]_i_1__0\,
      Q => time_out_counter_reg(11),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_7_time_out_counter_reg[12]_i_1__0\,
      Q => time_out_counter_reg(12),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[8]_i_1__0\,
      CO(3) => \n_0_time_out_counter_reg[12]_i_1__0\,
      CO(2) => \n_1_time_out_counter_reg[12]_i_1__0\,
      CO(1) => \n_2_time_out_counter_reg[12]_i_1__0\,
      CO(0) => \n_3_time_out_counter_reg[12]_i_1__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_time_out_counter_reg[12]_i_1__0\,
      O(2) => \n_5_time_out_counter_reg[12]_i_1__0\,
      O(1) => \n_6_time_out_counter_reg[12]_i_1__0\,
      O(0) => \n_7_time_out_counter_reg[12]_i_1__0\,
      S(3) => \n_0_time_out_counter[12]_i_2__0\,
      S(2) => \n_0_time_out_counter[12]_i_3__0\,
      S(1) => \n_0_time_out_counter[12]_i_4__0\,
      S(0) => \n_0_time_out_counter[12]_i_5__0\
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_6_time_out_counter_reg[12]_i_1__0\,
      Q => time_out_counter_reg(13),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_5_time_out_counter_reg[12]_i_1__0\,
      Q => time_out_counter_reg(14),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_4_time_out_counter_reg[12]_i_1__0\,
      Q => time_out_counter_reg(15),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_7_time_out_counter_reg[16]_i_1__0\,
      Q => time_out_counter_reg(16),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[12]_i_1__0\,
      CO(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_2_time_out_counter_reg[16]_i_1__0\,
      CO(0) => \n_3_time_out_counter_reg[16]_i_1__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\(3),
      O(2) => \n_5_time_out_counter_reg[16]_i_1__0\,
      O(1) => \n_6_time_out_counter_reg[16]_i_1__0\,
      O(0) => \n_7_time_out_counter_reg[16]_i_1__0\,
      S(3) => '0',
      S(2) => \n_0_time_out_counter[16]_i_2__0\,
      S(1) => \n_0_time_out_counter[16]_i_3__0\,
      S(0) => \n_0_time_out_counter[16]_i_4__0\
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_6_time_out_counter_reg[16]_i_1__0\,
      Q => time_out_counter_reg(17),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_5_time_out_counter_reg[16]_i_1__0\,
      Q => time_out_counter_reg(18),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_6_time_out_counter_reg[0]_i_2__0\,
      Q => time_out_counter_reg(1),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_5_time_out_counter_reg[0]_i_2__0\,
      Q => time_out_counter_reg(2),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_4_time_out_counter_reg[0]_i_2__0\,
      Q => time_out_counter_reg(3),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_7_time_out_counter_reg[4]_i_1__0\,
      Q => time_out_counter_reg(4),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[0]_i_2__0\,
      CO(3) => \n_0_time_out_counter_reg[4]_i_1__0\,
      CO(2) => \n_1_time_out_counter_reg[4]_i_1__0\,
      CO(1) => \n_2_time_out_counter_reg[4]_i_1__0\,
      CO(0) => \n_3_time_out_counter_reg[4]_i_1__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_time_out_counter_reg[4]_i_1__0\,
      O(2) => \n_5_time_out_counter_reg[4]_i_1__0\,
      O(1) => \n_6_time_out_counter_reg[4]_i_1__0\,
      O(0) => \n_7_time_out_counter_reg[4]_i_1__0\,
      S(3) => \n_0_time_out_counter[4]_i_2__0\,
      S(2) => \n_0_time_out_counter[4]_i_3__0\,
      S(1) => \n_0_time_out_counter[4]_i_4__0\,
      S(0) => \n_0_time_out_counter[4]_i_5__0\
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_6_time_out_counter_reg[4]_i_1__0\,
      Q => time_out_counter_reg(5),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_5_time_out_counter_reg[4]_i_1__0\,
      Q => time_out_counter_reg(6),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_4_time_out_counter_reg[4]_i_1__0\,
      Q => time_out_counter_reg(7),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_7_time_out_counter_reg[8]_i_1__0\,
      Q => time_out_counter_reg(8),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[4]_i_1__0\,
      CO(3) => \n_0_time_out_counter_reg[8]_i_1__0\,
      CO(2) => \n_1_time_out_counter_reg[8]_i_1__0\,
      CO(1) => \n_2_time_out_counter_reg[8]_i_1__0\,
      CO(0) => \n_3_time_out_counter_reg[8]_i_1__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_time_out_counter_reg[8]_i_1__0\,
      O(2) => \n_5_time_out_counter_reg[8]_i_1__0\,
      O(1) => \n_6_time_out_counter_reg[8]_i_1__0\,
      O(0) => \n_7_time_out_counter_reg[8]_i_1__0\,
      S(3) => \n_0_time_out_counter[8]_i_2__0\,
      S(2) => \n_0_time_out_counter[8]_i_3__0\,
      S(1) => \n_0_time_out_counter[8]_i_4__0\,
      S(0) => \n_0_time_out_counter[8]_i_5__0\
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_6_time_out_counter_reg[8]_i_1__0\,
      Q => time_out_counter_reg(9),
      R => n_0_reset_time_out_reg
    );
\time_out_wait_bypass_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF0100000000"
    )
    port map (
      I0 => \n_0_wait_bypass_count[0]_i_4__0\,
      I1 => wait_bypass_count_reg(3),
      I2 => \n_0_wait_bypass_count[0]_i_5__0\,
      I3 => n_0_time_out_wait_bypass_reg,
      I4 => rx_fsm_reset_done_int_s3,
      I5 => n_0_run_phase_alignment_int_s3_reg,
      O => \n_0_time_out_wait_bypass_i_1__0\
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => \n_0_time_out_wait_bypass_i_1__0\,
      Q => n_0_time_out_wait_bypass_reg,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(15),
      O => n_0_time_tlock_max_i_10
    );
time_tlock_max_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(12),
      O => n_0_time_tlock_max_i_11
    );
time_tlock_max_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(11),
      O => n_0_time_tlock_max_i_12
    );
time_tlock_max_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(8),
      O => n_0_time_tlock_max_i_13
    );
time_tlock_max_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(7),
      O => n_0_time_tlock_max_i_14
    );
time_tlock_max_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(5),
      O => n_0_time_tlock_max_i_15
    );
time_tlock_max_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(3),
      O => n_0_time_tlock_max_i_16
    );
time_tlock_max_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(1),
      O => n_0_time_tlock_max_i_17
    );
time_tlock_max_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(6),
      O => n_0_time_tlock_max_i_18
    );
time_tlock_max_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(4),
      O => n_0_time_tlock_max_i_19
    );
\time_tlock_max_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => time_tlock_max,
      I1 => time_tlock_max1,
      I2 => n_0_check_tlock_max_reg,
      I3 => n_0_reset_time_out_reg,
      O => \n_0_time_tlock_max_i_1__0\
    );
time_tlock_max_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(2),
      O => n_0_time_tlock_max_i_20
    );
time_tlock_max_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(0),
      O => n_0_time_tlock_max_i_21
    );
time_tlock_max_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(17),
      O => n_0_time_tlock_max_i_4
    );
time_tlock_max_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => time_out_counter_reg(18),
      O => n_0_time_tlock_max_i_5
    );
time_tlock_max_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(16),
      O => n_0_time_tlock_max_i_6
    );
time_tlock_max_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(13),
      O => n_0_time_tlock_max_i_8
    );
time_tlock_max_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => time_out_counter_reg(8),
      I1 => time_out_counter_reg(9),
      O => n_0_time_tlock_max_i_9
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \n_0_time_tlock_max_i_1__0\,
      Q => time_tlock_max,
      R => '0'
    );
time_tlock_max_reg_i_2: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_time_tlock_max_reg_i_3,
      CO(3 downto 2) => NLW_time_tlock_max_reg_i_2_CO_UNCONNECTED(3 downto 2),
      CO(1) => time_tlock_max1,
      CO(0) => n_3_time_tlock_max_reg_i_2,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => time_out_counter_reg(18),
      DI(0) => n_0_time_tlock_max_i_4,
      O(3 downto 0) => NLW_time_tlock_max_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => '0',
      S(1) => n_0_time_tlock_max_i_5,
      S(0) => n_0_time_tlock_max_i_6
    );
time_tlock_max_reg_i_3: unisim.vcomponents.CARRY4
    port map (
      CI => n_0_time_tlock_max_reg_i_7,
      CO(3) => n_0_time_tlock_max_reg_i_3,
      CO(2) => n_1_time_tlock_max_reg_i_3,
      CO(1) => n_2_time_tlock_max_reg_i_3,
      CO(0) => n_3_time_tlock_max_reg_i_3,
      CYINIT => '0',
      DI(3) => time_out_counter_reg(15),
      DI(2) => n_0_time_tlock_max_i_8,
      DI(1) => '0',
      DI(0) => n_0_time_tlock_max_i_9,
      O(3 downto 0) => NLW_time_tlock_max_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => n_0_time_tlock_max_i_10,
      S(2) => n_0_time_tlock_max_i_11,
      S(1) => n_0_time_tlock_max_i_12,
      S(0) => n_0_time_tlock_max_i_13
    );
time_tlock_max_reg_i_7: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => n_0_time_tlock_max_reg_i_7,
      CO(2) => n_1_time_tlock_max_reg_i_7,
      CO(1) => n_2_time_tlock_max_reg_i_7,
      CO(0) => n_3_time_tlock_max_reg_i_7,
      CYINIT => '0',
      DI(3) => n_0_time_tlock_max_i_14,
      DI(2) => n_0_time_tlock_max_i_15,
      DI(1) => n_0_time_tlock_max_i_16,
      DI(0) => n_0_time_tlock_max_i_17,
      O(3 downto 0) => NLW_time_tlock_max_reg_i_7_O_UNCONNECTED(3 downto 0),
      S(3) => n_0_time_tlock_max_i_18,
      S(2) => n_0_time_tlock_max_i_19,
      S(1) => n_0_time_tlock_max_i_20,
      S(0) => n_0_time_tlock_max_i_21
    );
\wait_bypass_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => n_0_run_phase_alignment_int_s3_reg,
      O => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
    port map (
      I0 => \n_0_wait_bypass_count[0]_i_4__0\,
      I1 => wait_bypass_count_reg(3),
      I2 => \n_0_wait_bypass_count[0]_i_5__0\,
      I3 => rx_fsm_reset_done_int_s3,
      O => \n_0_wait_bypass_count[0]_i_2__0\
    );
\wait_bypass_count[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
    port map (
      I0 => wait_bypass_count_reg(9),
      I1 => wait_bypass_count_reg(11),
      I2 => wait_bypass_count_reg(1),
      I3 => wait_bypass_count_reg(2),
      I4 => wait_bypass_count_reg(12),
      I5 => wait_bypass_count_reg(0),
      O => \n_0_wait_bypass_count[0]_i_4__0\
    );
\wait_bypass_count[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
    port map (
      I0 => wait_bypass_count_reg(5),
      I1 => wait_bypass_count_reg(4),
      I2 => wait_bypass_count_reg(10),
      I3 => wait_bypass_count_reg(8),
      I4 => wait_bypass_count_reg(6),
      I5 => wait_bypass_count_reg(7),
      O => \n_0_wait_bypass_count[0]_i_5__0\
    );
\wait_bypass_count[0]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(3),
      O => \n_0_wait_bypass_count[0]_i_6__0\
    );
\wait_bypass_count[0]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(2),
      O => \n_0_wait_bypass_count[0]_i_7__0\
    );
\wait_bypass_count[0]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(1),
      O => \n_0_wait_bypass_count[0]_i_8__0\
    );
\wait_bypass_count[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_bypass_count_reg(0),
      O => \n_0_wait_bypass_count[0]_i_9\
    );
\wait_bypass_count[12]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(12),
      O => \n_0_wait_bypass_count[12]_i_2__0\
    );
\wait_bypass_count[4]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(7),
      O => \n_0_wait_bypass_count[4]_i_2__0\
    );
\wait_bypass_count[4]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(6),
      O => \n_0_wait_bypass_count[4]_i_3__0\
    );
\wait_bypass_count[4]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(5),
      O => \n_0_wait_bypass_count[4]_i_4__0\
    );
\wait_bypass_count[4]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(4),
      O => \n_0_wait_bypass_count[4]_i_5__0\
    );
\wait_bypass_count[8]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(11),
      O => \n_0_wait_bypass_count[8]_i_2__0\
    );
\wait_bypass_count[8]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(10),
      O => \n_0_wait_bypass_count[8]_i_3__0\
    );
\wait_bypass_count[8]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(9),
      O => \n_0_wait_bypass_count[8]_i_4__0\
    );
\wait_bypass_count[8]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(8),
      O => \n_0_wait_bypass_count[8]_i_5__0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_7_wait_bypass_count_reg[0]_i_3__0\,
      Q => wait_bypass_count_reg(0),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_wait_bypass_count_reg[0]_i_3__0\,
      CO(2) => \n_1_wait_bypass_count_reg[0]_i_3__0\,
      CO(1) => \n_2_wait_bypass_count_reg[0]_i_3__0\,
      CO(0) => \n_3_wait_bypass_count_reg[0]_i_3__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_wait_bypass_count_reg[0]_i_3__0\,
      O(2) => \n_5_wait_bypass_count_reg[0]_i_3__0\,
      O(1) => \n_6_wait_bypass_count_reg[0]_i_3__0\,
      O(0) => \n_7_wait_bypass_count_reg[0]_i_3__0\,
      S(3) => \n_0_wait_bypass_count[0]_i_6__0\,
      S(2) => \n_0_wait_bypass_count[0]_i_7__0\,
      S(1) => \n_0_wait_bypass_count[0]_i_8__0\,
      S(0) => \n_0_wait_bypass_count[0]_i_9\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_5_wait_bypass_count_reg[8]_i_1__0\,
      Q => wait_bypass_count_reg(10),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_4_wait_bypass_count_reg[8]_i_1__0\,
      Q => wait_bypass_count_reg(11),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_7_wait_bypass_count_reg[12]_i_1__0\,
      Q => wait_bypass_count_reg(12),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[8]_i_1__0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 1) => \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \n_7_wait_bypass_count_reg[12]_i_1__0\,
      S(3) => '0',
      S(2) => '0',
      S(1) => '0',
      S(0) => \n_0_wait_bypass_count[12]_i_2__0\
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_6_wait_bypass_count_reg[0]_i_3__0\,
      Q => wait_bypass_count_reg(1),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_5_wait_bypass_count_reg[0]_i_3__0\,
      Q => wait_bypass_count_reg(2),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_4_wait_bypass_count_reg[0]_i_3__0\,
      Q => wait_bypass_count_reg(3),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_7_wait_bypass_count_reg[4]_i_1__0\,
      Q => wait_bypass_count_reg(4),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[0]_i_3__0\,
      CO(3) => \n_0_wait_bypass_count_reg[4]_i_1__0\,
      CO(2) => \n_1_wait_bypass_count_reg[4]_i_1__0\,
      CO(1) => \n_2_wait_bypass_count_reg[4]_i_1__0\,
      CO(0) => \n_3_wait_bypass_count_reg[4]_i_1__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_wait_bypass_count_reg[4]_i_1__0\,
      O(2) => \n_5_wait_bypass_count_reg[4]_i_1__0\,
      O(1) => \n_6_wait_bypass_count_reg[4]_i_1__0\,
      O(0) => \n_7_wait_bypass_count_reg[4]_i_1__0\,
      S(3) => \n_0_wait_bypass_count[4]_i_2__0\,
      S(2) => \n_0_wait_bypass_count[4]_i_3__0\,
      S(1) => \n_0_wait_bypass_count[4]_i_4__0\,
      S(0) => \n_0_wait_bypass_count[4]_i_5__0\
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_6_wait_bypass_count_reg[4]_i_1__0\,
      Q => wait_bypass_count_reg(5),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_5_wait_bypass_count_reg[4]_i_1__0\,
      Q => wait_bypass_count_reg(6),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_4_wait_bypass_count_reg[4]_i_1__0\,
      Q => wait_bypass_count_reg(7),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_7_wait_bypass_count_reg[8]_i_1__0\,
      Q => wait_bypass_count_reg(8),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[4]_i_1__0\,
      CO(3) => \n_0_wait_bypass_count_reg[8]_i_1__0\,
      CO(2) => \n_1_wait_bypass_count_reg[8]_i_1__0\,
      CO(1) => \n_2_wait_bypass_count_reg[8]_i_1__0\,
      CO(0) => \n_3_wait_bypass_count_reg[8]_i_1__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_wait_bypass_count_reg[8]_i_1__0\,
      O(2) => \n_5_wait_bypass_count_reg[8]_i_1__0\,
      O(1) => \n_6_wait_bypass_count_reg[8]_i_1__0\,
      O(0) => \n_7_wait_bypass_count_reg[8]_i_1__0\,
      S(3) => \n_0_wait_bypass_count[8]_i_2__0\,
      S(2) => \n_0_wait_bypass_count[8]_i_3__0\,
      S(1) => \n_0_wait_bypass_count[8]_i_4__0\,
      S(0) => \n_0_wait_bypass_count[8]_i_5__0\
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_6_wait_bypass_count_reg[8]_i_1__0\,
      Q => wait_bypass_count_reg(9),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_time_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(0),
      O => \wait_time_cnt0__0\(0)
    );
\wait_time_cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(0),
      I1 => \wait_time_cnt_reg__0\(1),
      O => \n_0_wait_time_cnt[1]_i_1__0\
    );
\wait_time_cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(1),
      I1 => \wait_time_cnt_reg__0\(0),
      I2 => \wait_time_cnt_reg__0\(2),
      O => \n_0_wait_time_cnt[2]_i_1__0\
    );
\wait_time_cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(2),
      I1 => \wait_time_cnt_reg__0\(0),
      I2 => \wait_time_cnt_reg__0\(1),
      I3 => \wait_time_cnt_reg__0\(3),
      O => \n_0_wait_time_cnt[3]_i_1__0\
    );
\wait_time_cnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(1),
      I1 => \wait_time_cnt_reg__0\(0),
      I2 => \wait_time_cnt_reg__0\(2),
      I3 => \wait_time_cnt_reg__0\(3),
      I4 => \wait_time_cnt_reg__0\(4),
      O => \n_0_wait_time_cnt[4]_i_1__0\
    );
\wait_time_cnt[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(4),
      I1 => \wait_time_cnt_reg__0\(3),
      I2 => \wait_time_cnt_reg__0\(2),
      I3 => \wait_time_cnt_reg__0\(0),
      I4 => \wait_time_cnt_reg__0\(1),
      I5 => \wait_time_cnt_reg__0\(5),
      O => \n_0_wait_time_cnt[5]_i_1__0\
    );
\wait_time_cnt[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => rx_state(1),
      I1 => rx_state(3),
      I2 => rx_state(0),
      O => \n_0_wait_time_cnt[6]_i_1__0\
    );
\wait_time_cnt[6]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(6),
      I1 => \n_0_wait_time_cnt[6]_i_4__0\,
      O => \n_0_wait_time_cnt[6]_i_2__0\
    );
\wait_time_cnt[6]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \n_0_wait_time_cnt[6]_i_4__0\,
      I1 => \wait_time_cnt_reg__0\(6),
      O => \n_0_wait_time_cnt[6]_i_3__0\
    );
\wait_time_cnt[6]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(0),
      I1 => \wait_time_cnt_reg__0\(1),
      I2 => \wait_time_cnt_reg__0\(4),
      I3 => \wait_time_cnt_reg__0\(5),
      I4 => \wait_time_cnt_reg__0\(2),
      I5 => \wait_time_cnt_reg__0\(3),
      O => \n_0_wait_time_cnt[6]_i_4__0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2__0\,
      D => \wait_time_cnt0__0\(0),
      Q => \wait_time_cnt_reg__0\(0),
      R => \n_0_wait_time_cnt[6]_i_1__0\
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2__0\,
      D => \n_0_wait_time_cnt[1]_i_1__0\,
      Q => \wait_time_cnt_reg__0\(1),
      R => \n_0_wait_time_cnt[6]_i_1__0\
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2__0\,
      D => \n_0_wait_time_cnt[2]_i_1__0\,
      Q => \wait_time_cnt_reg__0\(2),
      S => \n_0_wait_time_cnt[6]_i_1__0\
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2__0\,
      D => \n_0_wait_time_cnt[3]_i_1__0\,
      Q => \wait_time_cnt_reg__0\(3),
      R => \n_0_wait_time_cnt[6]_i_1__0\
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2__0\,
      D => \n_0_wait_time_cnt[4]_i_1__0\,
      Q => \wait_time_cnt_reg__0\(4),
      R => \n_0_wait_time_cnt[6]_i_1__0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2__0\,
      D => \n_0_wait_time_cnt[5]_i_1__0\,
      Q => \wait_time_cnt_reg__0\(5),
      S => \n_0_wait_time_cnt[6]_i_1__0\
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2__0\,
      D => \n_0_wait_time_cnt[6]_i_3__0\,
      Q => \wait_time_cnt_reg__0\(6),
      S => \n_0_wait_time_cnt[6]_i_1__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_TX_STARTUP_FSM__parameterized0\ is
  port (
    CPLL_RESET : out STD_LOGIC;
    TXUSERRDY : out STD_LOGIC;
    gt0_gttxreset_in0_out : out STD_LOGIC;
    data_in : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    userclk : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    I5 : in STD_LOGIC;
    gt0_rxresetdone_out : in STD_LOGIC;
    I1 : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    cplllock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_TX_STARTUP_FSM__parameterized0\ : entity is "gig_eth_pcs_pma_basex_v15_1_TX_STARTUP_FSM";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_TX_STARTUP_FSM__parameterized0\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_TX_STARTUP_FSM__parameterized0\ is
  signal \^cpll_reset\ : STD_LOGIC;
  signal GTTXRESET : STD_LOGIC;
  signal \^txuserrdy\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal data_out : STD_LOGIC;
  signal gt0_txresetdone_out : STD_LOGIC;
  signal \init_wait_count_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \mmcm_lock_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal n_0_CPLL_RESET_i_1 : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[0]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[0]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[1]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[3]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_tx_state[3]_i_4\ : STD_LOGIC;
  signal n_0_TXUSERRDY_i_1 : STD_LOGIC;
  signal n_0_gttxreset_i_i_1 : STD_LOGIC;
  signal \n_0_init_wait_count[0]_i_1\ : STD_LOGIC;
  signal \n_0_init_wait_count[6]_i_1\ : STD_LOGIC;
  signal \n_0_init_wait_count[6]_i_3\ : STD_LOGIC;
  signal n_0_init_wait_done_i_1 : STD_LOGIC;
  signal n_0_init_wait_done_reg : STD_LOGIC;
  signal \n_0_mmcm_lock_count[2]_i_1\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[3]_i_1\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[4]_i_1\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[5]_i_1\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_2\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_4\ : STD_LOGIC;
  signal n_0_mmcm_lock_reclocked_i_2 : STD_LOGIC;
  signal n_0_pll_reset_asserted_i_1 : STD_LOGIC;
  signal n_0_pll_reset_asserted_reg : STD_LOGIC;
  signal n_0_run_phase_alignment_int_i_1 : STD_LOGIC;
  signal n_0_run_phase_alignment_int_reg : STD_LOGIC;
  signal n_0_sync_cplllock : STD_LOGIC;
  signal n_0_sync_mmcm_lock_reclocked : STD_LOGIC;
  signal \n_0_time_out_2ms_i_1__0\ : STD_LOGIC;
  signal \n_0_time_out_2ms_i_2__0\ : STD_LOGIC;
  signal n_0_time_out_2ms_reg : STD_LOGIC;
  signal n_0_time_out_500us_i_1 : STD_LOGIC;
  signal n_0_time_out_500us_i_2 : STD_LOGIC;
  signal n_0_time_out_500us_reg : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_10\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_1__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_3\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_4\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_5\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_6\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_7\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_8__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_9\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_2\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_3\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_4\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_5\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_2\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_3\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_4\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_2\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_3\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_4\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_5\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_2\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_3\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_4\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_5\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal n_0_time_out_wait_bypass_i_1 : STD_LOGIC;
  signal n_0_time_out_wait_bypass_reg : STD_LOGIC;
  signal n_0_time_tlock_max_i_1 : STD_LOGIC;
  signal n_0_time_tlock_max_i_2 : STD_LOGIC;
  signal n_0_time_tlock_max_i_3 : STD_LOGIC;
  signal n_0_time_tlock_max_reg : STD_LOGIC;
  signal n_0_tx_fsm_reset_done_int_i_1 : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_1\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_10\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_2\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_4\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_5\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_6\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_7\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_8\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_9__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[12]_i_2\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[12]_i_3\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[12]_i_4\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[12]_i_5\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[16]_i_2\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_2\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_3\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_4\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_5\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_2\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_3\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_4\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_5\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[1]_i_1\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[2]_i_1\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[3]_i_1\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[4]_i_1\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[5]_i_1\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[6]_i_2\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[6]_i_3\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[6]_i_4\ : STD_LOGIC;
  signal n_1_sync_cplllock : STD_LOGIC;
  signal n_1_sync_mmcm_lock_reclocked : STD_LOGIC;
  signal \n_1_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal reset_time_out : STD_LOGIC;
  signal run_phase_alignment_int_s3 : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s2 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal tx_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_state12_out : STD_LOGIC;
  signal tx_state13_out : STD_LOGIC;
  signal txresetdone_s2 : STD_LOGIC;
  signal txresetdone_s3 : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal wait_time_cnt0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \wait_time_cnt_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal wait_time_done : STD_LOGIC;
  signal \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_5\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[3]_i_6\ : label is "soft_lutpair57";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_tx_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_tx_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_tx_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_sequential_tx_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM of data_sync1_i_1 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of gtxe2_i_i_3 : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_3\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \mmcm_lock_count[0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \mmcm_lock_count[8]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_4\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of mmcm_lock_reclocked_i_2 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \time_out_2ms_i_1__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \wait_time_cnt[0]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \wait_time_cnt[6]_i_3\ : label is "soft_lutpair65";
begin
  CPLL_RESET <= \^cpll_reset\;
  TXUSERRDY <= \^txuserrdy\;
CPLL_RESET_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF700000004"
    )
    port map (
      I0 => n_0_pll_reset_asserted_reg,
      I1 => tx_state(0),
      I2 => tx_state(2),
      I3 => tx_state(1),
      I4 => tx_state(3),
      I5 => \^cpll_reset\,
      O => n_0_CPLL_RESET_i_1
    );
CPLL_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_CPLL_RESET_i_1,
      Q => \^cpll_reset\,
      R => pma_reset
    );
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F001F1F"
    )
    port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => tx_state(3),
      I3 => \n_0_FSM_sequential_tx_state[0]_i_2\,
      I4 => tx_state(0),
      O => \n_0_FSM_sequential_tx_state[0]_i_1\
    );
\FSM_sequential_tx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F0000022F0FFFF"
    )
    port map (
      I0 => n_0_time_out_500us_reg,
      I1 => reset_time_out,
      I2 => n_0_time_out_2ms_reg,
      I3 => tx_state(2),
      I4 => tx_state(1),
      I5 => \n_0_FSM_sequential_tx_state[1]_i_2\,
      O => \n_0_FSM_sequential_tx_state[0]_i_2\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0062"
    )
    port map (
      I0 => tx_state(1),
      I1 => tx_state(0),
      I2 => \n_0_FSM_sequential_tx_state[1]_i_2\,
      I3 => tx_state(3),
      O => \n_0_FSM_sequential_tx_state[1]_i_1\
    );
\FSM_sequential_tx_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => tx_state(2),
      I1 => n_0_time_tlock_max_reg,
      I2 => reset_time_out,
      I3 => mmcm_lock_reclocked,
      O => \n_0_FSM_sequential_tx_state[1]_i_2\
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000222A662A"
    )
    port map (
      I0 => tx_state(2),
      I1 => tx_state(0),
      I2 => tx_state13_out,
      I3 => tx_state(1),
      I4 => n_0_time_out_2ms_reg,
      I5 => tx_state(3),
      O => \n_0_FSM_sequential_tx_state[2]_i_1\
    );
\FSM_sequential_tx_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => mmcm_lock_reclocked,
      I1 => reset_time_out,
      I2 => n_0_time_tlock_max_reg,
      O => tx_state13_out
    );
\FSM_sequential_tx_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300004C00000044"
    )
    port map (
      I0 => time_out_wait_bypass_s3,
      I1 => tx_state(3),
      I2 => tx_state12_out,
      I3 => tx_state(2),
      I4 => tx_state(1),
      I5 => tx_state(0),
      O => \n_0_FSM_sequential_tx_state[3]_i_2\
    );
\FSM_sequential_tx_state[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => tx_state(2),
      I1 => tx_state(1),
      O => \n_0_FSM_sequential_tx_state[3]_i_4\
    );
\FSM_sequential_tx_state[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_wait_time_cnt[6]_i_4\,
      I1 => \wait_time_cnt_reg__0\(6),
      O => wait_time_done
    );
\FSM_sequential_tx_state[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => n_0_time_out_500us_reg,
      I1 => reset_time_out,
      O => tx_state12_out
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => n_1_sync_cplllock,
      D => \n_0_FSM_sequential_tx_state[0]_i_1\,
      Q => tx_state(0),
      R => pma_reset
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => n_1_sync_cplllock,
      D => \n_0_FSM_sequential_tx_state[1]_i_1\,
      Q => tx_state(1),
      R => pma_reset
    );
\FSM_sequential_tx_state_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => n_1_sync_cplllock,
      D => \n_0_FSM_sequential_tx_state[2]_i_1\,
      Q => tx_state(2),
      R => pma_reset
    );
\FSM_sequential_tx_state_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => n_1_sync_cplllock,
      D => \n_0_FSM_sequential_tx_state[3]_i_2\,
      Q => tx_state(3),
      R => pma_reset
    );
TXUSERRDY_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0080"
    )
    port map (
      I0 => tx_state(0),
      I1 => tx_state(1),
      I2 => tx_state(2),
      I3 => tx_state(3),
      I4 => \^txuserrdy\,
      O => n_0_TXUSERRDY_i_1
    );
TXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_TXUSERRDY_i_1,
      Q => \^txuserrdy\,
      R => pma_reset
    );
data_sync1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => gt0_txresetdone_out,
      I1 => gt0_rxresetdone_out,
      O => data_in
    );
gttxreset_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0010"
    )
    port map (
      I0 => tx_state(1),
      I1 => tx_state(2),
      I2 => tx_state(0),
      I3 => tx_state(3),
      I4 => GTTXRESET,
      O => n_0_gttxreset_i_i_1
    );
gttxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_gttxreset_i_i_1,
      Q => GTTXRESET,
      R => pma_reset
    );
gtxe2_i_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => GTTXRESET,
      I1 => gt0_txresetdone_out,
      I2 => I5,
      O => gt0_gttxreset_in0_out
    );
\init_wait_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \init_wait_count_reg__0\(0),
      O => \n_0_init_wait_count[0]_i_1\
    );
\init_wait_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      O => p_0_in(1)
    );
\init_wait_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(2),
      O => p_0_in(2)
    );
\init_wait_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(3),
      O => p_0_in(3)
    );
\init_wait_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(3),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(4),
      O => p_0_in(4)
    );
\init_wait_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(3),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(4),
      I5 => \init_wait_count_reg__0\(5),
      O => p_0_in(5)
    );
\init_wait_count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(6),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \n_0_init_wait_count[6]_i_3\,
      O => \n_0_init_wait_count[6]_i_1\
    );
\init_wait_count[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
    port map (
      I0 => \n_0_init_wait_count[6]_i_3\,
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(4),
      I3 => \init_wait_count_reg__0\(6),
      O => p_0_in(6)
    );
\init_wait_count[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => \init_wait_count_reg__0\(3),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(5),
      O => \n_0_init_wait_count[6]_i_3\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1\,
      CLR => pma_reset,
      D => \n_0_init_wait_count[0]_i_1\,
      Q => \init_wait_count_reg__0\(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1\,
      CLR => pma_reset,
      D => p_0_in(1),
      Q => \init_wait_count_reg__0\(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1\,
      CLR => pma_reset,
      D => p_0_in(2),
      Q => \init_wait_count_reg__0\(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1\,
      CLR => pma_reset,
      D => p_0_in(3),
      Q => \init_wait_count_reg__0\(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1\,
      CLR => pma_reset,
      D => p_0_in(4),
      Q => \init_wait_count_reg__0\(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1\,
      CLR => pma_reset,
      D => p_0_in(5),
      Q => \init_wait_count_reg__0\(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1\,
      CLR => pma_reset,
      D => p_0_in(6),
      Q => \init_wait_count_reg__0\(6)
    );
init_wait_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
    port map (
      I0 => \n_0_init_wait_count[6]_i_3\,
      I1 => \init_wait_count_reg__0\(4),
      I2 => \init_wait_count_reg__0\(6),
      I3 => \init_wait_count_reg__0\(0),
      I4 => n_0_init_wait_done_reg,
      O => n_0_init_wait_done_i_1
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      CLR => pma_reset,
      D => n_0_init_wait_done_i_1,
      Q => n_0_init_wait_done_reg
    );
\mmcm_lock_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\mmcm_lock_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\mmcm_lock_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(1),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(2),
      O => \n_0_mmcm_lock_count[2]_i_1\
    );
\mmcm_lock_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(1),
      I3 => \mmcm_lock_count_reg__0\(3),
      O => \n_0_mmcm_lock_count[3]_i_1\
    );
\mmcm_lock_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(2),
      I4 => \mmcm_lock_count_reg__0\(4),
      O => \n_0_mmcm_lock_count[4]_i_1\
    );
\mmcm_lock_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      I4 => \mmcm_lock_count_reg__0\(3),
      I5 => \mmcm_lock_count_reg__0\(5),
      O => \n_0_mmcm_lock_count[5]_i_1\
    );
\mmcm_lock_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
    port map (
      I0 => \n_0_mmcm_lock_count[9]_i_4\,
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \mmcm_lock_count_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\mmcm_lock_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
    port map (
      I0 => \n_0_mmcm_lock_count[9]_i_4\,
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \mmcm_lock_count_reg__0\(5),
      I3 => \mmcm_lock_count_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\mmcm_lock_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
    port map (
      I0 => \n_0_mmcm_lock_count[9]_i_4\,
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count_reg__0\(7),
      I4 => \mmcm_lock_count_reg__0\(8),
      O => \p_0_in__0\(8)
    );
\mmcm_lock_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
    port map (
      I0 => \n_0_mmcm_lock_count[9]_i_4\,
      I1 => \mmcm_lock_count_reg__0\(7),
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count_reg__0\(5),
      I4 => \mmcm_lock_count_reg__0\(8),
      I5 => \mmcm_lock_count_reg__0\(9),
      O => \n_0_mmcm_lock_count[9]_i_2\
    );
\mmcm_lock_count[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00008000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \mmcm_lock_count_reg__0\(7),
      I4 => \n_0_mmcm_lock_count[9]_i_4\,
      I5 => \mmcm_lock_count_reg__0\(9),
      O => \p_0_in__0\(9)
    );
\mmcm_lock_count[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(2),
      I4 => \mmcm_lock_count_reg__0\(4),
      O => \n_0_mmcm_lock_count[9]_i_4\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__0\(0),
      Q => \mmcm_lock_count_reg__0\(0),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__0\(1),
      Q => \mmcm_lock_count_reg__0\(1),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \n_0_mmcm_lock_count[2]_i_1\,
      Q => \mmcm_lock_count_reg__0\(2),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \n_0_mmcm_lock_count[3]_i_1\,
      Q => \mmcm_lock_count_reg__0\(3),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \n_0_mmcm_lock_count[4]_i_1\,
      Q => \mmcm_lock_count_reg__0\(4),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \n_0_mmcm_lock_count[5]_i_1\,
      Q => \mmcm_lock_count_reg__0\(5),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__0\(6),
      Q => \mmcm_lock_count_reg__0\(6),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__0\(7),
      Q => \mmcm_lock_count_reg__0\(7),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__0\(8),
      Q => \mmcm_lock_count_reg__0\(8),
      R => n_1_sync_mmcm_lock_reclocked
    );
\mmcm_lock_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__0\(9),
      Q => \mmcm_lock_count_reg__0\(9),
      R => n_1_sync_mmcm_lock_reclocked
    );
mmcm_lock_reclocked_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \mmcm_lock_count_reg__0\(5),
      I3 => \mmcm_lock_count_reg__0\(8),
      O => n_0_mmcm_lock_reclocked_i_2
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_sync_mmcm_lock_reclocked,
      Q => mmcm_lock_reclocked,
      R => '0'
    );
pll_reset_asserted_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F072"
    )
    port map (
      I0 => tx_state(0),
      I1 => tx_state(1),
      I2 => n_0_pll_reset_asserted_reg,
      I3 => tx_state(2),
      I4 => tx_state(3),
      O => n_0_pll_reset_asserted_i_1
    );
pll_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_pll_reset_asserted_i_1,
      Q => n_0_pll_reset_asserted_reg,
      R => pma_reset
    );
reset_time_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_sync_cplllock,
      Q => reset_time_out,
      R => pma_reset
    );
run_phase_alignment_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0002"
    )
    port map (
      I0 => tx_state(3),
      I1 => tx_state(1),
      I2 => tx_state(2),
      I3 => tx_state(0),
      I4 => n_0_run_phase_alignment_int_reg,
      O => n_0_run_phase_alignment_int_i_1
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_run_phase_alignment_int_i_1,
      Q => n_0_run_phase_alignment_int_reg,
      R => pma_reset
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => data_out,
      Q => run_phase_alignment_int_s3,
      R => '0'
    );
sync_TXRESETDONE: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_5\
    port map (
      I1 => I1,
      data_out => txresetdone_s2,
      independent_clock_bufg => independent_clock_bufg
    );
sync_cplllock: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_6\
    port map (
      E(0) => n_1_sync_cplllock,
      I1 => n_0_init_wait_done_reg,
      I2 => \n_0_FSM_sequential_tx_state[3]_i_4\,
      I3 => n_0_time_out_500us_reg,
      I4 => n_0_time_out_2ms_reg,
      I5 => n_0_time_tlock_max_reg,
      I6 => n_0_pll_reset_asserted_reg,
      O1 => n_0_sync_cplllock,
      cplllock => cplllock,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      \out\(3 downto 0) => tx_state(3 downto 0),
      reset_time_out => reset_time_out,
      txresetdone_s3 => txresetdone_s3,
      wait_time_done => wait_time_done
    );
sync_mmcm_lock_reclocked: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_7\
    port map (
      I1 => n_0_mmcm_lock_reclocked_i_2,
      I2 => \n_0_mmcm_lock_count[9]_i_4\,
      O1 => n_0_sync_mmcm_lock_reclocked,
      Q(0) => \mmcm_lock_count_reg__0\(9),
      SR(0) => n_1_sync_mmcm_lock_reclocked,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      mmcm_locked => mmcm_locked
    );
sync_run_phase_alignment_int: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_8\
    port map (
      data_in => n_0_run_phase_alignment_int_reg,
      data_out => data_out,
      userclk => userclk
    );
sync_time_out_wait_bypass: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_9\
    port map (
      data_in => n_0_time_out_wait_bypass_reg,
      data_out => time_out_wait_bypass_s2,
      independent_clock_bufg => independent_clock_bufg
    );
sync_tx_fsm_reset_done_int: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_10\
    port map (
      data_out => tx_fsm_reset_done_int_s2,
      gt0_txresetdone_out => gt0_txresetdone_out,
      userclk => userclk
    );
\time_out_2ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
    port map (
      I0 => n_0_time_out_2ms_reg,
      I1 => \n_0_time_out_2ms_i_2__0\,
      I2 => \n_0_time_out_counter[0]_i_3\,
      I3 => reset_time_out,
      O => \n_0_time_out_2ms_i_1__0\
    );
\time_out_2ms_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
    port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(18),
      I2 => time_out_counter_reg(12),
      I3 => time_out_counter_reg(5),
      I4 => time_out_counter_reg(17),
      I5 => \n_0_time_out_counter[0]_i_5\,
      O => \n_0_time_out_2ms_i_2__0\
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => \n_0_time_out_2ms_i_1__0\,
      Q => n_0_time_out_2ms_reg,
      R => '0'
    );
time_out_500us_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAE"
    )
    port map (
      I0 => n_0_time_out_500us_reg,
      I1 => n_0_time_out_500us_i_2,
      I2 => time_out_counter_reg(17),
      I3 => time_out_counter_reg(18),
      I4 => \n_0_time_out_counter[0]_i_3\,
      I5 => reset_time_out,
      O => n_0_time_out_500us_i_1
    );
time_out_500us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
    port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(10),
      I2 => time_out_counter_reg(5),
      I3 => time_out_counter_reg(11),
      I4 => time_out_counter_reg(16),
      I5 => time_out_counter_reg(15),
      O => n_0_time_out_500us_i_2
    );
time_out_500us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_time_out_500us_i_1,
      Q => n_0_time_out_500us_reg,
      R => '0'
    );
\time_out_counter[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => time_out_counter_reg(8),
      I1 => time_out_counter_reg(6),
      I2 => time_out_counter_reg(4),
      I3 => time_out_counter_reg(1),
      I4 => time_out_counter_reg(13),
      I5 => time_out_counter_reg(3),
      O => \n_0_time_out_counter[0]_i_10\
    );
\time_out_counter[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
    port map (
      I0 => \n_0_time_out_counter[0]_i_3\,
      I1 => time_out_counter_reg(10),
      I2 => \n_0_time_out_counter[0]_i_4\,
      I3 => time_out_counter_reg(18),
      I4 => time_out_counter_reg(12),
      I5 => \n_0_time_out_counter[0]_i_5\,
      O => \n_0_time_out_counter[0]_i_1__0\
    );
\time_out_counter[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
    port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(14),
      I2 => \n_0_time_out_counter[0]_i_10\,
      I3 => time_out_counter_reg(2),
      I4 => time_out_counter_reg(9),
      I5 => time_out_counter_reg(0),
      O => \n_0_time_out_counter[0]_i_3\
    );
\time_out_counter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(5),
      O => \n_0_time_out_counter[0]_i_4\
    );
\time_out_counter[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(16),
      I2 => time_out_counter_reg(11),
      O => \n_0_time_out_counter[0]_i_5\
    );
\time_out_counter[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(3),
      O => \n_0_time_out_counter[0]_i_6\
    );
\time_out_counter[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(2),
      O => \n_0_time_out_counter[0]_i_7\
    );
\time_out_counter[0]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(1),
      O => \n_0_time_out_counter[0]_i_8__0\
    );
\time_out_counter[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => time_out_counter_reg(0),
      O => \n_0_time_out_counter[0]_i_9\
    );
\time_out_counter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(15),
      O => \n_0_time_out_counter[12]_i_2\
    );
\time_out_counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(14),
      O => \n_0_time_out_counter[12]_i_3\
    );
\time_out_counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(13),
      O => \n_0_time_out_counter[12]_i_4\
    );
\time_out_counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(12),
      O => \n_0_time_out_counter[12]_i_5\
    );
\time_out_counter[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(18),
      O => \n_0_time_out_counter[16]_i_2\
    );
\time_out_counter[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(17),
      O => \n_0_time_out_counter[16]_i_3\
    );
\time_out_counter[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(16),
      O => \n_0_time_out_counter[16]_i_4\
    );
\time_out_counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(7),
      O => \n_0_time_out_counter[4]_i_2\
    );
\time_out_counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(6),
      O => \n_0_time_out_counter[4]_i_3\
    );
\time_out_counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(5),
      O => \n_0_time_out_counter[4]_i_4\
    );
\time_out_counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(4),
      O => \n_0_time_out_counter[4]_i_5\
    );
\time_out_counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(11),
      O => \n_0_time_out_counter[8]_i_2\
    );
\time_out_counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(10),
      O => \n_0_time_out_counter[8]_i_3\
    );
\time_out_counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(9),
      O => \n_0_time_out_counter[8]_i_4\
    );
\time_out_counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(8),
      O => \n_0_time_out_counter[8]_i_5\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_7_time_out_counter_reg[0]_i_2\,
      Q => time_out_counter_reg(0),
      R => reset_time_out
    );
\time_out_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_time_out_counter_reg[0]_i_2\,
      CO(2) => \n_1_time_out_counter_reg[0]_i_2\,
      CO(1) => \n_2_time_out_counter_reg[0]_i_2\,
      CO(0) => \n_3_time_out_counter_reg[0]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_time_out_counter_reg[0]_i_2\,
      O(2) => \n_5_time_out_counter_reg[0]_i_2\,
      O(1) => \n_6_time_out_counter_reg[0]_i_2\,
      O(0) => \n_7_time_out_counter_reg[0]_i_2\,
      S(3) => \n_0_time_out_counter[0]_i_6\,
      S(2) => \n_0_time_out_counter[0]_i_7\,
      S(1) => \n_0_time_out_counter[0]_i_8__0\,
      S(0) => \n_0_time_out_counter[0]_i_9\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_5_time_out_counter_reg[8]_i_1\,
      Q => time_out_counter_reg(10),
      R => reset_time_out
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_4_time_out_counter_reg[8]_i_1\,
      Q => time_out_counter_reg(11),
      R => reset_time_out
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_7_time_out_counter_reg[12]_i_1\,
      Q => time_out_counter_reg(12),
      R => reset_time_out
    );
\time_out_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[8]_i_1\,
      CO(3) => \n_0_time_out_counter_reg[12]_i_1\,
      CO(2) => \n_1_time_out_counter_reg[12]_i_1\,
      CO(1) => \n_2_time_out_counter_reg[12]_i_1\,
      CO(0) => \n_3_time_out_counter_reg[12]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_time_out_counter_reg[12]_i_1\,
      O(2) => \n_5_time_out_counter_reg[12]_i_1\,
      O(1) => \n_6_time_out_counter_reg[12]_i_1\,
      O(0) => \n_7_time_out_counter_reg[12]_i_1\,
      S(3) => \n_0_time_out_counter[12]_i_2\,
      S(2) => \n_0_time_out_counter[12]_i_3\,
      S(1) => \n_0_time_out_counter[12]_i_4\,
      S(0) => \n_0_time_out_counter[12]_i_5\
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_6_time_out_counter_reg[12]_i_1\,
      Q => time_out_counter_reg(13),
      R => reset_time_out
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_5_time_out_counter_reg[12]_i_1\,
      Q => time_out_counter_reg(14),
      R => reset_time_out
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_4_time_out_counter_reg[12]_i_1\,
      Q => time_out_counter_reg(15),
      R => reset_time_out
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_7_time_out_counter_reg[16]_i_1\,
      Q => time_out_counter_reg(16),
      R => reset_time_out
    );
\time_out_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[12]_i_1\,
      CO(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_2_time_out_counter_reg[16]_i_1\,
      CO(0) => \n_3_time_out_counter_reg[16]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \n_5_time_out_counter_reg[16]_i_1\,
      O(1) => \n_6_time_out_counter_reg[16]_i_1\,
      O(0) => \n_7_time_out_counter_reg[16]_i_1\,
      S(3) => '0',
      S(2) => \n_0_time_out_counter[16]_i_2\,
      S(1) => \n_0_time_out_counter[16]_i_3\,
      S(0) => \n_0_time_out_counter[16]_i_4\
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_6_time_out_counter_reg[16]_i_1\,
      Q => time_out_counter_reg(17),
      R => reset_time_out
    );
\time_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_5_time_out_counter_reg[16]_i_1\,
      Q => time_out_counter_reg(18),
      R => reset_time_out
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_6_time_out_counter_reg[0]_i_2\,
      Q => time_out_counter_reg(1),
      R => reset_time_out
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_5_time_out_counter_reg[0]_i_2\,
      Q => time_out_counter_reg(2),
      R => reset_time_out
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_4_time_out_counter_reg[0]_i_2\,
      Q => time_out_counter_reg(3),
      R => reset_time_out
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_7_time_out_counter_reg[4]_i_1\,
      Q => time_out_counter_reg(4),
      R => reset_time_out
    );
\time_out_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[0]_i_2\,
      CO(3) => \n_0_time_out_counter_reg[4]_i_1\,
      CO(2) => \n_1_time_out_counter_reg[4]_i_1\,
      CO(1) => \n_2_time_out_counter_reg[4]_i_1\,
      CO(0) => \n_3_time_out_counter_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_time_out_counter_reg[4]_i_1\,
      O(2) => \n_5_time_out_counter_reg[4]_i_1\,
      O(1) => \n_6_time_out_counter_reg[4]_i_1\,
      O(0) => \n_7_time_out_counter_reg[4]_i_1\,
      S(3) => \n_0_time_out_counter[4]_i_2\,
      S(2) => \n_0_time_out_counter[4]_i_3\,
      S(1) => \n_0_time_out_counter[4]_i_4\,
      S(0) => \n_0_time_out_counter[4]_i_5\
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_6_time_out_counter_reg[4]_i_1\,
      Q => time_out_counter_reg(5),
      R => reset_time_out
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_5_time_out_counter_reg[4]_i_1\,
      Q => time_out_counter_reg(6),
      R => reset_time_out
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_4_time_out_counter_reg[4]_i_1\,
      Q => time_out_counter_reg(7),
      R => reset_time_out
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_7_time_out_counter_reg[8]_i_1\,
      Q => time_out_counter_reg(8),
      R => reset_time_out
    );
\time_out_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[4]_i_1\,
      CO(3) => \n_0_time_out_counter_reg[8]_i_1\,
      CO(2) => \n_1_time_out_counter_reg[8]_i_1\,
      CO(1) => \n_2_time_out_counter_reg[8]_i_1\,
      CO(0) => \n_3_time_out_counter_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_time_out_counter_reg[8]_i_1\,
      O(2) => \n_5_time_out_counter_reg[8]_i_1\,
      O(1) => \n_6_time_out_counter_reg[8]_i_1\,
      O(0) => \n_7_time_out_counter_reg[8]_i_1\,
      S(3) => \n_0_time_out_counter[8]_i_2\,
      S(2) => \n_0_time_out_counter[8]_i_3\,
      S(1) => \n_0_time_out_counter[8]_i_4\,
      S(0) => \n_0_time_out_counter[8]_i_5\
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_6_time_out_counter_reg[8]_i_1\,
      Q => time_out_counter_reg(9),
      R => reset_time_out
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF0100000000"
    )
    port map (
      I0 => \n_0_wait_bypass_count[0]_i_4\,
      I1 => \n_0_wait_bypass_count[0]_i_5\,
      I2 => \n_0_wait_bypass_count[0]_i_6\,
      I3 => n_0_time_out_wait_bypass_reg,
      I4 => tx_fsm_reset_done_int_s3,
      I5 => run_phase_alignment_int_s3,
      O => n_0_time_out_wait_bypass_i_1
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => n_0_time_out_wait_bypass_i_1,
      Q => n_0_time_out_wait_bypass_reg,
      R => '0'
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => '0'
    );
time_tlock_max_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAE"
    )
    port map (
      I0 => n_0_time_tlock_max_reg,
      I1 => n_0_time_tlock_max_i_2,
      I2 => time_out_counter_reg(17),
      I3 => time_out_counter_reg(18),
      I4 => n_0_time_tlock_max_i_3,
      I5 => reset_time_out,
      O => n_0_time_tlock_max_i_1
    );
time_tlock_max_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
    port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(10),
      I3 => time_out_counter_reg(7),
      I4 => time_out_counter_reg(5),
      I5 => \n_0_time_out_counter[0]_i_5\,
      O => n_0_time_tlock_max_i_2
    );
time_tlock_max_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(9),
      I2 => time_out_counter_reg(2),
      I3 => \n_0_time_out_counter[0]_i_10\,
      O => n_0_time_tlock_max_i_3
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_time_tlock_max_i_1,
      Q => n_0_time_tlock_max_reg,
      R => '0'
    );
tx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
    port map (
      I0 => tx_state(3),
      I1 => tx_state(1),
      I2 => tx_state(2),
      I3 => tx_state(0),
      I4 => gt0_txresetdone_out,
      O => n_0_tx_fsm_reset_done_int_i_1
    );
tx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_tx_fsm_reset_done_int_i_1,
      Q => gt0_txresetdone_out,
      R => pma_reset
    );
tx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => tx_fsm_reset_done_int_s2,
      Q => tx_fsm_reset_done_int_s3,
      R => '0'
    );
txresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => txresetdone_s2,
      Q => txresetdone_s3,
      R => '0'
    );
\wait_bypass_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => run_phase_alignment_int_s3,
      O => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_bypass_count_reg(0),
      O => \n_0_wait_bypass_count[0]_i_10\
    );
\wait_bypass_count[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
    port map (
      I0 => \n_0_wait_bypass_count[0]_i_4\,
      I1 => \n_0_wait_bypass_count[0]_i_5\,
      I2 => \n_0_wait_bypass_count[0]_i_6\,
      I3 => tx_fsm_reset_done_int_s3,
      O => \n_0_wait_bypass_count[0]_i_2\
    );
\wait_bypass_count[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
    port map (
      I0 => wait_bypass_count_reg(15),
      I1 => wait_bypass_count_reg(1),
      I2 => wait_bypass_count_reg(2),
      I3 => wait_bypass_count_reg(16),
      I4 => wait_bypass_count_reg(0),
      O => \n_0_wait_bypass_count[0]_i_4\
    );
\wait_bypass_count[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
    port map (
      I0 => wait_bypass_count_reg(9),
      I1 => wait_bypass_count_reg(10),
      I2 => wait_bypass_count_reg(13),
      I3 => wait_bypass_count_reg(14),
      I4 => wait_bypass_count_reg(11),
      I5 => wait_bypass_count_reg(12),
      O => \n_0_wait_bypass_count[0]_i_5\
    );
\wait_bypass_count[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
    port map (
      I0 => wait_bypass_count_reg(4),
      I1 => wait_bypass_count_reg(3),
      I2 => wait_bypass_count_reg(8),
      I3 => wait_bypass_count_reg(7),
      I4 => wait_bypass_count_reg(5),
      I5 => wait_bypass_count_reg(6),
      O => \n_0_wait_bypass_count[0]_i_6\
    );
\wait_bypass_count[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(3),
      O => \n_0_wait_bypass_count[0]_i_7\
    );
\wait_bypass_count[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(2),
      O => \n_0_wait_bypass_count[0]_i_8\
    );
\wait_bypass_count[0]_i_9__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(1),
      O => \n_0_wait_bypass_count[0]_i_9__0\
    );
\wait_bypass_count[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(15),
      O => \n_0_wait_bypass_count[12]_i_2\
    );
\wait_bypass_count[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(14),
      O => \n_0_wait_bypass_count[12]_i_3\
    );
\wait_bypass_count[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(13),
      O => \n_0_wait_bypass_count[12]_i_4\
    );
\wait_bypass_count[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(12),
      O => \n_0_wait_bypass_count[12]_i_5\
    );
\wait_bypass_count[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(16),
      O => \n_0_wait_bypass_count[16]_i_2\
    );
\wait_bypass_count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(7),
      O => \n_0_wait_bypass_count[4]_i_2\
    );
\wait_bypass_count[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(6),
      O => \n_0_wait_bypass_count[4]_i_3\
    );
\wait_bypass_count[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(5),
      O => \n_0_wait_bypass_count[4]_i_4\
    );
\wait_bypass_count[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(4),
      O => \n_0_wait_bypass_count[4]_i_5\
    );
\wait_bypass_count[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(11),
      O => \n_0_wait_bypass_count[8]_i_2\
    );
\wait_bypass_count[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(10),
      O => \n_0_wait_bypass_count[8]_i_3\
    );
\wait_bypass_count[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(9),
      O => \n_0_wait_bypass_count[8]_i_4\
    );
\wait_bypass_count[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(8),
      O => \n_0_wait_bypass_count[8]_i_5\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_7_wait_bypass_count_reg[0]_i_3\,
      Q => wait_bypass_count_reg(0),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_wait_bypass_count_reg[0]_i_3\,
      CO(2) => \n_1_wait_bypass_count_reg[0]_i_3\,
      CO(1) => \n_2_wait_bypass_count_reg[0]_i_3\,
      CO(0) => \n_3_wait_bypass_count_reg[0]_i_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '1',
      O(3) => \n_4_wait_bypass_count_reg[0]_i_3\,
      O(2) => \n_5_wait_bypass_count_reg[0]_i_3\,
      O(1) => \n_6_wait_bypass_count_reg[0]_i_3\,
      O(0) => \n_7_wait_bypass_count_reg[0]_i_3\,
      S(3) => \n_0_wait_bypass_count[0]_i_7\,
      S(2) => \n_0_wait_bypass_count[0]_i_8\,
      S(1) => \n_0_wait_bypass_count[0]_i_9__0\,
      S(0) => \n_0_wait_bypass_count[0]_i_10\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_5_wait_bypass_count_reg[8]_i_1\,
      Q => wait_bypass_count_reg(10),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_4_wait_bypass_count_reg[8]_i_1\,
      Q => wait_bypass_count_reg(11),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_7_wait_bypass_count_reg[12]_i_1\,
      Q => wait_bypass_count_reg(12),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[8]_i_1\,
      CO(3) => \n_0_wait_bypass_count_reg[12]_i_1\,
      CO(2) => \n_1_wait_bypass_count_reg[12]_i_1\,
      CO(1) => \n_2_wait_bypass_count_reg[12]_i_1\,
      CO(0) => \n_3_wait_bypass_count_reg[12]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_wait_bypass_count_reg[12]_i_1\,
      O(2) => \n_5_wait_bypass_count_reg[12]_i_1\,
      O(1) => \n_6_wait_bypass_count_reg[12]_i_1\,
      O(0) => \n_7_wait_bypass_count_reg[12]_i_1\,
      S(3) => \n_0_wait_bypass_count[12]_i_2\,
      S(2) => \n_0_wait_bypass_count[12]_i_3\,
      S(1) => \n_0_wait_bypass_count[12]_i_4\,
      S(0) => \n_0_wait_bypass_count[12]_i_5\
    );
\wait_bypass_count_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_6_wait_bypass_count_reg[12]_i_1\,
      Q => wait_bypass_count_reg(13),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_5_wait_bypass_count_reg[12]_i_1\,
      Q => wait_bypass_count_reg(14),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_4_wait_bypass_count_reg[12]_i_1\,
      Q => wait_bypass_count_reg(15),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_7_wait_bypass_count_reg[16]_i_1\,
      Q => wait_bypass_count_reg(16),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[12]_i_1\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 1) => \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \n_7_wait_bypass_count_reg[16]_i_1\,
      S(3) => '0',
      S(2) => '0',
      S(1) => '0',
      S(0) => \n_0_wait_bypass_count[16]_i_2\
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_6_wait_bypass_count_reg[0]_i_3\,
      Q => wait_bypass_count_reg(1),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_5_wait_bypass_count_reg[0]_i_3\,
      Q => wait_bypass_count_reg(2),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_4_wait_bypass_count_reg[0]_i_3\,
      Q => wait_bypass_count_reg(3),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_7_wait_bypass_count_reg[4]_i_1\,
      Q => wait_bypass_count_reg(4),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[0]_i_3\,
      CO(3) => \n_0_wait_bypass_count_reg[4]_i_1\,
      CO(2) => \n_1_wait_bypass_count_reg[4]_i_1\,
      CO(1) => \n_2_wait_bypass_count_reg[4]_i_1\,
      CO(0) => \n_3_wait_bypass_count_reg[4]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_wait_bypass_count_reg[4]_i_1\,
      O(2) => \n_5_wait_bypass_count_reg[4]_i_1\,
      O(1) => \n_6_wait_bypass_count_reg[4]_i_1\,
      O(0) => \n_7_wait_bypass_count_reg[4]_i_1\,
      S(3) => \n_0_wait_bypass_count[4]_i_2\,
      S(2) => \n_0_wait_bypass_count[4]_i_3\,
      S(1) => \n_0_wait_bypass_count[4]_i_4\,
      S(0) => \n_0_wait_bypass_count[4]_i_5\
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_6_wait_bypass_count_reg[4]_i_1\,
      Q => wait_bypass_count_reg(5),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_5_wait_bypass_count_reg[4]_i_1\,
      Q => wait_bypass_count_reg(6),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_4_wait_bypass_count_reg[4]_i_1\,
      Q => wait_bypass_count_reg(7),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_7_wait_bypass_count_reg[8]_i_1\,
      Q => wait_bypass_count_reg(8),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[4]_i_1\,
      CO(3) => \n_0_wait_bypass_count_reg[8]_i_1\,
      CO(2) => \n_1_wait_bypass_count_reg[8]_i_1\,
      CO(1) => \n_2_wait_bypass_count_reg[8]_i_1\,
      CO(0) => \n_3_wait_bypass_count_reg[8]_i_1\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3) => \n_4_wait_bypass_count_reg[8]_i_1\,
      O(2) => \n_5_wait_bypass_count_reg[8]_i_1\,
      O(1) => \n_6_wait_bypass_count_reg[8]_i_1\,
      O(0) => \n_7_wait_bypass_count_reg[8]_i_1\,
      S(3) => \n_0_wait_bypass_count[8]_i_2\,
      S(2) => \n_0_wait_bypass_count[8]_i_3\,
      S(1) => \n_0_wait_bypass_count[8]_i_4\,
      S(0) => \n_0_wait_bypass_count[8]_i_5\
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_6_wait_bypass_count_reg[8]_i_1\,
      Q => wait_bypass_count_reg(9),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_time_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(0),
      O => wait_time_cnt0(0)
    );
\wait_time_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(0),
      I1 => \wait_time_cnt_reg__0\(1),
      O => \n_0_wait_time_cnt[1]_i_1\
    );
\wait_time_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(1),
      I1 => \wait_time_cnt_reg__0\(0),
      I2 => \wait_time_cnt_reg__0\(2),
      O => \n_0_wait_time_cnt[2]_i_1\
    );
\wait_time_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(2),
      I1 => \wait_time_cnt_reg__0\(0),
      I2 => \wait_time_cnt_reg__0\(1),
      I3 => \wait_time_cnt_reg__0\(3),
      O => \n_0_wait_time_cnt[3]_i_1\
    );
\wait_time_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(1),
      I1 => \wait_time_cnt_reg__0\(0),
      I2 => \wait_time_cnt_reg__0\(2),
      I3 => \wait_time_cnt_reg__0\(3),
      I4 => \wait_time_cnt_reg__0\(4),
      O => \n_0_wait_time_cnt[4]_i_1\
    );
\wait_time_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(4),
      I1 => \wait_time_cnt_reg__0\(3),
      I2 => \wait_time_cnt_reg__0\(2),
      I3 => \wait_time_cnt_reg__0\(0),
      I4 => \wait_time_cnt_reg__0\(1),
      I5 => \wait_time_cnt_reg__0\(5),
      O => \n_0_wait_time_cnt[5]_i_1\
    );
\wait_time_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"020A"
    )
    port map (
      I0 => tx_state(0),
      I1 => tx_state(1),
      I2 => tx_state(3),
      I3 => tx_state(2),
      O => clear
    );
\wait_time_cnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(6),
      I1 => \n_0_wait_time_cnt[6]_i_4\,
      O => \n_0_wait_time_cnt[6]_i_2\
    );
\wait_time_cnt[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \n_0_wait_time_cnt[6]_i_4\,
      I1 => \wait_time_cnt_reg__0\(6),
      O => \n_0_wait_time_cnt[6]_i_3\
    );
\wait_time_cnt[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(0),
      I1 => \wait_time_cnt_reg__0\(1),
      I2 => \wait_time_cnt_reg__0\(4),
      I3 => \wait_time_cnt_reg__0\(5),
      I4 => \wait_time_cnt_reg__0\(2),
      I5 => \wait_time_cnt_reg__0\(3),
      O => \n_0_wait_time_cnt[6]_i_4\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2\,
      D => wait_time_cnt0(0),
      Q => \wait_time_cnt_reg__0\(0),
      R => clear
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2\,
      D => \n_0_wait_time_cnt[1]_i_1\,
      Q => \wait_time_cnt_reg__0\(1),
      R => clear
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2\,
      D => \n_0_wait_time_cnt[2]_i_1\,
      Q => \wait_time_cnt_reg__0\(2),
      S => clear
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2\,
      D => \n_0_wait_time_cnt[3]_i_1\,
      Q => \wait_time_cnt_reg__0\(3),
      R => clear
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2\,
      D => \n_0_wait_time_cnt[4]_i_1\,
      Q => \wait_time_cnt_reg__0\(4),
      R => clear
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2\,
      D => \n_0_wait_time_cnt[5]_i_1\,
      Q => \wait_time_cnt_reg__0\(5),
      S => clear
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2\,
      D => \n_0_wait_time_cnt[6]_i_3\,
      Q => \wait_time_cnt_reg__0\(6),
      S => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_init__parameterized0\ is
  port (
    cplllock : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    I_0 : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    gtrefclk : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_in : in STD_LOGIC;
    gt0_qplloutrefclk_in : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    userclk : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pma_reset : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    data_out : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_init__parameterized0\ : entity is "gig_eth_pcs_pma_basex_v15_1_GTWIZARD_init";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_init__parameterized0\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_init__parameterized0\ is
  signal CPLL_RESET : STD_LOGIC;
  signal RXDFELFHOLD : STD_LOGIC;
  signal RXUSERRDY : STD_LOGIC;
  signal TXUSERRDY : STD_LOGIC;
  signal \^cplllock\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 13 downto 1 );
  signal data_out_2 : STD_LOGIC;
  signal \gt0_GTWIZARD_i/ack_flag\ : STD_LOGIC;
  signal gt0_gtrxreset_in1_out : STD_LOGIC;
  signal gt0_gttxreset_in0_out : STD_LOGIC;
  signal gt0_rx_cdrlock_counter : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal gt0_rx_cdrlock_counter_0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal gt0_rxresetdone_out : STD_LOGIC;
  signal n_0_cpll_reset_sync : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter[12]_i_3\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter[12]_i_4\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter[12]_i_5\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter[12]_i_6\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter[13]_i_2\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter[13]_i_3\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter[13]_i_5\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter[4]_i_3\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter[4]_i_4\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter[4]_i_5\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter[4]_i_6\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter[8]_i_3\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter[8]_i_4\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter[8]_i_5\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter[8]_i_6\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter_reg[4]_i_2\ : STD_LOGIC;
  signal \n_0_gt0_rx_cdrlock_counter_reg[8]_i_2\ : STD_LOGIC;
  signal n_0_gt0_rx_cdrlocked_i_1 : STD_LOGIC;
  signal n_0_gt0_rx_cdrlocked_reg : STD_LOGIC;
  signal \n_1_gt0_rx_cdrlock_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_1_gt0_rx_cdrlock_counter_reg[4]_i_2\ : STD_LOGIC;
  signal \n_1_gt0_rx_cdrlock_counter_reg[8]_i_2\ : STD_LOGIC;
  signal \n_2_gt0_rx_cdrlock_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_2_gt0_rx_cdrlock_counter_reg[4]_i_2\ : STD_LOGIC;
  signal \n_2_gt0_rx_cdrlock_counter_reg[8]_i_2\ : STD_LOGIC;
  signal \n_3_gt0_rx_cdrlock_counter_reg[12]_i_2\ : STD_LOGIC;
  signal \n_3_gt0_rx_cdrlock_counter_reg[4]_i_2\ : STD_LOGIC;
  signal \n_3_gt0_rx_cdrlock_counter_reg[8]_i_2\ : STD_LOGIC;
  signal n_4_gtwizard_i : STD_LOGIC;
  signal n_6_gtwizard_i : STD_LOGIC;
  signal reset_out_1 : STD_LOGIC;
  signal \NLW_gt0_rx_cdrlock_counter_reg[13]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gt0_rx_cdrlock_counter_reg[13]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gt0_rx_cdrlock_counter[0]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \gt0_rx_cdrlock_counter[8]_i_1\ : label is "soft_lutpair66";
begin
  cplllock <= \^cplllock\;
cpll_reset_sync: entity work.gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_3
    port map (
      CPLL_RESET => CPLL_RESET,
      O1 => n_0_cpll_reset_sync,
      ack_flag => \gt0_GTWIZARD_i/ack_flag\,
      reset_out => reset_out_1,
      userclk2 => userclk2
    );
\gt0_rx_cdrlock_counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
    port map (
      I0 => \n_0_gt0_rx_cdrlock_counter[13]_i_2\,
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => \n_0_gt0_rx_cdrlock_counter[13]_i_3\,
      I3 => gt0_rx_cdrlock_counter(0),
      O => gt0_rx_cdrlock_counter_0(0)
    );
\gt0_rx_cdrlock_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FF01"
    )
    port map (
      I0 => \n_0_gt0_rx_cdrlock_counter[13]_i_2\,
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => \n_0_gt0_rx_cdrlock_counter[13]_i_3\,
      I3 => data0(10),
      I4 => gt0_rx_cdrlock_counter(0),
      O => gt0_rx_cdrlock_counter_0(10)
    );
\gt0_rx_cdrlock_counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
    port map (
      I0 => \n_0_gt0_rx_cdrlock_counter[13]_i_2\,
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => \n_0_gt0_rx_cdrlock_counter[13]_i_3\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(11),
      O => gt0_rx_cdrlock_counter_0(11)
    );
\gt0_rx_cdrlock_counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
    port map (
      I0 => \n_0_gt0_rx_cdrlock_counter[13]_i_2\,
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => \n_0_gt0_rx_cdrlock_counter[13]_i_3\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(12),
      O => gt0_rx_cdrlock_counter_0(12)
    );
\gt0_rx_cdrlock_counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gt0_rx_cdrlock_counter(12),
      O => \n_0_gt0_rx_cdrlock_counter[12]_i_3\
    );
\gt0_rx_cdrlock_counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gt0_rx_cdrlock_counter(11),
      O => \n_0_gt0_rx_cdrlock_counter[12]_i_4\
    );
\gt0_rx_cdrlock_counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gt0_rx_cdrlock_counter(10),
      O => \n_0_gt0_rx_cdrlock_counter[12]_i_5\
    );
\gt0_rx_cdrlock_counter[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gt0_rx_cdrlock_counter(9),
      O => \n_0_gt0_rx_cdrlock_counter[12]_i_6\
    );
\gt0_rx_cdrlock_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FF01"
    )
    port map (
      I0 => \n_0_gt0_rx_cdrlock_counter[13]_i_2\,
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => \n_0_gt0_rx_cdrlock_counter[13]_i_3\,
      I3 => data0(13),
      I4 => gt0_rx_cdrlock_counter(0),
      O => gt0_rx_cdrlock_counter_0(13)
    );
\gt0_rx_cdrlock_counter[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
    port map (
      I0 => gt0_rx_cdrlock_counter(10),
      I1 => gt0_rx_cdrlock_counter(12),
      I2 => gt0_rx_cdrlock_counter(2),
      I3 => gt0_rx_cdrlock_counter(3),
      I4 => gt0_rx_cdrlock_counter(1),
      I5 => gt0_rx_cdrlock_counter(13),
      O => \n_0_gt0_rx_cdrlock_counter[13]_i_2\
    );
\gt0_rx_cdrlock_counter[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
    port map (
      I0 => gt0_rx_cdrlock_counter(4),
      I1 => gt0_rx_cdrlock_counter(6),
      I2 => gt0_rx_cdrlock_counter(11),
      I3 => gt0_rx_cdrlock_counter(9),
      I4 => gt0_rx_cdrlock_counter(7),
      I5 => gt0_rx_cdrlock_counter(8),
      O => \n_0_gt0_rx_cdrlock_counter[13]_i_3\
    );
\gt0_rx_cdrlock_counter[13]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gt0_rx_cdrlock_counter(13),
      O => \n_0_gt0_rx_cdrlock_counter[13]_i_5\
    );
\gt0_rx_cdrlock_counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
    port map (
      I0 => \n_0_gt0_rx_cdrlock_counter[13]_i_2\,
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => \n_0_gt0_rx_cdrlock_counter[13]_i_3\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(1),
      O => gt0_rx_cdrlock_counter_0(1)
    );
\gt0_rx_cdrlock_counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
    port map (
      I0 => \n_0_gt0_rx_cdrlock_counter[13]_i_2\,
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => \n_0_gt0_rx_cdrlock_counter[13]_i_3\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(2),
      O => gt0_rx_cdrlock_counter_0(2)
    );
\gt0_rx_cdrlock_counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
    port map (
      I0 => \n_0_gt0_rx_cdrlock_counter[13]_i_2\,
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => \n_0_gt0_rx_cdrlock_counter[13]_i_3\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(3),
      O => gt0_rx_cdrlock_counter_0(3)
    );
\gt0_rx_cdrlock_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FF01"
    )
    port map (
      I0 => \n_0_gt0_rx_cdrlock_counter[13]_i_2\,
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => \n_0_gt0_rx_cdrlock_counter[13]_i_3\,
      I3 => data0(4),
      I4 => gt0_rx_cdrlock_counter(0),
      O => gt0_rx_cdrlock_counter_0(4)
    );
\gt0_rx_cdrlock_counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gt0_rx_cdrlock_counter(4),
      O => \n_0_gt0_rx_cdrlock_counter[4]_i_3\
    );
\gt0_rx_cdrlock_counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gt0_rx_cdrlock_counter(3),
      O => \n_0_gt0_rx_cdrlock_counter[4]_i_4\
    );
\gt0_rx_cdrlock_counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gt0_rx_cdrlock_counter(2),
      O => \n_0_gt0_rx_cdrlock_counter[4]_i_5\
    );
\gt0_rx_cdrlock_counter[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gt0_rx_cdrlock_counter(1),
      O => \n_0_gt0_rx_cdrlock_counter[4]_i_6\
    );
\gt0_rx_cdrlock_counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
    port map (
      I0 => \n_0_gt0_rx_cdrlock_counter[13]_i_2\,
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => \n_0_gt0_rx_cdrlock_counter[13]_i_3\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(5),
      O => gt0_rx_cdrlock_counter_0(5)
    );
\gt0_rx_cdrlock_counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
    port map (
      I0 => \n_0_gt0_rx_cdrlock_counter[13]_i_2\,
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => \n_0_gt0_rx_cdrlock_counter[13]_i_3\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(6),
      O => gt0_rx_cdrlock_counter_0(6)
    );
\gt0_rx_cdrlock_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
    port map (
      I0 => \n_0_gt0_rx_cdrlock_counter[13]_i_2\,
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => \n_0_gt0_rx_cdrlock_counter[13]_i_3\,
      I3 => gt0_rx_cdrlock_counter(0),
      I4 => data0(7),
      O => gt0_rx_cdrlock_counter_0(7)
    );
\gt0_rx_cdrlock_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FF01"
    )
    port map (
      I0 => \n_0_gt0_rx_cdrlock_counter[13]_i_2\,
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => \n_0_gt0_rx_cdrlock_counter[13]_i_3\,
      I3 => data0(8),
      I4 => gt0_rx_cdrlock_counter(0),
      O => gt0_rx_cdrlock_counter_0(8)
    );
\gt0_rx_cdrlock_counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gt0_rx_cdrlock_counter(8),
      O => \n_0_gt0_rx_cdrlock_counter[8]_i_3\
    );
\gt0_rx_cdrlock_counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gt0_rx_cdrlock_counter(7),
      O => \n_0_gt0_rx_cdrlock_counter[8]_i_4\
    );
\gt0_rx_cdrlock_counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gt0_rx_cdrlock_counter(6),
      O => \n_0_gt0_rx_cdrlock_counter[8]_i_5\
    );
\gt0_rx_cdrlock_counter[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => gt0_rx_cdrlock_counter(5),
      O => \n_0_gt0_rx_cdrlock_counter[8]_i_6\
    );
\gt0_rx_cdrlock_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FF01"
    )
    port map (
      I0 => \n_0_gt0_rx_cdrlock_counter[13]_i_2\,
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => \n_0_gt0_rx_cdrlock_counter[13]_i_3\,
      I3 => data0(9),
      I4 => gt0_rx_cdrlock_counter(0),
      O => gt0_rx_cdrlock_counter_0(9)
    );
\gt0_rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(0),
      Q => gt0_rx_cdrlock_counter(0),
      R => data_out_2
    );
\gt0_rx_cdrlock_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(10),
      Q => gt0_rx_cdrlock_counter(10),
      R => data_out_2
    );
\gt0_rx_cdrlock_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(11),
      Q => gt0_rx_cdrlock_counter(11),
      R => data_out_2
    );
\gt0_rx_cdrlock_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(12),
      Q => gt0_rx_cdrlock_counter(12),
      R => data_out_2
    );
\gt0_rx_cdrlock_counter_reg[12]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_gt0_rx_cdrlock_counter_reg[8]_i_2\,
      CO(3) => \n_0_gt0_rx_cdrlock_counter_reg[12]_i_2\,
      CO(2) => \n_1_gt0_rx_cdrlock_counter_reg[12]_i_2\,
      CO(1) => \n_2_gt0_rx_cdrlock_counter_reg[12]_i_2\,
      CO(0) => \n_3_gt0_rx_cdrlock_counter_reg[12]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \n_0_gt0_rx_cdrlock_counter[12]_i_3\,
      S(2) => \n_0_gt0_rx_cdrlock_counter[12]_i_4\,
      S(1) => \n_0_gt0_rx_cdrlock_counter[12]_i_5\,
      S(0) => \n_0_gt0_rx_cdrlock_counter[12]_i_6\
    );
\gt0_rx_cdrlock_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(13),
      Q => gt0_rx_cdrlock_counter(13),
      R => data_out_2
    );
\gt0_rx_cdrlock_counter_reg[13]_i_4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_gt0_rx_cdrlock_counter_reg[12]_i_2\,
      CO(3 downto 0) => \NLW_gt0_rx_cdrlock_counter_reg[13]_i_4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 1) => \NLW_gt0_rx_cdrlock_counter_reg[13]_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => data0(13),
      S(3) => '0',
      S(2) => '0',
      S(1) => '0',
      S(0) => \n_0_gt0_rx_cdrlock_counter[13]_i_5\
    );
\gt0_rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(1),
      Q => gt0_rx_cdrlock_counter(1),
      R => data_out_2
    );
\gt0_rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(2),
      Q => gt0_rx_cdrlock_counter(2),
      R => data_out_2
    );
\gt0_rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(3),
      Q => gt0_rx_cdrlock_counter(3),
      R => data_out_2
    );
\gt0_rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(4),
      Q => gt0_rx_cdrlock_counter(4),
      R => data_out_2
    );
\gt0_rx_cdrlock_counter_reg[4]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_gt0_rx_cdrlock_counter_reg[4]_i_2\,
      CO(2) => \n_1_gt0_rx_cdrlock_counter_reg[4]_i_2\,
      CO(1) => \n_2_gt0_rx_cdrlock_counter_reg[4]_i_2\,
      CO(0) => \n_3_gt0_rx_cdrlock_counter_reg[4]_i_2\,
      CYINIT => gt0_rx_cdrlock_counter(0),
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \n_0_gt0_rx_cdrlock_counter[4]_i_3\,
      S(2) => \n_0_gt0_rx_cdrlock_counter[4]_i_4\,
      S(1) => \n_0_gt0_rx_cdrlock_counter[4]_i_5\,
      S(0) => \n_0_gt0_rx_cdrlock_counter[4]_i_6\
    );
\gt0_rx_cdrlock_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(5),
      Q => gt0_rx_cdrlock_counter(5),
      R => data_out_2
    );
\gt0_rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(6),
      Q => gt0_rx_cdrlock_counter(6),
      R => data_out_2
    );
\gt0_rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(7),
      Q => gt0_rx_cdrlock_counter(7),
      R => data_out_2
    );
\gt0_rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(8),
      Q => gt0_rx_cdrlock_counter(8),
      R => data_out_2
    );
\gt0_rx_cdrlock_counter_reg[8]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_gt0_rx_cdrlock_counter_reg[4]_i_2\,
      CO(3) => \n_0_gt0_rx_cdrlock_counter_reg[8]_i_2\,
      CO(2) => \n_1_gt0_rx_cdrlock_counter_reg[8]_i_2\,
      CO(1) => \n_2_gt0_rx_cdrlock_counter_reg[8]_i_2\,
      CO(0) => \n_3_gt0_rx_cdrlock_counter_reg[8]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \n_0_gt0_rx_cdrlock_counter[8]_i_3\,
      S(2) => \n_0_gt0_rx_cdrlock_counter[8]_i_4\,
      S(1) => \n_0_gt0_rx_cdrlock_counter[8]_i_5\,
      S(0) => \n_0_gt0_rx_cdrlock_counter[8]_i_6\
    );
\gt0_rx_cdrlock_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => gt0_rx_cdrlock_counter_0(9),
      Q => gt0_rx_cdrlock_counter(9),
      R => data_out_2
    );
gt0_rx_cdrlocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FF01"
    )
    port map (
      I0 => \n_0_gt0_rx_cdrlock_counter[13]_i_2\,
      I1 => gt0_rx_cdrlock_counter(5),
      I2 => \n_0_gt0_rx_cdrlock_counter[13]_i_3\,
      I3 => n_0_gt0_rx_cdrlocked_reg,
      I4 => gt0_rx_cdrlock_counter(0),
      O => n_0_gt0_rx_cdrlocked_i_1
    );
gt0_rx_cdrlocked_reg: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => '1',
      D => n_0_gt0_rx_cdrlocked_i_1,
      Q => n_0_gt0_rx_cdrlocked_reg,
      R => data_out_2
    );
gt0_rxresetfsm_i: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_RX_STARTUP_FSM__parameterized0\
    port map (
      I1 => n_0_gt0_rx_cdrlocked_reg,
      I2 => n_4_gtwizard_i,
      I4 => I4,
      RXDFELFHOLD => RXDFELFHOLD,
      RXUSERRDY => RXUSERRDY,
      cplllock => \^cplllock\,
      data_in => gt0_gtrxreset_in1_out,
      data_out => data_out,
      gt0_rxresetdone_out => gt0_rxresetdone_out,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      pma_reset => pma_reset,
      userclk => userclk
    );
gt0_txresetfsm_i: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_TX_STARTUP_FSM__parameterized0\
    port map (
      CPLL_RESET => CPLL_RESET,
      I1 => n_6_gtwizard_i,
      I5 => I5,
      TXUSERRDY => TXUSERRDY,
      cplllock => \^cplllock\,
      data_in => data_in,
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_rxresetdone_out => gt0_rxresetdone_out,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      pma_reset => pma_reset,
      userclk => userclk
    );
gtwizard_i: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_multi_gt__parameterized0\
    port map (
      D(1 downto 0) => D(1 downto 0),
      I1(1 downto 0) => I1(1 downto 0),
      I2(1 downto 0) => I2(1 downto 0),
      I3(1 downto 0) => I3(1 downto 0),
      I4 => n_0_cpll_reset_sync,
      I_0 => I_0,
      O1 => n_4_gtwizard_i,
      O2 => n_6_gtwizard_i,
      O3(15 downto 0) => O1(15 downto 0),
      O4(1 downto 0) => O2(1 downto 0),
      O5(1 downto 0) => O3(1 downto 0),
      O6(1 downto 0) => O4(1 downto 0),
      O7(1 downto 0) => O5(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXDFELFHOLD => RXDFELFHOLD,
      RXPD(0) => RXPD(0),
      RXUSERRDY => RXUSERRDY,
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      TXUSERRDY => TXUSERRDY,
      ack_flag => \gt0_GTWIZARD_i/ack_flag\,
      cplllock => \^cplllock\,
      data_in => gt0_gtrxreset_in1_out,
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_qplloutclk_in => gt0_qplloutclk_in,
      gt0_qplloutrefclk_in => gt0_qplloutrefclk_in,
      gtrefclk => gtrefclk,
      independent_clock_bufg => independent_clock_bufg,
      reset => reset,
      reset_out => reset_out,
      reset_out_1 => reset_out_1,
      rxn => rxn,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk,
      userclk2 => userclk2
    );
sync_block_gtrxreset: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_4\
    port map (
      data_in => gt0_gtrxreset_in1_out,
      data_out => data_out_2,
      independent_clock_bufg => independent_clock_bufg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_ethernet_pcs_pma_v14_3__parameterized0\ is
  port (
    txreset : out STD_LOGIC;
    rxreset : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    encommaalign : out STD_LOGIC;
    gmii_rx_dv : out STD_LOGIC;
    O2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    powerdown : out STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    userclk2 : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_tx_en : in STD_LOGIC;
    rxnotintable : in STD_LOGIC;
    rxbuferr : in STD_LOGIC;
    txbuferr : in STD_LOGIC;
    rxdisperr : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rxcharisk : in STD_LOGIC;
    rxchariscomma : in STD_LOGIC;
    resetdone : in STD_LOGIC;
    I1 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_ethernet_pcs_pma_v14_3__parameterized0\ : entity is "gig_ethernet_pcs_pma_v14_3";
end \gig_eth_pcs_pma_basex_v15_1_gig_ethernet_pcs_pma_v14_3__parameterized0\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_ethernet_pcs_pma_v14_3__parameterized0\ is
begin
gpcs_pma_inst: entity work.gig_eth_pcs_pma_basex_v15_1_GPCS_PMA_GEN
    port map (
      D(0) => D(0),
      I1(7 downto 0) => I1(7 downto 0),
      O1(0) => O1(0),
      O2(0) => O2(0),
      O3 => SR(0),
      O4 => powerdown,
      O5(7 downto 0) => O3(7 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      SR(0) => rxreset,
      SS(0) => txreset,
      configuration_vector(2 downto 0) => configuration_vector(2 downto 0),
      encommaalign => encommaalign,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      mmcm_locked => mmcm_locked,
      reset => reset,
      resetdone => resetdone,
      rxbuferr => rxbuferr,
      rxchariscomma => rxchariscomma,
      rxcharisk => rxcharisk,
      rxdisperr => rxdisperr,
      rxnotintable => rxnotintable,
      signal_detect => signal_detect,
      status_vector(6 downto 0) => status_vector(6 downto 0),
      txbuferr => txbuferr,
      userclk2 => userclk2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD__parameterized0\ is
  port (
    cplllock : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    I_0 : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    TXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    RXBUFSTATUS : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    gtrefclk : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_in : in STD_LOGIC;
    gt0_qplloutrefclk_in : in STD_LOGIC;
    reset_out : in STD_LOGIC;
    reset : in STD_LOGIC;
    userclk : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pma_reset : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    data_out : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD__parameterized0\ : entity is "gig_eth_pcs_pma_basex_v15_1_GTWIZARD";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD__parameterized0\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD__parameterized0\ is
begin
U0: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD_init__parameterized0\
    port map (
      D(1 downto 0) => D(1 downto 0),
      I1(1 downto 0) => I1(1 downto 0),
      I2(1 downto 0) => I2(1 downto 0),
      I3(1 downto 0) => I3(1 downto 0),
      I4 => I4,
      I5 => I5,
      I_0 => I_0,
      O1(15 downto 0) => O1(15 downto 0),
      O2(1 downto 0) => O2(1 downto 0),
      O3(1 downto 0) => O3(1 downto 0),
      O4(1 downto 0) => O4(1 downto 0),
      O5(1 downto 0) => O5(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXBUFSTATUS(0) => RXBUFSTATUS(0),
      RXPD(0) => RXPD(0),
      TXBUFSTATUS(0) => TXBUFSTATUS(0),
      TXPD(0) => TXPD(0),
      cplllock => cplllock,
      data_in => data_in,
      data_out => data_out,
      gt0_qplloutclk_in => gt0_qplloutclk_in,
      gt0_qplloutrefclk_in => gt0_qplloutrefclk_in,
      gtrefclk => gtrefclk,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      pma_reset => pma_reset,
      reset => reset,
      reset_out => reset_out,
      rxn => rxn,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk,
      userclk2 => userclk2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_transceiver__parameterized0\ is
  port (
    cplllock : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    I_0 : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    rxnotintable : out STD_LOGIC;
    rxbuferr : out STD_LOGIC;
    txbuferr : out STD_LOGIC;
    rxdisperr : out STD_LOGIC;
    rxchariscomma : out STD_LOGIC;
    rxcharisk : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    gtrefclk : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_in : in STD_LOGIC;
    gt0_qplloutrefclk_in : in STD_LOGIC;
    userclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    powerdown : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    I2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    pma_reset : in STD_LOGIC;
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    encommaalign : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    I4 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_transceiver__parameterized0\ : entity is "gig_eth_pcs_pma_basex_v15_1_transceiver";
end \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_transceiver__parameterized0\;

architecture STRUCTURE of \gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_transceiver__parameterized0\ is
  signal gt0_rxchariscomma_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt0_rxcharisk_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt0_rxclkcorcnt_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt0_rxdata_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gt0_rxdisperr_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt0_rxmcommaalignen_in : STD_LOGIC;
  signal gt0_rxnotintable_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \n_0_rxbufstatus_reg_reg[2]\ : STD_LOGIC;
  signal n_0_rxchariscomma_i_1 : STD_LOGIC;
  signal n_0_rxcharisk_i_1 : STD_LOGIC;
  signal \n_0_rxdata[0]_i_1\ : STD_LOGIC;
  signal \n_0_rxdata[1]_i_1\ : STD_LOGIC;
  signal \n_0_rxdata[2]_i_1\ : STD_LOGIC;
  signal \n_0_rxdata[3]_i_1\ : STD_LOGIC;
  signal \n_0_rxdata[4]_i_1\ : STD_LOGIC;
  signal \n_0_rxdata[5]_i_1\ : STD_LOGIC;
  signal \n_0_rxdata[6]_i_1\ : STD_LOGIC;
  signal \n_0_rxdata[7]_i_1\ : STD_LOGIC;
  signal n_0_rxdisperr_i_1 : STD_LOGIC;
  signal n_0_rxnotintable_i_1 : STD_LOGIC;
  signal n_0_sync_block_data_valid : STD_LOGIC;
  signal n_0_toggle_i_1 : STD_LOGIC;
  signal \n_0_txbufstatus_reg_reg[1]\ : STD_LOGIC;
  signal n_7_gtwizard_inst : STD_LOGIC;
  signal n_8_gtwizard_inst : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal reset_out : STD_LOGIC;
  signal reset_out0_in : STD_LOGIC;
  signal rxchariscomma_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxchariscomma_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxcharisk_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxcharisk_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxdata_double : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdata_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdisperr_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxdisperr_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxnotintable_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxnotintable_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxpowerdown : STD_LOGIC;
  signal rxpowerdown_double : STD_LOGIC;
  signal \rxpowerdown_reg__0\ : STD_LOGIC;
  signal toggle : STD_LOGIC;
  signal txchardispmode_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispmode_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispmode_reg : STD_LOGIC;
  signal txchardispval_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispval_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispval_reg : STD_LOGIC;
  signal txcharisk_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txcharisk_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txcharisk_reg : STD_LOGIC;
  signal txdata_double : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txdata_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txdata_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal txpowerdown : STD_LOGIC;
  signal txpowerdown_double : STD_LOGIC;
  signal \txpowerdown_reg__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rxchariscomma_i_1 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of rxcharisk_i_1 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \rxdata[0]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \rxdata[1]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \rxdata[2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \rxdata[3]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \rxdata[4]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \rxdata[5]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \rxdata[6]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \rxdata[7]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of rxdisperr_i_1 : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of rxnotintable_i_1 : label is "soft_lutpair75";
begin
gtwizard_inst: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_GTWIZARD__parameterized0\
    port map (
      D(1 downto 0) => gt0_rxclkcorcnt_out(1 downto 0),
      I1(1 downto 0) => txchardispmode_int(1 downto 0),
      I2(1 downto 0) => txchardispval_int(1 downto 0),
      I3(1 downto 0) => txcharisk_int(1 downto 0),
      I4 => reset_out0_in,
      I5 => reset_out,
      I_0 => I_0,
      O1(15 downto 0) => gt0_rxdata_out(15 downto 0),
      O2(1 downto 0) => gt0_rxchariscomma_out(1 downto 0),
      O3(1 downto 0) => gt0_rxcharisk_out(1 downto 0),
      O4(1 downto 0) => gt0_rxdisperr_out(1 downto 0),
      O5(1 downto 0) => gt0_rxnotintable_out(1 downto 0),
      Q(15 downto 0) => txdata_int(15 downto 0),
      RXBUFSTATUS(0) => n_8_gtwizard_inst,
      RXPD(0) => rxpowerdown,
      TXBUFSTATUS(0) => n_7_gtwizard_inst,
      TXPD(0) => txpowerdown,
      cplllock => cplllock,
      data_in => data_in,
      data_out => n_0_sync_block_data_valid,
      gt0_qplloutclk_in => gt0_qplloutclk_in,
      gt0_qplloutrefclk_in => gt0_qplloutrefclk_in,
      gtrefclk => gtrefclk,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      pma_reset => pma_reset,
      reset => reset,
      reset_out => gt0_rxmcommaalignen_in,
      rxn => rxn,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk,
      userclk2 => userclk2
    );
reclock_encommaalign: entity work.gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync
    port map (
      encommaalign => encommaalign,
      reset_out => gt0_rxmcommaalignen_in,
      userclk => userclk
    );
reclock_rxreset: entity work.gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_0
    port map (
      I1(0) => I1(0),
      reset_out => reset_out0_in,
      userclk => userclk
    );
reclock_txreset: entity work.gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_sync_1
    port map (
      SR(0) => SR(0),
      reset_out => reset_out,
      userclk => userclk
    );
reset_wtd_timer: entity work.gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_reset_wtd_timer
    port map (
      data_out => n_0_sync_block_data_valid,
      independent_clock_bufg => independent_clock_bufg,
      reset => reset
    );
rxbuferr_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_rxbufstatus_reg_reg[2]\,
      Q => rxbuferr,
      R => '0'
    );
\rxbufstatus_reg_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => n_8_gtwizard_inst,
      Q => \n_0_rxbufstatus_reg_reg[2]\,
      R => '0'
    );
\rxchariscomma_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => \rxchariscomma_reg__0\(0),
      Q => rxchariscomma_double(0),
      R => I1(0)
    );
\rxchariscomma_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => \rxchariscomma_reg__0\(1),
      Q => rxchariscomma_double(1),
      R => I1(0)
    );
rxchariscomma_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rxchariscomma_double(1),
      I1 => toggle,
      I2 => rxchariscomma_double(0),
      O => n_0_rxchariscomma_i_1
    );
rxchariscomma_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_rxchariscomma_i_1,
      Q => rxchariscomma,
      R => I1(0)
    );
\rxchariscomma_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxchariscomma_out(0),
      Q => \rxchariscomma_reg__0\(0),
      R => '0'
    );
\rxchariscomma_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxchariscomma_out(1),
      Q => \rxchariscomma_reg__0\(1),
      R => '0'
    );
\rxcharisk_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => \rxcharisk_reg__0\(0),
      Q => rxcharisk_double(0),
      R => I1(0)
    );
\rxcharisk_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => \rxcharisk_reg__0\(1),
      Q => rxcharisk_double(1),
      R => I1(0)
    );
rxcharisk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rxcharisk_double(1),
      I1 => toggle,
      I2 => rxcharisk_double(0),
      O => n_0_rxcharisk_i_1
    );
rxcharisk_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_rxcharisk_i_1,
      Q => rxcharisk,
      R => I1(0)
    );
\rxcharisk_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxcharisk_out(0),
      Q => \rxcharisk_reg__0\(0),
      R => '0'
    );
\rxcharisk_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxcharisk_out(1),
      Q => \rxcharisk_reg__0\(1),
      R => '0'
    );
\rxclkcorcnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => gt0_rxclkcorcnt_out(0),
      Q => O1(0),
      R => '0'
    );
\rxclkcorcnt_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => gt0_rxclkcorcnt_out(1),
      Q => O1(1),
      R => '0'
    );
\rxdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rxdata_double(8),
      I1 => rxdata_double(0),
      I2 => toggle,
      O => \n_0_rxdata[0]_i_1\
    );
\rxdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rxdata_double(9),
      I1 => rxdata_double(1),
      I2 => toggle,
      O => \n_0_rxdata[1]_i_1\
    );
\rxdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rxdata_double(10),
      I1 => rxdata_double(2),
      I2 => toggle,
      O => \n_0_rxdata[2]_i_1\
    );
\rxdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rxdata_double(11),
      I1 => rxdata_double(3),
      I2 => toggle,
      O => \n_0_rxdata[3]_i_1\
    );
\rxdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rxdata_double(12),
      I1 => rxdata_double(4),
      I2 => toggle,
      O => \n_0_rxdata[4]_i_1\
    );
\rxdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rxdata_double(13),
      I1 => rxdata_double(5),
      I2 => toggle,
      O => \n_0_rxdata[5]_i_1\
    );
\rxdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rxdata_double(14),
      I1 => rxdata_double(6),
      I2 => toggle,
      O => \n_0_rxdata[6]_i_1\
    );
\rxdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rxdata_double(15),
      I1 => rxdata_double(7),
      I2 => toggle,
      O => \n_0_rxdata[7]_i_1\
    );
\rxdata_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(0),
      Q => rxdata_double(0),
      R => I1(0)
    );
\rxdata_double_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(10),
      Q => rxdata_double(10),
      R => I1(0)
    );
\rxdata_double_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(11),
      Q => rxdata_double(11),
      R => I1(0)
    );
\rxdata_double_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(12),
      Q => rxdata_double(12),
      R => I1(0)
    );
\rxdata_double_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(13),
      Q => rxdata_double(13),
      R => I1(0)
    );
\rxdata_double_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(14),
      Q => rxdata_double(14),
      R => I1(0)
    );
\rxdata_double_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(15),
      Q => rxdata_double(15),
      R => I1(0)
    );
\rxdata_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(1),
      Q => rxdata_double(1),
      R => I1(0)
    );
\rxdata_double_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(2),
      Q => rxdata_double(2),
      R => I1(0)
    );
\rxdata_double_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(3),
      Q => rxdata_double(3),
      R => I1(0)
    );
\rxdata_double_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(4),
      Q => rxdata_double(4),
      R => I1(0)
    );
\rxdata_double_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(5),
      Q => rxdata_double(5),
      R => I1(0)
    );
\rxdata_double_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(6),
      Q => rxdata_double(6),
      R => I1(0)
    );
\rxdata_double_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(7),
      Q => rxdata_double(7),
      R => I1(0)
    );
\rxdata_double_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(8),
      Q => rxdata_double(8),
      R => I1(0)
    );
\rxdata_double_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => rxdata_reg(9),
      Q => rxdata_double(9),
      R => I1(0)
    );
\rxdata_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_rxdata[0]_i_1\,
      Q => Q(0),
      R => I1(0)
    );
\rxdata_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_rxdata[1]_i_1\,
      Q => Q(1),
      R => I1(0)
    );
\rxdata_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_rxdata[2]_i_1\,
      Q => Q(2),
      R => I1(0)
    );
\rxdata_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_rxdata[3]_i_1\,
      Q => Q(3),
      R => I1(0)
    );
\rxdata_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_rxdata[4]_i_1\,
      Q => Q(4),
      R => I1(0)
    );
\rxdata_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_rxdata[5]_i_1\,
      Q => Q(5),
      R => I1(0)
    );
\rxdata_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_rxdata[6]_i_1\,
      Q => Q(6),
      R => I1(0)
    );
\rxdata_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_rxdata[7]_i_1\,
      Q => Q(7),
      R => I1(0)
    );
\rxdata_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdata_out(0),
      Q => rxdata_reg(0),
      R => '0'
    );
\rxdata_reg_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdata_out(10),
      Q => rxdata_reg(10),
      R => '0'
    );
\rxdata_reg_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdata_out(11),
      Q => rxdata_reg(11),
      R => '0'
    );
\rxdata_reg_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdata_out(12),
      Q => rxdata_reg(12),
      R => '0'
    );
\rxdata_reg_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdata_out(13),
      Q => rxdata_reg(13),
      R => '0'
    );
\rxdata_reg_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdata_out(14),
      Q => rxdata_reg(14),
      R => '0'
    );
\rxdata_reg_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdata_out(15),
      Q => rxdata_reg(15),
      R => '0'
    );
\rxdata_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdata_out(1),
      Q => rxdata_reg(1),
      R => '0'
    );
\rxdata_reg_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdata_out(2),
      Q => rxdata_reg(2),
      R => '0'
    );
\rxdata_reg_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdata_out(3),
      Q => rxdata_reg(3),
      R => '0'
    );
\rxdata_reg_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdata_out(4),
      Q => rxdata_reg(4),
      R => '0'
    );
\rxdata_reg_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdata_out(5),
      Q => rxdata_reg(5),
      R => '0'
    );
\rxdata_reg_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdata_out(6),
      Q => rxdata_reg(6),
      R => '0'
    );
\rxdata_reg_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdata_out(7),
      Q => rxdata_reg(7),
      R => '0'
    );
\rxdata_reg_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdata_out(8),
      Q => rxdata_reg(8),
      R => '0'
    );
\rxdata_reg_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdata_out(9),
      Q => rxdata_reg(9),
      R => '0'
    );
\rxdisperr_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => \rxdisperr_reg__0\(0),
      Q => rxdisperr_double(0),
      R => I1(0)
    );
\rxdisperr_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => \rxdisperr_reg__0\(1),
      Q => rxdisperr_double(1),
      R => I1(0)
    );
rxdisperr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rxdisperr_double(1),
      I1 => toggle,
      I2 => rxdisperr_double(0),
      O => n_0_rxdisperr_i_1
    );
rxdisperr_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_rxdisperr_i_1,
      Q => rxdisperr,
      R => I1(0)
    );
\rxdisperr_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdisperr_out(0),
      Q => \rxdisperr_reg__0\(0),
      R => '0'
    );
\rxdisperr_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxdisperr_out(1),
      Q => \rxdisperr_reg__0\(1),
      R => '0'
    );
\rxnotintable_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => \rxnotintable_reg__0\(0),
      Q => rxnotintable_double(0),
      R => I1(0)
    );
\rxnotintable_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => toggle,
      D => \rxnotintable_reg__0\(1),
      Q => rxnotintable_double(1),
      R => I1(0)
    );
rxnotintable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rxnotintable_double(1),
      I1 => toggle,
      I2 => rxnotintable_double(0),
      O => n_0_rxnotintable_i_1
    );
rxnotintable_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_rxnotintable_i_1,
      Q => rxnotintable,
      R => I1(0)
    );
\rxnotintable_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxnotintable_out(0),
      Q => \rxnotintable_reg__0\(0),
      R => '0'
    );
\rxnotintable_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => gt0_rxnotintable_out(1),
      Q => \rxnotintable_reg__0\(1),
      R => '0'
    );
rxpowerdown_double_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => toggle,
      D => \rxpowerdown_reg__0\,
      Q => rxpowerdown_double,
      R => I1(0)
    );
rxpowerdown_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => rxpowerdown_double,
      Q => rxpowerdown,
      R => '0'
    );
rxpowerdown_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => powerdown,
      Q => \rxpowerdown_reg__0\,
      R => I1(0)
    );
sync_block_data_valid: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0_2\
    port map (
      data_out => n_0_sync_block_data_valid,
      independent_clock_bufg => independent_clock_bufg,
      status_vector(0) => status_vector(0)
    );
toggle_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => toggle,
      O => n_0_toggle_i_1
    );
toggle_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => n_0_toggle_i_1,
      Q => toggle,
      R => SR(0)
    );
txbuferr_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => \n_0_txbufstatus_reg_reg[1]\,
      Q => txbuferr,
      R => '0'
    );
\txbufstatus_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => n_7_gtwizard_inst,
      Q => \n_0_txbufstatus_reg_reg[1]\,
      R => '0'
    );
\txchardispmode_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => txchardispmode_reg,
      Q => txchardispmode_double(0),
      R => SR(0)
    );
\txchardispmode_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => D(0),
      Q => txchardispmode_double(1),
      R => SR(0)
    );
\txchardispmode_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txchardispmode_double(0),
      Q => txchardispmode_int(0),
      R => '0'
    );
\txchardispmode_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txchardispmode_double(1),
      Q => txchardispmode_int(1),
      R => '0'
    );
txchardispmode_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => D(0),
      Q => txchardispmode_reg,
      R => SR(0)
    );
\txchardispval_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => txchardispval_reg,
      Q => txchardispval_double(0),
      R => SR(0)
    );
\txchardispval_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => I2(0),
      Q => txchardispval_double(1),
      R => SR(0)
    );
\txchardispval_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txchardispval_double(0),
      Q => txchardispval_int(0),
      R => '0'
    );
\txchardispval_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txchardispval_double(1),
      Q => txchardispval_int(1),
      R => '0'
    );
txchardispval_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => I2(0),
      Q => txchardispval_reg,
      R => SR(0)
    );
\txcharisk_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => txcharisk_reg,
      Q => txcharisk_double(0),
      R => SR(0)
    );
\txcharisk_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => I3(0),
      Q => txcharisk_double(1),
      R => SR(0)
    );
\txcharisk_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txcharisk_double(0),
      Q => txcharisk_int(0),
      R => '0'
    );
\txcharisk_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txcharisk_double(1),
      Q => txcharisk_int(1),
      R => '0'
    );
txcharisk_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => I3(0),
      Q => txcharisk_reg,
      R => SR(0)
    );
\txdata_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => txdata_reg(0),
      Q => txdata_double(0),
      R => SR(0)
    );
\txdata_double_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => I4(2),
      Q => txdata_double(10),
      R => SR(0)
    );
\txdata_double_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => I4(3),
      Q => txdata_double(11),
      R => SR(0)
    );
\txdata_double_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => I4(4),
      Q => txdata_double(12),
      R => SR(0)
    );
\txdata_double_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => I4(5),
      Q => txdata_double(13),
      R => SR(0)
    );
\txdata_double_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => I4(6),
      Q => txdata_double(14),
      R => SR(0)
    );
\txdata_double_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => I4(7),
      Q => txdata_double(15),
      R => SR(0)
    );
\txdata_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => txdata_reg(1),
      Q => txdata_double(1),
      R => SR(0)
    );
\txdata_double_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => txdata_reg(2),
      Q => txdata_double(2),
      R => SR(0)
    );
\txdata_double_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => txdata_reg(3),
      Q => txdata_double(3),
      R => SR(0)
    );
\txdata_double_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => txdata_reg(4),
      Q => txdata_double(4),
      R => SR(0)
    );
\txdata_double_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => txdata_reg(5),
      Q => txdata_double(5),
      R => SR(0)
    );
\txdata_double_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => txdata_reg(6),
      Q => txdata_double(6),
      R => SR(0)
    );
\txdata_double_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => txdata_reg(7),
      Q => txdata_double(7),
      R => SR(0)
    );
\txdata_double_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => I4(0),
      Q => txdata_double(8),
      R => SR(0)
    );
\txdata_double_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => n_0_toggle_i_1,
      D => I4(1),
      Q => txdata_double(9),
      R => SR(0)
    );
\txdata_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txdata_double(0),
      Q => txdata_int(0),
      R => '0'
    );
\txdata_int_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txdata_double(10),
      Q => txdata_int(10),
      R => '0'
    );
\txdata_int_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txdata_double(11),
      Q => txdata_int(11),
      R => '0'
    );
\txdata_int_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txdata_double(12),
      Q => txdata_int(12),
      R => '0'
    );
\txdata_int_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txdata_double(13),
      Q => txdata_int(13),
      R => '0'
    );
\txdata_int_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txdata_double(14),
      Q => txdata_int(14),
      R => '0'
    );
\txdata_int_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txdata_double(15),
      Q => txdata_int(15),
      R => '0'
    );
\txdata_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txdata_double(1),
      Q => txdata_int(1),
      R => '0'
    );
\txdata_int_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txdata_double(2),
      Q => txdata_int(2),
      R => '0'
    );
\txdata_int_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txdata_double(3),
      Q => txdata_int(3),
      R => '0'
    );
\txdata_int_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txdata_double(4),
      Q => txdata_int(4),
      R => '0'
    );
\txdata_int_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txdata_double(5),
      Q => txdata_int(5),
      R => '0'
    );
\txdata_int_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txdata_double(6),
      Q => txdata_int(6),
      R => '0'
    );
\txdata_int_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txdata_double(7),
      Q => txdata_int(7),
      R => '0'
    );
\txdata_int_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txdata_double(8),
      Q => txdata_int(8),
      R => '0'
    );
\txdata_int_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => userclk,
      CE => '1',
      D => txdata_double(9),
      Q => txdata_int(9),
      R => '0'
    );
\txdata_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => I4(0),
      Q => txdata_reg(0),
      R => SR(0)
    );
\txdata_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => I4(1),
      Q => txdata_reg(1),
      R => SR(0)
    );
\txdata_reg_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => I4(2),
      Q => txdata_reg(2),
      R => SR(0)
    );
\txdata_reg_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => I4(3),
      Q => txdata_reg(3),
      R => SR(0)
    );
\txdata_reg_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => I4(4),
      Q => txdata_reg(4),
      R => SR(0)
    );
\txdata_reg_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => I4(5),
      Q => txdata_reg(5),
      R => SR(0)
    );
\txdata_reg_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => I4(6),
      Q => txdata_reg(6),
      R => SR(0)
    );
\txdata_reg_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => userclk2,
      CE => '1',
      D => I4(7),
      Q => txdata_reg(7),
      R => SR(0)
    );
txpowerdown_double_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => \txpowerdown_reg__0\,
      Q => txpowerdown_double,
      R => SR(0)
    );
txpowerdown_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk,
      CE => '1',
      D => txpowerdown_double,
      Q => txpowerdown,
      R => '0'
    );
txpowerdown_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => userclk2,
      CE => '1',
      D => powerdown,
      Q => \txpowerdown_reg__0\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_block is
  port (
    status_vector : out STD_LOGIC_VECTOR ( 6 downto 0 );
    cplllock : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    resetdone : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    O1 : out STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_er : out STD_LOGIC;
    gmii_rx_dv : out STD_LOGIC;
    userclk2 : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    reset : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    userclk : in STD_LOGIC;
    gtrefclk : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_in : in STD_LOGIC;
    gt0_qplloutrefclk_in : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_block : entity is "gig_eth_pcs_pma_basex_v15_1_block";
end gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_block;

architecture STRUCTURE of gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_block is
  signal I_0 : STD_LOGIC;
  signal data_in : STD_LOGIC;
  signal encommaalign : STD_LOGIC;
  signal n_10_gig_eth_pcs_pma_basex_v15_1_core : STD_LOGIC;
  signal n_11_gig_eth_pcs_pma_basex_v15_1_core : STD_LOGIC;
  signal n_14_gig_eth_pcs_pma_basex_v15_1_core : STD_LOGIC;
  signal n_25_gig_eth_pcs_pma_basex_v15_1_core : STD_LOGIC;
  signal n_26_gig_eth_pcs_pma_basex_v15_1_core : STD_LOGIC;
  signal n_27_gig_eth_pcs_pma_basex_v15_1_core : STD_LOGIC;
  signal n_28_gig_eth_pcs_pma_basex_v15_1_core : STD_LOGIC;
  signal n_29_gig_eth_pcs_pma_basex_v15_1_core : STD_LOGIC;
  signal n_30_gig_eth_pcs_pma_basex_v15_1_core : STD_LOGIC;
  signal n_31_gig_eth_pcs_pma_basex_v15_1_core : STD_LOGIC;
  signal n_32_gig_eth_pcs_pma_basex_v15_1_core : STD_LOGIC;
  signal powerdown : STD_LOGIC;
  signal \^resetdone\ : STD_LOGIC;
  signal rxbuferr : STD_LOGIC;
  signal rxchariscomma : STD_LOGIC;
  signal rxcharisk : STD_LOGIC;
  signal rxclkcorcnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rxdisperr : STD_LOGIC;
  signal rxnotintable : STD_LOGIC;
  signal rxreset : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal txbuferr : STD_LOGIC;
  signal txreset : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of rxrecclkbufh : label is "PRIMITIVE";
begin
  resetdone <= \^resetdone\;
  status_vector(6 downto 0) <= \^status_vector\(6 downto 0);
gig_eth_pcs_pma_basex_v15_1_core: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_ethernet_pcs_pma_v14_3__parameterized0\
    port map (
      D(0) => n_10_gig_eth_pcs_pma_basex_v15_1_core,
      I1(7 downto 0) => rxdata(7 downto 0),
      O1(0) => n_11_gig_eth_pcs_pma_basex_v15_1_core,
      O2(0) => n_14_gig_eth_pcs_pma_basex_v15_1_core,
      O3(7) => n_25_gig_eth_pcs_pma_basex_v15_1_core,
      O3(6) => n_26_gig_eth_pcs_pma_basex_v15_1_core,
      O3(5) => n_27_gig_eth_pcs_pma_basex_v15_1_core,
      O3(4) => n_28_gig_eth_pcs_pma_basex_v15_1_core,
      O3(3) => n_29_gig_eth_pcs_pma_basex_v15_1_core,
      O3(2) => n_30_gig_eth_pcs_pma_basex_v15_1_core,
      O3(1) => n_31_gig_eth_pcs_pma_basex_v15_1_core,
      O3(0) => n_32_gig_eth_pcs_pma_basex_v15_1_core,
      Q(1 downto 0) => rxclkcorcnt(1 downto 0),
      SR(0) => O1,
      configuration_vector(2 downto 0) => configuration_vector(2 downto 0),
      encommaalign => encommaalign,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      mmcm_locked => mmcm_locked,
      powerdown => powerdown,
      reset => reset,
      resetdone => \^resetdone\,
      rxbuferr => rxbuferr,
      rxchariscomma => rxchariscomma,
      rxcharisk => rxcharisk,
      rxdisperr => rxdisperr,
      rxnotintable => rxnotintable,
      rxreset => rxreset,
      signal_detect => signal_detect,
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      txbuferr => txbuferr,
      txreset => txreset,
      userclk2 => userclk2
    );
rxrecclkbufh: unisim.vcomponents.BUFH
    port map (
      I => I_0,
      O => rxoutclk
    );
sync_block_reset_done: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_sync_block__parameterized0\
    port map (
      data_in => data_in,
      resetdone => \^resetdone\,
      userclk2 => userclk2
    );
transceiver_inst: entity work.\gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_transceiver__parameterized0\
    port map (
      D(0) => n_10_gig_eth_pcs_pma_basex_v15_1_core,
      I1(0) => rxreset,
      I2(0) => n_14_gig_eth_pcs_pma_basex_v15_1_core,
      I3(0) => n_11_gig_eth_pcs_pma_basex_v15_1_core,
      I4(7) => n_25_gig_eth_pcs_pma_basex_v15_1_core,
      I4(6) => n_26_gig_eth_pcs_pma_basex_v15_1_core,
      I4(5) => n_27_gig_eth_pcs_pma_basex_v15_1_core,
      I4(4) => n_28_gig_eth_pcs_pma_basex_v15_1_core,
      I4(3) => n_29_gig_eth_pcs_pma_basex_v15_1_core,
      I4(2) => n_30_gig_eth_pcs_pma_basex_v15_1_core,
      I4(1) => n_31_gig_eth_pcs_pma_basex_v15_1_core,
      I4(0) => n_32_gig_eth_pcs_pma_basex_v15_1_core,
      I_0 => I_0,
      O1(1 downto 0) => rxclkcorcnt(1 downto 0),
      Q(7 downto 0) => rxdata(7 downto 0),
      SR(0) => txreset,
      cplllock => cplllock,
      data_in => data_in,
      encommaalign => encommaalign,
      gt0_qplloutclk_in => gt0_qplloutclk_in,
      gt0_qplloutrefclk_in => gt0_qplloutrefclk_in,
      gtrefclk => gtrefclk,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      pma_reset => pma_reset,
      powerdown => powerdown,
      rxbuferr => rxbuferr,
      rxchariscomma => rxchariscomma,
      rxcharisk => rxcharisk,
      rxdisperr => rxdisperr,
      rxn => rxn,
      rxnotintable => rxnotintable,
      rxp => rxp,
      status_vector(0) => \^status_vector\(1),
      txbuferr => txbuferr,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk,
      userclk2 => userclk2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gig_eth_pcs_pma_basex_v15_1 is
  port (
    gtrefclk : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    resetdone : out STD_LOGIC;
    cplllock : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    rxoutclk : out STD_LOGIC;
    userclk : in STD_LOGIC;
    userclk2 : in STD_LOGIC;
    rxuserclk : in STD_LOGIC;
    rxuserclk2 : in STD_LOGIC;
    pma_reset : in STD_LOGIC;
    mmcm_locked : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    gt0_qplloutclk_in : in STD_LOGIC;
    gt0_qplloutrefclk_in : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of gig_eth_pcs_pma_basex_v15_1 : entity is true;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of gig_eth_pcs_pma_basex_v15_1 : entity is "yes";
  attribute core_generation_info : string;
  attribute core_generation_info of gig_eth_pcs_pma_basex_v15_1 : entity is "gig_eth_pcs_pma_basex_v15_1,gig_ethernet_pcs_pma_v14_3,{x_ipProduct=Vivado 2014.3.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=gig_ethernet_pcs_pma,x_ipVersion=14.3,x_ipCoreRevision=0,x_ipLanguage=VHDL,c_elaboration_transient_dir=.,c_component_name=gig_eth_pcs_pma_basex_v15_1,c_family=kintex7,c_is_sgmii=false,c_use_transceiver=true,c_use_tbi=false,c_use_lvds=false,c_has_an=false,c_has_mdio=false,c_has_ext_mdio=false,c_sgmii_phy_mode=false,c_dynamic_switching=false,c_transceiver_mode=A,c_sgmii_fabric_buffer=true,c_1588=0,gt_rx_byte_width=1,C_EMAC_IF_TEMAC=true,C_PHYADDR=1,EXAMPLE_SIMULATION=0,c_support_level=false,c_sub_core_name=gig_eth_pcs_pma_basex_v15_1_gt,c_transceivercontrol=false,c_xdevicefamily=xc7k325t,c_gt_dmonitorout_width=8}";
  attribute x_core_info : string;
  attribute x_core_info of gig_eth_pcs_pma_basex_v15_1 : entity is "gig_ethernet_pcs_pma_v14_3,Vivado 2014.3.1";
end gig_eth_pcs_pma_basex_v15_1;

architecture STRUCTURE of gig_eth_pcs_pma_basex_v15_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
  status_vector(15) <= \<const0>\;
  status_vector(14) <= \<const0>\;
  status_vector(13) <= \<const0>\;
  status_vector(12) <= \<const0>\;
  status_vector(11) <= \<const0>\;
  status_vector(10) <= \<const0>\;
  status_vector(9) <= \<const0>\;
  status_vector(8) <= \<const0>\;
  status_vector(7) <= \<const0>\;
  status_vector(6 downto 0) <= \^status_vector\(6 downto 0);
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
U0: entity work.gig_eth_pcs_pma_basex_v15_1_gig_eth_pcs_pma_basex_v15_1_block
    port map (
      O1 => gmii_isolate,
      configuration_vector(2 downto 0) => configuration_vector(3 downto 1),
      cplllock => cplllock,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gt0_qplloutclk_in => gt0_qplloutclk_in,
      gt0_qplloutrefclk_in => gt0_qplloutrefclk_in,
      gtrefclk => gtrefclk,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked => mmcm_locked,
      pma_reset => pma_reset,
      reset => reset,
      resetdone => resetdone,
      rxn => rxn,
      rxoutclk => rxoutclk,
      rxp => rxp,
      signal_detect => signal_detect,
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      userclk => userclk,
      userclk2 => userclk2
    );
end STRUCTURE;
