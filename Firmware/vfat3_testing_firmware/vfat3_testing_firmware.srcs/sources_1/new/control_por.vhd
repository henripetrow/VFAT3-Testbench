----------------------------------------------------------------------------------
-- Company: IIHE - ULB
-- Engineers: J. Rosa 
-- 
-- Create Date: 06.04.2017 14:29:44
-- Design Name: 
-- Module Name: control_por
-- Project Name: VFAT3 TESTING FIRMWARE
-- Target Devices: Kintex-7 KC705 Evaluation Platform
-- Tool Versions: Vivado 2016.3
-- Description: controls the interface between ipbus and the settings of BOR_DISABLE, POR_DISABLE, VFAT_RESET
-- 
-- Dependencies: 
-- 
-- Revision: FINAL
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.ipbus.all;
use work.cst_pkg.all;

entity control_por is
	generic(
		d_w 	: natural := FIFO_W
	);
	port(
		clk : in std_logic;
		rst : in std_logic;
		ipbus_in : in ipb_wbus;
		ipbus_out : out ipb_rbus;
		por_disable : buffer std_logic;
		bor_disable : buffer std_logic;
		vfat_reset : buffer std_logic
	);
end control_por;

architecture Behavioral of control_por is
	
	type state_type is (IDLE, W, R, RESET);
	signal state 	: state_type;
	signal read_reg : std_logic_vector(d_w - 1 downto 0);
	
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
								state <= R;
							end if;
						end if;
					when R =>
						read_reg <= X"0000000" & "0" & bor_disable & por_disable & vfat_reset;
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
