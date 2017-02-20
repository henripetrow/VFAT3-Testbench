-- FIFO memory for tx ipbus data (soft -> firm)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.ipbus.all;

entity fifo_in is
	generic(
		BC_width		: natural := 12;
		data_width		: natural := 4;
		fifo_depth      : natural := 256
	);
	port(
		clk				: in std_logic;
		reset			: in std_logic;
		ipbus_in		: in ipb_wbus;
		data_out		: out std_logic_vector(data_width - 1 downto 0);
		ipbus_out		: out ipb_rbus; -- only for acks
		full_flag		: out std_logic;
		empty_flag		: out std_logic;
		clk40			: in std_logic --from control block
	);
	
end fifo_in;

architecture rtl of fifo_in is

signal ack 			: std_logic;
signal BC_counter 	: std_logic_vector(BC_width - 1 downto 0);

begin

	process(clk,reset)
		type fifo_memory is array (0 to fifo_depth - 1) of std_logic_vector((2 * (BC_width + data_width)) - 1 downto 0);
		
		variable memory 			: fifo_memory;
		variable top 				: natural range 0 to fifo_depth - 1;
		variable bottom 			: natural range 0 to fifo_depth - 1;
		variable max_reached 		: boolean;
		variable data1_to_be_read 	: natural range 0 to 1 := 1;
		
	begin
	   
		if rising_edge(clk) then
	    	if reset = '1' then
	        	empty_flag 			<= '1';
	        	full_flag 			<= '0';
	        	max_reached 		:= false;
	            top 				:= 0;
	            bottom 				:= 0;
	            data1_to_be_read 	:= 1; -- trick to correctly read data as they are 2 commands per packet
	            -- erase whole fifo normally ?
	        else
	           
	        	--write
	            if ipbus_in.ipb_strobe = '1' and ipbus_in.ipb_write = '1' then -- what is ipb_write ?
	            	ack <= '1'; -- ack is sent in any case !  
	            	if max_reached = false or top /= bottom then -- means output full_flag <= '0' 
	            		memory(top) := ipbus_in.ipb_wdata;
	                	if top = fifo_depth - 1 then
	                    	top 		:= 0;
	                    	max_reached := true;
	                    else
	                        top := top + 1;
	                   	end if;
	               	end if;
	           	end if;     
	           
	           	--read
	           	if max_reached or top /= bottom then -- means output empty_flag <= '0'
	           	    if memory(bottom)(data1_to_be_read * (BC_width + data_width) + ((BC_width + data_width) - 1) downto data1_to_be_read * (BC_width + data_width) + data_width) = BC_counter then
	           	    -- reads either BCd from data 1 [31 -> 20] or BCd from data 2 [15 -> 4]
	           	        data_out <= memory(bottom)(data1_to_be_read * (BC_width + data_width) + (data_width - 1) downto data1_to_be_read * (BC_width + data_width));
	           	        -- transmits either data 1 [19 -> 16] or data 2 [3 -> 0]
	           	        BC_counter <= (others => '0'); --reset BC_counter for next BCd ckecking
	           	        if bottom = fifo_depth - 1 and data1_to_be_read = 0 then 
	           	        --packet fully read and reached highest entry
	           	            bottom 		:= 0;
	           	            max_reached := false; -- reset the max_reached to avoid wrong full_flag
	           	        elsif bottom /= fifo_depth - 1 and data1_to_be_read = 0 then --packet fully read
	           	            bottom := bottom + 1;
	           	        else -- packet is not yet fully read (only first data has)
	           	        	bottom := bottom;
	           	    	end if;
	           	    	data1_to_be_read := abs(data1_to_be_read - 1); 
	           	    	-- equivalent to bool equation "data1_to_be_read <= not data1_to_be_read"
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
	           	    empty_flag 	<= '0';
	           	    full_flag 	<= '0';
	           	end if;
			end if;
			
			ack <= ipbus_in.ipb_strobe and not ack; -- acks the packet if strobe is 1 and ack was not yet
			
		end if;
	   
	end process;
	
	ipbus_out.ipb_ack <= ack;
	ipbus_out.ipb_err <= '0';
	
	process(clk40, reset) 
	
	begin
		if rising_edge(clk40) then
			if reset = '1' then
				BC_counter <= (others => '0');
			else
				BC_counter <= std_logic_vector(unsigned(BC_counter) + 1);
			end if;
		end if;
	end process;
end rtl;
