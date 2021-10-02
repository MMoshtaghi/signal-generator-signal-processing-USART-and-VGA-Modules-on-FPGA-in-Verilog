`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:04:13 10/28/2019 
// Design Name: 
// Module Name:    ProjectPhase1Top 
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
module ProjectPhase1Top(
    input clk,
    input reset,
    input [7:0] Fin,
    input [3:0] Ain,
	 input [1:0] sig_type,
    output reg change_command = 1,
	 output reg [9:0] out = 0
//	 output reg [9:0] out_signed = 0
    );

reg [8:0] Fo = 0;
reg [3:0] Ao = 0;
reg [1:0] sig_type_reg = 3;
reg [5:0] outSquare = 0, outTriangular = 0, outSawTooth = 0, preMul = 0;
reg signed [5:0] outSine = 0;
wire [5:0] Squ1out, Tri1out, Saw1out;
wire signed [5:0] Sine1out;


always @(posedge clk) begin

        if((Fo != Fin + 1) || (Ao != Ain) || (sig_type_reg != sig_type) )
                change_command <= 1;
        
        if(change_command == 1)
               change_command <= 0;
end


// registering inputs
always @(negedge clk , negedge reset)
	if (!reset)
		Ao <= 0;
	else
		begin
			sig_type_reg <= sig_type;
			Fo <= Fin + 1;
			Ao <= Ain;
		end		
// Intantations
SquareGenerator Squ1 (
    .clk(clk), 
    .reset(reset), 
    .Fo(Fo), 
    .outSquare(Squ1out)
    );

TriangularGenerator TRi1 (
    .clk(clk), 
    .reset(reset), 
    .Fo(Fo), 
    .outTriangular(Tri1out)
    );
 
SawtoothGenerator Saw1 (
    .clk(clk), 
    .reset(reset), 
    .Fo(Fo), 
    .outSawtooth(Saw1out)
    );

SineGenerator Sine1 (
    .clk(clk), 
    .Fo(Fo), 
    .outSine(Sine1out)
    );

// Amplitude control 
 always @*
	begin
		outSquare = Squ1out;
		outTriangular = Tri1out;
		outSawTooth = Saw1out;
		outSine = Sine1out;
		
		case (sig_type_reg)
			2'b00 : preMul = outSquare;
			2'b01 : preMul = outSine + 6'b011110 ; // + 30
			2'b10 : preMul = outSawTooth;
			default : preMul = outTriangular;
		endcase
		
		out = preMul * Ao;
//		out_signed = (preMul - 6'd30) * Ao;
		end
		
		
		
endmodule
