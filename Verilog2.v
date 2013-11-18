module singleOutPutManager(input [7:0]dataLine,input singleHS, output reg counterEnable_Q,output [2:0]xHex,output reg colorBit,output reg writeEnable, input CLOCK_50, input resetIn);

	reg counterEnable_D;
	
	reg [2:0]counter_D;
	reg [2:0]counter_Q;
	
	assign xHex=counter_Q;
	
	
	
	/*
	assign LEDG[2:0]=counter_Q;
	
	assign LEDG[3]=singleHS;
	assign LEDG[4]=counterEnable_D;

	assign LEDG[5]=counterEnable_Q;
	
	assign LEDG[7]=writeEnable;
	
	*/
	always@(*)
	begin
		if(resetIn)
		begin
			
			if(!counterEnable_Q&!singleHS)
			begin
				writeEnable<=1;
				counter_D<=counter_Q+1;
				if(&counter_Q)
					counterEnable_D<=1;
				else
					counterEnable_D<=0;
			end
			else
			begin
				writeEnable<=0;
				counter_D<=counter_Q;
				if(singleHS)
					counterEnable_D<=0;	
				else
					counterEnable_D<=1;
				
				
			end
			
			case(counter_Q)
				3'b000:colorBit=dataLine[0];
				3'b001:colorBit=dataLine[1];
				3'b010:colorBit=dataLine[2];
				3'b011:colorBit=dataLine[3];
				3'b100:colorBit=dataLine[4];
				3'b101:colorBit=dataLine[5];
				3'b110:colorBit=dataLine[6];
				3'b111:colorBit=dataLine[7];	
			endcase
		
		end
		else
		begin
			counterEnable_D<=0;
			counter_D<=0;
			colorBit<=0;
		end
	
	end
	
	always@(posedge CLOCK_50)
	begin
		counterEnable_Q<=counterEnable_D;
		counter_Q<=counter_D;
	end
	
endmodule


module hexaOutPutManager(input [3:0]hexCode,input mainHS, output reg shiftEnable_Q, output [2:0]xHex,output [2:0]yHex,output colorBit,output writeEnable,input CLOCK_50, input resetIn);
	
	
	
	singleOutPutManager(dataLine,singleHS,counterEnable,xHex,colorBit,writeEnable,CLOCK_50,resetIn);

	
	assign yHex=counter_Q;
	
	
	wire [6:0]romAddress;//yes
	
	wire [7:0]dataLine;//yes
	
	wire counterEnable;//yes
	
	wire[3:0]hexCodeInv;
	
	reg [2:0]counter_Q;
	reg [2:0]counter_D;
	
	reg shiftEnable_D;
	
	reg [1:0]waiter_Q;
	reg [1:0]waiter_D;
	
	wire singleHS=(waiter_Q[1]);
	
	assign romAddress[6:3]=hexCode;
	assign romAddress[2:0]=counter_Q;
	
	/*
	assign LEDG=romAddress;

	assign LEDR[12]=shiftEnable_D;
	assign LEDR[13]=shiftEnable_Q;
	
	
	assign LEDG[1:0]=waiter_D;
	assign LEDG[3:2]=waiter_Q;
	
	assign LEDG[4]=counterEnable;
	assign LEDG[5]=mainHS;
	assign LEDG[6]=random;
	
	
	wire random;
	
	*/
	
	hexaRoom(romAddress,CLOCK_50,dataLine);//takes 2 clock cycles to read!!!!! need a counter to account for that
	
	always@(*)
	begin
		if(resetIn)
		begin
			if(counterEnable&(!mainHS)&(~(|waiter_Q))&!shiftEnable_Q)
			begin
				counter_D<=counter_Q+1;
				waiter_D<=2'b01;
				
				if(&counter_Q)
					shiftEnable_D<=1;
				else
					shiftEnable_D<=0;
				
			end
			else
			begin
				counter_D<=counter_Q;
				
				if(shiftEnable_Q)
				begin
					if(mainHS)
						shiftEnable_D<=0;
					else
						shiftEnable_D<=1;
				
					waiter_D=waiter_Q;
				end
				else
				begin
					shiftEnable_D<=0;

					if(!counterEnable)
						waiter_D=0;
					else
					begin
						if(~waiter_Q[1])
							waiter_D=waiter_Q+1;
						else
							waiter_D=waiter_Q;
					end

				end
			end
		end
		else
		begin
			shiftEnable_D<=0;
			counter_D<=0;
		end
	end
	
	always@(posedge CLOCK_50)
	begin
		counter_Q<=counter_D;
		shiftEnable_Q<=shiftEnable_D;
		waiter_Q<=waiter_D;
	end
	
	
	
