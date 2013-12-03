

module outputManagment
	(
		CLOCK_50,						//	On Board 50 MHz
		VGA_CLK,   						//	VGA Clock
		VGA_HS,							//	VGA H_SYNC
		VGA_VS,							//	VGA V_SYNC
		VGA_BLANK,						//	VGA BLANK
		VGA_SYNC,						//	VGA SYNC
		VGA_R,   						//	VGA Red[9:0]
		VGA_G,	 						//	VGA Green[9:0]
		VGA_B,	  						//	VGA Blue[9:0]
		SW,
		KEY,
		LEDR,
		LEDG, 
		HEX0,
        HEX1,
        HEX2,
        HEX3,
        HEX4,
        HEX5,
        HEX6,
        HEX7,
        LEDR,
        LEDG,
		  PS2_CLK,
        PS2_DAT,
		  
		  
	);
	input [17:0]SW;
	input [3:0]KEY;
	output [17:0]LEDR;
	output [7:0]LEDG;
	input	CLOCK_50;				//	50 MHz
	
	inout                                PS2_CLK;
	inout                                PS2_DAT;
	
	output	VGA_CLK;   				//	VGA Clock
	output	VGA_HS;					//	VGA H_SYNC
	output	VGA_VS;					//	VGA V_SYNC
	output	VGA_BLANK;				//	VGA BLANK
	output	VGA_SYNC;				//	VGA SYNC
	output	[9:0] VGA_R;   			//	VGA Red[9:0]
	output	[9:0] VGA_G;	 		//	VGA Green[9:0]
	output	[9:0] VGA_B;   			//	VGA Blue[9:0]
	
	output                [6:0]        HEX0;
	output                [6:0]        HEX1;
	output                [6:0]        HEX2;
	output                [6:0]        HEX3;
	output                [6:0]        HEX4;
	output                [6:0]        HEX5;
	output                [6:0]        HEX6;
	output                [6:0]        HEX7;
	
	
	wire [10:0]addressWTR;
	wire [10:0]NotaddressWTR;
	wire writeEnableRamWTR;
	wire [31:0]dataWriteWTR;
	assign NotaddressWTR=~addressWTR;
		
	wire [10:0]addressDRAW;
	wire [10:0]NotaddressDRAW;
	wire writeEnableRamDRAW;
	wire [31:0]dataWriteDRAW;
	assign NotaddressDRAW=~addressDRAW;
	
	wire [10:0]addressMOD;
	wire [10:0]NotaddressMOD;
	assign addressMOD=0;
	assign NotaddressMOD=~addressMOD;
	
	
	
	reg [10:0]address;
	reg writeEnableRam;
	reg [31:0]dataWrite;
	wire [31:0]dataRead;
	
	reg [2:0]states_Q;
	reg [2:0]states_D;
	
	reg [1:0]wait_Q;
	reg [1:0]wait_D;
	
	reg [10:0]counterAddress_Q;
	reg [10:0]counterAddress_D;

	
	
	reg enableWTR;
	wire acknowledgeWTR;
	
	
	reg enableDRAW;
	wire acknowledgeDRAW;
	
	always@(*)
	begin
		case(states_Q)
		
		3'b000://rest
		begin
			wait_D<=0;
			enableDRAW<=0;
			enableWTR<=0;
			
			address=0;
			writeEnableRam=0;
			dataWrite=0;
			
			counterAddress_D<=counterAddress_Q;
			
			if(enter&~did_change)
				states_D<=3'b001;
			else
			begin
				if(~enter&did_change)
					states_D<=3'b100;
				else
				begin
				if(SW[17])///DEBUGIN MUST REMOVE
					states_D<=3'b011;
				else
					states_D<=3'b000;
				end	
			end
		
		end
		
		3'b001://write to drawing ram using the last ram
		begin
			wait_D<=0;
			enableDRAW<=0;
			enableWTR<=1;
			
			address=NotaddressWTR;//last ram
			writeEnableRam=writeEnableRamWTR;
			dataWrite=dataWriteWTR;
			
			counterAddress_D<=counterAddress_Q;

			
			if(acknowledgeWTR)
				states_D<=3'b010;
			else
				states_D<=3'b001;
		
		end
		
		3'b010://draw to vga using last ram
		begin
			wait_D<=0;
			address=NotaddressDRAW;//last ram
			writeEnableRam=0;
			dataWrite=0;
			
			enableDRAW<=1;
			enableWTR<=0;
			
			counterAddress_D<=counterAddress_Q;

		
			if(acknowledgeDRAW)
				states_D<='b000;
			else
				states_D<=3'b010;
		
		end
		
		3'b011://check (only for debuging)
		begin
			wait_D<=0;
			address[5:0]=SW[15:10];
			
			address[6]=SW[16];
			address[7]=SW[16];
			address[8]=SW[16];
			address[9]=SW[16];
			address[10]=SW[16];	
			
			writeEnableRam=0;
			dataWrite=0;
			
			enableDRAW<=0;
			enableWTR<=0;
			
			counterAddress_D<=counterAddress_Q;

			
			if(SW[17])
				states_D<=3'b011;
			else
				states_D<=3'b000;
		end
		
		3'b100://modify ram
		begin
			address=NotaddressMOD;
			writeEnableRam=1;
			dataWrite=data;
			
			enableDRAW<=0;
			enableWTR<=0;
			
			counterAddress_D<=counterAddress_Q;

			
			if(&wait_Q)
			begin
				states_D<=3'b010;
				wait_D<=0;
			end
			else
			begin
				states_D<=3'b100;
				wait_D<=wait_Q+1;
			end
		
		
		
		end
		
		endcase
	
	end
	
	always@(posedge CLOCK_50)
	begin
		
		states_Q<=states_D;
		wait_Q<=wait_D;
		counterAddress_Q=counterAddress_D;
	end
	
	
	wire writeEnable;
	wire [31:0]data;
	wire [2:0] color;
	wire [7:0] x;
	wire [6:0] y;
	
	
	wire resetIn;
	assign resetIn = KEY[0];

	/*
	
	assign LEDR[15]=&wait_Q;
	
	assign LEDR[12:10]=states_Q;
	
	assign LEDR[5:0]=address[5:0];
	
	assign LEDR[7:6]=wait_Q;
	
	assign LEDR[9]=writeEnableRam;

	assign LEDG=dataRead[7:0];

	*/
	assign LEDR=SW;

	mainMemory (address,CLOCK_50,dataWrite,writeEnableRam,dataRead);
	
	
	
		
	///mainOutPut inst(enablePAINT,acknowledgePAINT,data1,x1,y1m,color1,writeEnable1,CLOCK_50,resetIn);
	drawToVGA(enableDRAW,acknowledgeDRAW,dataRead,addressDRAW,x,y,color,writeEnable,CLOCK_50,resetIn/*,LEDR,LEDG*/,~KEY[3]);
	
	wire enter,submit,did_change;
	wire [31:0]datafake;
	wire [4:0]KEYfake;
	wire [7:0]LEDRfake;
	wire [7:0]LEDGfake;

	
	
   input_control (
        // Inputs
        CLOCK_50,
        KEYfake,

        // Bidirectionals
        PS2_CLK,
        PS2_DAT,
        
        // Outputs (DE2)
        HEX0,HEX1,
        HEX2,HEX3,
        HEX4,HEX5,
        HEX6,HEX7,
        LEDRfake,LEDGfake,enter,submit,did_change,data);
	
	
	
	writeToRam(0,enableWTR,dataRead,acknowledgeWTR, addressWTR,dataWriteWTR,writeEnableRamWTR,CLOCK_50,resetIn);
	
	// Create an Instance of a VGA controller - "There can be only one!"
	// Define the number of colours as well as the initial background
	// image file (.MIF) for the controller.
	vga_adapter VGA(
			.resetn(resetIn),
			.clock(CLOCK_50),
			.colour(color),
			.x(x),
			.y(y),
			.plot(writeEnable),
			/* Signals for the DAC to drive the monitor. */
			.VGA_R(VGA_R),
			.VGA_G(VGA_G),
			.VGA_B(VGA_B),
			.VGA_HS(VGA_HS),
			.VGA_VS(VGA_VS),
			.VGA_BLANK(VGA_BLANK),
			.VGA_SYNC(VGA_SYNC),
			.VGA_CLK(VGA_CLK));
		defparam VGA.RESOLUTION = "160x120";
		defparam VGA.MONOCHROME = "FALSE";
		defparam VGA.BITS_PER_COLOUR_CHANNEL = 1;
		defparam VGA.BACKGROUND_IMAGE = "backgroundMemory.mif";
		
endmodule

