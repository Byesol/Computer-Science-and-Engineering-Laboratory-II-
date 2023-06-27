`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/02 07:16:53
// Design Name: 
// Module Name: seg7
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


module seg7(
 input w,x,y,z,
 output a,b,c,d,e,f,g,dp,outd
 );
 assign dp = 1;
 assign a = w&~x&~y | ~w&x&z | w&~z | ~w&y | x&y | ~x&~z;
 assign b = ~w&~y&~z | ~w&y&z | w&~y&z | ~x&~y | ~x&~z;
 assign c = ~w&~y | ~w&z | ~y&z | ~w&x | w&~x;
 assign d = w&~y&~z | ~w&~x&~z | ~x&y&z | x&y&~z | x&~y&z;
 assign e = ~x&~z | y&~z | w&y | w&x;
 assign f = ~w&x&~y | ~y&~z | x&~z | w&~x | w&y;
 assign g = ~w&x&~y | ~x&y | y&~z | w&~x | w&z; 
 assign outd = a|b|c|d|e|f|g|dp;
endmodule
