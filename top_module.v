`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    9:15:43 02/02/2020 
// Design Name: 
// Module Name:    top_module 
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

module top_module(
input clk,
input signed [9:0] data_in,
input rst,
output reg [9:0] fft_to_vga,
output [9:0] fft_address,
output dv
    );

/////////////////////////////////////////////////
reg [7:0] cntr = 0;

wire signed [9:0] re_fft_out;
wire signed [9:0] im_fft_out;

////////////////////////////////////////////////

reg wr_en = 0;
reg start = 0;

wire fwd_inv = 1'b1;
wire fwd_inv_we = 1'b1;

wire signed [9:0]xn_im = 0;
wire [9:0] xn_index;

wire [9:0] scale_sch = 9;
wire scale_sch_we = 0;

wire signed [9:0] xk_re;
wire signed[9:0] xk_im;
wire rfd;

wire signed [9:0] dout;
wire [9:0] data_count;

////////////////////////////////////////////////

always @(posedge clk)
begin
      cntr <= cntr + 1;
		if(cntr == 37)
		   begin 
			    cntr <= 0;
				 wr_en <= 1;
			end
	   else 
		     wr_en <= 0;
end 

always @(posedge clk)
begin 
     if(data_count == 511)
	     start <= 1;
	  else if(xn_index == 511)
	      start<=0;
	 end
	 
always @(posedge clk)
		fft_to_vga <= re_fft_out[8:0] + im_fft_out[8:0];

assign im_fft_out = ( xk_im >= 0 ) ? xk_im : ~xk_im;		
assign re_fft_out = ( xk_re >= 0 ) ? xk_re : ~xk_re;

///////////////////////////////////////////////

// Instantations:
myfft gettin_fft (
  .clk(clk), // input clk
  .start(start), // input start
  .xn_re(dout), // input [9 : 0] xn_re
  .xn_im(xn_im), // input [9 : 0] xn_im
  .fwd_inv(fwd_inv), // input fwd_inv
  .fwd_inv_we(fwd_inv_we), // input fwd_inv_we
  .scale_sch(scale_sch), // input [9 : 0] scale_sch
  .scale_sch_we(scale_sch_we), // input scale_sch_we
  .rfd(rfd), // output rfd
  .xn_index(xn_index), // output [9 : 0] xn_index
  .dv(dv), // output dv
  .xk_index(fft_address), // output [9 : 0] xk_index
  .xk_re(xk_re), // output [9 : 0] xk_re
  .xk_im(xk_im) // output [9 : 0] xk_im
);

inputfifo myfifo (
  .clk(clk), // input clk
  .rst(rst), // input rst
  .din(data_in), // input [9 : 0] din
  .wr_en(wr_en), // input wr_en
  .rd_en(rfd), // input rd_en
  .dout(dout), // output [9 : 0] dout
  .full(fifo_full), // output full
  .data_count(data_count) // output [9 : 0] data_count
);

///////////////////////////////////////////////


endmodule
