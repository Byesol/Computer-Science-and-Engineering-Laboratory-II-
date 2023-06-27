`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 06:18:17
// Design Name: 
// Module Name: fadd_tb
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


module fadd_tb;
reg a,b,cin,clk;
wire s,cout;

fadd u_fadd(
.a(a), .b(b), .cin(cin), .s(s), .cout(cout)
);
initial begin
    a=1'b0;
    b=1'b1;
    cin=1'b1;   
    clk = 0;
end

always clk = #10 ~clk;
always @(posedge clk)begin
    a <= #20 ~a;
    b <= #30 ~b;
    cin <= #40 ~cin;   
 end
endmodule