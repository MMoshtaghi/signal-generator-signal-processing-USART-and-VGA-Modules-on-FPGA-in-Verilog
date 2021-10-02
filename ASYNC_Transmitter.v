`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:57:18 11/03/2019 
// Design Name: 
// Module Name:    ASYNC_Transmitter
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
module ASYNC_Transmitter(
    input clk,TxD_start,
    input [7:0] TxD_data,
    output TxD
    );

	 reg busy = 0;
    reg [3:0] counter = 0;
    reg [9:0] T_register = 10'b10_0000_0000;
    reg out =1,TxD_start_flag = 0;
	 
	 //////////////////////////////////////////////////////////////////////////////////
	 //Generating BuadTick
    parameter ClkFrequency = 24000000; // 24MHz
    parameter Baud = 115200;
    parameter BaudGeneratorAccWidth = 16;
    parameter BaudGeneratorInc = ((Baud<<(BaudGeneratorAccWidth-4))+(ClkFrequency>>5))/(ClkFrequency>>4);

    reg [BaudGeneratorAccWidth:0] BaudGeneratorAcc = 0;

    always @(posedge clk)
    BaudGeneratorAcc <= BaudGeneratorAcc[BaudGeneratorAccWidth:0] + BaudGeneratorInc;

    wire BaudTick = BaudGeneratorAcc[BaudGeneratorAccWidth-1];
	 //////////////////////////////////////////////////////////////////////////////////
	 
	 
	 //////////////////////////////////////////////////////////////////////////////////
	 //wait for start command
    always @(posedge clk) begin
        if((!TxD_start_flag) && TxD_start && !busy) begin
            TxD_start_flag <= 1;
            T_register[8:1] <= TxD_data;
        end
        if(busy && TxD_start_flag) begin 
            TxD_start_flag <= 0;
        end
    end 
	 //////////////////////////////////////////////////////////////////////////////////
	 
	 
	 //////////////////////////////////////////////////////////////////////////////////	
	 //Start transmitting data
    always @(posedge BaudTick) begin
            if(TxD_start_flag && !(busy))  busy <= 1;
            else if (busy) begin
                if (counter < 9)   counter <= counter+1;
                out <= T_register[counter];
                if (counter == 9) begin
                    busy <= 0;
                    counter <= 0;
                end
            end
    end
	//////////////////////////////////////////////////////////////////////////////////
	 
	 assign TxD = out;	 

endmodule
