`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/06 06:09:35
// Design Name: 
// Module Name: shift4b
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


module shift4b(new, clk, out, reset);
  
input new; 
input clk;
input reset;

output[3:0] out;
reg[3:0] out;
    
   initial out = 0;
    
 always @(posedge clk) 
 begin
    if (reset == 1)
        out = 0;
    else begin
        out = (out >> 1);
        out[3] = new; 
     end
end
         
         
endmodule
