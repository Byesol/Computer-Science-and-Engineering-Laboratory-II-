`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 06:36:55
// Design Name: 
// Module Name: fsub_tb
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


module fsub_tb;
reg a,b,bin,clk;
wire d,bout;

fsub u_fsub(
.a(a), .b(b), .bin(bin), .d(d), .bout(bout)
);
initial begin
    a=1'b0;
    b=1'b1;
    bin=1'b1;
    
    clk = 0;
end

always clk = #10 ~clk;
always @(posedge clk)begin
    a <= #20 ~a;
    b <= #30 ~b;
    bin <= #40 ~bin;
   
 end

endmodule

