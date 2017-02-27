----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2017 15:57:50
-- Design Name: 
-- Module Name: switch - rtl
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

entity switch is
	port(
		clk		: in STD_LOGIC;
		rst		: in STD_LOGIC;
		swb		: in STD_LOGIC;
		leds	: out STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
end switch;

architecture rtl of switch is
	
begin
	process(clk,rst)
	begin
		if rising_edge(clk) then
			if rst <= '1' then
				leds <= (others => '0');
			else
				if swb <= '1' then
					leds <= (others => '0');
				end if;
			end if;
		end if;
	end process;
end rtl;
