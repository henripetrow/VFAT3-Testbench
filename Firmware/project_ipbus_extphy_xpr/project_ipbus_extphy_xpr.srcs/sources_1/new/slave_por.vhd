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
		data_width 	: natural := 32;
		BC_width	: natural := 12;
		cmd_width	: natural := 4;
		cmd_8w		: natural := 8
		);
	port(
		clk			: in STD_LOGIC;
		reset		: in STD_LOGIC;
		clk40		: in STD_LOGIC;
		rst40 		: in STD_LOGIC;
		clk320 		: in STD_LOGIC;
		rst320 		: in STD_LOGIC;
		onehz		: in STD_LOGIC;
		ipbus_in	: in ipb_wbus;
		ipbus_out	: out ipb_rbus;
		leds		: out STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
	
end slave_por;

architecture Behavioral of slave_por is

	signal fifo_out_data_in		: std_logic_vector(data_width - 1 downto 0);
	signal fifo_in_data_out		: std_logic_vector(data_width - 1 downto 0);
	signal fifo_out_data_out	: std_logic_vector(data_width - 1 downto 0);
	signal fifo_in_data_in		: std_logic_vector(data_width - 1 downto 0);
	signal fifo_in_full			: std_logic;
	signal fifo_in_empty		: std_logic;
	signal fifo_out_full		: std_logic;
	signal fifo_out_empty		: std_logic;
	signal fifo_in_w_en			: std_logic;
	signal fifo_in_r_en			: std_logic;
	signal fifo_out_w_en		: std_logic;
	signal fifo_out_r_en		: std_logic;
	signal fifo_in_valid		: std_logic;
	signal fifo_out_valid		: std_logic;
	signal fifo_in_a_full		: std_logic;
	signal fifo_in_a_empty		: std_logic;
	signal fifo_out_a_empty		: std_logic;
	signal fifo_out_a_full		: std_logic;
	signal fifo_out_w_ack		: std_logic;
	signal fifo_out_underflow	: std_logic;
	signal fifo_in_underflow	: std_logic;
	signal fifo_in_ack			: std_logic;
	signal reset_fifo			: std_logic;
	
	signal counter_rst			: integer := 0;

	  
begin
	
	control_block: entity work.control
		port map(
			clk 			=> clk,
			rst 			=> reset,
			ipbus_in 		=> ipbus_in,
			ipbus_out 		=> ipbus_out,
			fifo_in_w_en	=> fifo_in_w_en,
			fifo_out_r_en 	=> fifo_out_r_en,
			fifo_out_valid	=> fifo_out_valid,
			data_to_fifo 	=> fifo_in_data_in,
			data_from_fifo 	=> fifo_out_data_out,
			fifo_underflow	=> fifo_out_underflow,
			fifo_out_empty  => fifo_out_empty,
			leds			=> leds
		);

end Behavioral;
