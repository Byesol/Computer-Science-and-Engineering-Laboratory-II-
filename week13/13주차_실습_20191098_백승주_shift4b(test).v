`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/06 06:16:48
// Design Name: 
// Module Name: shift4b_tb
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


module shift4b_tb;
    reg new, clk, reset;
    wire[3:0] out;
    
shift4b u_shift4b(
.clk(clk), .new(new),.reset(reset), .out(out) );
initial begin
new = 0;
clk = 0;
reset = 1;
#20 reset <= 1'b0;
 #40 reset <= 1'b1;
 #60 reset <= 1'b0;
 #90 reset <= 1'b1;
 #120 reset <= 1'b0;   
end
always clk = #10 ~clk;
always begin
new = #10 ~new;
new = #20 ~new;
new = #40 ~new;
new = #80 ~new;
end

endmodule
