`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/16 06:26:32
// Design Name: 
// Module Name: adder4_tb
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


module adder4_tb;
reg [3:0] a;
reg [3:0] b;
reg ci;
wire [3:0] s;
wire co;
adder4 u_adder4(
.a(a), .b(b), .ci(ci), .s(s), .co(co)
);
initial begin
    a=4'D0000;
    b=4'D0000;
    ci = 1'b0;  
end
always @(a or b or ci)begin
    a <= #10 a+4'D0001;
    b <= #20 a-4'D0001;
    ci <= #30 ~ci;
 end 

endmodule