endmodule






module mainOutPut(input enable, output reg acknowledge,input [31:0]data,output [7:0]xOut, output [2:0]yOut,output [2:0]colorOut,output writeEnable, 
	input CLOCK_50, input resetIn);
	/*
	assign LEDR[0]=shiftEnable;
	assign LEDR[1]=loadEnable;
	assign LEDR[4:2]=counter_Q;
	
	assign LEDR[10]=colorOut[0];
	assign LEDR[11]=writeEnable;

	
	
	assign LEDG=xOut;
	
	assign LEDR[6:0]=yOut;

	assign LEDR[9]=colorOut[0];
	assign LEDR[11]=writeEnable;

	assign LEDR[17:14]=mainRegistor_Q[31:28];
	
		*/
	//VGAcontrollerMine(xOut,yOut,colorOut,enableOut,resetEnable)////NOT REALLL LLOOK AT THE PAGE
		
	assign colorOut[0]=colorBit;
	assign colorOut[1]=colorBit;
	assign colorOut[2]=colorBit;
	
	assign yOut=yHex;
	
	assign xOut[2:0]=xHex;
	assign xOut[7:3]=3'b111-counter_Q+1;
	

	wire colorBit;//yes
	
	reg [31:0]mainRegistor_Q;
	reg [31:0]mainRegistor_D;
	
	
	reg [2:0]counter_Q;
	reg [2:0]counter_D;
	
	reg hexHS_Q;
	reg hexHS_D;
	
	reg [1:0]states_Q;
	reg [1:0]states_D;
	
	wire loadEnable,shiftEnable;//both yes
		
	assign loadEnable=&counter_Q;
	
	wire [2:0]xHex;//yes 
	wire [2:0]yHex;//yes
	
	
	hexaOutPutManager(mainRegistor_Q[31:28],hexHS_Q,shiftEnable,xHex,yHex,colorBit,writeEnable,CLOCK_50,resetIn);


	always@(*)
	begin
		if(resetIn)
		begin
			case(states_Q)
			
			2'b00:begin//rest
					acknowledge<=0;
					
					if(enable)
						states_D<=2'b01;
					else
						states_D<=2'b00;
						
					mainRegistor_D=0;
					counter_D<=0;
					hexHS_D<=1;
		
				end
			
			2'b01:begin//load 
					acknowledge<=0;
					mainRegistor_D=data;
					counter_D<=0;
					hexHS_D<=1;
					states_D<=2'b10;
				end
			
			2'b10:begin//draw to vga
					acknowledge<=0;
					if(shiftEnable&!hexHS_Q)
					begin
						if(&counter_Q)
							states_D<=2'b11;
						else
							states_D<=2'b10;
							
						counter_D<=counter_Q+1;
						hexHS_D=1;	
						
						mainRegistor_D[3:0]=mainRegistor_Q[31:28];
						mainRegistor_D[31:4]=mainRegistor_Q[27:0];
						
					end
					else
					begin	
						states_D<=2'b10;
						mainRegistor_D=mainRegistor_Q;
						counter_D<=counter_Q;
						
						if(shiftEnable)
							hexHS_D=1;	
						else
							hexHS_D=0;
					end
				end
			
			2'b11:begin	// go to rest
					acknowledge<=1;

					if(enable)
						states_D<=2'b11;
					else
						states_D<=2'b00;
						
					mainRegistor_D=0;
					counter_D<=0;
					hexHS_D<=1;
			
						
				end


			endcase
		end
		else
		begin
			mainRegistor_D=0;
			counter_D=0;
			hexHS_D=0;
			states_D=0;
		end
		
	
				
	end
	
	
	always@(posedge CLOCK_50)
	begin
		mainRegistor_Q<=mainRegistor_D;
		counter_Q<=counter_D;
		hexHS_Q<=hexHS_D;
		states_Q<=states_D;
	end
	
