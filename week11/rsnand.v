`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/23 06:06:09
// Design Name: 
// Module Name: rsnand
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


module rsnand(
input s,r, clk,
output q, nextq
    );
    
    assign q = ~(nextq &~(s &clk) );
    assign nextq = ~(q & ~(r&clk));
    
endmodule


