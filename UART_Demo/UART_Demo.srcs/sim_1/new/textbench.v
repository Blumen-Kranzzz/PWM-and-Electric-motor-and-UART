`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/08/01 00:54:55
// Design Name: 
// Module Name: textbench
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


module textbench( );
    reg i_clk=0;
    reg i_rst=1;
    reg i_rx=0;
    wire o_tx;
    UART_Demo text(
        .i_clk(i_clk),
        .i_rst(i_rst),
        .i_rx(i_rx),
        .o_tx(o_tx)
        );
        always #25000000 i_rx=~i_rx;
        always #10 i_clk=~i_clk;
endmodule
