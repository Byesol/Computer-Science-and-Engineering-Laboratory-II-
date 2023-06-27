`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/09 06:39:06
// Design Name: 
// Module Name: mux41_tb
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


module mux41_tb;
reg a,b,c,d,s1,s0;
wire o;
mux41 u_mux41(
.a(a), .b(b), .c(c), .d(d), .s1(s1), .s0(s0), .o(o)
);
initial begin
    a=1'b0;
    b=1'b0;
    c=1'b0;
    d=1'b0;     
    s1=1'b0;
    s0=1'b0;     
end
always @(a or b or c or d)begin
    a <= #80 ~a;
    b <= #40 ~b;
    c <= #20 ~c;
    d <= #10 ~d;   
 end 
 always @(s1 or s0)begin
     s1 <= #30 ~s1;
     s0 <= #15 ~s0;

  end
endmodule
