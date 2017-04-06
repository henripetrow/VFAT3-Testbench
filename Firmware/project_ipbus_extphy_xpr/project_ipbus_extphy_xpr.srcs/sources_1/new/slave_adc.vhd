----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2017 10:43:01
-- Design Name: 
-- Module Name: slave_adc - Behavioral
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

entity slave_adc is
	generic(
		data_width 	: natural := 32;
		BC_width	: natural := 12;
		cmd_width	: natural := 4;
		cmd_8w		: natural := 8
		);
	port(
		clk			: in STD_LOGIC;
		reset		: in STD_LOGIC;
		clk40		: in STD_LOGIC;
		rst40 		: in STD_LOGIC;
		clk320 		: in STD_LOGIC;
		rst320 		: in STD_LOGIC;
		onehz		: in STD_LOGIC;
		ipbus_in	: in ipb_wbus;
		ipbus_out	: out ipb_rbus;
		leds		: out STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
	
end slave_adc;

architecture Behavioral of slave_adc is

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
	signal fifo_out_underflow	: std_logic;
	signal fifo_in_underflow	: std_logic;
	signal fifo_in_ack			: std_logic;
	signal reset_fifo			: std_logic;
	
	signal counter_rst			: integer := 0;
	-------------------------------------------
	-- for status blinking LEDs
	signal counter_onehz0		: integer := 0;
	signal counter_onehz1		: integer := 0;
	signal counter_onehz2		: integer := 0;
	signal counter_onehz3		: integer := 0;
	signal counter_onehz4		: integer := 0;
			
	signal start_counter0		: std_logic;
	signal start_counter1		: std_logic;
	signal start_counter2		: std_logic;
	signal start_counter3		: std_logic;
	signal start_counter4		: std_logic;
	
	type led_type is (LIGHT, OFF);
	signal led0_state 			: led_type;
	signal led1_state 			: led_type;
	signal led2_state 			: led_type;
	signal led3_state			: led_type;
	signal led4_state			: led_type;
	--
	-------------------------------------------	
		
	signal command				: std_logic_vector(cmd_width - 1 downto 0);
	signal no_data				: std_logic;
	
	signal data_filt			: std_logic_vector(cmd_8w - 1 downto 0);
	signal w_en_next			: std_logic;
	signal data_bus_out			: std_logic_vector(cmd_8w - 1 downto 0);
	signal data_bus_in			: std_logic_vector(cmd_8w - 1 downto 0);
	signal data_buf_received	: std_logic;
	signal firmware_status		: std_logic_vector(3 downto 0);
	
	component fifo_generator_0 is
		PORT (
	    	wr_clk     		: IN  std_logic := '0';
	     	rd_clk      	: IN  std_logic := '0';
	        wr_ack			: OUT std_logic;
	        almost_full  	: OUT std_logic;
	        almost_empty	: OUT std_logic;
	        underflow		: OUT std_logic;
	        rst          	: IN  std_logic := '0';
	        wr_en        	: IN  std_logic := '0';
	        rd_en        	: IN  std_logic := '0';
	        din          	: IN  std_logic_vector(32-1 DOWNTO 0) := (OTHERS => '0');
	        dout         	: OUT std_logic_vector(32-1 DOWNTO 0);
	        full         	: OUT std_logic;
	        empty        	: OUT std_logic;
	        valid			: OUT std_logic
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
			fifo_underflow	=> fifo_out_underflow,
			fifo_out_empty  => fifo_out_empty,
			leds			=> leds,
			firmware_status => firmware_status
		);
		
	fifo_in: fifo_generator_0
		port map(
			rst 			=> reset_fifo,
		    wr_clk 			=> clk,
		    rd_clk 			=> clk40,
		    din				=> fifo_in_data_in,
		    wr_en 			=> fifo_in_w_en,
		    rd_en 			=> fifo_in_r_en,
		    dout 			=> fifo_in_data_out,
		    full 			=> fifo_in_full,
		    valid			=> fifo_in_valid,
		    almost_full 	=> fifo_in_a_full,
		    wr_ack 			=> fifo_in_ack,
		    empty 			=> fifo_in_empty,
		    almost_empty	=> fifo_in_a_empty,
		    underflow 		=> fifo_in_underflow
		);
		
		-------------------------------------------------
		-- process for blinking status LEDS
		process(onehz, reset)
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
		--
		-----------------------------------------
		
		
		process(clk, reset) 
		begin
			if rising_edge(clk) then
				if counter_rst < 10 then -- need to maintain reset on FIFO a few clk cycles first
					reset_fifo <= '1';
					counter_rst <= counter_rst + 1;
				else
					reset_fifo <= reset;
					------------------------------------
					-- status blinking LEDS
					if fifo_in_empty = '1' then
						led4_state <= LIGHT;
					end if;
					if fifo_in_full = '1' then
						led3_state <= LIGHT;
					end if;
					if fifo_out_w_en = '1' then
						led2_state <= LIGHT;
					end if;
					if no_data = '1' then
						led1_state <= LIGHT;
					end if;
					if data_buf_received = '1' then
						led0_state <= LIGHT;
					end if;
					
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
				--
				-----------------------------------------
				end if;
			end if;
		end process;
		
	fifo_out: fifo_generator_0
		port map(
			rst 			=> reset_fifo,
		    wr_clk 			=> clk40,
		    rd_clk 			=> clk,
		    din 			=> fifo_out_data_in,
		    wr_en 			=> fifo_out_w_en,
		    rd_en 			=> fifo_out_r_en,
		    dout 			=> fifo_out_data_out,
		    full 			=> fifo_out_full,
		    almost_full 	=> fifo_out_a_full,
		    wr_ack			=> fifo_out_w_ack,
		    empty 			=> fifo_out_empty,
		    valid			=> fifo_out_valid,
		    almost_empty 	=> fifo_out_a_empty,
		    underflow 		=> fifo_out_underflow
		);
		
		
	buffer_in: entity work.buffer_vfat3
		port map(
			rst 			=> rst40,
			clk 			=> clk40,
			onehz			=> onehz,
			data_in 		=> fifo_in_data_out,
			data_out 		=> command,
			read_fifo_en	=> fifo_in_r_en,
			leds			=> leds,
			fifo_valid		=> fifo_in_valid,
			ack				=> data_buf_received,
			fifo_empty		=> fifo_in_empty,
			no_data			=> no_data
		);
		
		data_buf_received <= fifo_out_w_ack;
		fifo_out_data_in <= data_filt & data_filt & data_filt & data_filt;
		w_en_next <= '1';

	lut: entity work.LUT
		port map(
			clk => clk40,
			rst => rst40,
			data_in => command,
			data_out => data_bus_out,
			w_en => w_en_next,
			no_data => no_data
		);
	filter: entity work.filter
		port map(
			clk => clk40,
			rst => rst40,
			data_in => data_bus_out,
			data_out => data_filt,
			w_en => fifo_out_w_en
		);
end Behavioral;

