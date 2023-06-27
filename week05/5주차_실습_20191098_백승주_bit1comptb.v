`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/04 06:56:54
// Design Name: 
// Module Name: bit1comp_tb
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


module bit1comp_tb;
reg a,b,clk;
wire x,y,z,w;

bit1comp u_bit1comp(
.a(a), .b(b), .x(x), .y(y), .z(z), .w(w)
);

initial begin
    a=1'b0;
    b=1'b1;
    clk = 0;
end

always clk = #10 ~clk;

always @(posedge clk)begin
    a <= #20 ~a;
    b <= #30 ~b;

   
end

endmodule
