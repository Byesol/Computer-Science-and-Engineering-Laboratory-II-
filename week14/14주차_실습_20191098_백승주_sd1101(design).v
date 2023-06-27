`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/13 13:59:02
// Design Name: 
// Module Name: sd
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


module sd( new, clk, os, rs);
input new; //new data
input clk;
output[3:0] rs; //abcd recent state
output os;

reg os;
reg[3:0] rs;

initial os = 0;
initial rs = 0;

always @(posedge clk) begin
    rs = rs << 1;
    rs[0] = new;
    if(rs == 4'b1101) os = 1;
    else os = 0;
    end
      
endmodule
