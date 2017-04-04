----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.04.2017 14:13:51
-- Design Name: 
-- Module Name: filter - rtl
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

entity filter is
--  Port ( );
	generic(
		d_w	: natural := 8
	);
	port(
		clk 			: in std_logic;
		rst 			: in std_logic;
		data_in			: in std_logic_vector(d_w - 1 downto 0);
		data_out		: out std_logic_vector(d_w - 1 downto 0);
		w_en			: out std_logic
	);
end filter;

architecture rtl of filter is
	
begin
	
	process(clk, rst)
			
	begin
		if rising_edge(clk) then
			if rst = '1' then
				data_out <= "00000000";
				w_en <= '0';
			else
				case data_in is
					when "00010111" => -- A -- CCA
						w_en <= '0';
					when "11111111" => -- B -- EC0
						w_en <= '0';
					when "00000000" => -- C -- BC0
						w_en <= '0';
					when others => -- D -- CalPulse
						data_out <= data_in;
						w_en <= '1';
				end case;
			end if; --if rst
		end if; --if rising edge
	end process;
end rtl;

