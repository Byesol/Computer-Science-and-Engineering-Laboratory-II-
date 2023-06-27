`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/30 06:56:24
// Design Name: 
// Module Name: dc2421
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


module dc2421(clk,reset,out);
    input clk;
    input reset;
    output[3:0] out;
    reg[3:0] bout;   
    initial bout = 0; 
    always@(posedge clk) 
    begin
    if(reset == 1)
        bout = 0;
    else begin
        if(bout == 4'b1001)
            bout <= 0;
        else
         bout <= bout +1;
     end
    end 
    assign out[3] = bout[2]&bout[1]|bout[2]&bout[0]|bout[3];
    assign out[2] = bout[2]&~bout[0]|bout[2]&bout[1]|bout[3];
    assign out[1] = bout[2]&~bout[1]&bout[0]|~bout[2]&bout[1]|bout[3];
    assign out[0] = bout[0];
endmodule
