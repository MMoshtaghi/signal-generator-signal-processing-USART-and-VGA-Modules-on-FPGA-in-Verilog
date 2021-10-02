`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:17:17 10/28/2019 
// Design Name: 
// Module Name:    TriangularGenerator 
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
module TriangularGenerator(
    input clk,
    input reset,
    input [8:0] Fo,
    output reg [5:0] outTriangular
    );

//reg signed [5:0] r_reg;		// point in your mind
reg [5:0] TriLU[1:24000];
reg [14:0] a = 1; // 15bit
wire [8:0] step;

reg [8:0] i, j, int120; // 9bit
initial
	begin
		int120 = 120;
		for( j=0 ; j<120 ; j=j+1 )
			for ( i=1 ; i<=200 ; i=i+1 )
				if ( j<=59 )
					TriLU[200*j+i] = j; // 0 to 59
				else
					TriLU[200*j+i] = int120-j; // 60 to 1
	end

always @( negedge clk , negedge reset )
	if (!reset)
		begin
			outTriangular <= 0;
			a <= 1;
		end
	else
		begin
			outTriangular <= TriLU[a];
			a <= ( (a+step) > 24000 ) ? 15'h001 : (a + step);
		end

assign step = Fo;
//assign outTriangular = r_reg;

endmodule
