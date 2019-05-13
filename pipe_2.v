`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:02:22 04/15/2019 
// Design Name: 
// Module Name:    pipe_2 
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
module pipe_2(output [21:0]xro,output [21:0]yro,output [21:0]zro,input [21:0]x,input [21:0]y,input [21:0]z,input [21:0]xa,input [21:0]ya,input [21:0]atan,input clk,input reset);
wire [21:0] tempx;
wire [21:0] tempy;
wire [21:0] tempz;
wire [21:0] xr;
wire [21:0] yr;
wire [21:0] zr;
wire cin;
not g0(cin,y[21]);
genvar p;
generate
for(p=0;p<22;p=p+1)begin:p1
 xor_m m1(tempx[p],ya[p],cin);
 xor_m m2(tempy[p],xa[p],cin);
 xor_m m3(tempz[p],atan[p],y[21]);
end endgenerate
fulladder_22bit ax(xr,x,tempx,cin);
fulladder_22bit ay(yr,y,tempy,cin);
fulladder_22bit az(zr,z,tempz,y[21]);

register_22bit rx(xro,xr,clk,reset);
register_22bit ry(yro,yr,clk,reset);
register_22bit rz(zro,zr,clk,reset);

endmodule

