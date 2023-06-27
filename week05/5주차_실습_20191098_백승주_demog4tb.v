`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/04 06:45:51
// Design Name: 
// Module Name: demog4_tb
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


module demog4_tb;
reg a,b,c,clk;
wire d;

demog4 u_demog4(
.a(a), .b(b), .c(c), .d(d)
);
initial begin
    a=1'b0;
    b=1'b1;
    c=1'b1;
    
    clk = 0;
end

always clk = #10 ~clk;
always @(posedge clk)begin
    a <= #20 ~a;
    b <= #30 ~b;
    c <= #40 ~c;
   
 end

endmodule
