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
	signal reset_fifo			: std_logic;
	
	signal clk40				: std_logic; -- temporary !!!1
	signal counter_rst			: std_logic_vector(3 downto 0) := "0000";
	
	signal command				: std_logic_vector(cmd_width - 1 downto 0);
	signal BC					: std_logic_vector(BC_width - 1 downto 0);
	signal BCd					: std_logic_vector(BC_width - 1 downto 0);
	signal reset_BCd			: std_logic;
	
	component fifo_generator_0 is
		PORT (
	    	clk     		: IN  std_logic := '0';
	     	--rd_clk      	: IN  std_logic := '0';
	        wr_ack			: OUT std_logic := '0';
	        almost_full  	: OUT std_logic := '0';
	        almost_empty	: OUT std_logic := '1';
	        srst          	: IN  std_logic := '0';
	        wr_en        	: IN  std_logic := '0';
	        rd_en        	: IN  std_logic := '0';
	        din          	: IN  std_logic_vector(32-1 DOWNTO 0) := (OTHERS => '0');
	        dout         	: OUT std_logic_vector(32-1 DOWNTO 0) := (OTHERS => '0');
	        full         	: OUT std_logic := '0';
	        empty        	: OUT std_logic := '1';
	        valid			: OUT std_logic := '0'
		);
	
	  end component;
	
begin
	
	control_block: entity work.control
		port map(
			clk 			=> clk,
			rst 			=> reset,
			ipbus_in 		=> ipbus_in,
			ipbus_out 		=> ipbus_out,
			write_fifo_en	=> fifo_in_w_en,
			read_fifo_en 	=> fifo_in_r_en,
			data_to_fifo 	=> fifo_in_data_in,
			data_from_fifo 	=> fifo_in_data_out,
			fifo_valid 		=> fifo_in_valid,
			leds			=> leds
		);
	fifo_in: fifo_generator_0
		port map(
			srst 	=> reset_fifo,
		    clk 	=> clk,
		    --rd_clk 	=> clk40, !!!!
		    din		=> fifo_in_data_in,--ipbus_in.ipb_wdata,
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
				
				if fifo_in_valid = '1' then
					leds(3) <= '1';
				end if;
				if fifo_in_empty = '1' then
					leds(2) <= '1';
				end if;
				if fifo_in_full = '0' then
					leds(1) <= '1';
				end if;
				if reset_fifo = '1' then
					leds(0) <= '1';
				end if;
			end if;
		end process;
		
--	fifo_out: fifo_generator_0
--		port map(
--			srst 	=> reset,
--		    clk 	=> clk40,
--		    --rd_clk 	=> clk,
--		    din 	=> fifo_out_data_in,
--		    wr_en 	=> ipbus_in.ipb_strobe,
--		    rd_en 	=> fifo_out_r_en,
--		    dout 	=> ipbus_out.ipb_rdata,
--		    full 	=> fifo_out_full,
--		    --almost_full => ,
--		    wr_ack	=> ipbus_out.ipb_ack,
--		    empty 	=> fifo_out_empty,
--		    valid	=> fifo_out_valid
--		    --almost_empty =>
--		);
		
--	buffer_in: entity work.buffer_vfat3
--		port map(
--			rst 			=> reset,
--			clk 			=> clk40,
--			BC				=> BC,
--			BCd				=> BCd,
--			data_in 		=> fifo_in_data_out,
--			data_out 		=> command,
--			trigger		 	=> fifo_in_r_en,
--			fifo_empty 		=> fifo_in_empty,
--			reset_BCd		=> reset_BCd
--		);
		
--	BC_block: entity work.BC_block
--		port map(
--			rst			=> reset,
--			clk			=> clk40,
--			BC			=> BC,
--			BCd			=> BCd,
--			reset_BCd	=> reset_BCd
--		);
			
	

end rtl;
