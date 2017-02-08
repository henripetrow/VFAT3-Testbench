create_clock -period 16.000 -name eth/phy/transceiver_inst/gtwizard_inst/gtwizard_v2_5_gbe_gtx_i/gt0_gtwizard_v2_5_gbe_gtx_i/GT0_TXOUTCLK_OUT -waveform {0.000 8.000} [get_pins eth/phy/transceiver_inst/gtwizard_inst/gtwizard_v2_5_gbe_gtx_i/gt0_gtwizard_v2_5_gbe_gtx_i/gtxe2_i/TXOUTCLK]
create_clock -period 8.000 -name gt_clkp [get_ports gt_clkp]
set_property PACKAGE_PIN G7 [get_ports gt_clkn]
set_property PACKAGE_PIN G8 [get_ports gt_clkp]
set_property PACKAGE_PIN P19 [get_ports sfp_los]
set_property IOSTANDARD LVCMOS25 [get_ports sfp_los]
set_property PACKAGE_PIN AB8 [get_ports {leds[0]}]
set_property PACKAGE_PIN AA8 [get_ports {leds[1]}]
set_property PACKAGE_PIN AC9 [get_ports {leds[2]}]
set_property PACKAGE_PIN AB9 [get_ports {leds[3]}]
set_property IOSTANDARD LVCMOS15 [get_ports {leds[*]}]


set_property PACKAGE_PIN K2 [get_ports gt_txp]
