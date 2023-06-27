`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/28 06:42:21
// Design Name: 
// Module Name: xor4i
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


module xor4i(
   input a,b,c,d,
   output e,f,g

   );
   assign e = (~a&b)+(a&~b);
   assign f = (~c&e)+(c&~e);
   assign g = (~d&f)+(d&~f);
endmodule
