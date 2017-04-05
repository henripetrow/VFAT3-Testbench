# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {2}  -id {Project 1-200}  -new_severity {CRITICAL WARNING} 
create_project -in_memory -part xc7k325tffg900-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.cache/wt [current_project]
set_property parent.project_path C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib work [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files -quiet c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/selectio_wiz_ser/selectio_wiz_ser.dcp
set_property used_in_implementation false [get_files c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/selectio_wiz_ser/selectio_wiz_ser.dcp]
add_files -quiet c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/selectio_wiz_des/selectio_wiz_des.dcp
set_property used_in_implementation false [get_files c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/selectio_wiz_des/selectio_wiz_des.dcp]
add_files -quiet c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.dcp
set_property used_in_implementation false [get_files c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.dcp]
read_vhdl -library work {
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/ipbus_trans_decl.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/ipbus_package.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_tx_mux.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_txtransactor_if_simple.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_status_buffer.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_rxtransactor_if_simple.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_rxram_shim.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_rxram_mux.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_rarp_block.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_packet_parser.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_ipaddr_block.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_dualportram_tx.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_dualportram_rx.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_dualportram.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_do_rx_reset.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_clock_crossing_if.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_byte_sum.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_build_status.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_build_resend.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_build_ping.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_build_payload.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_build_arp.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_buffer_selector.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/transactor_sm.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/transactor_if.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/transactor_cfg.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/example_designs/hdl/ipbus_addr_decode.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/example_designs/hdl/clock_div.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/slaves/hdl/ipbus_reg.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/slaves/hdl/ipbus_ram.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/slaves/hdl/ipbus_pkt_ctr.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/imports/hdl/ipbus_peephole_ram.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/slaves/hdl/ipbus_ctrlreg.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/udp_if_flat.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/trans_arb.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/transactor.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/stretcher.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/ipbus_fabric.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipbus_core/hdl/ipbus_ctrl.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/example_designs/hdl/slaves.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/example_designs/hdl/clocks_7s_extphy.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ethernet/hdl/eth_7s_gmii.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/example_designs/hdl/demo_kc705_extphy/top_kc705_extphy.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/new/slave_vfat3.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/new/buffer_vfat3.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/new/control.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/new/LUT.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/new/filling.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipcore_dir/emac_hostbus_decl.vhd
  C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/new/filter.vhd
}
read_ip -quiet C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]
set_property is_locked true [get_files C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci]

read_ip -quiet C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ethernet/coregen/tri_mode_eth_mac_v5_4.xco
set_property is_locked true [get_files C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ethernet/coregen/tri_mode_eth_mac_v5_4.xco]

read_ip -quiet C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ethernet/coregen/mac_fifo_axi4.xco
set_property is_locked true [get_files C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ethernet/coregen/mac_fifo_axi4.xco]

read_edif C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipcore_dir/mac_fifo_axi4.ngc
read_edif C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/ipcore_dir/tri_mode_eth_mac_v5_4.ngc
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/example_designs/ucf/kc705_extphy.xdc
set_property used_in_implementation false [get_files C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/ipbus/firmware/example_designs/ucf/kc705_extphy.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top top -part xc7k325tffg900-2


write_checkpoint -force -noxdef top.dcp

catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }
