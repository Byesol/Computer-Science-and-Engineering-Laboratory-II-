`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/06 06:44:53
// Design Name: 
// Module Name: rcount_tb
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


module rcount_tb; 
  reg clk; 
  reg reset;
  wire[3:0] out;
  
rcount u_rcount(
.reset(reset), .clk(clk),  .out(out) );
initial begin

clk = 0;
reset = 1;
#20 reset <= 1'b0;
#40 reset <= 1'b1;
#60 reset <= 1'b0;
#90 reset <= 1'b1;
#120 reset <= 1'b0;   
end
always clk = #10 ~clk;


endmodule

