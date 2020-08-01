# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7s15ftgb196-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/Shinelon/Desktop/UART_Demo_1/UART_Demo/UART_Demo.cache/wt [current_project]
set_property parent.project_path C:/Users/Shinelon/Desktop/UART_Demo_1/UART_Demo/UART_Demo.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths c:/Users/Shinelon/Desktop/SEA-master/Examples/FPGA-IP/PWM-IP/IP [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/Shinelon/Desktop/UART_Demo_1/UART_Demo/UART_Demo.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/Shinelon/Desktop/UART_Demo_1/UART_Demo/UART_Demo.srcs/sources_1/new/Driver_UART.v
  C:/Users/Shinelon/Desktop/UART_Demo_1/UART_Demo/UART_Demo.srcs/sources_1/new/UART_Ctrl.v
  C:/Users/Shinelon/Desktop/UART_Demo_1/UART_Demo/UART_Demo.srcs/sources_1/new/clk_division.v
  C:/Users/Shinelon/Desktop/UART_Demo_1/UART_Demo/UART_Demo.srcs/sources_1/new/UART_Demo.v
}
read_ip -quiet c:/Users/Shinelon/Desktop/UART_Demo_1/UART_Demo/UART_Demo.srcs/sources_1/ip/Driver_PWM_0/Driver_PWM_0.xci

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Shinelon/Desktop/UART_Demo_1/UART_Demo/UART_Demo.srcs/constrs_1/new/system.xdc
set_property used_in_implementation false [get_files C:/Users/Shinelon/Desktop/UART_Demo_1/UART_Demo/UART_Demo.srcs/constrs_1/new/system.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top UART_Demo -part xc7s15ftgb196-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef UART_Demo.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file UART_Demo_utilization_synth.rpt -pb UART_Demo_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
