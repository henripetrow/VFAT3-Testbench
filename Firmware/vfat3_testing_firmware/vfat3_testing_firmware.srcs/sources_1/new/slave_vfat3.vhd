----------------------------------------------------------------------------------
-- Company: ULB - IIHE
-- Engineer: Jason Rosa
-- 
-- Create Date: 17.02.2017 15:57:50
-- Design Name: 
-- Module Name: slave_vfat3 - rtl
-- Project Name: VFAT3 TESTING FIRMWARE
-- Target Devices: Kintex-7 KC705 Evaluation Platform
-- Tool Versions: Vivado 2016.3
-- Description: VFAT3 testing firmware ipbus slave
-- 
-- Dependencies: 
-- 
-- Revision: FINAL
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
library work;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.ipbus.all;
use work.cst_pkg.all;

entity slave_vfat3 is
	generic(
		d_w 	: natural := D_I_W;
		fifo_w  : natural := FIFO_W;
		BCd_w	: natural := BCD_I_W;
		cmd_i_w	: natural := CMD_SW_W;
		cmd_o_w	: natural := CMD_VFAT_W
		);
	port(
		clk			: in STD_LOGIC;
		reset		: in STD_LOGIC;
		clk40		: in STD_LOGIC;
		rst40 		: in STD_LOGIC;
		clk320 		: in STD_LOGIC;
		rst320 		: in STD_LOGIC;
		ipbus_in	: in ipb_wbus;
		ipbus_out	: out ipb_rbus;
		tx    		: out STD_LOGIC;
		rx    		: in STD_LOGIC;
		sw_button	: in STD_LOGIC
	);
	
end slave_vfat3;

architecture rtl of slave_vfat3 is

	signal fifo_out_data_in		: std_logic_vector(fifo_w - 1 downto 0);
	signal fifo_in_data_out		: std_logic_vector(fifo_w - 1 downto 0);
	signal fifo_out_data_out	: std_logic_vector(fifo_w - 1 downto 0);
	signal fifo_in_data_in		: std_logic_vector(fifo_w - 1 downto 0);
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
	signal fifo_out_w_ack		: std_logic;
	signal fifo_out_underflow	: std_logic;
	signal fifo_in_underflow	: std_logic;
	signal fifo_in_ack			: std_logic;
	signal reset_fifo			: std_logic;
	
	signal counter_rst			: integer := 0;
			
	signal command				: std_logic_vector(cmd_i_w - 1 downto 0);
	signal no_data				: std_logic;
	
	signal data_bus_out			: std_logic_vector(cmd_o_w - 1 downto 0);
	signal data_bus_in			: std_logic_vector(cmd_o_w - 1 downto 0);
	signal data_buf_received	: std_logic;
	
	signal firmware_status		: std_logic_vector(3 downto 0);
	
	signal bitslip				: std_logic;
	signal ser_d_in             : std_logic_vector(7 downto 0);
	signal d_sync				: std_logic_vector(7 downto 0);
	
	component fifo_generator_0 is
		PORT (
	    	wr_clk     		: IN  std_logic := '0';
	     	rd_clk      	: IN  std_logic := '0';
	        wr_ack			: OUT std_logic;
	        underflow		: OUT std_logic;
	        rst          	: IN  std_logic := '0';
	        wr_en        	: IN  std_logic := '0';
	        rd_en        	: IN  std_logic := '0';
	        din          	: IN  std_logic_vector(fifo_w - 1 DOWNTO 0) := (OTHERS => '0');
	        dout         	: OUT std_logic_vector(fifo_w - 1 DOWNTO 0);
	        full         	: OUT std_logic;
	        empty        	: OUT std_logic;
	        valid			: OUT std_logic
		);
	  end component;
	  
	  component fifo_rx is
	  		PORT (
	  	    	wr_clk     		: IN  std_logic := '0';
	  	     	rd_clk      	: IN  std_logic := '0';
	  	        wr_ack			: OUT std_logic;
	  	        underflow		: OUT std_logic;
	  	        rst          	: IN  std_logic := '0';
	  	        wr_en        	: IN  std_logic := '0';
	  	        rd_en        	: IN  std_logic := '0';
	  	        din          	: IN  std_logic_vector(fifo_w - 1 DOWNTO 0) := (OTHERS => '0');
	  	        dout         	: OUT std_logic_vector(fifo_w - 1 DOWNTO 0);
	  	        full         	: OUT std_logic;
	  	        empty        	: OUT std_logic;
	  	        valid			: OUT std_logic
	  		);
	  	  end component;
	  
	  component rx_fifo_int is
	  		port(
	  			clk 	: IN std_logic;
	  			rst 	: IN std_logic;
	  			d_in 	: IN std_logic_vector(cmd_o_w - 1 downto 0);
	  			d_out 	: OUT std_logic_vector(fifo_w - 1 downto 0);
	  			dv 		: OUT std_logic
	  		);
	  end component;
	  
	  component dser_sync is
	  	port(
	  		clk40 	: IN std_logic;
	  		rst 	: IN std_logic;
	  		re_sync : IN std_logic;
	  		d_in 	: IN std_logic_vector(cmd_o_w - 1 downto 0);
	  		bslip 	: OUT std_logic;
	  		in_sync : OUT std_logic_vector(cmd_o_w - 1 downto 0)
	  	);
	  end component;
	  
	  component dser_8 is
          port(
              data_in_from_pins : IN std_logic;
              data_in_to_device : OUT std_logic_vector(cmd_o_w - 1 downto 0);
              bitslip 			: IN std_logic;
              clk_in 			: IN std_logic;
              clk_div_in 		: IN std_logic;
              io_reset 			: IN std_logic
          );
      end component;

	  component ser_8 is
	  	port(
	  		data_out_to_pins 		: OUT std_logic;
	  		data_out_from_device 	: IN std_logic_vector(cmd_o_w - 1 downto 0);
	  		clk_in 					: IN std_logic;
	  		clk_div_in 				: IN std_logic;
	  		io_reset 				: IN std_logic
	  	);
	  end component;
	  
	  component fifo_tx is 
	       port(
          clk 			: IN std_logic;
          rst 			: IN std_logic;
          fifo_d 		: IN std_logic_vector(d_w - 1 DOWNTO 0);
          fifo_dv 		: IN std_logic;
          fifo_empty 	: IN std_logic;
          rd_en 		: OUT std_logic;
          d_out 		: OUT std_logic_vector(7 DOWNTO 0)
      );
      end component;
	  
	  component ila_0 is -- debugging purpose
	  	port(
	  		clk 	: IN std_logic;
	  		probe0 	: IN std_logic;
	  		probe1 	: IN std_logic;
	  		probe2 	: IN std_logic;
	  		probe3 	: IN std_logic;
	  		probe4 	: IN std_logic;
	  		probe5 	: IN std_logic;
	  		probe6 	: IN std_logic_vector(fifo_w - 1 downto 0);
	  		probe7 	: IN std_logic_vector(fifo_w - 1 downto 0);
	  		probe8 	: IN std_logic_vector(fifo_w - 1 downto 0);
	  		probe9 	: IN std_logic_vector(fifo_w - 1 downto 0);
	  		probe10 : IN std_logic;
	  		probe11 : IN std_logic;
	  		probe12 : IN std_logic;
	  		probe13 : IN std_logic;
	  		probe14 : IN std_logic_vector(cmd_o_w - 1 DOWNTO 0);
	  		probe15 : IN std_logic;
	  		probe16 : IN std_logic;
	  		probe17 : IN std_logic;
	  		probe18 : IN std_logic_vector(cmd_o_w - 1 DOWNTO 0);
	  		probe19 : IN std_logic_vector(cmd_o_w - 1 DOWNTO 0)
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
		firmware_status => firmware_status
	);
		
