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
		data_in 		: in std_logic_vector(data_width - 1 downto 0);
		fifo_valid		: in std_logic;
		ack				: in std_logic;
		onehz			: in std_logic;
		fifo_empty		: in std_logic;
		data_out 		: out std_logic_vector(cmd_width - 1 downto 0);
		read_fifo_en	: out std_logic;
		leds			: out std_logic_vector(7 downto 0);
		data_valid		: out std_logic;
		no_data			: out std_logic
	);
end buffer_vfat3;

architecture rtl of buffer_vfat3 is

	type state_type is (IDLE, READ, MATCH_SEND, WAIT_ACK, RESET);
	
	signal state : state_type := IDLE;
	signal buf : std_logic_vector(data_width - 1 downto 0);
	signal data1_to_be_read : natural range 0 to 1 := 1;
	
	signal BCd: std_logic_vector(BC_width - 1 downto 0);
	signal reset_BCd : std_logic;
	signal start_BCd : std_logic;
	
	signal data_out_int			: std_logic_vector(cmd_width - 1 downto 0);
	

			
			
begin
	process(clk, rst)
	
	begin
		if rising_edge(clk) then
			if rst = '1' then
				data_out <= (others => '0');
				buf <= (others => '0');
				data1_to_be_read <= 1;
				read_fifo_en <= '0';
				start_BCd <= '0';
				data_valid <= '0';
				state <= IDLE;
				reset_BCd <= '0';
				no_data <= '1';
			else
				--internal state machine 
				case state is 
					when IDLE =>
						if fifo_empty = '0' then
							no_data <= '0';
							read_fifo_en <= '1';
							state <= READ;
						else
							no_data <= '1';
							state <= RESET;
						end if;
						leds(7) <= '1';
					when READ => 
						read_fifo_en <= '0';
						leds(6) <= '1';
						--if fifo_valid <= '1' then
						if fifo_valid = '1' then
							buf <= data_in;
							start_BCd <= '1';
							state <= MATCH_SEND;
						end if;
					when MATCH_SEND =>
						---------------------------------------------
						--31     20|19      16|15      4|3        0--
						-- BCdiff1 |   cmd1   | BCdiff2 |   cmd2   --
						---------------------------------------------
						if start_BCd = '1' then
							BCd <= std_logic_vector(unsigned(BCd) + 1);
							if BCd = "111111111111" then
								BCd <= (others => '0');
							end if;	
						else
							BCd <= (others => '0');
						end if;
						if buf(data1_to_be_read * (BC_width + cmd_width) + ((BC_width + cmd_width) - 1) downto data1_to_be_read * (BC_width + cmd_width) + cmd_width) = BCd then
							-- reads either BCdiff1 (31 downto 20) or BCdiff2 (15 downto 4)  if data1_to_be_read = 1 or 0
						    data_out <= buf(data1_to_be_read * (BC_width + cmd_width) + (cmd_width - 1) downto data1_to_be_read * (BC_width + cmd_width));
							data_out_int <= buf(data1_to_be_read * (BC_width + cmd_width) + (cmd_width - 1) downto data1_to_be_read * (BC_width + cmd_width));
						    -- transmits either cmd1(19 downto 16) or cmd2(3 downto 0) if data1_to_be_read = 1 or 0
						    data_valid <= '1';
						    state <= WAIT_ACK;
						    reset_BCd <= '1';
						    leds(5) <= '1';
						end if;
					when WAIT_ACK =>
						data_valid <= '0';
						if ack = '1' then
							if reset_BCd = '1' then
								reset_BCd <= '0';
								BCd <= (others => '0');
							end if;
							if data1_to_be_read = 0 then
--						    	leds(4) <= '1';
						    	state <= RESET;
						    else
--						    	leds(3) <= '1';
						    	STATE <= MATCH_SEND;
						    end if;						    
						    data1_to_be_read <= abs(data1_to_be_read - 1); --equivalent in boolean to "A = not A"
						end if;
						
					when RESET =>
						data_valid <= '0';
						data1_to_be_read <= 1;
						no_data <= '1';
						--data_out <= (others => '0');
						--buf <= (others => '0');
						state <= IDLE;
					when others =>
						state <= IDLE;
				end case;
			end if; --if rst
		end if; --if rising edge
	end process;
end rtl;
