`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/30 06:08:49
// Design Name: 
// Module Name: cout2b
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


module cout2b(clk,reset,out);
    input clk;
    input reset;
    output[1:0] out;
    reg[1:0] out;   
    
    initial out =0;
 
 always@(posedge clk) 
 begin
 if(reset == 1)
    out <= 0;
 else
     out <= out +1;
 end
 
endmodule


