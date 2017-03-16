----------------------------------------------------------------------------------
-- Company: IIHE
-- Engineer: Jason Rosa
-- 
-- Create Date: 22.02.2017 08:45:17
-- Design Name: 
-- Module Name: BC_block - rtl
-- Project Name: 
-- Target Devices: Kintex 7
-- Tool Versions: Vivado 2016.3
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
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.ipbus.all;

entity BC_block is
--  Port ( );
	generic(
		BC_width	: natural := 12
	);
	port(
		rst 		: in std_logic;
		clk 		: in std_logic;
		BCd			: out std_logic_vector(BC_width - 1 downto 0);
		reset_BCd	: in std_logic;
		start_BCd	: in std_logic;
		leds		: out std_logic_vector(7 downto 0)
	);
end BC_block;

architecture rtl of BC_block is
		signal BCd_int : std_logic_vector(BC_width - 1 downto 0);
begin
	
	process(clk, rst)
			
	begin
		if rising_edge(clk) then
			if rst = '1' then
				BCd_int <= (others => '0');
				BCd <= (others => '0');
			else
				if start_BCd = '1' then
					leds(0) <= '1';
					if reset_BCd = '0' then
						BCd_int <= std_logic_vector(unsigned(BCd_int) + 1);
					else
						BCd_int <= (others => '0');
					end if;
					if BCd_int = "111111111111" then
						BCd_int <= (others => '0');
					end if;		
				end if;
			end if; --if rst
			
			BCd <= BCd_int;
			
		end if; --if rising edge
	end process;
end rtl;
