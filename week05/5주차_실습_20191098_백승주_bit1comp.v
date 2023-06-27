`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/04 06:54:21
// Design Name: 
// Module Name: bit1comp
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


module bit1comp(
    input a,b,
    output x,y,z,w
    );
    assign x = ~(a^b);
    assign y = a^b;
    assign z = (a&~b);
    assign w = (~a&b);
endmodule
