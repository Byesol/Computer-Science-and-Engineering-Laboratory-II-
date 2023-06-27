`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/18 06:33:50
// Design Name: 
// Module Name: pbc_tb
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


module pbc_tb;
reg a,b,c,d,p;
wire e;
pbc u_pbc(
.a(a), .b(b), .c(c), .d(d), .p(p), .e(e)
);
initial begin
    a=1'b0;
    b=1'b0;
    c=1'b0;
    d=1'b0;      
    p=1'b0;
    
end

always @(a or b or c or d or p)begin
    a <= #160 ~a;
    b <= #80 ~b;
    c <= #40 ~c;
    d <= #20 ~d;
    p <= #10 ~p;   
 end
endmodule
