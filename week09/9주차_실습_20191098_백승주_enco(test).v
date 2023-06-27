`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/09 06:24:10
// Design Name: 
// Module Name: enco_tb
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


module enco_tb;
reg a,b,c,d;
wire e0,e1;
enco u_enco(
.a(a), .b(b), .c(c), .d(d), .e0(e0), .e1(e1)
);
initial begin
    a=1'b0;
    b=1'b0;
    c=1'b0;
    d=1'b0;      
    
end

always @(a or b or c or d)begin
    a <= #40 ~a;
    b <= #30 ~b;
    c <= #20 ~c;
    d <= #10 ~d;   
 end
endmodule