`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/05/09 06:18:57
// Design Name: 
// Module Name: enco
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


module enco(
input a,b,c,d,
output e0,e1

    );
    
    assign e1=a|b;
    assign e0=a|c;
    
endmodule
