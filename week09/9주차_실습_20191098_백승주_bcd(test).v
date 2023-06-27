`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/09 07:23:12
// Design Name: 
// Module Name: bcd_tb
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


module bcd_tb;
reg a3,a2,a1,a0;
wire o0,o1,o2,o3,o4,o5,o6,o7,o8,o9;
bcd u_bcd(
.a3(a3), .a2(a2), .a1(a1), .a0(a0), .o3(o3), .o2(o2), .o1(o1), .o0(o0), .o4(o4), .o5(o5), .o6(o6), .o7(o7),
.o8(o8), .o9(o9)
);
initial begin
    a3=1'b0;
    a2=1'b0;
    a1=1'b0;
    a0=1'b0;      
    
end

always @(a3 or a2 or a1 or a0)begin
    a3 <= #80 ~a3;
    a2 <= #40 ~a2;
    a1 <= #20 ~a1;
    a0 <= #10 ~a0;   
 end
endmodule
