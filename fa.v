`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:06:00 04/15/2019 
// Design Name: 
// Module Name:    fa 
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
module fa(output s, output cout, input a, input b, input c_in);
wire w1,w2,w3;
xor G1(s,a,b,c_in);
and G3(w1,a,b);
and G4(w2,a,c_in);
and G5(w3,b,c_in);
or G6(cout,w1,w2,w3);
endmodule
