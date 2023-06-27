`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/30 06:49:23
// Design Name: 
// Module Name: dcout4b_tb
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


module dcout4b_tb;
    reg clk,reset;
    wire[3:0] out;
    dcout4b u_dcout4b(
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

