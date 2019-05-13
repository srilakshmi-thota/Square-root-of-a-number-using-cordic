`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:00:05 04/15/2019 
// Design Name: 
// Module Name:    cordic_main 
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
module cordic_main(output [21:0]xout,output [21:0]yout,output [21:0]zout,input [21:0]xo,input [21:0]yo,input [21:0]zo,input clk,input reset);
wire [21:0]x[1:15];
wire [21:0]y[1:15];
wire [21:0]z[1:15];
wire [21:0]atanh[1:14];
assign x[1][21:0]=xo;
assign y[1][21:0]=yo;
assign z[1][21:0]=zo;

assign atanh[1]=22'b0000010001100100111110;   
assign atanh[2]=22'b0000001000001011000101;
assign atanh[3]=22'b0000000100000001010110;
assign atanh[4]=22'b0000000010000000001010;
assign atanh[5]=22'b0000000001000000000001;
assign atanh[6]=22'b0000000000100000000000;
assign atanh[7]=22'b0000000000010000000000;
assign atanh[8]=22'b0000000000001000000000; 
assign atanh[9]=22'b0000000000000100000000;
assign atanh[10]=22'b0000000000000010000000;
assign atanh[11]=22'b0000000000000001000000;
assign atanh[12]=22'b0000000000000000100000;
assign atanh[13]=22'b0000000000000000010000;
assign atanh[14]=22'b0000000000000000001000;

genvar i; generate
for (i=1;i<15;i=i+1)begin:f1
 if(i==4 | i==13)
  pipe_1 casep1(x[i+1],y[i+1],z[i+1],x[i],y[i],z[i],{{i{x[i][21]}},x[i][21:i]},{{i{y[i][21]}},y[i][21:i]},atanh[i],clk,reset);
 else 
  pipe_2 casep2(x[i+1],y[i+1],z[i+1],x[i],y[i],z[i],{{i{x[i][21]}},x[i][21:i]},{{i{y[i][21]}},y[i][21:i]},atanh[i],clk,reset);
  end
endgenerate
assign xout=x[15];
assign yout=y[15];
assign zout=z[15];
endmodule
