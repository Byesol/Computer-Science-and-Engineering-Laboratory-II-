`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/23 06:43:57
// Design Name: 
// Module Name: dflip_tb
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


module dflip_tb;
    reg d;
    reg clk;
    wire q, nextq;
    
    dflip u_dflip(
    .d(d), .clk(clk), .q(q), .nextq(nextq)
    );
    
   initial begin
    clk = 1'b0;
    d = 1'b0;
   
    end
    
    always #10 clk = ~clk;
    always #20 d = ~d;
    
endmodule

