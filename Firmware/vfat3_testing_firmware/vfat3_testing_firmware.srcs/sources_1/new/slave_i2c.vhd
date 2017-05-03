----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2017 10:52:51
-- Design Name: 
-- Module Name: slave_i2c - Behavioral
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
use work.ipbus.all;

entity slave_i2c is
	generic(
		d_width	: natural := 32
		);
	port(
		clk			: in STD_LOGIC;
		reset		: in STD_LOGIC;
		clk40		: in STD_LOGIC;
		rst40 		: in STD_LOGIC;
		ipbus_in	: in ipb_wbus;
		scl			: out std_logic;
		sda			: inout std_logic; 
		ipbus_out	: out ipb_rbus;
		leds		: out STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
	
end slave_i2c;

architecture Behavioral of slave_i2c is

	signal enable 			: std_logic;
	signal addr 			: std_logic_vector(d_width-1 downto 0); -- ?
	signal rw 				: std_logic;
	signal wdata 			: std_logic_vector(d_width-1 downto 0); --?
	signal rdata_valid 		: std_logic;
	signal error 			: std_logic;
	signal rdata		 	: std_logic_vector(d_width-1 downto 0);
	signal master_select	: std_logic;
begin
	
	control_i2c: entity work.control_i2c
		port map(
			clk => clk,
			rst => reset,
			ipbus_in => ipbus_in,
			ipbus_out => ipbus_out,
			rw => rw,
			rdata_valid => rdata_valid,
			rdata => rdata,
			wdata => wdata,
			leds => leds
		);
	
	i2c: entity work.i2c
		port map(
			ref_clk_i => clk, -- ??? not sure...
			reset_i => reset,
			en_i => enable,
			address_i => addr,
			rw_i => rw,
			data_i => wdata,
			valid_o => rdata_valid,
			error_o => error,
			data_o => rdata,
			scl_o => scl,
			sda_io => sda,
			sda_tri_o => master_select
		);
	
	process(clk, reset)
	begin
		if rising_edge(clk) then
			enable <= not reset;
		end if;
	end process;
end Behavioral;
