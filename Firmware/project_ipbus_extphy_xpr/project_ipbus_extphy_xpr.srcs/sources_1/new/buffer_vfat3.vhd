----------------------------------------------------------------------------------
-- Company: IIHE
-- Engineer: Jason Rosa
-- 
-- Create Date: 22.02.2017 08:45:17
-- Design Name: 
-- Module Name: buffer_vfat3 - rtl
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

entity buffer_vfat3 is
--  Port ( );
	generic(
		BC_width	: natural := 12;
		data_width	: natural := 32;
		cmd_width	: natural := 4
	);
	port(
		rst 			: in std_logic;
		clk 			: in std_logic;
		BCd				: in std_logic_vector(BC_width - 1 downto 0);
		data_in 		: in std_logic_vector(data_width - 1 downto 0);
		fifo_valid		: in std_logic;
		data_out 		: out std_logic_vector(cmd_width - 1 downto 0);
		read_fifo_en	: out std_logic;
		reset_BCd		: out std_logic;
		start_BCd		: out std_logic;
		leds			: out std_logic_vector(7 downto 0);
		out_ready		: out std_logic
	);
end buffer_vfat3;

architecture rtl of buffer_vfat3 is

	type state_type is (IDLE, MATCH_SEND, RESET);
	
	signal state : state_type := IDLE;
	signal buf : std_logic_vector(data_width - 1 downto 0);
begin
	
	process(clk, rst)
	
	variable data1_to_be_read : natural range 0 to 1 := 1;
		
	begin
		if rising_edge(clk) then
			if rst = '1' then
				data_out <= (others => '0');
				buf <= (others => '0');
				data1_to_be_read := 1;
				read_fifo_en <= '0';
				start_BCd <= '0';
				out_ready <= '0';
				state <= IDLE;
			else
				--internal state machine 
				case state is 
					when IDLE =>
						read_fifo_en <= '1';
						leds(3) <= '1';
						if fifo_valid <= '1' then
							buf <= data_in;
							start_BCd <= '1'; -- 1 when 1st data received until forever so no reset
							leds(2) <= '1';
							state <= MATCH_SEND;
						end if;
					when MATCH_SEND =>
						---------------------------------------------
						--31     20|19      16|15      4|3        0--
						-- BCdiff1 |   cmd1   | BCdiff2 |   cmd2   --
						---------------------------------------------
						if buf(data1_to_be_read * (BC_width + cmd_width) + ((BC_width + cmd_width) - 1) downto data1_to_be_read * (BC_width + cmd_width) + cmd_width) = BCd then
							-- reads either BCdiff1 or BCdiff2 if data1_to_be_read = 1 or 0
						    data_out <= buf(data1_to_be_read * (BC_width + cmd_width) + (cmd_width - 1) downto data1_to_be_read * (BC_width + cmd_width));
						    -- transmits either cmd1 or cmd2 if data1_to_be_read = 1 or 0
						    reset_BCd <= '1';
						    leds(1) <= '1';
						    out_ready <= '1';
						    if data1_to_be_read = 0 then
						    	state <= RESET;
						    else
						    	STATE <= MATCH_SEND;
						    end if;						    
						    data1_to_be_read := abs(data1_to_be_read - 1); --equivalent in boolean to "A = not A"
						else
							out_ready <= '0';
						end if;
						
					when RESET =>
						out_ready <= '0';
						data1_to_be_read := 1;
						reset_BCd <= '0';
						data_out <= (others => '0');
						read_fifo_en <= '0';
						buf <= (others => '0');
						state <= IDLE;
				end case;
			end if; --if rst
		end if; --if rising edge
	end process;
end rtl;
