proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {2}  -id {Project 1-200}  -new_severity {CRITICAL WARNING} 

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param xicom.use_bs_reader 1
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/Jason/Desktop/backup/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.cache/wt [current_project]
  set_property parent.project_path C:/Users/Jason/Desktop/backup/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.xpr [current_project]
  set_property ip_output_repo C:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet C:/Users/Jason/Desktop/backup/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.runs/synth_2/top.dcp
  read_edif c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Vivado/IPBUS/ipbus_extphy/ipcore_dir/tri_mode_eth_mac_v5_4.ngc
  read_edif c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Vivado/IPBUS/ipbus_extphy/ipcore_dir/mac_fifo_axi4.ngc
  add_files -quiet c:/Users/Jason/Desktop/backup/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp
  set_property netlist_only true [get_files c:/Users/Jason/Desktop/backup/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.dcp]
  add_files -quiet c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.dcp
  set_property netlist_only true [get_files c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.dcp]
  read_xdc -prop_thru_buffers -ref clk_wiz_0 -cells inst c:/Users/Jason/Desktop/backup/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/Jason/Desktop/backup/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
  read_xdc -ref clk_wiz_0 -cells inst c:/Users/Jason/Desktop/backup/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc
  set_property processing_order EARLY [get_files c:/Users/Jason/Desktop/backup/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
  read_xdc -ref fifo_generator_0 -cells U0 c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0/fifo_generator_0.xdc
  set_property processing_order EARLY [get_files c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0/fifo_generator_0.xdc]
  read_xdc C:/Users/Jason/AppData/Roaming/Xilinx/PlanAhead/kc705_extphy.xdc
  read_xdc -ref fifo_generator_0 -cells U0 c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0/fifo_generator_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/Jason/Dropbox/ULB/MA2/Memoire/Github/VFAT3-Testbench/Firmware/project_ipbus_extphy_xpr/project_ipbus_extphy_xpr.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0/fifo_generator_0_clocks.xdc]
  link_design -top top -part xc7k325tffg900-2
  write_hwdef -file top.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force top_opt.dcp
  report_drc -file top_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force top_placed.dcp
  report_io -file top_io_placed.rpt
  report_utilization -file top_utilization_placed.rpt -pb top_utilization_placed.pb
  report_control_sets -verbose -file top_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force top_routed.dcp
  report_drc -file top_drc_routed.rpt -pb top_drc_routed.pb -rpx top_drc_routed.rpx
  report_methodology -file top_methodology_drc_routed.rpt -rpx top_methodology_drc_routed.rpx
  report_timing_summary -warn_on_violation -max_paths 10 -file top_timing_summary_routed.rpt -rpx top_timing_summary_routed.rpx
  report_power -file top_power_routed.rpt -pb top_power_summary_routed.pb -rpx top_power_routed.rpx
  report_route_status -file top_route_status.rpt -pb top_route_status.pb
  report_clock_utilization -file top_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force top_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

