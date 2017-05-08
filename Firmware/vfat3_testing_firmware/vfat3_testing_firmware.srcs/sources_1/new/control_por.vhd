----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2017 14:29:44
-- Design Name: 
-- Module Name: control_por - Behavioral
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

entity control_por is
	port(
		clk : in std_logic;
		rst : in std_logic;
		ipbus_in : in ipb_wbus;
		ipbus_out : out ipb_rbus;
		por_disable : inout std_logic;
		bor_disable : inout std_logic;
		vfat_reset : inout std_logic;
		leds		: out STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
end control_por;

architecture Behavioral of control_por is
	
	type state_type is (IDLE, W, R, RESET);
	signal state 	: state_type;
	signal read_reg : std_logic_vector(31 downto 0);
	
begin
	process(clk,rst)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				ipbus_out <= (ipb_ack => '1', ipb_err => '0', ipb_rdata => (others => '0'));
			else
				case state is
					when IDLE =>
						if ipbus_in.ipb_strobe = '1' and ipbus_in.ipb_write = '1' then
							if ipbus_in.ipb_addr = X"00004000" then
								state <= W;
							end if;
						elsif ipbus_in.ipb_strobe = '1' and ipbus_in.ipb_write = '0' then
							if ipbus_in.ipb_addr = X"00004000" then
								read_reg <= X"0000000" & "0" & bor_disable & por_disable & vfat_reset;
								state <= R;
							end if;
						else
							vfat_reset <= 'Z';
							por_disable <= 'Z';
							bor_disable <= 'Z';
						end if;
					when R =>
						ipbus_out <= (ipb_ack => '1', ipb_err => '0', ipb_rdata => read_reg);
						state <= RESET;
					when W =>
						vfat_reset <= ipbus_in.ipb_wdata(0);
						por_disable <= ipbus_in.ipb_wdata(1);
						bor_disable <= ipbus_in.ipb_wdata(2);
						state <= RESET;
					when RESET =>
						ipbus_out <= (ipb_ack => '1', ipb_err => '0', ipb_rdata => (others => '0'));
						read_reg <= (others => '0');
				end case;
			end if;
		end if;
	end process;

end Behavioral;
