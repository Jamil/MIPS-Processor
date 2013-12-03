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
	
	reg [2:0]counter_Q;
	reg [2:0]counter_D;
	
	reg shiftEnable_D;
	
	reg [1:0]waiter_Q;
	reg [1:0]waiter_D;
	
	wire singleHS=(waiter_Q[1]);
	
	
	wire[3:0]hexCodeInv;
	assign hexCodeInv[0]=hexCode[3];
	assign hexCodeInv[1]=hexCode[2];
	assign hexCodeInv[2]=hexCode[1];
	assign hexCodeInv[3]=hexCode[0];
	
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

	assign colorOut[0]=colorBit;
	assign colorOut[1]=colorBit;
	assign colorOut[2]=colorBit;
	
	assign yOut=yHex;
	
	assign xOut[2:0]=xHex;
	assign xOut[7:3]=counter_Q+1;
	

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
					  input CLOCK_50, input resetIn);
						
	
	
	
	
	
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


module saveToLowRam(input enable, output reg acknowledge, input [31:0]dataRead, input [10:0]inAddress, output reg [10:0]address,output reg [31:0]dataWrite_Q,
						output reg writeEnable, input CLOCK_50, input resetIn);
						
		reg [1:0]states_D;
		reg [1:0]states_Q;
		
		reg [31:0]dataWrite_D;
		
		
		reg [1:0]wait_D;
		reg [1:0]wait_Q;
		
		
		
		
		always@(*)
		begin
			case(states_Q)
			
			2'b00://rest
			begin
				
				if(enable)
					states_D<=2'b01;
				else
					states_D<=2'b00;
			
				dataWrite_D=0;
				wait_D=0;
				
				writeEnable=0;
				acknowledge=0;
				address=0;
			end
			
			2'b01://read from vga ram
			begin
			
				if(&wait_Q)
				begin
					states_D<=2'b10;
					wait_D=0;
				end
				else
				begin
					states_D<=2'b01;
					wait_D=wait_Q+1;				
				end
			
				dataWrite_D=dataRead;
				writeEnable=0;
				acknowledge=0;
				address=~0;
			end
			
			2'b10://write to cpu ram
			begin
				if(&wait_Q)
				begin
					states_D<=2'b11;
					wait_D=0;
				end
				else
				begin
					states_D<=2'b10;
					wait_D=wait_Q+1;				
				end
			
				dataWrite_D=dataWrite_Q;
				writeEnable=1;
				acknowledge=0;
				address=inAddress;			
			end
			
			2'b11://go to rest
			begin
				if(enable)
					states_D<=2'b11;		
				else
					states_D<=2'b00;
				
			
				wait_D=0;
				dataWrite_D=0;
				writeEnable=0;
				acknowledge=1;
				address=0;	
			
			end
			
			
			
			endcase
		
		end
		
		always@(posedge CLOCK_50)
		begin
			states_Q<=states_D;
			dataWrite_Q<=dataWrite_D;
			wait_Q<=wait_D;
		end
						
	


endmodule

