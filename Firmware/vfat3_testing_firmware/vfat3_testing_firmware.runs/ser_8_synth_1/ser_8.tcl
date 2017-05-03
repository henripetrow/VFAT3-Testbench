# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -ruleid {2}  -id {Project 1-200}  -new_severity {CRITICAL WARNING} 
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7k325tffg900-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Jason/Dropbox/ULB/MA2/Memoire/JRFirmware/JRFirmware/firmware_v2016.2/firmware_v2016.2.cache/wt [current_project]
set_property parent.project_path C:/Users/Jason/Dropbox/ULB/MA2/Memoire/JRFirmware/JRFirmware/firmware_v2016.2/firmware_v2016.2.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib work [current_project]
set_property target_language VHDL [current_project]
set_property board_part xilinx.com:kc705:part0:1.3 [current_project]
set_property ip_cache_permissions disable [current_project]
read_ip -quiet C:/Users/Jason/Dropbox/ULB/MA2/Memoire/JRFirmware/JRFirmware/firmware_v2016.2/firmware_v2016.2.srcs/sources_1/ip/ser_8/ser_8.xci
set_property is_locked true [get_files C:/Users/Jason/Dropbox/ULB/MA2/Memoire/JRFirmware/JRFirmware/firmware_v2016.2/firmware_v2016.2.srcs/sources_1/ip/ser_8/ser_8.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top ser_8 -part xc7k325tffg900-2 -mode out_of_context

rename_ref -prefix_all ser_8_

write_checkpoint -force -noxdef ser_8.dcp

catch { report_utilization -file ser_8_utilization_synth.rpt -pb ser_8_utilization_synth.pb }

if { [catch {
  file copy -force C:/Users/Jason/Dropbox/ULB/MA2/Memoire/JRFirmware/JRFirmware/firmware_v2016.2/firmware_v2016.2.runs/ser_8_synth_1/ser_8.dcp C:/Users/Jason/Dropbox/ULB/MA2/Memoire/JRFirmware/JRFirmware/firmware_v2016.2/firmware_v2016.2.srcs/sources_1/ip/ser_8/ser_8.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub C:/Users/Jason/Dropbox/ULB/MA2/Memoire/JRFirmware/JRFirmware/firmware_v2016.2/firmware_v2016.2.srcs/sources_1/ip/ser_8/ser_8_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub C:/Users/Jason/Dropbox/ULB/MA2/Memoire/JRFirmware/JRFirmware/firmware_v2016.2/firmware_v2016.2.srcs/sources_1/ip/ser_8/ser_8_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim C:/Users/Jason/Dropbox/ULB/MA2/Memoire/JRFirmware/JRFirmware/firmware_v2016.2/firmware_v2016.2.srcs/sources_1/ip/ser_8/ser_8_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim C:/Users/Jason/Dropbox/ULB/MA2/Memoire/JRFirmware/JRFirmware/firmware_v2016.2/firmware_v2016.2.srcs/sources_1/ip/ser_8/ser_8_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if {[file isdir C:/Users/Jason/Dropbox/ULB/MA2/Memoire/JRFirmware/JRFirmware/firmware_v2016.2/firmware_v2016.2.ip_user_files/ip/ser_8]} {
  catch { 
    file copy -force C:/Users/Jason/Dropbox/ULB/MA2/Memoire/JRFirmware/JRFirmware/firmware_v2016.2/firmware_v2016.2.srcs/sources_1/ip/ser_8/ser_8_stub.v C:/Users/Jason/Dropbox/ULB/MA2/Memoire/JRFirmware/JRFirmware/firmware_v2016.2/firmware_v2016.2.ip_user_files/ip/ser_8
  }
}

if {[file isdir C:/Users/Jason/Dropbox/ULB/MA2/Memoire/JRFirmware/JRFirmware/firmware_v2016.2/firmware_v2016.2.ip_user_files/ip/ser_8]} {
  catch { 
    file copy -force C:/Users/Jason/Dropbox/ULB/MA2/Memoire/JRFirmware/JRFirmware/firmware_v2016.2/firmware_v2016.2.srcs/sources_1/ip/ser_8/ser_8_stub.vhdl C:/Users/Jason/Dropbox/ULB/MA2/Memoire/JRFirmware/JRFirmware/firmware_v2016.2/firmware_v2016.2.ip_user_files/ip/ser_8
  }
}
