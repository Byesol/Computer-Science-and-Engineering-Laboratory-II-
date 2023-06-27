`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/30 06:45:51
// Design Name: 
// Module Name: dcout4b
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


module dcout4b(clk,reset,out);
   input clk;
   input reset;
   output[3:0] out;
   reg[3:0] out;   
   initial out = 0; 
   
   always@(posedge clk) 
   begin
   if(reset == 1)
       out = 0;
   else begin
       if(out == 4'b1001)
           out <= 0;
       else
           out <= out +1;
       end
   end  

endmodule
