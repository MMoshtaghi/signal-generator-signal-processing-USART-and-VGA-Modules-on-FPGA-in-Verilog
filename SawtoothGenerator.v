`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:54:28 10/28/2019 
// Design Name: 
// Module Name:    SawtoothGenerator 
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
module SawtoothGenerator(
    input clk,
    input reset,
    input [8:0] Fo,
    output reg [5:0] outSawtooth
    );

//reg signed [5:0] r_reg;		// point in your mind
reg [5:0] SawLU[1:24000];
reg [14:0] a = 1; // 15bit
wire [8:0] step;

reg [9:0] i,j; // 10bit

initial
	for( j=0 ; j<60 ; j=j+1 )
		for ( i=1 ; i<=400 ; i=i+1 )
			SawLU[400*j+i] = j;

always @( negedge clk , negedge reset )
	if (!reset)
		begin
			outSawtooth <= 0;
			a <= 1;
		end
	else
		begin
			outSawtooth <= SawLU[a];
			a <= ( (a+step) > 24000 ) ? 15'h001 : (a + step);
		end

assign step = Fo;
//assign outSawtooth = r_reg;

endmodule
