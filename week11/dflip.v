`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/23 06:42:05
// Design Name: 
// Module Name: dflip
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


module dflip(
input clk,d,
output q, nextq
    );
    
    assign q =  ~(nextq&~(d&clk));
    assign nextq =  ~(q &~(~d &clk));
    
endmodule
