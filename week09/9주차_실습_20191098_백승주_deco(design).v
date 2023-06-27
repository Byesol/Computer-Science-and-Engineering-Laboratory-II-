`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/09 06:06:27
// Design Name: 
// Module Name: deco
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


module deco(
input a,b,
output o0,o1,o2,o3

    );
    assign o0 = ~a & ~b;
    assign o1 = ~a & b;
    assign o2= a& ~b;
    assign o3 = a&b;
endmodule
