`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:17 02/04/2020 
// Design Name: 
// Module Name:    FFT_Top 
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
module FFT_Top(
		
		input clk,
		input tick_640k,
		input reset,
		input [9:0] function_out,
		output fft_data_valid,
		output [9:0] fft_out_index,
		output [9:0] fft_out_abs

    );
//////////////////////////////////////////////////////////////////////////////////	 
reg fifo_wr_en;  //

wire [9:0] fifo_out;//

reg start;//

wire signed [9:0] xk_re , xk_im , fft_out_re_p , fft_out_im_p ;

wire [10:0] fifo_data_count;//

wire fft_ready_for_data;//
//////////////////////////////////////////////////////////////////////////////////

always @(posedge clk)
begin
      if ( tick_640k == 1 )
			fifo_wr_en <= 1;
	   else 
			fifo_wr_en<=0;
end 

FIFO_FFT FIFO_FFT (
  .clk(clk), // input clk
  .rst(reset), // input rst
  .din(function_out), // input [9 : 0] din
  .wr_en(fifo_wr_en), // input wr_en
  .rd_en(fft_ready_for_data), // input rd_en
  .dout(fifo_out), // output [9 : 0] dout
  .full(full), // output full
  .empty(empty), // output empty
  .data_count(fifo_data_count) // output [10 : 0] data_count
);

always @( posedge clk )
	begin 
		if ( fifo_data_count == 1023 )
			start <= 1;
		else if ( xn_index == 1023 )
			start <= 0;
	end

FFT_1 FFT (
  .clk(clk), // input clk
  .start(start), // input start
  .xn_re(fifo_out), // input [9 : 0] xn_re
  .xn_im(10'b0), // input [9 : 0] xn_im
  .fwd_inv(1'b1), // input fwd_inv
  .fwd_inv_we(1'b1), // input fwd_inv_we
  .scale_sch(10'b0), // input [9 : 0] scale_sch
  .scale_sch_we(1'b0), // input scale_sch_we
  .rfd(fft_ready_for_data), // output rfd
  .xn_index(xn_index), // output [9 : 0] xn_index
  .busy(busy), // output busy
  .edone(edone), // output edone
  .done(done), // output done
  .dv(fft_data_valid), // output dv
  .xk_index(fft_out_index), // output [9 : 0] xk_index
  .xk_re(xk_re), // output [9 : 0] xk_re
  .xk_im(xk_im) // output [9 : 0] xk_im
);

assign fft_out_re_p = ( xk_re >= 0 ) ? xk_re : ~xk_re;
assign fft_out_im_p = ( xk_im >= 0 ) ? xk_im : ~xk_im;
assign fft_out_abs = fft_out_re_p[8:0] + fft_out_im_p[8:0];

endmodule
