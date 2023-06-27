`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/21 06:57:35
// Design Name: 
// Module Name: inv_tb
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
module inv_tb(
);
reg a, b, c, d, clk;
wire e, f, g; 

inv u_inv (
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
    b <= #40 ~b;
    c <= #60 ~c;
    d <= #80 ~d;
 end
     
endmodule