`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/09 06:34:04
// Design Name: 
// Module Name: mux41
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


module mux41(
input a,b,c,d,
s1,s0,
output o
    );

     assign o = (~s1 & ~s0) &a | (~s1 & s0)&b | (s1 &~s0) & c | (s1 &s0) & d;
endmodule
