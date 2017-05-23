-- Top-level design for ipbus demo
--
-- This version is for xc6slx45 on Digilent ATLYS board
-- Uses the s6 soft TEMAC core with GMII inteface to an external Gb PHY
-- You will need a license for the core
--
-- You must edit this file to set the IP and MAC addresses
--
-- Dave Newbold, 16/7/12

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ipbus.ALL;

library unisim;
use unisim.VComponents.all;

entity top is port(
	sysclk_p, sysclk_n: in STD_LOGIC;
	leds									: out STD_LOGIC_VECTOR(7 downto 0);
	gmii_gtx_clk, gmii_tx_en, gmii_tx_er 	: out STD_LOGIC;
	gmii_txd 								: out STD_LOGIC_VECTOR(7 downto 0);
	gmii_rx_clk, gmii_rx_dv, gmii_rx_er		: in STD_LOGIC;
	gmii_rxd 								: in STD_LOGIC_VECTOR(7 downto 0);
	phy_rstb 								: out STD_LOGIC;
	tx_p, tx_n								: out std_logic;
	rx_p, rx_n 								: in std_logic;
	por_disable 							: inout std_logic;
	bor_disable 							: inout std_logic;
	vfat_reset 								: inout std_logic;
	mon_clk_en								: inout std_logic;
	clk320_p, clk320_n                      : out std_logic; -- to check on the VB how signals are behaving
--	clk40_p, clk40_n                        : out std_logic;
--    clk320_back_p, clk320_back_n            : in std_logic;
--    clk40_back_p, clk40_back_n              : in std_logic;
    sw_button								: in std_logic     
);
end top;

architecture rtl of top is

	signal clk125, clk200, clk40, clk320,ipb_clk, locked, rst_125, rst_ipb, rst40, rst320, onehz : STD_LOGIC;
	signal mac_tx_data, mac_rx_data: std_logic_vector(7 downto 0);
	signal mac_tx_valid, mac_tx_last, mac_tx_error, mac_tx_ready, mac_rx_valid, mac_rx_last, mac_rx_error: std_logic;
	signal ipb_master_out : ipb_wbus;
	signal ipb_master_in : ipb_rbus;
	signal mac_addr: std_logic_vector(47 downto 0);
	signal ip_addr: std_logic_vector(31 downto 0);
	signal pkt_rx, pkt_tx, pkt_rx_led, pkt_tx_led, sys_rst: std_logic;
	signal rx, tx : std_logic;
--	signal clk40_back, clk320_back : std_logic; -- to check on the VB how signals are behaving
	signal leds_slave : std_logic_vector(7 downto 0);
begin

--	DCM clock generation for internal bus, ethernet
	
	bor_disable <= '1';
	por_disable <= '1';
	mon_clk_en <= '1';
	
	clocks: entity work.clocks_7s_extphy
		port map(
			sysclk_p => sysclk_p,
			sysclk_n => sysclk_n,
			clko_125 => clk125,
			clko_200 => clk200,
			clko_320 => clk320,
			clko_40 => clk40,
			clko_ipb => ipb_clk,
			locked => locked,
			nuke => sys_rst,
			rsto_125 => rst_125,
			rsto_ipb => rst_ipb,
			rsto_40 => rst40,
			rsto_320 => rst320,
			onehz => onehz
		);
	
--	Ethernet MAC core and PHY interface
-- In this version, consists of hard MAC core and GMII interface to external PHY
-- Can be replaced by any other MAC / PHY combination
	
	eth: entity work.eth_7s_gmii
		port map(
			clk125 => clk125,
			clk200 => clk200,
			rst => rst_125,
			gmii_gtx_clk => gmii_gtx_clk,
			gmii_tx_en => gmii_tx_en,
			gmii_tx_er => gmii_tx_er,
			gmii_txd => gmii_txd,
			gmii_rx_clk => gmii_rx_clk,
			gmii_rx_dv => gmii_rx_dv,
			gmii_rx_er => gmii_rx_er,
			gmii_rxd => gmii_rxd,
			tx_data => mac_tx_data,
			tx_valid => mac_tx_valid,
			tx_last => mac_tx_last,
			tx_error => mac_tx_error,
			tx_ready => mac_tx_ready,
			rx_data => mac_rx_data,
			rx_valid => mac_rx_valid,
			rx_last => mac_rx_last,
			rx_error => mac_rx_error
		);
	
	phy_rstb <= '1';
	
