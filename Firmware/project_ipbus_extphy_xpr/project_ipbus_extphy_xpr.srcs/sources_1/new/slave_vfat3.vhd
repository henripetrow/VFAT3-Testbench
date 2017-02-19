----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.02.2017 15:57:50
-- Design Name: 
-- Module Name: slave_vfat3 - rtl
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
use work.ipbus.all;

entity slave_vfat3 is
	generic(data_width : natural := 32);
	port(
		clk: in STD_LOGIC;
		reset: in STD_LOGIC;
		ipbus_in: in ipb_wbus;
		ipbus_out: out ipb_rbus
	);
	
end slave_vfat3;

architecture rtl of slave_vfat3 is

	signal data_out_fifo	: std_logic_vector(data_width - 1 downto 0);
	signal data_in_fifo		: std_logic_vector(data_width - 1 downto 0);
	signal fifo_in_full		: std_logic;
	signal fifo_in_empty	: std_logic;
	signal fifo_out_full	: std_logic;
	signal fifo_out_empty	: std_logic;
	signal fifo_in_w_en		: std_logic;
	signal fifo_in_r_en		: std_logic;
	signal fifo_out_w_en	: std_logic;
	signal fifo_out_r_en	: std_logic;
	
begin
	
	fifo_in: entity work.fifo_in
		port map(
			clk => clk,
			reset => reset,
			ipbus_in => ipbus_in,
			data_out => data_out_fifo,
			full_flag => fifo_in_full,
			empty_flag => fifo_in_empty,
			write_en => fifo_in_w_en,
			read_en => fifo_in_r_en
		);
		
	fifo_out: entity work.fifo_out
				port map(
					clk => clk,
					reset => reset,
					ipbus_out => ipbus_out,
					data_in => data_in_fifo,
					full_flag => fifo_out_full,
					empty_flag => fifo_out_empty,
					write_en => fifo_out_w_en,
					read_en => fifo_out_r_en
				);
	

end rtl;
