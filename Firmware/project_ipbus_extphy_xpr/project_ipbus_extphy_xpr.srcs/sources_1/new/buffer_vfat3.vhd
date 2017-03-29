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

	signal counter_onehz1		: integer := 0;
	signal counter_onehz2		: integer := 0;
	signal counter_onehz0		: integer := 0;
	signal counter_onehz3		: integer := 0;			
									  
	signal counter_onehz4		: integer := 0;
		
	signal start_counter1		: std_logic;
	signal start_counter2		: std_logic;
	signal start_counter0		: std_logic;
	signal start_counter4		: std_logic;
	signal start_counter3		: std_logic;
	
	type led_type is (LIGHT, OFF);
	signal led0_state 			: led_type;
	signal led1_state 			: led_type;
	signal led2_state 			: led_type;
	signal led3_state 			: led_type;
	signal led4_state 			: led_type;
	
	signal data_out_int			: std_logic_vector(cmd_width - 1 downto 0);
	
	signal test					: std_logic := '0';
	
			
			
begin

		process(onehz, rst)
		begin
			if rising_edge(onehz) then
				if start_counter0 = '1' then
					counter_onehz0 <= counter_onehz0 + 1;
				else
					counter_onehz0 <= 0;
				end if;
				if start_counter1 = '1' then
					counter_onehz1 <= counter_onehz1 + 1;
				else
					counter_onehz1 <= 0;
				end if;
				if start_counter2 = '1' then
					counter_onehz2 <= counter_onehz2 + 1;
				else
					counter_onehz2 <= 0;
				end if;
				if start_counter3 = '1' then
					counter_onehz3 <= counter_onehz3 + 1;
				else
					counter_onehz3 <= 0;
				end if;
				if start_counter4 = '1' then
					counter_onehz4 <= counter_onehz4 + 1;
				else
					counter_onehz4 <= 0;
				end if;
			end if;
		end process;

		
		process(clk, rst) 
		begin
			if rising_edge(clk) then
				if buf = "00000010000010101000000000000101" then
					led0_state <= LIGHT;
				end if;
				if buf = "00000000000000000000000000000000" then
					led1_state <= LIGHT;
				end if;
				if data_in = "00000010000010101000000000000101" then
					led2_state <= LIGHT;
				end if;
				if data_in = "00000000000000000000000000000000" then
					led3_state <= LIGHT;
				end if;
				if BCd = "000001000000" then
					led4_state <= LIGHT;
				end if;
					
				case led1_state is
					when LIGHT =>
						start_counter1 <= '1';
						if counter_onehz1 < 3 then
							leds(1) <= '1';
						else
							led1_state <= OFF;
							start_counter1 <= '0';
						end if;
					when OFF =>
						leds(1) <= '0';
					when others =>
						led1_state <= OFF;
				end case;
				
				case led0_state is
					when LIGHT =>
						start_counter0 <= '1';
						if counter_onehz0 < 3 then
							leds(0) <= '1';
						else
							led0_state <= OFF;
							start_counter0 <= '0';
						end if;
					when OFF =>
						leds(0) <= '0';
					when others =>
						led0_state <= OFF;
				end case;
				
				case led2_state is
					when LIGHT =>
						start_counter2 <= '1';
						if counter_onehz2 < 3 then
							leds(2) <= '1';
						else
							led2_state <= OFF;
							start_counter2 <= '0';
						end if;
					when OFF =>
						leds(2) <= '0';
					when others =>
						led2_state <= OFF;
				end case;

				case led3_state is
					when LIGHT =>
						start_counter3 <= '1';
						if counter_onehz3 < 3 then
							leds(3) <= '1';
						else
							led3_state <= OFF;
							start_counter3 <= '0';
						end if;
					when OFF =>
						leds(3) <= '0';
					when others =>
						led3_state <= OFF;
				end case;

				case led4_state is
					when LIGHT =>
						start_counter4 <= '1';
						if counter_onehz4 < 3 then
							leds(4) <= '1';
						else
							led4_state <= OFF;
							start_counter4 <= '0';
						end if;
					when OFF =>
						leds(4) <= '0';
					when others =>
						led4_state <= OFF;
				end case;
			end if;
		end process;


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
					test <= '0';
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
						if fifo_valid = '0' then
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
