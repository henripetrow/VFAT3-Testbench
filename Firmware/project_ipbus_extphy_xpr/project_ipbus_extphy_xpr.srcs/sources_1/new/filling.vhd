----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.02.2017 10:46:42
-- Design Name: 
-- Module Name: filling - rtl
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
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity filling is
--  Port ( );
	generic(
		d_w 	: natural := 8
	);
	port(
		clk 			: in std_logic;
		rst 			: in std_logic;
		data_in			: in std_logic_vector(d_w - 1 downto 0);
		data_out		: out std_logic_vector(d_w - 1 downto 0)
	);
end filling;

architecture rtl of filling is
	
begin
	
	process(clk, rst)
			
	begin
		if rising_edge(clk) then
			if rst = '1' then
				
			else
				
			end if; --if rst
		end if; --if rising edge
	end process;
end rtl;