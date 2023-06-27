`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 06:12:52
// Design Name: 
// Module Name: fadd
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


module fadd(
input a,b,cin,
output s,cout
    );
    assign s = (a^b)^cin;
    assign cout = cin*(a^b)|(a*b);
endmodule
