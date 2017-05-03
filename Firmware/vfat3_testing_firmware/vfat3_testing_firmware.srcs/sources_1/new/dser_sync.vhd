-- M. Dabrowski, 19/04/17
-- J. Rosa, reviewed and finalized, 02/05/17
-- Synchronization of the deserializer block
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
use work.ipbus.all;
use work.cst_pkg.all;

entity dser_sync is

	generic(
        fifo_w  : natural := FIFO_W;
		cmd_w	: natural := CMD_VFAT_W
	);
	port(
		rst 	: in std_logic;
		clk40 	: in std_logic;
		re_sync	: in std_logic;
		d_in	: in std_logic_vector(cmd_w - 1 downto 0);
		bslip	: out std_logic;
		in_sync	: out std_logic_vector(cmd_w - 1 downto 0)
	);
end dser_sync;

architecture rtl of dser_sync is
	
	type state_type is (INIT, CHECK, ADJUST, WAITING, VALIDATE, SYNC_IN);
	
	constant F1 : std_logic_vector(cmd_w - 1 downto 0) := X"00"; -- 7e for vfat3 filler, 00 only for loopback
	constant F2 : std_logic_vector(cmd_w - 1 downto 0) := X"ff"; -- 81 for vfat3 filler, ff only for loopback
	
	signal state_n, state_p : state_type;
	signal cnt_n, cnt_p: std_logic_vector(fifo_w - 1 downto 0);
	signal in_sync_n, in_sync_p : std_logic_vector(cmd_w - 1 downto 0 );
	signal d_valid : std_logic;
	
begin

	in_sync <= in_sync_p;
	d_valid <= '1' when (d_in = F1 or d_in = F2) else '0';
	
	fsm: process
	
	begin
		
		state_n <= state_p;
		cnt_n <= cnt_p;
		bslip <= '0';
		in_sync_n <= in_sync_p;
		
		case(state_p) is
			when INIT => 
				
				if (cnt_p >= X"02634a0") then
					state_n <= CHECK;
					cnt_n <= (others => '0');
				else
					cnt_n <= cnt_p + 1;
				end if;
			
			when CHECK =>
			
				if d_valid = '1' then
					state_n <= VALIDATE;
				else
					state_n <= ADJUST;
				end if;
			
			when VALIDATE => 
			
				if d_valid = '1' then
					if (cnt_p >= X"02634a0") then
						state_n <= SYNC_IN;
						cnt_n <= (others => '0');
					else
						cnt_n <= cnt_p + 1;
					end if;
				else
					state_n <= CHECK;
				end if;
			when ADJUST =>
				
				bslip <= '1';
				state_n <= WAITING;
			
			when WAITING =>
			
				state_n <= CHECK;
			
			when SYNC_IN =>
			
				if re_sync = '1' then
					state_n <= INIT;
					cnt_n <= (others => '0');
				else
						in_sync_n <= d_in;
				end if;
		end case;
	end process;
	
	sequential: process(clk40,rst)
	
	begin
		
		if rising_edge(clk40) then
			if rst = '1' then
				state_p <= INIT;
				cnt_p <= (others => '0');
				in_sync_p <= (others => '0');
			else
				state_p <= state_n;
				cnt_p <= cnt_n;
				in_sync_p <= in_sync_n;
			end if;
		end if;
		
	end process;
end rtl;