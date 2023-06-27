`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 15:02:45
// Design Name: 
// Module Name: cdcv_tb
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


module cdcv_tb;
reg a,b,c,d,clk;
wire w,x,y,z;
cdcv u_cdcv(
.a(a), .b(b), .c(c), .d(d), .w(w), .x(x), .y(y), .z(z)
);
initial begin
    a=1'b1;
    b=1'b0;
    c=1'b0;
    d=1'b0;    
    clk = 0;
end
always clk = #10 ~clk;
always @(posedge clk)begin
    a <= #20 ~a;
    b <= #30 ~b;
    c <= #40 ~c;
    d <= #50 ~c;   
 end
endmodule

