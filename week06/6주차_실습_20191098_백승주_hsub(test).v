`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/11 06:27:58
// Design Name: 
// Module Name: hsub_tb
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


module hsub_tb;
reg a,b,clk;
wire d, bout;

hsub u_hsub(
.a(a), .b(b), .d(d), .bout(bout)
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

