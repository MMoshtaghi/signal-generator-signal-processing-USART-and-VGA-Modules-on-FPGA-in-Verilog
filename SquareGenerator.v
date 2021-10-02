`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:12:18 11/06/2019 
// Design Name: 
// Module Name:    SquareGenerator 
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
module SquareGenerator(
    input clk,
    input reset,
    input [8:0] Fo,
    output reg [5:0] outSquare
    );
	 
//reg signed [5:0] r_reg;		// point in your mind
reg [5:0] SquLU[1:24000];
reg [14:0] a = 1; // 15bit
wire [8:0] step;

reg [7:0] i,j; // 8bit

initial
	for( j=0 ; j<240 ; j=j+1 )
		for ( i=1 ; i<=100 ; i=i+1 )
			if ( j < 120 )
				SquLU[100*j+i] = 6'b111100; //+60
			else
				SquLU[100*j+i] = 6'b000000;

always @( negedge clk , negedge reset )
	if (!reset)
		begin
			outSquare <= 0;
			a <= 1;
		end
	else
		begin
			outSquare <= SquLU[a];
			a <= ( (a+step) > 24000 ) ? 15'h001 : (a + step);
		end

assign step = Fo;

// Output Logic
//assign outSquare = r_reg;


endmodule
