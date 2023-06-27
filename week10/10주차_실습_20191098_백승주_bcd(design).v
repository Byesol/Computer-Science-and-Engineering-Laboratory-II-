`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/16 07:04:13
// Design Name: 
// Module Name: bcdadd
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


module bcdadd(
input [3:0]a,b,
input ci,
output [3:0] bcdadd_r,
output bcd_c
    );
wire s0, s1, s2, s3;
wire c1,c2,c3,c4;

    assign c1 = (a[0]&b[0])|((a[0]^b[0])&ci);
    assign c2 = (a[1]&b[1])|((a[1]^b[1])&c1);
    assign c3 = (a[2]&b[2])|((a[2]^b[2])&c2);
    assign c4 = (a[3]&b[3])|((a[3]^b[3])&c3);
    
    assign s0 = a[0]^b[0]^ci;
    assign s1 = a[1]^b[1]^c1;
    assign s2 = a[2]^b[2]^c2;
    assign s3 = a[3]^b[3]^c3;  
    
    assign bcdadd_r[0] = ~c4&s0 | ~s3&~s2&s0;
    assign bcdadd_r[1] = ~c4&~s3&s1 | ~c4&s3&s2&~s1 | c4&~s3&~s2&~s1;
    assign bcdadd_r[2] = ~c4&s2&s1 | ~c4&~s3&s2 | c4&~s3&~s2&~s1;
    assign bcdadd_r[3] =  ~c4&s3&~s2&~s1 | c4&~s3&~s2&s1;
    assign bcd_c =  ~c4&s3&s2 | ~c4&s3&s1 | c4&~s3&~s2;
       
endmodule
