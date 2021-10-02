`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:54:04 02/01/2020 
// Design Name: 
// Module Name:    Handler 
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
module Handler(

    input video_on,
    input clk,
    input h_sync,
    input v_sync,
    input [9:0] function_out,
    input change_command,
	 input [9:0] pixel_x,
	 input [9:0] pixel_y,
	 input [8:0] RAM1_out,
	 input [8:0] RAM2_out,
	 input [9:0] fft_out_abs,
	 input fft_data_valid,
	 output tick_640k,
	 output reg [8:0] RAM1_In = 0,
	 output reg [9:0] RAM1_address = 0,
	 output reg RAM1_wr_en = 0,
	 output reg [8:0] RAM2_In = 0,
	 output reg [9:0] RAM2_address = 0,
	 output reg RAM2_wr_en = 0,
	 output reg [2:0] rgb = 0
	 
    );
	 
//////////////////////////////////////////////////////////////////////////////////
//definitions
wire change_happening;
reg change_done = 0;
reg fft_sampling = 0; 
reg RAM1_changing = 0;
reg RAM2_changing = 0;
//////////////////////////////////////////////////////////////////////////////////
assign change_happening = RAM1_changing | RAM2_changing;
//////////////////////////////////////////////////////////////////////////////////
//Creating a 640KHz tick
	parameter ClkFrequency = 24_000_000; // 24MHz
	parameter Baud = 640_000;
	parameter BaudGeneratorAccWidth = 16;
	parameter BaudGeneratorInc = ((Baud<<(BaudGeneratorAccWidth-8)))/(ClkFrequency>>8);

	reg [BaudGeneratorAccWidth:0] BaudGeneratorAcc = 0;
	always @(posedge clk)
	  BaudGeneratorAcc <= BaudGeneratorAcc[BaudGeneratorAccWidth-1:0] + BaudGeneratorInc;

	assign tick_640k = BaudGeneratorAcc[BaudGeneratorAccWidth];
//////////////////////////////////////////////////////////////////////////////////	

//////////////////////////////////////////////////////////////////////////////////
always @(posedge clk) begin


//////////////////////
        if (change_command == 1 && change_happening == 0)begin
                RAM1_changing <= 1;
					 RAM2_changing <= 1;
                RAM1_wr_en <= 1;
					 RAM2_wr_en <= 1;
        end
		  
		  if(change_happening == 1 && fft_data_valid == 1 && fft_sampling == 0)
						fft_sampling <= 1;
			
//////////////////////

//////////////////////
		if ( video_on == 1 && change_happening == 0)begin
		
				if(pixel_x < 639 && pixel_y < 239)begin
						RAM1_address <= pixel_x + 1;
						if(pixel_y == RAM1_out)begin
								rgb <= 3'b111;
						end
						else if (pixel_y != RAM1_out)begin
								rgb <= 3'b000;
						end
				end
				
				else if(pixel_x < 639 && pixel_y >= 239)begin
						RAM2_address <= pixel_x + 1;
						if(pixel_y == RAM2_out)begin
									rgb <= 3'b111;
						end
						else if (pixel_y != RAM1_out)begin
								rgb <= 3'b000;
						end
				end
					
				else if (pixel_x >= 639)begin
						RAM1_address <= 0;
						RAM2_address <= 0;
				end
			end
		else if (change_happening == 1)
				rgb <= 3'b000;
				
//////////////////////

//////////////////////
        if(RAM1_changing == 1 && tick_640k == 1) begin
						
					 
                if(RAM1_address < 639) begin
                        RAM1_address <= RAM1_address + 1;
                        RAM1_In <= 120-( (function_out >> 2) - 25);
                end

                else if (RAM1_address == 639) begin
                        RAM1_address <= 0;
								RAM1_wr_en <= 0 ;
								RAM1_changing <= 0 ;
                end
        end
//////////////////////
			if(RAM2_changing == 1 && fft_sampling == 1)begin
				
					if(RAM2_address < 639)begin
								RAM2_address <= RAM2_address + 1;
                        RAM2_In <= 320-( (fft_out_abs >> 2) - 25);
                end

                else if (RAM2_address == 639) begin
                        RAM2_address <= 0;
								fft_sampling  <= 0;
								RAM2_wr_en <= 0;
								RAM2_changing <= 0;
                end
        end		
//////////////////////

        if(change_done == 1)
                change_done <= 0;
end
//////////////////////////////////////////////////////////////////////////////////

endmodule
