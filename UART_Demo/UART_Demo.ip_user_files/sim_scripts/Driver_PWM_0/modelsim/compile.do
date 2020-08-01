vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../UART_Demo.srcs/sources_1/ip/Driver_PWM_0/sim/Driver_PWM.v" \
"../../../../UART_Demo.srcs/sources_1/ip/Driver_PWM_0/sim/Driver_PWM_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