endmodule

module drawToVGA(input enable, output reg acknowledge,input [31:0]dataRead, output [10:0]address,
					  output [7:0]xOut, output [6:0]yOut,output [2:0]colorOut,output reg writeEnable, 
					  input CLOCK_50, input resetIn,/*output [17:0]LEDR, output [7:0]LEDG,*/ input clock);
						
	
	/*
	assign LEDR[3:0]=count_Q;
	assign LEDR[6:4]=states_Q;
	assign LEDR[8:7]=wait_Q;
	assign LEDR[9]=enable;
	assign LEDR[10]=acknowledge;
	assign LEDR[11]=enableDRAW;
	assign LEDR[12]=acknowledgeDRAW;
	assign LEDR[13]=writeEnable;
	assign LEDR[17:14]=address[3:0];
	
	
	assign LEDG=dataRead_Q[7:0];
	*/
	
	
	
	reg [2:0]states_D;
	reg [2:0]states_Q;	
	
	reg [31:0]dataRead_D;
	reg [31:0]dataRead_Q;
	
	reg [1:0]wait_D;
	reg [1:0]wait_Q;
	
	reg [3:0]count_D;
	reg [3:0]count_Q;
	
	wire [2:0]ymid;
	assign yOut[2:0]=ymid;
	assign yOut[6:3]=4'b1110-count_Q;
	
	wire writeEnablemid;
	
	mainOutPut inst(enableDRAW,acknowledgeDRAW,dataRead_Q,xOut,ymid,colorOut,writeEnablemid,CLOCK_50,resetIn);
	
	assign address[3:0]=count_Q;
	assign address[10:4]=0;
	
	wire [31:0]hanging;
	
	reg enableDRAW;
	wire acknowldgeDRAW;
	
	
	always@(*)
	begin 
		case(states_Q)
		
		3'b000:begin //rest
					if(enable)
						states_D<=3'b001;
					else
						states_D<=3'b000;
						
					dataRead_D<=0;
					count_D<=3'b000;
					wait_D<=0;
					acknowledge<=0;
					enableDRAW<=0;
					writeEnable<=0;
					
				 end
					
		3'b001:begin //read sram
					
					dataRead_D<=dataRead;
					
					if(~(&wait_Q))
					begin
						wait_D<=wait_Q+1;
						states_D<=3'b001;
					end
					else
					begin
						wait_D<=2'b00;
						states_D<=3'b010;
					end
						
					count_D<=count_Q;
					acknowledge<=0;
					enableDRAW<=0;
					writeEnable<=0;

					
					end
					
		3'b010:begin //draw
					
					
					if(acknowledgeDRAW)	
						states_D<=3'b011;
				
					else
						states_D<=3'b010;
					
					wait_D<=2'b00;	
					enableDRAW<=1;
					dataRead_D<=dataRead_Q;
					count_D<=count_Q;
					acknowledge<=0;
					writeEnable<=writeEnablemid;


					end
		3'b011:begin //add counter
					
					
					if(~(&count_Q))
					begin
						count_D<=count_Q+1;
						states_D<=3'b001;
					end
					else
					begin
						count_D<=0;
						states_D<=3'b100;
					end
						
					enableDRAW<=0;
					wait_D<=2'b00;
					dataRead_D<=dataRead_Q;
					writeEnable<=0;
					acknowledge<=0;



					end
					
		3'b100:begin //return to rest
					
					acknowledge<=1;

					if(enable)
						states_D<=3'b100;
					else
						states_D<=3'b000;
						
					wait_D<=2'b00;
					dataRead_D<=dataRead_Q;
					count_D<=0;
					writeEnable<=0;
					enableDRAW<=0;
					
				end
		endcase	
		end
	
	
		always@(posedge CLOCK_50)///change to clock 50
		begin
			count_Q<=count_D;
			wait_Q<=wait_D;
			dataRead_Q<=dataRead_D;
			states_Q<=states_D;
		end
	

