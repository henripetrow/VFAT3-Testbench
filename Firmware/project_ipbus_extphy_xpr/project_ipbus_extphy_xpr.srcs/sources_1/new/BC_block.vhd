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
		rst 				: in std_logic;
		clk 				: in std_logic;
		BC					: out std_logic_vector(BC_width - 1 downto 0);
		reset_BC			: in std_logic
	);
end BC_block;

architecture rtl of BC_block is
		signal BC_int : std_logic_vector(BC_width - 1 downto 0);
begin
	
	process(clk, rst)
			
	begin
		if rising_edge(clk) then
			if rst = '1' then
				BC_int <= (others => '0');
				BC <= (others => '0');
			else
				if reset_BC = '0' then
					BC_int <= std_logic_vector(unsigned(BC_int) + 1);
				else
					BC_int <= (others => '0');
				end if;					
			end if; --if rst
			
			BC <= BC_int;
			
		end if; --if rising edge
	end process;
end rtl;
