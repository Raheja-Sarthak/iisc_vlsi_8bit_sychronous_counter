`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2024 17:06:01
// Design Name: 
// Module Name: OneHz_gen
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


module OneHz_gen(
    input clk_100MHz,
    input reset,
    output clk_1Hz
    );
    
    reg [25:0] counter;
    reg clk_out = 0;
    
    always @(posedge clk_100MHz, posedge reset)
    begin
        if (reset)
            counter <= 26'b0;
         else if (counter == 49_999_999)
         begin
            counter <= 26'b0;
            clk_out = ~clk_out;
         end
         else
            counter <= counter + 1;
    end
    
    assign clk_1Hz = clk_out;
    
endmodule
