`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/06 06:34:36
// Design Name: 
// Module Name: rcount
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


module rcount(clk, out, reset);
input reset;
input clk;
output[3:0] out;

reg[3:0] out;
reg zto3;
initial out = 4'b1000;
always @(posedge clk) 
begin
    if (reset == 1)
        out = 4'b1000;
    else begin
     zto3 = out[0];
     out = (out >> 1);
     out[3] = zto3;
    end
 end
     
     
endmodule