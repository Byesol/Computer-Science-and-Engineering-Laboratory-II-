`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/23 06:08:42
// Design Name: 
// Module Name: rsnand_tb
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


module rsnand_tb;
    reg s, r, clk;
    wire q, nextq;
      
    rsnand u_rsnand(
    .s(s), .r(r), .nextq(nextq), .q(q), .clk(clk)
    );
      
     initial begin
     clk = 1'b0;
     s = 1'b1;
     r = 1'b0;     
     end
      
     always #10 clk = ~clk;
     always #20 s = ~s;
     always #40 r = ~r;
      
      
  endmodule
