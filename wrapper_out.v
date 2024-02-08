`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2024 18:03:20
// Design Name: 
// Module Name: wrapper_out
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


module wrapper_out(
    input clk, 
    input rst,
    input en,
    input [7:0] load,
    output [7:0] count
    );
    
OneHz_gen clk_divider(
    .clk_100MHz(clk),
    .reset(rst),
    .clk_1Hz(clk_1Hz)
    );
    
counter dut2(
    .clk(clk_1Hz), 
    .rst(rst),
    .en(en),
    .load(load),
    .count(count)
    );
endmodule
