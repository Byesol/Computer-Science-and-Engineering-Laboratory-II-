`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/30 06:25:17
// Design Name: 
// Module Name: cout2b_tb
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


module cout2b_tb;

    reg clk, reset;
    wire[1:0] out;
    
    cout2b u_cout2b(
    .clk(clk), 
    .reset(reset),
     .out(out)
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
