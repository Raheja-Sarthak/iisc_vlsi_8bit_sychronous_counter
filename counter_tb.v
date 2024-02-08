`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2024 17:21:49
// Design Name: 
// Module Name: counter_tb
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


module counter_tb();

    wire [7:0] count;
    reg clk, en, rst;
    reg [7:0] load;

counter dut(
    .clk(clk), 
    .rst(rst),
    .en(en),
    .load(load),
    .count(count)
    );
    
    always #5 clk = ~clk;
    
    initial begin
    
        clk = 1'b0;
        rst = 1'b1; 
        en = 1'b0;
        
        #10 rst = 0;
        #20 en = 1; load = 7;
        #10 en = 0;
        #100 rst = 1; en = 0;
        #20 rst = 1'b0;   
    
    end
    
endmodule