-- ipbus control logic

	ipbus: entity work.ipbus_ctrl
		port map(
			mac_clk => clk125,
			rst_macclk => rst_125,
			ipb_clk => ipb_clk,
			rst_ipb => rst_ipb,
			mac_rx_data => mac_rx_data,
			mac_rx_valid => mac_rx_valid,
			mac_rx_last => mac_rx_last,
			mac_rx_error => mac_rx_error,
			mac_tx_data => mac_tx_data,
			mac_tx_valid => mac_tx_valid,
			mac_tx_last => mac_tx_last,
			mac_tx_error => mac_tx_error,
			mac_tx_ready => mac_tx_ready,
			ipb_out => ipb_master_out,
			ipb_in => ipb_master_in,
			mac_addr => mac_addr,
			ip_addr => ip_addr,
			pkt_rx => pkt_rx,
			pkt_tx => pkt_tx,
			pkt_rx_led => pkt_rx_led,
			pkt_tx_led => pkt_tx_led
		);
		
	mac_addr <= X"020ddba11599"; -- Careful here, arbitrary addresses do not always work
	ip_addr <= X"c0a800de"; -- 192.168.0.222

-- ipbus slaves live in the entity below, and can expose top-level ports
-- The ipbus fabric is instantiated within.
    
    
    -- ## OUTPUT DIFFERENTIAL BUFFERS ## --
    
    tx_obufds: OBUFDS 
    generic map (
            IOSTANDARD => "LVDS_25"    
    )
    port map(
        o => tx_p,
        ob => tx_n,
        i => tx
    );
        
--    clk40_obufds: OBUFDS -- to check on the VB how signals are behaving
--    generic map (
--        IOSTANDARD => "LVDS_25"    
--    )
--    port map(
--        o => clk40_p,
--        ob => clk40_n,
--        i => clk40
--    );    

    clk320_obufds: OBUFDS -- to check on the VB how signals are behaving
    generic map (
            IOSTANDARD => "LVDS_25"    
    )
    port map(
        o => clk320_p,
        ob => clk320_n,
        i => clk320
    );
    
    -- ## INPUT DIFFERENTIAL BUFFERS ## --
    
	rx_ibufds: IBUFDS
    generic map(
       DIFF_TERM => TRUE,
       IOSTANDARD => "LVDS_25"
    )
    port map(
        i => rx_p,
        ib => rx_n,
        o => rx
    );
    
--	clk40_ibufds: IBUFDS -- to check on the VB how signals are behaving
--	generic map(
--	   DIFF_TERM => TRUE,
--	   IOSTANDARD => "LVDS_25"
--	)
--	port map(
--        i => clk40_back_p,
--        ib => clk40_back_n,
--        o => clk40_back
--    );

--	clk320_ibufds: IBUFDS -- to check on the VB how signals are behaving
--	generic map(
--	   DIFF_TERM => TRUE,
--	   IOSTANDARD => "LVDS_25"
--	)
--	port map(
--        i => clk320_back_p,
--        ib => clk320_back_n,
--        o => clk320_back
--    );
    
    leds <= leds_slave(6 downto 0) & locked;
    
    -- ## IPBUS SLAVES ## --
	slaves: entity work.slaves port map(
		ipb_clk => ipb_clk,
		ipb_rst => rst_ipb,
		clk40 => clk40,
		clk320 => clk320,
		rst40 => rst40,
		rst320 => rst320,
		ipb_in => ipb_master_out,
		ipb_out => ipb_master_in,
		rst_out => sys_rst,
		pkt_rx => pkt_rx,
		pkt_tx => pkt_tx,
		tx => tx,
		rx => rx,
		leds => leds_slave,
		vfat_reset => vfat_reset,
		sw_button => sw_button
	);
	
end rtl;

