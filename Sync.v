`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:40:02 11/20/2019 
// Design Name: 
// Module Name:    Sync 
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
module Sync(
    input clk,
    output reg h_sync,
    output reg v_sync,
    output reg [9:0] pixel_x,
    output reg [9:0] pixel_y,
    output video_on
    );
	 
	 
//horizontal parameters :	 
	parameter 
		Dis_h = 640,
		Ret_h = 96,
		FP_h = 16,
		BP_h = 48;	


//vertical parameters :
	parameter 
		Dis_v = 480,
		Ret_v = 2,
		FP_v = 10,
		BP_v = 33; 
		
		
	reg [9:0] h_cntr = 0; // contain the horizontal posiition of pixel
	reg [9:0] v_cntr = 0; // contain the vertical posiition of pixel
	reg h_on = 1;
	reg v_on = 1;
	assign video_on = h_on & v_on; // if video_on == 1 it means that pointer is in display area
	
	
//pixel_x & pixel_y signals :
	always@(posedge clk) 
		begin
			if(h_cntr < Dis_h)
				pixel_x <= h_cntr;
			else 
				pixel_x <= 0;
			if(v_cntr < Dis_v)
				pixel_y <= v_cntr;
			else
				pixel_y <= 0;
		end
	

//horizontal video_on signal :	
	always@(posedge clk) 
		begin
			h_cntr <= h_cntr + 1;
			if (h_cntr == (Dis_h - 1))
				h_on <= 0;
			if (h_cntr == (Dis_h + FP_h + Ret_h + BP_h + -1))
				begin
					h_cntr <= 0;
					h_on <= 1;
				end
		end

	
//vertical video_on signal :
	always@(posedge clk)		
		begin
			if (v_cntr == (Dis_v - 1))
				v_on <= 0;
			else if (v_cntr == (Dis_v + FP_v + BP_v + Ret_v - 1))
			begin
				v_on <= 1;
			end
		end
		

//h_sync signal :		
	always@(posedge clk) 
		begin
			if (h_cntr == (Dis_h +FP_h - 1))
				h_sync <= 0;
			if (h_cntr ==(Dis_h + FP_h + Ret_h - 1))
				h_sync <= 1;
		end
		

//v_sync signal :		
	always@(posedge clk) 
		begin
			if (v_cntr ==(Dis_v + FP_v - 1))
				v_sync <= 0;
			if (v_cntr == (Dis_v + FP_v + Ret_v - 1))
				v_sync <= 1;
		end
	

//vertical counter :	
	always@(posedge clk)  
		begin
			if (h_cntr == (Dis_h + FP_h + Ret_h + BP_h - 1))
				v_cntr <= v_cntr + 1;
			if (v_cntr == (Dis_v + FP_v + Ret_v + BP_v - 1))
				v_cntr <= 0;
		end
	 


endmodule
