`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:00:23 02/04/2020
// Design Name:   FFT_Top
// Module Name:   F:/University/Term 7/FPGA/Project/Phase3/Phase_3/FFT_test.v
// Project Name:  Phase_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FFT_Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FFT_test;

	// Inputs
	reg clk;
	reg tick_640k;
	reg reset;
	reg [9:0] function_out;

	// Outputs
	wire fft_data_valid;
	wire [9:0] fft_out_index;
	wire [9:0] fft_out_abs;

	// Instantiate the Unit Under Test (UUT)
	FFT_Top uut (
		.clk(clk), 
		.tick_640k(tick_640k), 
		.reset(reset), 
		.function_out(function_out), 
		.fft_data_valid(fft_data_valid), 
		.fft_out_index(fft_out_index), 
		.fft_out_abs(fft_out_abs)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		tick_640k = 0;
		reset = 0;
		function_out = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

