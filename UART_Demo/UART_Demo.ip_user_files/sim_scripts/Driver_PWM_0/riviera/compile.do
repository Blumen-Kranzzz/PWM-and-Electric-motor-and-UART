vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../UART_Demo.srcs/sources_1/ip/Driver_PWM_0/sim/Driver_PWM.v" \
"../../../../UART_Demo.srcs/sources_1/ip/Driver_PWM_0/sim/Driver_PWM_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

