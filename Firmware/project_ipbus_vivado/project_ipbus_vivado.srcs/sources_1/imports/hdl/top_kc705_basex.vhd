-- Top-level design for ipbus demo
--
-- This version is for KC705 eval board, using SFP ethernet interface
--
-- You must edit this file to set the IP and MAC addresses
--
-- Dave Newbold, 23/2/11

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.ipbus.ALL;

entity top is port(
		eth_clk_p: in std_logic; -- 125MHz MGT clock
		eth_clk_n: in std_logic;
		eth_rx_p: in std_logic; -- Ethernet MGT input
		eth_rx_n: in std_logic;
		eth_tx_p: out std_logic; -- Ethernet MGT output
		eth_tx_n: out std_logic;
		sfp_los: in std_logic;
		leds: out std_logic_vector(3 downto 0) -- status LEDs
	);

end top;

architecture rtl of top is

	signal clk_ipb, rst_ipb, nuke, soft_rst, userled: std_logic;
	signal mac_addr: std_logic_vector(47 downto 0);
	signal ip_addr: std_logic_vector(31 downto 0);
	signal ipb_out: ipb_wbus;
	signal ipb_in: ipb_rbus;
	
begin

-- Infrastructure

	infra: entity work.kc705_basex_infra
		port map(
			eth_clk_p => eth_clk_p,
			eth_clk_n => eth_clk_n,
			eth_tx_p => eth_tx_p,
			eth_tx_n => eth_tx_n,
			eth_rx_p => eth_rx_p,
			eth_rx_n => eth_rx_n,
			sfp_los => sfp_los,
			clk_ipb_o => clk_ipb,
			rst_ipb_o => rst_ipb,
			nuke => nuke,
			soft_rst => soft_rst,
			leds => leds(1 downto 0),
			mac_addr => mac_addr,
			ip_addr => ip_addr,
			ipb_in => ipb_in,
			ipb_out => ipb_out
		);
		
	leds(3 downto 2) <= '0' & userled;
		
	mac_addr <= X"020ddba11501"; -- Careful here, arbitrary addresses do not always work
	ip_addr <= X"c0a8c801"; -- 192.168.200.1

-- ipbus slaves live in the entity below, and can expose top-level ports
-- The ipbus fabric is instantiated within.

	slaves: entity work.ipbus_example
		port map(
			ipb_clk => clk_ipb,
			ipb_rst => rst_ipb,
			ipb_in => ipb_out,
			ipb_out => ipb_in,
			nuke => nuke,
			soft_rst => soft_rst,
			userled => userled
		);

end rtl;
