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

entity slave_rst is
	generic(
		d_w 	: natural := 32
		);
	port(
		clk			: in STD_LOGIC;
		rst 		: in STD_LOGIC;
		ipbus_in	: in ipb_wbus;
		ipbus_out	: out ipb_rbus;
		vfat_rst	: out std_logic;
		leds		: out STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
	
end slave_rst;

architecture Behavioral of slave_rst is
	
	signal vfat_rst_wr_en, vfat_rst_wr : std_logic;
	
begin
	
	control_rst: entity work.control_rst
		port map(
			clk 		=> clk,
			rst 		=> rst,
			ipbus_in 	=> ipbus_in,
			ipbus_out 	=> ipbus_out,
			vfat_rst_wr	=> vfat_rst_wr,
			vfat_rst_wr_en => vfat_rst_wr_en,
			leds		=> leds
		);
	
	vfat_reset: process(clk, vfat_rst_wr, vfat_rst_wr_en)
	begin
    	if rising_edge(clk) then
    		if vfat_rst_wr_en = '1' then
    			vfat_rst <= vfat_rst_wr;
    		else
    			vfat_rst <= '0';
    		end if;
    	end if;
	end process;

end Behavioral;