endmodule




module writeToRam(input [31:0]data,input enable, input [31:0]dataRead, output reg acknowledge, output [10:0]address,output reg [31:0]dataWrite_Q,
						output reg writeEnable, input CLOCK_50, input resetIn);
						
	
	
	reg [2:0]states_D;
	reg [2:0]states_Q;
	
	reg [31:0]dataWrite_D;
	
	
	reg [31:0]dataRead_D;
	reg [31:0]dataRead_Q;
	
	reg [1:0]wait_D;
	reg [1:0]wait_Q;
	
	reg [3:0]count_D;
	reg [3:0]count_Q;
	
	
	
	assign address[3:0]=count_Q;
	assign address[10:4]=0;
	
	wire [31:0]hanging;
	
	always@(*)
	begin 
		case(states_Q)
		
		3'b000:begin //rest
					if(enable)
						states_D<=3'b001;
					else
						states_D<=3'b000;
						
					dataWrite_D<=0;
					dataRead_D<=0;
					count_D<=3'b000;
					wait_D<=0;
					writeEnable<=0;
					acknowledge<=0;
					
				 end
		3'b001:begin//data initialisation 
					
					dataWrite_D<=data;
					states_D<=3'b010;	
					
										
					dataRead_D<=0;
					count_D<=0;
					wait_D<=0;
					writeEnable<=0;
					acknowledge<=0;



					end
					
		3'b010:begin //read sram
					
					dataRead_D=dataRead;
					
					if(~(&wait_Q))
					begin
						wait_D<=wait_Q+1;
						states_D<=3'b010;
					end
					else
					begin
						wait_D<=2'b00;
						states_D<=3'b011;
					end
						
					
					dataWrite_D<=dataWrite_Q;
					count_D<=count_Q;
					writeEnable<=0;
					acknowledge<=0;



					end
					
		3'b011:begin //write sram
					
					
					if(~(&wait_Q))
					begin
						wait_D<=wait_Q+1;
						states_D<=3'b011;
					end
					else
					begin
						wait_D<=2'b00;
						states_D<=3'b100;
					end
						
					
					dataWrite_D<=dataWrite_Q;
					dataRead_D<=dataRead_Q;
					count_D<=count_Q;
					writeEnable<=1;
					acknowledge<=0;



					end
		3'b100:begin //add counter
					
					
					if(~(&count_Q))
					begin
						count_D<=count_Q+1;
						states_D<=3'b010;
					end
					else
					begin
						count_D<=0;
						states_D<=3'b101;
					end
						
					wait_D<=2'b00;
					dataWrite_D<=dataRead_Q;
					dataRead_D<=dataRead_Q;
					writeEnable<=0;
					acknowledge<=0;



					end
					
		3'b101:begin //return to rest
					
					acknowledge<=1;

					if(enable)
						states_D<=3'b101;
					else
						states_D<=3'b000;
						
					wait_D<=2'b00;
					dataWrite_D<=dataWrite_Q;
					dataRead_D<=dataRead_Q;
					writeEnable<=0;
				end
		endcase	
		end
	
	
		always@(posedge CLOCK_50)
		begin
			count_Q<=count_D;
			wait_Q<=wait_D;
			dataRead_Q<=dataRead_D;
			dataWrite_Q<=dataWrite_D;
			states_Q<=states_D;
		end
	

