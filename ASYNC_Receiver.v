`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:56:32 11/03/2019 
// Design Name: 
// Module Name:    ASYNC_Receiver 
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
module ASYNC_Receiver (
    input clk,
    input RxD,
    output [7:0] RxD_data,
    output reg data_ready = 0
    );

    reg [15:0] oversampling_register = 0;
    reg [8:0] input_register;
    reg [3:0] counter = 0;
    reg [2:0] start_bit_detection_oversampler = 0;
    reg [3:0] start_bit_detection = 0;
    reg [3:0] bit_number = 0;
    reg [4:0] sum = 15;
	 reg count_done=0,start_bit = 0;

   //////////////////////////////////////////////////////////////////////////////////
	//Generating 16*BaudTick in order to oversample input data
    parameter ClkFrequency = 24000000; // 24MHz
    parameter Baud = 115200;
    parameter BaudGeneratorAccWidth = 16;
    parameter BaudGeneratorInc = ((Baud<<(BaudGeneratorAccWidth-4))+(ClkFrequency>>5))/(ClkFrequency>>4);

    reg [BaudGeneratorAccWidth:0] BaudGeneratorAcc = 0;

    always @(posedge clk)
        BaudGeneratorAcc <= BaudGeneratorAcc[BaudGeneratorAccWidth:0] + BaudGeneratorInc;

    wire BaudTick_16 = BaudGeneratorAcc[BaudGeneratorAccWidth-5];
	//////////////////////////////////////////////////////////////////////////////////
	
	
	//////////////////////////////////////////////////////////////////////////////////
	//start bit detection:
    always @(posedge clk)begin
        if(data_ready && start_bit) start_bit <= 0;
        if(!start_bit && start_bit_detection_oversampler < 7)begin
            start_bit_detection_oversampler <= start_bit_detection_oversampler +1;
            start_bit_detection[start_bit_detection_oversampler] <= RxD;
        end
        if (start_bit_detection_oversampler == 7) begin
            if (start_bit_detection <= 1) start_bit <= 1;
            start_bit_detection_oversampler <= 0;
        end
    end
	 ////////////////////////////////////////////////////////////////////////////////
	 
	 
	////////////////////////////////////////////////////////////////////////////////// 
	//start receving after detecting the start bit
    always @(posedge BaudTick_16) begin
        if (counter <15) begin
            count_done <= 0;
           if(start_bit) counter <= counter+1;
        end
        oversampling_register[counter] <= RxD;
        if (counter == 15) begin
            counter <= 0;
            sum <= oversampling_register[0]+oversampling_register[1]+oversampling_register[2]+oversampling_register[3]+oversampling_register[4]+oversampling_register[5]+oversampling_register[6]+oversampling_register[7]+oversampling_register[8]+oversampling_register[9]+oversampling_register[10]+oversampling_register[11]+oversampling_register[12]+oversampling_register[13]+oversampling_register[14]+oversampling_register[15];
            count_done <= 1;
        end

        if (start_bit && count_done) begin
            if (sum > 8) input_register[bit_number] <= 1;
            else input_register[bit_number] <= 0;
            if(bit_number < 8) bit_number <= bit_number+1;
        end
        if (bit_number == 8 && count_done) begin
            bit_number <= 0;
            data_ready <= 1;
        end

        if (data_ready) data_ready <=0;  //data ready stays high for 1 clock

    end
	 /////////////////////////////////////////////////////////////////////////////////
	 
	 
		assign RxD_data = input_register[8:1];  //don't consider the start bit

endmodule
