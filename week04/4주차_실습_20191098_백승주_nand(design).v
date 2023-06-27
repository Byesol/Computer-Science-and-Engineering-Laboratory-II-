`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/03/28 06:11:53
// Design Name: 
// Module Name: nand4
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


module nand4(
    input a,b,c,d,
    output e,f,g

    );
    
    assign e = ~(a&b);
    assign f = ~(c&e);
    assign g = ~(d&f);
endmodule
