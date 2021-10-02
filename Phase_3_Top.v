`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:55:02 02/01/2020 
// Design Name: 
// Module Name:    Phase_3_Top 
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
module Phase_3_Top(
		
		  input clk,
        input RxD,
        input reset,
        output TxD,
        output v_sync,
        output h_sync,
        output [2:0] rgb,
		  output [7:0] test
		
    );

//////////////////////////////////////////////////////////////////////////////////
//definitions
wire [6:0] Frequency;
wire [3:0] Amplitude;
wire [1:0] Wave_type;
wire video_on ;
wire [8:0] RAM1_In;
wire [8:0] RAM1_out;
wire RAM1_wr_en;
wire [8:0] RAM2_In;
wire [8:0] RAM2_out;
wire RAM2_wr_en;
wire [9:0] RAM1_address;
wire [9:0] RAM2_address;
wire [9:0]function_out;
wire change_command;
wire [9:0] pixel_x;
wire [9:0] pixel_y;
wire tick_640k;
wire fft_data_valid;
wire [9:0] fft_out_index;
wire [9:0] fft_out_abs;
//////////////////////////////////////////////////////////////////////////////////

  
//////////////////////////////////////////////////////////////////////////////////
//Instantiations

Handler Handler ( 
    .video_on(video_on), 
    .clk(clk), 
    .h_sync(h_sync), 
    .v_sync(v_sync), 
    .function_out(function_out),
	 .pixel_x(pixel_x),
	 .pixel_y(pixel_y),
	 .tick_640k(tick_640k),
    .change_command(change_command), 
	 .fft_out_abs(fft_out_abs),
	 .fft_data_valid(fft_data_valid),
	 .RAM1_out(RAM1_out),
	 .RAM2_out(RAM2_out),
    .RAM1_address(RAM1_address),
	 .RAM2_address(RAM2_address),
    .RAM1_wr_en(RAM1_wr_en),
	 .RAM2_wr_en(RAM2_wr_en),	 
    .RAM1_In(RAM1_In),
	 .RAM2_In(RAM2_In),
	 .rgb(rgb)
    );

Phase2_UART UART (
    .clk(clk), 
    .RxD(RxD), 
    .TxD(TxD), 
    .Frequency(Frequency), 
    .Amplitude(Amplitude), 
    .Wave_type(Wave_type),
	 .test(test)
    );
	 

ProjectPhase1Top generator (
    .clk(clk), 
    .reset(reset), 
    .Fin({1'b0,Frequency}), 
    .Ain(Amplitude),
	 .change_command(change_command),
    .sig_type(Wave_type), 
    .out(function_out)
    );
	 
Sync VGA_Sync (
    .clk(clk), 
    .h_sync(h_sync), 
    .v_sync(v_sync),
	 .pixel_x(pixel_x),
	 .pixel_y(pixel_y),
    .video_on(video_on)
    );
	 
RAM1 RAM1 (
  .clka(clk), // input clka
  .wea(RAM1_wr_en), // input [0 : 0] wea
  .addra(RAM1_address), // input [9 : 0] addra
  .dina(RAM1_In), // input [8 : 0] dina
  .douta(RAM1_out) // output [8 : 0] douta
);

RAM2 RAM2 (
  .clka(clk), // input clka
  .wea(RAM2_wr_en), // input [0 : 0] wea
  .addra(RAM2_address), // input [9 : 0] addra
  .dina(RAM2_In), // input [8 : 0] dina
  .douta(RAM2_out) // output [8 : 0] douta
);

	 
top_module fft (
    .clk(clk), 
    .data_in(function_out), 
    .rst(!reset), 
    .dv(fft_data_valid), 
    .fft_to_vga(fft_out_abs), 
    .fft_address(fft_out_index)
    );
	 
//////////////////////////////////////////////////////////////////////////////////


endmodule