-- #### INPUT FIFO
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
	    wr_ack 			=> fifo_in_ack,
	    empty 			=> fifo_in_empty,
	    underflow 		=> fifo_in_underflow
	);
	
    ftx: fifo_tx
        port map(
            clk 		=> clk40, 
            rst 		=> rst40,
            fifo_d 		=> fifo_in_data_out(d_w - 1 downto 0),
            fifo_dv 	=> fifo_in_valid,
            fifo_empty 	=> fifo_in_empty,
            rd_en 		=> fifo_in_r_en,
            d_out 		=> ser_d_in
        );
        
    ser: ser_8
	port map(
		clk_in 					=> clk320,
		clk_div_in 				=> clk40,
		io_reset 				=> '0', -- ?
		data_out_to_pins 		=> tx,
		data_out_from_device 	=> ser_d_in
	);
    
-- #### OUTPUT FIFO	
	fifo_out: fifo_rx
		port map(
			rst 		=> reset_fifo,
		    wr_clk 		=> clk40,
		    rd_clk 		=> clk,
		    din 		=> fifo_out_data_in,
		    wr_en 		=> fifo_out_w_en,
		    rd_en 		=> fifo_out_r_en,
		    dout 		=> fifo_out_data_out,
		    full 		=> fifo_out_full,
		    wr_ack		=> fifo_out_w_ack,
		    empty 		=> fifo_out_empty,
		    valid		=> fifo_out_valid,
		    underflow 	=> fifo_out_underflow
		);
		
	filter: rx_fifo_int
		port map(
			clk 	=> clk40,
			rst 	=> rst40,
			d_in 	=> d_sync,
			d_out 	=> fifo_out_data_in,
			dv 		=> fifo_out_w_en
		);
		
	dsersync: dser_sync
		port map(
			clk40 	=> clk40,
			rst 	=> rst40,
			re_sync => sw_button, -- south gpio button to resync
			d_in 	=> data_bus_in,
			bslip 	=> bitslip,
			in_sync => d_sync			
		);

    des: dser_8
        port map(
            clk_in 				=> clk320,
            clk_div_in 			=> clk40,
            io_reset 			=> '0', -- ?
            bitslip 			=> bitslip,
            data_in_from_pins 	=> rx,
            data_in_to_device 	=> data_bus_in
        );

	chipscope: ila_0 -- virtual IO's to debug
		port map(
			clk 	=> clk40,
			probe0 	=> fifo_out_w_en,
			probe1 	=> fifo_in_w_en,
			probe2 	=> fifo_out_r_en,
			probe3 	=> fifo_in_r_en,
			probe4 	=> fifo_out_valid,
			probe5 	=> fifo_in_valid,
	
			probe6 	=> fifo_out_data_in,
			probe7 	=> fifo_out_data_out,
			probe8 	=> fifo_in_data_in,
			probe9 	=> fifo_in_data_out,
			
			probe10 => fifo_out_empty,
			probe11 => fifo_in_empty,
			probe12 => fifo_out_full,
			probe13 => fifo_in_full,
			
			probe14 => ser_d_in,
			
			probe15 => reset,
			probe16 => rst40,
			probe17 => reset_fifo,
			
			probe18 => data_bus_in,
			probe19 => d_sync
		);
	
    process(clk, reset) 
    begin
        if rising_edge(clk) then
            if counter_rst < 16 then -- need to maintain reset on FIFO a few clk cycles first
                reset_fifo <= '1';
                counter_rst <= counter_rst + 1;
            else
                reset_fifo <= reset;
            end if;
        end if;
    end process;
end rtl;