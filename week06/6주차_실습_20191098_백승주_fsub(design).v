`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 06:34:03
// Design Name: 
// Module Name: fsub
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


module fsub(
input a,b,bin,
output d,bout
    );
    assign d = a^b^bin;
    assign bout = (~(a^b))*bin + ~a&b;
endmodule
