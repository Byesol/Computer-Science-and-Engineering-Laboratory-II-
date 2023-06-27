`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/30 07:13:54
// Design Name: 
// Module Name: dc2421_tb
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


module dc2421_tb;
   reg clk,reset;
 wire[3:0] out;
 dc2421 u_dc2421(
 .clk(clk), .reset(reset), .out(out)
 );
  always #10 clk <= ~clk;
 initial begin
 clk = 1'b0;
 reset = 1'b1;     
 #20 reset <= 1'b0;
 #40 reset <= 1'b1;
 #60 reset <= 1'b0;
 #90 reset <= 1'b1;
 #120 reset <= 1'b0;   
  end
endmodule

