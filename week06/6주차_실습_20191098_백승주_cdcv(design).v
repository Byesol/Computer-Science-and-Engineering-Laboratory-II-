`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 06:42:42
// Design Name: 
// Module Name: cdcv
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


module cdcv(
    input a,b,c,d,
    output w,x,y,z
    );
    assign w = a|b&d|b&c;
    assign x = b&c|a|b&~c&~d;
    assign y = a|~b&c|b&~c&d;
    assign z= d;
endmodule
