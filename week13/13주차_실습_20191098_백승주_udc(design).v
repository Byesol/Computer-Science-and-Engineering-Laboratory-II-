`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/06/06 06:52:27
// Design Name: 
// Module Name: udc
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


module udc(ud, clk, out, reset, segment, digit);
input ud;
input  clk;
input reset;
output[3:0] out;
output[6:0] segment;
output digit;
reg[3:0] out;
reg[6:0] segment;

initial out = 0;
initial segment = 0;

always @(posedge clk) begin
    if (reset == 1 )
    begin
        segment <= 0;
        out <= 0;
    end
    else begin
        if (ud == 1) 
        begin
            segment <= 7'b0111110; // segment display U
            out <= out + 1;
        end
        else begin
            segment <= 7'b0111101; //segment display D
            out <= out - 1;
        end
    end
 end
 
 assign digit = segment[0]|segment[1]|segment[2]|segment[3]|segment[4]|segment[5]|segment[6];
     
     
endmodule