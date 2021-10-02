`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:38 12/15/2019 
// Design Name: 
// Module Name:    Phase2_UART 
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
module Phase2_UART(

		input clk,
		input RxD,
		output TxD,
		output reg [6:0] Frequency,
		output reg [3:0] Amplitude,
		output reg [1:0] Wave_type,
		output reg [7:0] test
		
    );
	 
//////////////////////////////////////////////////////////////////////////////////
//Definitions
	 wire RxD_ready;
    wire ready;
    wire [7:0] RxD_data;
	 reg [7:0] ToTransmitData = 0;
	 reg flag = 0;
	 reg start_transmission = 0;
	 reg [7:0] Received_data = 0;
	 reg Received_data_ready = 0;
	 reg start_transmission_flag = 0;
//////////////////////////////////////////////////////////////////////////////////


			
//////////////////////////////////////////////////////////////////////////////////
//Initial values
	initial begin
		Frequency = 10;
		Amplitude = 7;
		Wave_type = 1;
	end
//////////////////////////////////////////////////////////////////////////////////
	
	
//////////////////////////////////////////////////////////////////////////////////	 
	 always @(posedge clk) begin
		
		if(start_transmission_flag)begin
				start_transmission <= 1;
				start_transmission_flag <= 0;
		end
		
		if(start_transmission) start_transmission <= 0;
		
		if(Received_data_ready) begin
//				ToTransmitData <= Received_data;
//				start_transmission_flag <= 1;
				test <= Received_data;
			case (Received_data[7:6])
				
					3 : Frequency <= Received_data[6:0];
					2 : Frequency <= Received_data[6:0];
					1 : Amplitude <= Received_data[3:0];
					0 : Wave_type <= Received_data[1:0];
					
					
			endcase
			
		end
				
	end	
//////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////////
//Instantiations
    ASYNC_Receiver RX(.clk(clk), .RxD(RxD), .data_ready(RxD_ready), .RxD_data(RxD_data));
    ASYNC_Transmitter TX(.clk(clk), .TxD(TxD), .TxD_data(ToTransmitData) , .TxD_start(start_transmission));
//////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////////  
    always @(posedge clk) begin
        if(RxD_ready && !flag)begin
            Received_data <= RxD_data;
            Received_data_ready <= 1;
            flag <= 1;
        end
        
        if(flag) Received_data_ready <= 0;

        if(!RxD_ready) flag <= 0;

    end 
//////////////////////////////////////////////////////////////////////////////////
	 
	 
	 
	 


endmodule
