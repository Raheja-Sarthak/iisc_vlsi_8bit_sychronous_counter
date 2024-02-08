`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2024 17:11:22
// Design Name: 
// Module Name: counter
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


module counter(
    input clk, 
    input rst,
    input en,
    input [7:0] load,
    output reg [7:0] count
    );
    
    always @(posedge clk)
    begin
    
        if(rst)
            count <= 0;
        else if (en)
            count <= load;
        else
            count <= count + 1;      
    
    end
endmodule
