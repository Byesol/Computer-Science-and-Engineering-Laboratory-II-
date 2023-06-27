`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/16 06:08:19
// Design Name: 
// Module Name: adder4
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


module adder4(
input [3:0]a,
input [3:0]b,
input ci,
output [3:0]s,
output co
    );
    wire c1,c2,c3; 
    
    assign c1 = (a[0]&b[0])|(ci&(a[0]^b[0]));
    assign c2 = (a[1]&b[1])|(c1&(a[1]^b[1]));
    assign c3 = (a[2]&b[2])|(c2&(a[2]^b[2]));
    assign co = (a[3]&b[3])|(c3&(a[3]^b[3]));
   
    assign s[0] = a[0]^b[0]^ci;
    assign s[1] = a[1]^b[1]^c1;
    assign s[2] = a[2]^b[2]^c2;
    assign s[3] = a[3]^b[3]^c3;   
  
endmodule
