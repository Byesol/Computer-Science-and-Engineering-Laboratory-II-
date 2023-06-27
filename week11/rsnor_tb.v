`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/23 06:26:11
// Design Name: 
// Module Name: rsnor_tb
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


module rsnor_tb;
    reg clk, s, r;
    wire q, nextq;
      
    rsnor u_rsnor(
    .s(s), .r(r), .nextq(nextq), .q(q), .clk(clk)
    );
      
     initial begin
     clk = 1'b0;
     s = 1'b0;
     r = 1'b0;     
     end
      
     always #10 clk = ~clk;
     always #20 s = ~s;
     always #40 r = ~r;
      
      
  endmodule
