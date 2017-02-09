# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7k325tffg900-2
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/VivadoProject/project_test/project_test.cache/wt [current_project]
set_property parent.project_path C:/VivadoProject/project_test/project_test.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
add_files -quiet C:/VivadoProject/project_test/project_test.runs/gig_eth_pcs_pma_basex_v15_1_synth_1/gig_eth_pcs_pma_basex_v15_1.dcp
set_property used_in_implementation false [get_files C:/VivadoProject/project_test/project_test.runs/gig_eth_pcs_pma_basex_v15_1_synth_1/gig_eth_pcs_pma_basex_v15_1.dcp]
add_files -quiet C:/VivadoProject/project_test/project_test.runs/temac_gbe_v9_0_synth_1/temac_gbe_v9_0.dcp
set_property used_in_implementation false [get_files C:/VivadoProject/project_test/project_test.runs/temac_gbe_v9_0_synth_1/temac_gbe_v9_0.dcp]
read_vhdl -library xil_defaultlib {
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/ipbus_trans_decl.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/ipbus_package.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_tx_mux.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_txtransactor_if_simple.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_status_buffer.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_rxtransactor_if_simple.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_rxram_shim.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_rxram_mux.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_rarp_block.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_packet_parser.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_ipaddr_block.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_dualportram_tx.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_dualportram_rx.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_dualportram.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_do_rx_reset.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_clock_crossing_if.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_byte_sum.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_build_status.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_build_resend.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_build_ping.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_build_payload.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_build_arp.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_buffer_selector.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/transactor_sm.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/transactor_if.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/transactor_cfg.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/udp_if_flat.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/trans_arb.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/transactor.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/ipbus_reg_types.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/ipbus_clock_div.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/emac_hostbus_decl.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/led_stretcher.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/ipbus_reg_v.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/ipbus_ram.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/ipbus_peephole_ram.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/ipbus_fabric_sel.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/ipbus_decode_ipbus_example.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/ipbus_ctrlreg_v.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/ipbus_ctrl.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/eth_7s_1000basex.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/clocks_7s_serdes.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/kc705_basex_infra.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/ipbus_example.vhd
  C:/VivadoProject/project_test/project_test.srcs/sources_1/imports/hdl/top_kc705_basex.vhd
}
read_xdc -unmanaged C:/VivadoProject/project_test/project_test.srcs/constrs_1/imports/ucf/kc705_basex.tcl
set_property used_in_implementation false [get_files C:/VivadoProject/project_test/project_test.srcs/constrs_1/imports/ucf/kc705_basex.tcl]

read_xdc C:/VivadoProject/project_test/project_test.srcs/constrs_1/new/pinplan.xdc
set_property used_in_implementation false [get_files C:/VivadoProject/project_test/project_test.srcs/constrs_1/new/pinplan.xdc]

catch { write_hwdef -file top.hwdef }
synth_design -top top -part xc7k325tffg900-2 -flatten_hierarchy none
write_checkpoint top.dcp
catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }
