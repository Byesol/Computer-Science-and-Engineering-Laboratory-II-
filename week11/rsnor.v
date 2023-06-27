`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/23 06:23:54
// Design Name: 
// Module Name: rsnor
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


module rsnor(
input clk,s,r,
output q, nextq
    );
    
    assign q = ~(nextq|(r&clk));
    assign nextq = ~(q|(s&clk));
    
endmodule
