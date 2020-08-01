vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../UART_Demo.srcs/sources_1/ip/Driver_PWM_0/sim/Driver_PWM.v" \
"../../../../UART_Demo.srcs/sources_1/ip/Driver_PWM_0/sim/Driver_PWM_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

