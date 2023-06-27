`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/18 06:04:33
// Design Name: 
// Module Name: pbg_tb
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


module pbg_tb;
reg a,b,c,d;
wire e;
pbg1 u_pbg1(
.a(a), .b(b), .c(c), .d(d), .e(e)
);
initial begin
    a=1'b0;
    b=1'b0;
    c=1'b0;
    d=1'b0;      
    
end

always @(a or b or c or d)begin
    a <= #80 ~a;
    b <= #40 ~b;
    c <= #20 ~c;
    d <= #10 ~d;   
 end
endmodule

