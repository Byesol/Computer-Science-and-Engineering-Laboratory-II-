`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/28 06:36:12
// Design Name: 
// Module Name: nor4i_tb
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
module nor4i_tb;
reg a,b,c,d,clk;
wire e,f,g;
nor4i u_nor4i(
.a(a), .b(b), .c(c), .d(d),
.e(e), .f(f), .g(g)
);

initial begin
    a=1'b0;
    b=1'b1;
    c=1'b1;
    d=1'b1;
    clk = 0;
end

always clk = #10 ~clk;
always @(posedge clk)begin
    a <= #20 ~a;
    b <= #30 ~b;
    c <= #40 ~c;
    d <= #50 ~d;
 end
endmodule
