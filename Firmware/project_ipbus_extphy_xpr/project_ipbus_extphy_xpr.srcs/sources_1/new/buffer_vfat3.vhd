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
		rst 				: in std_logic;
		clk 				: in std_logic;
		BC					: in std_logic_vector(BC_width - 1 downto 0);
		BCd					: in std_logic_vector(BC_width - 1 downto 0);
		data_in 			: in std_logic_vector(data_width - 1 downto 0);
		fifo_empty 			: in std_logic;
		data_out 			: out std_logic_vector(cmd_width - 1 downto 0);
		trigger				: out std_logic;
		reset_BCd			: out std_logic
	);
end buffer_vfat3;

architecture rtl of buffer_vfat3 is
	
	signal buf : std_logic_vector(data_width - 1 downto 0);
	signal read_complete : std_logic;
	signal buffer_empty : std_logic;
	signal send_trigger : std_logic;
	
begin
	
	process(clk, rst)
	
	variable data1_to_be_read : natural range 0 to 1 := 1;
		
	begin
		if rising_edge(clk) then
			if rst = '1' then
				data_out <= (others => '0');
				buf <= (others => '0');
				read_complete <= '1';
				data1_to_be_read := 1;
				buffer_empty <= '1';
				send_trigger <= '0';
				trigger <= '0';
			else
				--internal state machine 
				if read_complete = '1' then
					buffer_empty <= '1';
					if fifo_empty = '0' then
						send_trigger <= '1';
					else
						send_trigger <= '0';
					end if;
				else
					buffer_empty <= '0';
					send_trigger <= '0';
				end if;
				
				--flags
				if send_trigger = '1' then
					trigger <= '1';
				else
					trigger <= '0';
				end if;
				
				--operation
				if send_trigger <= '1' then
					buf <= data_in;
					buffer_empty <= '0';
					send_trigger <= '0';
				else
					if buffer_empty <= '0' then
						if buf(data1_to_be_read * (BC_width + cmd_width) + ((BC_width + cmd_width) - 1) downto data1_to_be_read * (BC_width + cmd_width) + cmd_width) = BC then
							-- reads either BCd from data 1 [31 -> 20] or BCd from data 2 [15 -> 4]
						    data_out <= buf(data1_to_be_read * (BC_width + cmd_width) + (cmd_width - 1) downto data1_to_be_read * (BC_width + cmd_width));
						    -- transmits either data 1 [19 -> 16] or data 2 [3 -> 0]
						    reset_BCd <= '1';
						    
						    if data1_to_be_read = 0 then
						    	read_complete <= '1';
						    else
						    	read_complete <= '0';
						    end if;						    
						    data1_to_be_read := abs(data1_to_be_read - 1); --equivalent in boolean to "A = not A"
						end if;
					end if;
				end if; --if operation
					
			end if; --if rst
		end if; --if rising edge
	end process;
end rtl;
