`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:07 04/15/2019 
// Design Name: 
// Module Name:    fulladder_22bit 
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
module fulladder_22bit(output [21:0]sum,input [21:0]a,input [21:0]b,input cin);
wire [21:0]c_out;
fa s0(sum[0],c_out[0],a[0],b[0],cin);
genvar j; generate
for (j=1;j<22;j=j+1)begin:adders
fa s1(sum[j],c_out[j],a[j],b[j],c_out[j-1]);
end endgenerate
endmodule

