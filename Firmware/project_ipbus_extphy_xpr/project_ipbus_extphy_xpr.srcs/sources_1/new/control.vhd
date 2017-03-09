----------------------------------------------------------------------------------
-- Company: IIHE
-- Engineer: Jason Rosa
-- 
-- Create Date: 22.02.2017 08:45:17
-- Design Name: 
-- Module Name: control - rtl
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

entity control is
--  Port ( );
	generic(
		data_width : natural := 32
	);
	port(
		clk 			: in std_logic;
		rst 			: in std_logic;
		ipbus_in 		: in ipb_wbus;
		fifo_out_valid 	: in std_logic;
		fifo_in_valid	: in std_logic;
		data_from_fifo 	: in std_logic_vector (data_width - 1 downto 0);
		ipbus_out 		: out ipb_rbus;
		data_to_fifo 	: out std_logic_vector (data_width - 1 downto 0);
		fifo_in_w_en 	: out std_logic;
		fifo_out_r_en 	: out std_logic;
		leds			: out std_logic_vector(7 downto 0)
	);
end control;

architecture rtl of control is
	type state_type is (IDLE, W, R, ACK, RESET);
	
	signal state 	: state_type;
begin
	
	process(clk, rst)
			
	begin
		if rising_edge(clk) then
			if rst = '1' then
				state 			<= IDLE;
				ipbus_out 		<= (ipb_ack => '0', ipb_err => '0', ipb_rdata => (others => '0'));
				data_to_fifo 	<= (others => '0');
				fifo_in_w_en 	<= '0';
				fifo_out_r_en 	<= '0';
				leds			<= (others => '0');
			else
				case state is
					when IDLE =>
						leds(7) <= '1';
						if ipbus_in.ipb_strobe = '1' and ipbus_in.ipb_write = '1' then
							state <= W;
						elsif ipbus_in.ipb_strobe = '1' and ipbus_in.ipb_write = '0' then
							state <= R;
						end if;
					when W =>
						leds(6) <= '1';
						data_to_fifo <= ipbus_in.ipb_wdata;
						fifo_in_w_en <= '1';
						ipbus_out <= (ipb_ack => '1', ipb_err => '0', ipb_rdata => (others => '0'));
						state <= RESET;
					when R =>
						leds(5) <= '1';
						fifo_out_r_en <= '1';
						state <= ACK;
					when ACK =>				
						if fifo_out_valid = '1' then
							leds(4) <= '1';
							ipbus_out <= (ipb_ack => '1', ipb_err => '0', ipb_rdata => data_from_fifo);
							state <= RESET;
						end if;
					when RESET =>
						data_to_fifo <= (others => '0');
						fifo_in_w_en <= '0';
						fifo_out_r_en <= '0';
						ipbus_out.ipb_ack <= '0';
						state <= IDLE;
					when others =>
						data_to_fifo <= (others => '0');
						fifo_in_w_en <= '0';
						fifo_out_r_en <= '0';
						ipbus_out <= (ipb_ack => '0', ipb_err => '0', ipb_rdata => (others => '0'));
						state <= IDLE;
				end case;
			end if; --if rst
		end if; --if rising edge
	end process;
end rtl;