endmodule

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
	wire writeEnableRamWTR;
	wire [31:0]dataWriteWTR;
	
	reg [10:0]address;
	reg writeEnableRam;
	reg [31:0]dataWrite;
	wire [31:0]dataRead;
	
	
	wire [10:0]addressDRAW;
	wire writeEnableRamDRAW;
	wire [31:0]dataWriteDRAW;
	
	wire [10:0]addressMOD;
	wire writeEnableRamMOD;
	wire [31:0]dataWriteMOD;
	
	reg [2:0]states_Q;
	reg [2:0]states_D;
	
	reg [1:0]wait_Q;
	reg [1:0]wait_D;
	
	
	reg enableWTRkey;
	reg enableWTRkeymem;
	
	reg enableDRAWkey;
	reg enableDRAWkeymem;
	
	
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
		
		3'b001://write to ram 
		begin
			wait_D<=0;
			enableDRAW<=0;
			enableWTR<=1;
			
			address=addressWTR;
			writeEnableRam=writeEnableRamWTR;
			dataWrite=dataWriteWTR;
			
			if(acknowledgeWTR)
				states_D<=3'b010;
			else
				states_D<=3'b001;
		
		end
		
		3'b010://draw
		begin
			wait_D<=0;
			address=addressDRAW;
			writeEnableRam=0;
			dataWrite=0;
			
			enableDRAW<=1;
			enableWTR<=0;
		
			if(acknowledgeDRAW)
				states_D<='b000;
			else
				states_D<=3'b010;
		
		end
		
		3'b011://check (only for debuging)
		begin
			wait_D<=0;
			address[6:0]=SW[16:10];
			address[10:7]=0;
			writeEnableRam=0;
			dataWrite=0;
			
			enableDRAW<=0;
			enableWTR<=0;
			if(SW[17])
				states_D<=3'b011;
			else
				states_D<=3'b000;
		end
		
		3'b100://modify ram
		begin
			address=0;
			writeEnableRam=1;
			dataWrite=data;
			
			enableDRAW<=0;
			enableWTR<=0;
			
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
	
	end
	
	always@( posedge CLOCK_50)
	begin
		if(~enableWTRkey&~enableWTRkeymem&~KEY[1])
		begin
			enableWTRkey<=1;
			enableWTRkeymem<=0;
		end
		else
		begin
			if(KEY[1])
			begin
				enableWTRkey<=0;
				enableWTRkeymem<=0;
			end
			else
			begin
				if(enableWTRkey&~enableWTRkeymem)
				begin
					enableWTRkey<=0;
					enableWTRkeymem<=1;
				end
			end
		end
				
		if(~enableDRAWkey&~enableDRAWkeymem&~KEY[2])
		begin
			enableDRAWkey<=1;
			enableDRAWkeymem<=0;
		end
		else
		begin
			if(KEY[2])
			begin
				enableDRAWkey<=0;
				enableDRAWkeymem<=0;
			end
			else
			begin
				if(enableDRAWkey&~enableDRAWkeymem)
				begin
					enableDRAWkey<=0;
					enableDRAWkeymem<=1;
				end
			end
		end

	end
	
	//assign addressVGA[6:0]=SW[16:10];
///	assign addressVGA[10:7]=0;
//	assign writeEnableRamVGA=SW[17];
///	assign dataWriteVGA=data;
	
	
	wire writeEnable;
	wire [31:0]data;
	wire [2:0] color;
	wire [7:0] x;
	wire [6:0] y;
	
	/*
	assign data[7:0]=SW[7:0];
	assign data[15:8]=SW[7:0];
	assign data[23:16]=SW[7:0];
	assign data[31:24]=SW[7:0];
	*/
	
	wire resetIn;
	assign resetIn = KEY[0];

	
	


	

	
	//assign LEDR[17:10]=dataWrite;
	
	assign LEDR[15]=&wait_Q;
	
	assign LEDR[12:10]=states_Q;
	
	assign LEDR[5:0]=address[5:0];
	
	assign LEDR[7:6]=wait_Q;
	
	assign LEDR[9]=writeEnableRam;

	assign LEDG=dataRead[7:0];

	/*
	assign LEDR[17]=writeEnable;
	
	assign LEDR[6:0]=y;
	
	assign LEDR[12:10]=color;
	*/

	

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

