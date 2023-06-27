`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/16 07:50:54
// Design Name: 
// Module Name: bcdadd_tb
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


module bcdadd_tb;
reg [3:0]a,b;
reg ci;
wire [3:0]bcdadd_r;
wire bcd_c;
    
bcdadd u_bcdadd(
.a(a), .b(b), .ci(ci), .bcdadd_r(bcdadd_r), .bcd_c(bcd_c)
);
    
    initial begin
    a = 4'b0;
    b = 4'b0;
    ci = 1'b0;
    end
    
    always @(a or b or ci) begin
    a<=#10 a+4'b1;
    b<=#20 b-4'b1;
    ci <= #30 ~ci;
    end
    
    
endmodule
