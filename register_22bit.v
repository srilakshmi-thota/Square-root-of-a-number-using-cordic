`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:06:49 04/15/2019 
// Design Name: 
// Module Name:    register_22bit 
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
module register_22bit(output[21:0] Q,input [21:0] D,input clk,input reset);
genvar i; generate
for(i=0;i<22;i=i+1) begin:loop	
 flipflop d(Q[i],D[i],clk,reset);
end endgenerate
endmodule




