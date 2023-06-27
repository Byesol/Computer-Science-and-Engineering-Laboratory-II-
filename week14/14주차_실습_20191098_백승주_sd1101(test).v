`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/13 14:35:45
// Design Name: 
// Module Name: sd_tb
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


module sd_tb;
    reg new;
    reg clk;
    wire os;
    wire[3:0] rs; 
          
    sd u_sd(.new(new), .clk(clk), .os(os), .rs(rs));    
    
    initial begin
    new = 0;
    clk = 0;
    end    
    always clk = #10 ~clk;    
    
    always begin
    new = #20 ~new;
    new = #50 ~new;
    new  = #80 ~new;
    end
endmodule
