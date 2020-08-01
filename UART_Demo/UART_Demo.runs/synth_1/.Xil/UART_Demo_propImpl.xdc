set_property SRC_FILE_INFO {cfile:C:/Users/Shinelon/Desktop/UART_Demo_1/UART_Demo/UART_Demo.srcs/constrs_1/new/system.xdc rfile:../../../UART_Demo.srcs/constrs_1/new/system.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H4  IOSTANDARD LVCMOS33 } [get_ports { i_clk }]; #IO_L13P_T2_MRCC_35 Sch=sysclk
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A12 IOSTANDARD LVCMOS33} [get_ports i_rx];
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVCMOS33} [get_ports PWM];
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVCMOS33} [get_ports o_tx];
set_property src_info {type:XDC file:1 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN D14 IOSTANDARD LVCMOS33} [get_ports i_rst];
set_property src_info {type:XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN M3 IOSTANDARD LVCMOS33} [get_ports {o_gpio_en[0]}];
set_property src_info {type:XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN N4 IOSTANDARD LVCMOS33} [get_ports {o_gpio_en[1]}];
set_property src_info {type:XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN L13 IOSTANDARD LVCMOS33} [get_ports o_src_en];
