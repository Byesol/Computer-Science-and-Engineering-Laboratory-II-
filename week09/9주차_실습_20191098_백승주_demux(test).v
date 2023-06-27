`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/09 07:07:35
// Design Name: 
// Module Name: demux14_tb
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


module demux14_tb;
reg  f,s1,s0;
wire a,b,c,d;
demux14 u_demux14(
.a(a), .b(b), .c(c), .d(d), .s1(s1), .s0(s0), .f(f)
);
initial begin
    f=1'b0;
    s1=1'b0;
    s0=1'b0;  
end
always @(f or s1 or s0)begin
    f <= #80 ~f;
    s1 <= #40 ~s1;
    s0 <= #20 ~s0;
end
   

endmodule

