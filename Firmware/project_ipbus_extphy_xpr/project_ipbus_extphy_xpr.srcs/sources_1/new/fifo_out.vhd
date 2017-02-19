-- FIFO memory for rx ipbus data (firm -> soft)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.ipbus.all;

entity fifo_out is
	generic(
		data_width		: natural := 32;
		fifo_depth      : natural := 256
	);
	port(
		clk				: in std_logic;
		reset			: in std_logic;
		--ipbus_in		: in ipb_wbus;
		data_in			: in std_logic_vector(data_width - 1 downto 0);
		ipbus_out		: out ipb_rbus;
		--d				: in std_logic_vector(2 ** stat_addr_width * 32 - 1 downto 0);
		--q				: out std_logic_vector(2 ** ctrl_addr_width * 32 - 1 downto 0);
		full_flag		: out std_logic;
		empty_flag		: out std_logic;
		write_en		: in std_logic;
		read_en			: in std_logic
	);
	
end fifo_out;

architecture rtl of fifo_out is

begin

	process(clk,reset)
		type fifo_memory is array (0 to fifo_depth - 1) of std_logic_vector(data_width - 1 downto 0);
		variable memory : fifo_memory;
		variable top : natural range 0 to fifo_depth - 1;
		variable bottom : natural range 0 to fifo_depth - 1;
		variable max_reached : boolean;
	begin
	   
		if rising_edge(clk) then
	    	if reset = '1' then
	        	empty_flag <= '1';
	        	full_flag <= '0';
	        	max_reached := false;
	            top := 0;
	            bottom := 0;
	        else
	           
	        	--write
	            if write_en = '1' then -- ??
	            	if max_reached = false or top /= bottom then -- means output full_flag <= '0' 
	                	memory(top) := data_in;
	                	if top = fifo_depth - 1 then
	                    	top := 0;
	                    	max_reached := true;
	                    else
	                        top := top + 1;
	                   	end if;
	               	end if;
	           	end if;     
	           
	           	--read
	           	if read_en = '1' then -- from control block?
	           	    if max_reached or top /= bottom then -- means output empty_flag <= '0'
	           	        ipbus_out.ipb_rdata <= memory(bottom);
	           	        if bottom = fifo_depth -1 then
	           	            bottom := 0;
	           	            max_reached := false; -- reset the max_reached to avoid wrong full_flag
	           	        else
	           	            bottom := bottom + 1;
	           	    		end if;
	           	    end if;
	           	end if;
	           	--flags
	           	if top = bottom then
	           	    if max_reached then
	           	        full_flag <= '1';
	           	    else
	           	        empty_flag <= '1';
	           	    end if;
	           	else
	           	    empty_flag <= '0';
	           	    full_flag <= '0';
	           	end if;
			end if;
		end if;
	   
	end process;
	
end rtl;
