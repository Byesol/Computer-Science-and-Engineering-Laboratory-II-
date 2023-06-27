`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/09 06:58:45
// Design Name: 
// Module Name: demux14
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


module demux14(
input f,
s1,s0,
output a,b,c,d

    );    
    assign a = f& ~s1 & ~s0;
    assign b = f & ~s1& s0;
    assign c = f& s1& ~s0;
    assign d = f & s1 & s0;
      
endmodule
