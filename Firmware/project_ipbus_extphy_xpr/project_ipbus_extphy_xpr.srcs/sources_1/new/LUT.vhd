----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.02.2017 10:29:10
-- Design Name: 
-- Module Name: LUT - rtl
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

entity LUT is
--  Port ( );
	generic(
		din_w 	: natural := 4;
		dout_w	: natural := 8
	);
	port(
		clk 			: in std_logic;
		rst 			: in std_logic;
		data_in			: in std_logic_vector(din_w - 1 downto 0);
		data_out		: out std_logic_vector(dout_w - 1 downto 0)
	);
end LUT;

architecture rtl of LUT is
	signal even : std_logic := '0';
	
begin
	
	process(clk, rst)
			
	begin
		if rising_edge(clk) then
			if rst = '1' then
				data_out <= "00000000";
				even <= '0';
			else
				even <= not even; -- toggle to send filler 1's and 0's alternately and preserve DC balance
				case data_in is
					when "0000" => -- fillers
						if even <= '1' then
							data_out <= "00000000"; -- A
						else
							data_out <= "11111111"; -- P
						end if;
					when "0001" => -- B -- EC0
						data_out <= "00001111";
					when "0010" => -- C -- BC0
						data_out <= "00110011";
					when "0011" => -- D -- CalPulse
						data_out <= "00111100";
					when "0100" => -- E -- ReSync
						data_out <= "01010101";
					when "0101" => -- F -- SCOnly
						data_out <= "01011010";
					when "0110" => -- G -- RunMode
						data_out <= "01100110";
					when "0111" => -- H -- LV1A
						data_out <= "01101001";
					when "1000" => -- I -- SC0
						data_out <= "10010110";
					when "1001" => -- J -- SC1
						data_out <= "10011001";
					when "1010" => -- K -- ReSC
						data_out <= "10100101";
					when "1011" => -- L -- LV1A+EC0
						data_out <= "10101010";
					when "1100" => -- M -- LV1A+BC0
						data_out <= "11000011";
					when "1101" => -- N -- LV1A+BC0+EC0
						data_out <= "11001100";
					when "1110" => -- O -- EC0+BC0
						data_out <= "11110000";
					when "1111" => -- P -- should not be used
						data_out <= "11111111";						
				end case;
			end if; --if rst
		end if; --if rising edge
	end process;
end rtl;
