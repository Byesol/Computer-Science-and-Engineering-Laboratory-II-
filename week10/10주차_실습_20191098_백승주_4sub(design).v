`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/16 06:48:22
// Design Name: 
// Module Name: sub4
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


module sub4(
input [3:0]a,
input [3:0]b,
input bi,
output [3:0]d,
output bo

    );
    wire b1,b2,b3; 
 
    assign b1 = (~(a[0]^b[0]) &bi) | ~a[0]&b[0];
    assign b2 = (~(a[1]^b[1]) &b1) | ~a[1]&b[1];
    assign b3 = (~(a[2]^b[2]) &b2) | ~a[2]&b[2];
    assign bo = (~(a[3]^b[3]) &b3) | ~a[3]&b[3];
    
    assign d[0] = a[0]^b[0]^bi;
    assign d[1] = a[1]^b[1]^b1;
    assign d[2] = a[2]^b[2]^b2;
    assign d[3] = a[3]^b[3]^b3;   
    
endmodule
