`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/02 06:20:24
// Design Name: 
// Module Name: seg7_tb
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


module seg7_tb;
reg w,x,y,z;
wire a,b,c,d,e,f,g,dp;
seg7 u_seg7(
.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dp(dp), .w(w), .x(x), .y(y), .z(z)
);
initial begin
    w=1'b0;
    x=1'b0;
    y=1'b0;
    z=1'b0;      
    
end

always @(a or b or c or d)begin
    w <= #80 ~w;
    x <= #40 ~x;
    y <= #20 ~y;
    z <= #10 ~z;   
 end
endmodule
