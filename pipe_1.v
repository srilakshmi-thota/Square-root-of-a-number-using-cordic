`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:01:16 04/15/2019 
// Design Name: 
// Module Name:    pipe_1 
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
module pipe_1(output [21:0] xro,output [21:0] yro,output [21:0]zro,input [21:0]x,input [21:0]y,input [21:0]z,input [21:0]xa,input [21:0]ya,input [21:0]atanh,input clk,input reset);
wire [21:0] xr1;
wire [21:0] yr1;
wire [21:0] zr1;
pipe_2 one(xr1,yr1,zr1,x,y,z,xa,ya,atanh,clk,reset);

pipe_2 two(xro,yro,zro,xr1,yr1,zr1,{{4{xr1[21]}},xr1[21:4]},{{4{yr1[21]}},yr1[21:4]},atanh,clk,reset);

endmodule
