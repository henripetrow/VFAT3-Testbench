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
library work;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.ipbus.all;

entity slave_vfat3 is
	generic(
		data_width 	: natural := 32;
		BC_width	: natural := 12;
		cmd_width	: natural := 4
		);
	port(
		clk			: in STD_LOGIC;
		reset		: in STD_LOGIC;
		clk40		: in STD_LOGIC;
		rst40 		: in STD_LOGIC;
		clk320 		: in STD_LOGIC;
		rst320 		: in STD_LOGIC;
		ipbus_in	: in ipb_wbus;
		ipbus_out	: out ipb_rbus;
		leds		: out STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
	
end slave_vfat3;

architecture rtl of slave_vfat3 is

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
	signal reset_fifo			: std_logic;
	
	signal counter_rst			: std_logic_vector(3 downto 0) := "0000";
	
	signal command				: std_logic_vector(cmd_width - 1 downto 0);
	signal BCd					: std_logic_vector(BC_width - 1 downto 0);
	signal reset_BCd			: std_logic;
	signal start_BCd			: std_logic;
	signal buffer_valid			: std_logic;
	
	signal data_bus_out			: std_logic_vector(8 - 1 downto 0);
	signal data_to_vfat3		: std_logic;
	signal data_bus_in			: std_logic_vector(8 - 1 downto 0);
	signal data_from_vfat3		: std_logic;
	
	component fifo_generator_0 is
		PORT (
	    	wr_clk     		: IN  std_logic := '0';
	     	rd_clk      	: IN  std_logic := '0';
	        wr_ack			: OUT std_logic := '0';
	        almost_full  	: OUT std_logic := '0';
	        almost_empty	: OUT std_logic := '1';
	        rst          	: IN  std_logic := '0';
	        wr_en        	: IN  std_logic := '0';
	        rd_en        	: IN  std_logic := '0';
	        din          	: IN  std_logic_vector(32-1 DOWNTO 0) := (OTHERS => '0');
	        dout         	: OUT std_logic_vector(32-1 DOWNTO 0) := (OTHERS => '0');
	        full         	: OUT std_logic := '0';
	        empty        	: OUT std_logic := '1';
	        valid			: OUT std_logic := '0'
		);
	  end component;
	  
	  component selectio_wiz_ser is
	  	PORT (
	  		data_out_from_device 	: IN std_logic_vector(7 downto 0);
	  		data_out_to_pins 		: OUT std_logic;
	  		clk_in 					: IN std_logic;
	  		clk_div_in 				: IN std_logic;
	  		io_reset 				: IN std_logic
	  	);
		end component;
	
		component selectio_wiz_des is
	  		PORT (
	  			data_out_from_device 	: IN std_logic_vector(7 downto 0);
	  		  	data_out_to_pins 		: OUT std_logic;
	  		  	clk_in 					: IN std_logic;
	  		  	clk_div_in 				: IN std_logic;
	  		  	io_reset 				: IN std_logic
	  		);
	  	end component;
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
			fifo_in_valid 	=> fifo_in_valid,
			leds			=> leds
		);
		
--	fifo_out_data_in <= fifo_in_data_out; --fifo loopback testing
--	fifo_out_w_en <= fifo_in_valid;
--	fifo_in_r_en <= not reset_fifo;
		
	fifo_in: fifo_generator_0
		port map(
			rst 	=> reset_fifo,
		    wr_clk 	=> clk,
		    rd_clk 	=> clk40,-- !!!!
		    din		=> fifo_in_data_in,
		    wr_en 	=> fifo_in_w_en,
		    rd_en 	=> fifo_in_r_en,
		    dout 	=> fifo_in_data_out,
		    full 	=> fifo_in_full,
		    valid	=> fifo_in_valid,
		    almost_full => fifo_in_a_full,
		    wr_ack 	=> ipbus_out.ipb_ack,
		    empty 	=> fifo_in_empty,
		    almost_empty => fifo_in_a_empty
		);
				
		process(clk, reset) 
		begin
			if rising_edge(clk) then
				if counter_rst < "1010" then -- need to maintain reset on FIFO a few clk cycles first
					reset_fifo <= '1';
					counter_rst <= std_logic_vector(unsigned(counter_rst) + 1);
				else
					reset_fifo <= reset;
				end if;
			end if;
		end process;
		
	fifo_out: fifo_generator_0
		port map(
			rst 	=> reset,
		    wr_clk 	=> clk40,
		    rd_clk 	=> clk,
		    din 	=> fifo_out_data_in,
		    wr_en 	=> fifo_out_w_en,
		    rd_en 	=> fifo_out_r_en,
		    dout 	=> fifo_out_data_out,
		    full 	=> fifo_out_full,
		    almost_full => fifo_out_a_full,
		    wr_ack	=> fifo_out_w_ack,
		    empty 	=> fifo_out_empty,
		    valid	=> fifo_out_valid,
		    almost_empty => fifo_out_a_empty
		);
		
	buffer_in: entity work.buffer_vfat3
		port map(
			rst 			=> rst40,
			clk 			=> clk40,
			BCd				=> BCd,
			data_in 		=> fifo_in_data_out,
			data_out 		=> command,
			read_fifo_en	=> fifo_in_r_en,
			reset_BCd		=> reset_BCd,
			start_BCd		=> start_BCd,
			out_ready		=> buffer_valid,
			leds			=> leds,
			fifo_valid		=> fifo_in_valid
		);
		
		fifo_out_w_en <= buffer_valid; -- buffer loopback testing
		fifo_out_data_in <= command & command & command & command & command & command & command & command;
--		fifo_out_data_in(31 downto 4) <= (others => '1'); FW does not work anymore with this assignment ...
--		fifo_out_data_in(3 downto 0) <= command ;
		
	BC_block: entity work.BC_block
		port map(
			rst			=> rst40,
			clk			=> clk40,
			BCd			=> BCd,
			start_BCd	=> start_BCd,
			reset_BCd	=> reset_BCd,
			leds		=> leds
		);
--	serializer: selectio_wiz_ser
--		port map(
--			data_out_from_device	=> data_bus_out,
--			data_out_to_pins		=> data_to_vfat3,
--			clk_in					=> clk320, -- fast so 320 ?
--			clk_div_in				=> clk40, -- slow so 40 ?
--			io_reset				=> rst40 -- ?
--		);
--	deserializer: selectio_wiz_des
--		port map(
--			data_out_from_device	=> data_bus_in,
--			data_out_to_pins		=> data_from_vfat3,
--			clk_in					=> clk320, -- fast so 320 ?
--			clk_div_in				=> clk40, -- slow so 40 ?
--			io_reset				=> rst40 -- ?
--		);
end rtl;
