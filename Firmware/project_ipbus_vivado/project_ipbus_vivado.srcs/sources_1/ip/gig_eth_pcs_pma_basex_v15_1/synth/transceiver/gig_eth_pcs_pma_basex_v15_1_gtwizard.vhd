-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version : 3.4
--  \   \         Application : 7 Series FPGAs Transceivers Wizard
--  /   /         Filename : gig_eth_pcs_pma_basex_v15_1_gtwizard.vhd
-- /___/   /\     
-- \   \  /  \ 
--  \___\/\___\
--
--
-- Module GTWIZARD (a Core Top)
-- Generated by Xilinx 7 Series FPGAs Transceivers Wizard
-- 
-- 
-- (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES. 


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;


--***************************** Entity Declaration ****************************
entity gig_eth_pcs_pma_basex_v15_1_GTWIZARD is
generic
(
    EXAMPLE_SIMULATION                      : integer   := 0          -- Set to 1 for simulation
);
port
(
    SYSCLK_IN                               : in   std_logic;
    SOFT_RESET_IN                           : in   std_logic;
    DONT_RESET_ON_DATA_ERROR_IN             : in   std_logic;
    GT0_TX_FSM_RESET_DONE_OUT               : out  std_logic;
    GT0_RX_FSM_RESET_DONE_OUT               : out  std_logic;
    GT0_DATA_VALID_IN                       : in   std_logic;

    --_________________________________________________________________________
    --GT0  (X1Y0)
    --____________________________CHANNEL PORTS________________________________
    --------------------------------- CPLL Ports -------------------------------
    gt0_cpllfbclklost_out                   : out  std_logic;
    gt0_cplllock_out                        : out  std_logic;
    gt0_cplllockdetclk_in                   : in   std_logic;
    gt0_cpllreset_in                        : in   std_logic;
    -------------------------- Channel - Clocking Ports ------------------------
    gt0_gtrefclk0_in                        : in   std_logic;
    ---------------------------- Channel - DRP Ports  --------------------------
    gt0_drpaddr_in                          : in   std_logic_vector(8 downto 0);
    gt0_drpclk_in                           : in   std_logic;
    gt0_drpdi_in                            : in   std_logic_vector(15 downto 0);
    gt0_drpdo_out                           : out  std_logic_vector(15 downto 0);
    gt0_drpen_in                            : in   std_logic;
    gt0_drprdy_out                          : out  std_logic;
    gt0_drpwe_in                            : in   std_logic;
    ------------------------------- Loopback Ports -----------------------------
    gt0_loopback_in                         : in   std_logic_vector(2 downto 0);
    ------------------------------ Power-Down Ports ----------------------------
    gt0_rxpd_in                             : in   std_logic_vector(1 downto 0);
    gt0_txpd_in                             : in   std_logic_vector(1 downto 0);
    --------------------- RX Initialization and Reset Ports --------------------
    gt0_eyescanreset_in                     : in   std_logic;
    gt0_rxuserrdy_in                        : in   std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
    gt0_eyescandataerror_out                : out  std_logic;
    gt0_eyescantrigger_in                   : in   std_logic;
    ------------------------- Receive Ports - CDR Ports ------------------------
    gt0_rxcdrhold_in                        : in   std_logic;
    ------------------- Receive Ports - Clock Correction Ports -----------------
    gt0_rxclkcorcnt_out                     : out  std_logic_vector(1 downto 0);
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
    gt0_rxusrclk_in                         : in   std_logic;
    gt0_rxusrclk2_in                        : in   std_logic;
    ------------------ Receive Ports - FPGA RX interface Ports -----------------
    gt0_rxdata_out                          : out  std_logic_vector(15 downto 0);
    ------------------- Receive Ports - Pattern Checker Ports ------------------
    gt0_rxprbserr_out                       : out  std_logic;
    gt0_rxprbssel_in                        : in   std_logic_vector(2 downto 0);
    ------------------- Receive Ports - Pattern Checker ports ------------------
    gt0_rxprbscntreset_in                   : in   std_logic;
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    gt0_rxdisperr_out                       : out  std_logic_vector(1 downto 0);
    gt0_rxnotintable_out                    : out  std_logic_vector(1 downto 0);
    --------------------------- Receive Ports - RX AFE -------------------------
    gt0_gtxrxp_in                           : in   std_logic;
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    gt0_gtxrxn_in                           : in   std_logic;
    ------------------- Receive Ports - RX Buffer Bypass Ports -----------------
    gt0_rxbufreset_in                       : in   std_logic;
    gt0_rxbufstatus_out                     : out  std_logic_vector(2 downto 0);
    -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
    gt0_rxbyteisaligned_out                 : out  std_logic;
    gt0_rxbyterealign_out                   : out  std_logic;
    gt0_rxcommadet_out                      : out  std_logic;
    gt0_rxmcommaalignen_in                  : in   std_logic;
    gt0_rxpcommaalignen_in                  : in   std_logic;
    --------------------- Receive Ports - RX Equalizer Ports -------------------
    gt0_rxdfeagcovrden_in                   : in   std_logic;
    gt0_rxdfelpmreset_in                    : in   std_logic;
    gt0_rxmonitorout_out                    : out  std_logic_vector(6 downto 0);
    gt0_rxmonitorsel_in                     : in   std_logic_vector(1 downto 0);
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
    gt0_rxoutclk_out                        : out  std_logic;
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    gt0_gtrxreset_in                        : in   std_logic;
    gt0_rxpmareset_in                       : in   std_logic;
    ------------------ Receive Ports - RX Margin Analysis ports ----------------
    gt0_rxlpmen_in                          : in   std_logic;
    ----------------- Receive Ports - RX Polarity Control Ports ----------------
    gt0_rxpolarity_in                       : in   std_logic;
    ------------------- Receive Ports - RX8B/10B Decoder Ports -----------------
    gt0_rxchariscomma_out                   : out  std_logic_vector(1 downto 0);
    gt0_rxcharisk_out                       : out  std_logic_vector(1 downto 0);
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    gt0_rxresetdone_out                     : out  std_logic;
    ------------------------ TX Configurable Driver Ports ----------------------
    gt0_txpostcursor_in                     : in   std_logic_vector(4 downto 0);
    gt0_txprecursor_in                      : in   std_logic_vector(4 downto 0);
    --------------------- TX Initialization and Reset Ports --------------------
    gt0_gttxreset_in                        : in   std_logic;
    gt0_txuserrdy_in                        : in   std_logic;
    ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    gt0_txchardispmode_in                   : in   std_logic_vector(1 downto 0);
    gt0_txchardispval_in                    : in   std_logic_vector(1 downto 0);
    ------------------ Transmit Ports - FPGA TX Interface Ports ----------------
    gt0_txusrclk_in                         : in   std_logic;
    gt0_txusrclk2_in                        : in   std_logic;
    --------------------- Transmit Ports - PCI Express Ports -------------------
    gt0_txelecidle_in                       : in   std_logic;
    ------------------ Transmit Ports - Pattern Generator Ports ----------------
    gt0_txprbsforceerr_in                   : in   std_logic;
    ---------------------- Transmit Ports - TX Buffer Ports --------------------
    gt0_txbufstatus_out                     : out  std_logic_vector(1 downto 0);
    --------------- Transmit Ports - TX Configurable Driver Ports --------------
    gt0_txdiffctrl_in                       : in   std_logic_vector(3 downto 0);
    ------------------ Transmit Ports - TX Data Path interface -----------------
    gt0_txdata_in                           : in   std_logic_vector(15 downto 0);
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    gt0_gtxtxn_out                          : out  std_logic;
    gt0_gtxtxp_out                          : out  std_logic;
    ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    gt0_txoutclk_out                        : out  std_logic;
    gt0_txoutclkfabric_out                  : out  std_logic;
    gt0_txoutclkpcs_out                     : out  std_logic;
    --------------------- Transmit Ports - TX Gearbox Ports --------------------
    gt0_txcharisk_in                        : in   std_logic_vector(1 downto 0);
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    gt0_txresetdone_out                     : out  std_logic;
    ----------------- Transmit Ports - TX Polarity Control Ports ---------------
    gt0_txpolarity_in                       : in   std_logic;
    ------------------ Transmit Ports - pattern Generator Ports ----------------
    gt0_txprbssel_in                        : in   std_logic_vector(2 downto 0);

    gt0_txpmareset_in         : in  std_logic;
    gt0_txpcsreset_in         : in  std_logic;
    gt0_rxpcsreset_in         : in  std_logic;
    gt0_dmonitorout_out       : out std_logic_vector(7 downto 0);        

    --____________________________COMMON PORTS________________________________
     GT0_QPLLOUTCLK_IN  : in std_logic;
     GT0_QPLLOUTREFCLK_IN : in std_logic

);
end gig_eth_pcs_pma_basex_v15_1_GTWIZARD;

architecture RTL of gig_eth_pcs_pma_basex_v15_1_GTWIZARD is
    attribute DowngradeIPIdentifiedWarnings: string;
    attribute DowngradeIPIdentifiedWarnings of RTL : architecture is "yes";
--**************************Component Declarations*****************************
component gig_eth_pcs_pma_basex_v15_1_GTWIZARD_init
generic
(
    EXAMPLE_SIM_GTRESET_SPEEDUP             : string    := "TRUE";     -- simulation setting for GT SecureIP model
    EXAMPLE_SIMULATION                      : integer   := 0;          -- Set to 1 for simulation
 
    STABLE_CLOCK_PERIOD                     : integer   := 10;  
        -- Set to 1 for simulation
    EXAMPLE_USE_CHIPSCOPE                   : integer   := 0           -- Set to 1 to use Chipscope to drive resets

);
port
(
    SYSCLK_IN                               : in   std_logic;
    SOFT_RESET_IN                           : in   std_logic;
    DONT_RESET_ON_DATA_ERROR_IN             : in   std_logic;
    GT0_TX_FSM_RESET_DONE_OUT               : out  std_logic;
    GT0_RX_FSM_RESET_DONE_OUT               : out  std_logic;
    GT0_DATA_VALID_IN                       : in   std_logic;

    --_________________________________________________________________________
    --GT0  (X1Y0)
    --____________________________CHANNEL PORTS________________________________
    --------------------------------- CPLL Ports -------------------------------
    gt0_cpllfbclklost_out                   : out  std_logic;
    gt0_cplllock_out                        : out  std_logic;
    gt0_cplllockdetclk_in                   : in   std_logic;
    gt0_cpllreset_in                        : in   std_logic;
    -------------------------- Channel - Clocking Ports ------------------------
    gt0_gtrefclk0_in                        : in   std_logic;
    ---------------------------- Channel - DRP Ports  --------------------------
    gt0_drpaddr_in                          : in   std_logic_vector(8 downto 0);
    gt0_drpclk_in                           : in   std_logic;
    gt0_drpdi_in                            : in   std_logic_vector(15 downto 0);
    gt0_drpdo_out                           : out  std_logic_vector(15 downto 0);
    gt0_drpen_in                            : in   std_logic;
    gt0_drprdy_out                          : out  std_logic;
    gt0_drpwe_in                            : in   std_logic;
    ------------------------------- Loopback Ports -----------------------------
    gt0_loopback_in                         : in   std_logic_vector(2 downto 0);
    ------------------------------ Power-Down Ports ----------------------------
    gt0_rxpd_in                             : in   std_logic_vector(1 downto 0);
    gt0_txpd_in                             : in   std_logic_vector(1 downto 0);
    --------------------- RX Initialization and Reset Ports --------------------
    gt0_eyescanreset_in                     : in   std_logic;
    gt0_rxuserrdy_in                        : in   std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
    gt0_eyescandataerror_out                : out  std_logic;
    gt0_eyescantrigger_in                   : in   std_logic;
    ------------------------- Receive Ports - CDR Ports ------------------------
    gt0_rxcdrhold_in                        : in   std_logic;
    ------------------- Receive Ports - Clock Correction Ports -----------------
    gt0_rxclkcorcnt_out                     : out  std_logic_vector(1 downto 0);
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
    gt0_rxusrclk_in                         : in   std_logic;
    gt0_rxusrclk2_in                        : in   std_logic;
    ------------------ Receive Ports - FPGA RX interface Ports -----------------
    gt0_rxdata_out                          : out  std_logic_vector(15 downto 0);
    ------------------- Receive Ports - Pattern Checker Ports ------------------
    gt0_rxprbserr_out                       : out  std_logic;
    gt0_rxprbssel_in                        : in   std_logic_vector(2 downto 0);
    ------------------- Receive Ports - Pattern Checker ports ------------------
    gt0_rxprbscntreset_in                   : in   std_logic;
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    gt0_rxdisperr_out                       : out  std_logic_vector(1 downto 0);
    gt0_rxnotintable_out                    : out  std_logic_vector(1 downto 0);
    --------------------------- Receive Ports - RX AFE -------------------------
    gt0_gtxrxp_in                           : in   std_logic;
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    gt0_gtxrxn_in                           : in   std_logic;
    ------------------- Receive Ports - RX Buffer Bypass Ports -----------------
    gt0_rxbufreset_in                       : in   std_logic;
    gt0_rxbufstatus_out                     : out  std_logic_vector(2 downto 0);
    -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
    gt0_rxbyteisaligned_out                 : out  std_logic;
    gt0_rxbyterealign_out                   : out  std_logic;
    gt0_rxcommadet_out                      : out  std_logic;
    gt0_rxmcommaalignen_in                  : in   std_logic;
    gt0_rxpcommaalignen_in                  : in   std_logic;
    --------------------- Receive Ports - RX Equalizer Ports -------------------
    gt0_rxdfeagcovrden_in                   : in   std_logic;
    gt0_rxdfelpmreset_in                    : in   std_logic;
    gt0_rxmonitorout_out                    : out  std_logic_vector(6 downto 0);
    gt0_rxmonitorsel_in                     : in   std_logic_vector(1 downto 0);
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
    gt0_rxoutclk_out                        : out  std_logic;
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    gt0_gtrxreset_in                        : in   std_logic;
    gt0_rxpmareset_in                       : in   std_logic;
    ------------------ Receive Ports - RX Margin Analysis ports ----------------
    gt0_rxlpmen_in                          : in   std_logic;
    ----------------- Receive Ports - RX Polarity Control Ports ----------------
    gt0_rxpolarity_in                       : in   std_logic;
    ------------------- Receive Ports - RX8B/10B Decoder Ports -----------------
    gt0_rxchariscomma_out                   : out  std_logic_vector(1 downto 0);
    gt0_rxcharisk_out                       : out  std_logic_vector(1 downto 0);
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    gt0_rxresetdone_out                     : out  std_logic;
    ------------------------ TX Configurable Driver Ports ----------------------
    gt0_txpostcursor_in                     : in   std_logic_vector(4 downto 0);
    gt0_txprecursor_in                      : in   std_logic_vector(4 downto 0);
    --------------------- TX Initialization and Reset Ports --------------------
    gt0_gttxreset_in                        : in   std_logic;
    gt0_txuserrdy_in                        : in   std_logic;
    ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
    gt0_txchardispmode_in                   : in   std_logic_vector(1 downto 0);
    gt0_txchardispval_in                    : in   std_logic_vector(1 downto 0);
    ------------------ Transmit Ports - FPGA TX Interface Ports ----------------
    gt0_txusrclk_in                         : in   std_logic;
    gt0_txusrclk2_in                        : in   std_logic;
    --------------------- Transmit Ports - PCI Express Ports -------------------
    gt0_txelecidle_in                       : in   std_logic;
    ------------------ Transmit Ports - Pattern Generator Ports ----------------
    gt0_txprbsforceerr_in                   : in   std_logic;
    ---------------------- Transmit Ports - TX Buffer Ports --------------------
    gt0_txbufstatus_out                     : out  std_logic_vector(1 downto 0);
    --------------- Transmit Ports - TX Configurable Driver Ports --------------
    gt0_txdiffctrl_in                       : in   std_logic_vector(3 downto 0);
    ------------------ Transmit Ports - TX Data Path interface -----------------
    gt0_txdata_in                           : in   std_logic_vector(15 downto 0);
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    gt0_gtxtxn_out                          : out  std_logic;
    gt0_gtxtxp_out                          : out  std_logic;
    ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    gt0_txoutclk_out                        : out  std_logic;
    gt0_txoutclkfabric_out                  : out  std_logic;
    gt0_txoutclkpcs_out                     : out  std_logic;
    --------------------- Transmit Ports - TX Gearbox Ports --------------------
    gt0_txcharisk_in                        : in   std_logic_vector(1 downto 0);
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    gt0_txresetdone_out                     : out  std_logic;
    ----------------- Transmit Ports - TX Polarity Control Ports ---------------
    gt0_txpolarity_in                       : in   std_logic;
    ------------------ Transmit Ports - pattern Generator Ports ----------------
    gt0_txprbssel_in                        : in   std_logic_vector(2 downto 0);


    gt0_txpmareset_in         : in  std_logic;
    gt0_txpcsreset_in         : in  std_logic;
    gt0_rxpcsreset_in         : in  std_logic;
    gt0_dmonitorout_out       : out std_logic_vector(7 downto 0);        

    --____________________________COMMON PORTS________________________________
     GT0_QPLLOUTCLK_IN  : in std_logic;
     GT0_QPLLOUTREFCLK_IN : in std_logic

);
end component;

--**************************** Main Body of Code *******************************
begin
    U0 : gig_eth_pcs_pma_basex_v15_1_GTWIZARD_init
    generic map
    (
        EXAMPLE_SIM_GTRESET_SPEEDUP   => "TRUE",
        EXAMPLE_SIMULATION            => EXAMPLE_SIMULATION,
 
        STABLE_CLOCK_PERIOD           => 5,
        EXAMPLE_USE_CHIPSCOPE         => 0
    )
    port map
    (
        SYSCLK_IN                       =>      SYSCLK_IN,
        SOFT_RESET_IN                   =>      SOFT_RESET_IN,
        DONT_RESET_ON_DATA_ERROR_IN     =>      DONT_RESET_ON_DATA_ERROR_IN,
    GT0_TX_FSM_RESET_DONE_OUT => GT0_TX_FSM_RESET_DONE_OUT,
    GT0_RX_FSM_RESET_DONE_OUT => GT0_RX_FSM_RESET_DONE_OUT,
    GT0_DATA_VALID_IN => GT0_DATA_VALID_IN,

    --_________________________________________________________________________
    --GT0  (X1Y0)
    --____________________________CHANNEL PORTS________________________________
    --------------------------------- CPLL Ports -------------------------------
        gt0_cpllfbclklost_out           =>      gt0_cpllfbclklost_out,
        gt0_cplllock_out                =>      gt0_cplllock_out,
        gt0_cplllockdetclk_in           =>      gt0_cplllockdetclk_in,
        gt0_cpllreset_in                =>      gt0_cpllreset_in,
    -------------------------- Channel - Clocking Ports ------------------------
        gt0_gtrefclk0_in                =>      gt0_gtrefclk0_in,
    ---------------------------- Channel - DRP Ports  --------------------------
        gt0_drpaddr_in                  =>      gt0_drpaddr_in,
        gt0_drpclk_in                   =>      gt0_drpclk_in,
        gt0_drpdi_in                    =>      gt0_drpdi_in,
        gt0_drpdo_out                   =>      gt0_drpdo_out,
        gt0_drpen_in                    =>      gt0_drpen_in,
        gt0_drprdy_out                  =>      gt0_drprdy_out,
        gt0_drpwe_in                    =>      gt0_drpwe_in,
    ------------------------------- Loopback Ports -----------------------------
        gt0_loopback_in                 =>      gt0_loopback_in,
    ------------------------------ Power-Down Ports ----------------------------
        gt0_rxpd_in                     =>      gt0_rxpd_in,
        gt0_txpd_in                     =>      gt0_txpd_in,
    --------------------- RX Initialization and Reset Ports --------------------
        gt0_eyescanreset_in             =>      gt0_eyescanreset_in,
        gt0_rxuserrdy_in                =>      gt0_rxuserrdy_in,
    -------------------------- RX Margin Analysis Ports ------------------------
        gt0_eyescandataerror_out        =>      gt0_eyescandataerror_out,
        gt0_eyescantrigger_in           =>      gt0_eyescantrigger_in,
    ------------------------- Receive Ports - CDR Ports ------------------------
        gt0_rxcdrhold_in                =>      gt0_rxcdrhold_in,
    ------------------- Receive Ports - Clock Correction Ports -----------------
        gt0_rxclkcorcnt_out             =>      gt0_rxclkcorcnt_out,
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
        gt0_rxusrclk_in                 =>      gt0_rxusrclk_in,
        gt0_rxusrclk2_in                =>      gt0_rxusrclk2_in,
    ------------------ Receive Ports - FPGA RX interface Ports -----------------
        gt0_rxdata_out                  =>      gt0_rxdata_out,
    ------------------- Receive Ports - Pattern Checker Ports ------------------
        gt0_rxprbserr_out               =>      gt0_rxprbserr_out,
        gt0_rxprbssel_in                =>      gt0_rxprbssel_in,
    ------------------- Receive Ports - Pattern Checker ports ------------------
        gt0_rxprbscntreset_in           =>      gt0_rxprbscntreset_in,
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
        gt0_rxdisperr_out               =>      gt0_rxdisperr_out,
        gt0_rxnotintable_out            =>      gt0_rxnotintable_out,
    --------------------------- Receive Ports - RX AFE -------------------------
        gt0_gtxrxp_in                   =>      gt0_gtxrxp_in,
    ------------------------ Receive Ports - RX AFE Ports ----------------------
        gt0_gtxrxn_in                   =>      gt0_gtxrxn_in,
    ------------------- Receive Ports - RX Buffer Bypass Ports -----------------
        gt0_rxbufreset_in               =>      gt0_rxbufreset_in,
        gt0_rxbufstatus_out             =>      gt0_rxbufstatus_out,
    -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
        gt0_rxbyteisaligned_out         =>      gt0_rxbyteisaligned_out,
        gt0_rxbyterealign_out           =>      gt0_rxbyterealign_out,
        gt0_rxcommadet_out              =>      gt0_rxcommadet_out,
        gt0_rxmcommaalignen_in          =>      gt0_rxmcommaalignen_in,
        gt0_rxpcommaalignen_in          =>      gt0_rxpcommaalignen_in,
    --------------------- Receive Ports - RX Equalizer Ports -------------------
        gt0_rxdfeagcovrden_in           =>      gt0_rxdfeagcovrden_in,
        gt0_rxdfelpmreset_in            =>      gt0_rxdfelpmreset_in,
        gt0_rxmonitorout_out            =>      gt0_rxmonitorout_out,
        gt0_rxmonitorsel_in             =>      gt0_rxmonitorsel_in,
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
        gt0_rxoutclk_out                =>      gt0_rxoutclk_out,
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
        gt0_gtrxreset_in                =>      gt0_gtrxreset_in,
        gt0_rxpmareset_in               =>      gt0_rxpmareset_in,
    ------------------ Receive Ports - RX Margin Analysis ports ----------------
        gt0_rxlpmen_in                  =>      gt0_rxlpmen_in,
    ----------------- Receive Ports - RX Polarity Control Ports ----------------
        gt0_rxpolarity_in               =>      gt0_rxpolarity_in,
    ------------------- Receive Ports - RX8B/10B Decoder Ports -----------------
        gt0_rxchariscomma_out           =>      gt0_rxchariscomma_out,
        gt0_rxcharisk_out               =>      gt0_rxcharisk_out,
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
        gt0_rxresetdone_out             =>      gt0_rxresetdone_out,
    ------------------------ TX Configurable Driver Ports ----------------------
        gt0_txpostcursor_in             =>      gt0_txpostcursor_in,
        gt0_txprecursor_in              =>      gt0_txprecursor_in,
    --------------------- TX Initialization and Reset Ports --------------------
        gt0_gttxreset_in                =>      gt0_gttxreset_in,
        gt0_txuserrdy_in                =>      gt0_txuserrdy_in,
    ---------------- Transmit Ports - 8b10b Encoder Control Ports --------------
        gt0_txchardispmode_in           =>      gt0_txchardispmode_in,
        gt0_txchardispval_in            =>      gt0_txchardispval_in,
    ------------------ Transmit Ports - FPGA TX Interface Ports ----------------
        gt0_txusrclk_in                 =>      gt0_txusrclk_in,
        gt0_txusrclk2_in                =>      gt0_txusrclk2_in,
    --------------------- Transmit Ports - PCI Express Ports -------------------
        gt0_txelecidle_in               =>      gt0_txelecidle_in,
    ------------------ Transmit Ports - Pattern Generator Ports ----------------
        gt0_txprbsforceerr_in           =>      gt0_txprbsforceerr_in,
    ---------------------- Transmit Ports - TX Buffer Ports --------------------
        gt0_txbufstatus_out             =>      gt0_txbufstatus_out,
    --------------- Transmit Ports - TX Configurable Driver Ports --------------
        gt0_txdiffctrl_in               =>      gt0_txdiffctrl_in,
    ------------------ Transmit Ports - TX Data Path interface -----------------
        gt0_txdata_in                   =>      gt0_txdata_in,
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
        gt0_gtxtxn_out                  =>      gt0_gtxtxn_out,
        gt0_gtxtxp_out                  =>      gt0_gtxtxp_out,
    ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        gt0_txoutclk_out                =>      gt0_txoutclk_out,
        gt0_txoutclkfabric_out          =>      gt0_txoutclkfabric_out,
        gt0_txoutclkpcs_out             =>      gt0_txoutclkpcs_out,
    --------------------- Transmit Ports - TX Gearbox Ports --------------------
        gt0_txcharisk_in                =>      gt0_txcharisk_in,
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        gt0_txresetdone_out             =>      gt0_txresetdone_out,
    ----------------- Transmit Ports - TX Polarity Control Ports ---------------
        gt0_txpolarity_in               =>      gt0_txpolarity_in,
    ------------------ Transmit Ports - pattern Generator Ports ----------------
        gt0_txprbssel_in                =>      gt0_txprbssel_in,


        gt0_txpmareset_in        =>  gt0_txpmareset_in     , 
        gt0_txpcsreset_in        =>  gt0_txpcsreset_in     , 
        gt0_rxpcsreset_in        =>  gt0_rxpcsreset_in     , 
        gt0_dmonitorout_out      =>  gt0_dmonitorout_out   , 

    --____________________________COMMON PORTS________________________________
        GT0_QPLLOUTCLK_IN  => GT0_QPLLOUTCLK_IN,
        GT0_QPLLOUTREFCLK_IN => GT0_QPLLOUTREFCLK_IN 

    );
     
end RTL;
