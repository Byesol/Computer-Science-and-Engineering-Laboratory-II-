`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/18 06:54:45
// Design Name: 
// Module Name: bc_tb
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


module bc_tb;
reg a1,a2,b1,b2;
wire f1,f2,f3;
bc u_bc(
.a1(a1), .b1(b1), .a2(a2), .b2(b2), .f1(f1), .f2(f2), .f3(f3)
);
initial begin
    a1=1'b0;
    b1=1'b0;
    a2=1'b0;
    b2=1'b0;      
    
end
always @(a1 or b1 or a2 or b2)begin
    a1 <= #80 ~a1;
    a2 <= #40 ~a2;
    b1 <= #20 ~b1;
    b2 <= #10 ~b2;   
 end
endmodule
