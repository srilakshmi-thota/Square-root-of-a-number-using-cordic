`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:05:27 04/15/2019 
// Design Name: 
// Module Name:    flipflop 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module flipflop(output reg q,input d,input clk,input reset);
always @(posedge clk or posedge reset)
begin
if(reset == 1)
   q<= 0;
else 
   q<= d;
end
endmodule

