`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/09 06:11:11
// Design Name: 
// Module Name: deco_tb
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


module deco_tb;
reg a,b;
wire o0,o1,o2,o3;
deco u_deco(
.a(a), .b(b), .o0(o0), .o1(o1), .o2(o2), .o3(o3)
);
initial begin
    a=1'b0;
    b=1'b0;
     
    
end
always @(a or b )begin
    a <= #80 ~a;
    b <= #40 ~b;
 
 end
endmodule
