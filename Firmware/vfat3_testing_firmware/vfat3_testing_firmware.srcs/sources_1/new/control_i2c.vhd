----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.04.2017 14:13:12
-- Design Name: 
-- Module Name: control_i2c - Behavioral
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
use work.ipbus.all;

entity control_i2c is
	port(
		clk : in std_logic;
		rst : in std_logic;
		ipbus_in : in ipb_wbus;
		ipbus_out : out ipb_rbus;
		rw : out std_logic;
		rdata_valid : in std_logic;
		rdata : in std_logic_vector(31 downto 0);
		wdata : out std_logic_vector(31 downto 0);
		leds : out std_logic_vector(7 downto 0)
	);
end control_i2c;

architecture Behavioral of control_i2c is
	
	type state_type is (IDLE, W, R, RESET);
	signal state 	: state_type;
	
begin
	process(clk,rst)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				ipbus_out <= (ipb_ack => '1', ipb_err => '0', ipb_rdata => (others => '0'));
				leds <= (others => '0');
			else
				case state is
					when IDLE =>
						if ipbus_in.ipb_strobe = '1' and ipbus_in.ipb_write = '1' then
							if ipbus_in.ipb_addr = X"00005000" then
								rw <= '1';
								state <= W;
							end if;
						elsif ipbus_in.ipb_strobe = '1' and ipbus_in.ipb_write = '0' then
							if ipbus_in.ipb_addr = X"00005000" then
								rw <= '0';
								state <= R;
							end if;
						end if;
					when R =>
						if rdata_valid = '1' then
							ipbus_out <= (ipb_ack => '1', ipb_err => '0', ipb_rdata => rdata);
							state <= RESET;
						end if;
					when W =>
						wdata <= ipbus_in.ipb_wdata;
						ipbus_out <= (ipb_ack => '1', ipb_err => '0', ipb_rdata => (others => '0'));
						state <= RESET;
					when RESET =>
						ipbus_out <= (ipb_ack => '1', ipb_err => '0', ipb_rdata => (others => '0'));
						rw <= '0';
						wdata <= (others => '0');
				end case;
			end if;
		end if;
	end process;

end Behavioral;

