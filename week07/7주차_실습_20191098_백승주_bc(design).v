`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/18 06:42:41
// Design Name: 
// Module Name: bc
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


module bc(
input a1,a2,b1,b2,
output f1,f2,f3
    );
    assign f1 = a1&~b1| a2&~b1&~b2 | a1 & a2 & ~b2;
    assign f2 = ~a1&~a2&~b1&~b2 | ~a1&a2&~b1&b2| a1&a2&b1&b2 | a1&~a2&b1&~b2;
    assign f3 = ~a1 &b1|~a2&b1&b2|~a1&~a2&b2;
endmodule
