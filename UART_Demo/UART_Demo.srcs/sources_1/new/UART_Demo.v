`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/06/28 14:57:00
// Design Name: 
// Module Name: UART_Demo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module UART_Demo(
    input i_clk,
    input i_rst,
    input i_rx,

    output PWM,
    output reg[1:0]o_gpio_en=2'b11,
    output reg o_src_en=1'b0,
    output o_tx
    );


    
    reg [31:0]Freq=100000;
    reg [6:0]Duty=80;
    reg Rst=1;
    reg En=1;    
    
    Driver_PWM_0 Driver_PWM0(
        .clk_100MHz(i_clk),
        .Freq(Freq),
        .Duty(Duty),
        .Rst(Rst),
        .En(En),
        .PWM(PWM)
        );
        
    UART_Ctrl UART0(
        .i_clk(i_clk),
        .i_rst(i_rst),
        .i_baudrate(31'd9600),
        .i_rx(i_rx),
        .o_tx(o_tx),
        .o_rx_data(),
        .o_rx_rq()
    );
    
endmodule