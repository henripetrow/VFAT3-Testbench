-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
-- Date        : Wed Apr 12 17:49:54 2017
-- Host        : Shinsekai running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/selectio_wiz_serdes/selectio_wiz_serdes_stub.vhdl
-- Design      : selectio_wiz_serdes
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k325tffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity selectio_wiz_serdes is
  Port ( 
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out_from_device : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out_to_pins_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out_to_pins_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    bitslip : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_in : in STD_LOGIC;
    clk_div_in : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );

end selectio_wiz_serdes;

architecture stub of selectio_wiz_serdes is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_in_from_pins_p[0:0],data_in_from_pins_n[0:0],data_in_to_device[7:0],data_out_from_device[7:0],data_out_to_pins_p[0:0],data_out_to_pins_n[0:0],bitslip[0:0],clk_in,clk_div_in,io_reset";
begin
end;