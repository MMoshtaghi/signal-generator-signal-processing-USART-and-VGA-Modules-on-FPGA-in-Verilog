`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:28:31 02/04/2020
// Design Name:   Phase_3_Top
// Module Name:   F:/University/Term 7/FPGA/Project/Phase3/Phase_3/Phase3_Testbench.v
// Project Name:  Phase_3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Phase_3_Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Phase3_Testbench;

	// Inputs
	reg clk;
	reg RxD;
	reg reset;

	// Outputs
	wire TxD;
	wire v_sync;
	wire h_sync;
	wire [2:0] rgb;

	// Instantiate the Unit Under Test (UUT)
	Phase_3_Top uut (
		.clk(clk), 
		.RxD(RxD), 
		.reset(reset), 
		.TxD(TxD),  
		.v_sync(v_sync), 
		.h_sync(h_sync), 
		.rgb(rgb)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		RxD = 1;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
		

        
		// Add stimulus here

	end
	
    always #20.833 clk = !clk; 
	 
endmodule

