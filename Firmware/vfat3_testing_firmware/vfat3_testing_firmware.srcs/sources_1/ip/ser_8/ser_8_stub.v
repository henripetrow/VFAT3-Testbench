// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Fri May 05 15:17:17 2017
// Host        : Shinsekai running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top ser_8 -prefix
//               ser_8_ ser_8_stub.v
// Design      : ser_8
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ser_8(data_out_from_device, data_out_to_pins, 
  clk_in, clk_div_in, io_reset)
/* synthesis syn_black_box black_box_pad_pin="data_out_from_device[7:0],data_out_to_pins[0:0],clk_in,clk_div_in,io_reset" */;
  input [7:0]data_out_from_device;
  output [0:0]data_out_to_pins;
  input clk_in;
  input clk_div_in;
  input io_reset;
endmodule
