`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/16 06:53:25
// Design Name: 
// Module Name: su4_tb
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


module su4_tb;

reg [3:0] a;
reg [3:0] b;
reg bi;
wire [3:0] d;
wire bo;
sub4 u_sub4(
.a(a), .b(b), .bi(bi), .d(d), .bo(bo)
);
initial begin
    a=4'D0;
    b=4'D0;
    bi = 1'b0;  
end
always @(a or b or bi)begin
    a <= #10 a+4'D1;
    b <= #20 b-4'D1;
    bi <= #30 ~bi;
 end 
endmodule


