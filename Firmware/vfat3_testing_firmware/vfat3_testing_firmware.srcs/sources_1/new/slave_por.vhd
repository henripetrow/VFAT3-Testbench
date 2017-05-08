----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2017 10:52:28
-- Design Name: 
-- Module Name: slave_por - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.ipbus.all;

entity slave_por is
	generic(
		d_w 	: natural := 32
		);
	port(
		clk			: in STD_LOGIC;
		rst 		: in STD_LOGIC;
		ipbus_in	: in ipb_wbus;
		ipbus_out	: out ipb_rbus;
		por_disable : inout std_logic;
		bor_disable : inout std_logic;
		vfat_reset 	: inout std_logic;
		leds		: out STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
	
end slave_por;

architecture Behavioral of slave_por is

begin
	
	control_por: entity work.control_por
		port map(
			clk 		=> clk,
			rst 		=> rst,
			ipbus_in 	=> ipbus_in,
			ipbus_out 	=> ipbus_out,
			por_disable => por_disable,
			bor_disable	=> bor_disable,
			vfat_reset 	=> vfat_reset,
			leds		=> leds
		);

end Behavioral;
