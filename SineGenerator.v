`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:31:32 11/02/2019 
// Design Name: 
// Module Name:    SineGenerator 
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
module SineGenerator(
    input clk,
    input [8:0] Fo,
    output [5:0] outSine
    );

reg [17:0] data = 18'd0;

always @(Fo) // this part is for achiveing a higher precision.
	if (Fo < 71)
		data = 11 * Fo;
	else if (Fo < 211)
		data = 4'd11 * (Fo-1'd1);
	else
		data = 4'd11 * (Fo-2'd2);

SineDDS SineDDSInstance1 (
  .clk(clk), // input clk
  .we(1'b1), // input we
  .data(data), // input [17 : 0] data
  .sine(outSine) // output [5 : 0] sine  : max = +30 , min = -30
  );


endmodule
