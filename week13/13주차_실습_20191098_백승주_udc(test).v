`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/06 07:01:53
// Design Name: 
// Module Name: udc_tb
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


module udc_tb;
reg ud, clk, reset;
wire[6:0] segment;
wire[3:0] out;
wire digit;
    
udc u_udc(
.ud(ud), .reset(reset), .out(out), .clk(clk), .segment(segment), .digit(digit) );

initial begin
ud = 1;
clk = 0;
reset = 1;
#20 reset <= 1'b0;
 #40 reset <= 1'b1;
 #60 reset <= 1'b0;
end
always clk = #10 ~clk;
always begin
ud = #10 ~ud;
ud = #90 ~ud;
ud = #170 ~ud;
ud = #250 ~ud;
end

endmodule