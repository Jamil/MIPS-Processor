module mainControllerCPU(input enable, output reg acknowledge, input [31:0]dataRead, output reg [10:0]address,output reg [31:0]dataWrite_Q,
						output reg writeEnable, input CLOCK_50, input resetIn,output reg [17:0]LEDG, input [9:0]SW,input clock);
						
		
	reg [31:0]IR_read;
	
	reg [2:0]states_D;
	reg [2:0]states_Q;
	
	reg [31:0]dataWrite_D;
	
	wire [31:0]R0;
	wire [31:0]R1;
	wire [31:0]R2;
	wire [31:0]R3;
	wire [31:0]R4;
	wire [31:0]R5;
	wire [31:0]R6;
	wire [31:0]R7;
	wire [31:0]R8;
	wire [31:0]R9;
	wire [31:0]R10;
	wire [31:0]R11;
	wire [31:0]R12;
	wire [31:0]R13;
	wire [31:0]R14;
	wire [31:0]R15;
	wire [31:0]R16;
	wire [31:0]R17;
	wire [31:0]R18;
	wire [31:0]R19;
	wire [31:0]R20;
	wire [31:0]R21;
	wire [31:0]R22;
	wire [31:0]R23;
	wire [31:0]R24;
	wire [31:0]R25;
	wire [31:0]R26;
	wire [31:0]R27;
	wire [31:0]R28;
	wire [31:0]R29;
	wire [31:0]R30;
	wire [31:0]R31;
	
	reg enableRM;
	wire acknowledgeRM;
	wire [31:0]addressRM;
	wire [31:0]dataWriteRM;
	wire writeEnableRM;
	
	reg enableFI;
	wire acknowledgeFI;
	wire [31:0]addressFI;
	wire [31:0]dataWriteFI;
	wire writeEnableFI;
	
	assign dataWriteFI=0;
	assign writeEnableFI=0;
	
	
	wire [4:0]RDadd;
	wire [2:0]opCode;
	wire [31:0]ALUres;
	wire [31:0]ADDout;
	wire [31:0]PC;
	wire [31:0] alu_A;
	wire	[31:0]	alu_B; 
	wire	[26:0]	immediate;
	//wire 	[26:0]	pc_increment_jump;
	wire [31:0]IR;
	
	reg [31:0]PC_Q;
	reg [31:0]PC_D;
	
	wire exitCode;
	reg resetInR;
	
	
	wire	[31:0]	pc_increment_jump;	
	wire	[3:0]		alu_opcode;
	wire	select_immediate;
	
	
	wire [31:0]fake2;
	getRDvalue r2(SW[9:5], R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, 
	R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31, fake2);
	always@(*)
	begin
		case(SW[2:0])
		
		3'b000://if(~SW[0]&~SW[1]&~SW[2])
		begin
		 LEDG[2:0]=opCode;
		 LEDG[7:3]=RDadd;
		 LEDG[12:8]=ADDout[4:0];
		 LEDG[17:13]=	ALUres[4:0];
		end
		3'b001://if(SW[0]&~SW[1]&~SW[2])
		begin
		 LEDG[17:0]=fakeLEDGdebug[17:0];
		end
		3'b010://if(~SW[0]&SW[1]&~SW[2])
		begin
		 LEDG[17:0]=LEDRrm;
		end
		3'b011://if(SW[0]&SW[1]&~SW[2])
		begin
		 LEDG[14:0]=fake2[14:0];
		 LEDG[17]=exitCode;
		end
		3'b100://if(~SW[0]&~SW[1]&SW[2])
		begin
		 LEDG[17:0]=PC[17:0];
		end
		3'b101://if(SW[0]&~SW[1]&SW[2])
		begin
		 LEDG[10:0]=address;
		 LEDG[17:11]=states_Q;
		end
		3'b110://if(~SW[0]&SW[1]&SW[2])
		begin
		 LEDG[17:0]=PC_Q[17:0];
		end
		3'b111://if(SW[0]&SW[1]&SW[2])
		begin
		 LEDG[17:0]=LEDRrm2;
		end
	  endcase	
	
	end
	
	
	
	 //IF
	fetchInstruction(enableFI, acknowledgeFI,dataRead/*input RAM*/,PC_Q/*input 32*/,addressFI/*output 32 RAM*/,IR/*output 32*/, 
							CLOCK_50, resetIn);
	wire [17:0]fakeLEDGdebug;	
	wire [17:0]fakeLEDGdebug2;						
	
	//DE
	decoder (
	/* INPUTS */
	IR_read,
	CLOCK_50,
	PC_Q,
	// Registers
	R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16,
	R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31,
	
	/* OUTPUTS */
	//To CPU Controller
	exitCode,
	
	// To Executer
	alu_A,
	alu_B, 
	immediate,
	pc_increment_jump,	
	alu_opcode, 
	select_immediate,
	
	// To Result Manager
	 opCode/*output 3*/, 
	 RDadd/*output 5*/,
	 
	 fakeLEDGdebug,
	 fakeLEDGdebug2
);	
							

	//EX
	execute (CLOCK_50, PC_Q/*32 bits*/,
	
	// From Decoder
	alu_A/*32 bits*/,
	alu_B/*32 bits*/, 
	immediate/*27 bits*/,
	pc_increment_jump/*26 bits*/,	
	alu_opcode/* */, 
	select_immediate,
	
	/* OUTPUTS */
	ADDout,
	ALUres);
	
	wire [17:0]LEDRrm;
	wire [17:0]LEDRrm2;
	
	//MEM and WB			
	resultManagment(enableRM, acknowledgeRM, dataRead/*32 bits in*/, addressRM/*32 bits out*/, dataWriteRM/*32 bits out*/,
						writeEnableRM/*out*/,RDadd/*in 5 bits*/, opCode/*in 3 bits*/, ALUres/*32 bits*/, ADDout/*32 bits addout*/,
						PC/*out 32 bits*/,PC_Q/*input 32*/,
							R0,
							R1,
							R2,
							R3,
							R4,
							R5,
							R6,
							R7,
							R8,
							R9,
							R10,
							R11,
							R12,
							R13,
							R14,
							R15,
							R16,
							R17,
							R18,
							R19,
							R20,
							R21,
							R22,
							R23,
							R24,
							R25,
							R26,
							R27,
							R28,
							R29,
							R30,
							R31,
						 CLOCK_50, resetInR, LEDRrm,LEDRrm2);							
	
	always@(*)
	begin 
		case(states_Q)
		
		3'b000:begin //rest
					if(enable)
						states_D<=3'b001;
					else
						states_D<=3'b000;
						
					dataWrite_D<=0;
					
					acknowledge=0;
					address=0;
					writeEnable=0;
				
						
					enableFI=0;
					enableRM=0;
				
					
					/*
					
					MUST CHANGE
					
					*/
					resetInR=1;
					PC_D=PC_Q;////MUST CHANGE BACK TO 0
					
				 end
		3'b001:begin//Fetch instruction 
					
					if(acknowledgeFI)//break opcode
						states_D<=3'b010;
					else
						states_D<=3'b001;
						
					dataWrite_D<=dataWriteFI;
					
					
					acknowledge=0;
					address=addressFI;
					writeEnable=writeEnableFI;
					
					enableFI=1;
					enableRM=0;
					
					resetInR=1;
					PC_D=PC_Q;
				end
				
		3'b010:begin//Decode
					
					if(exitCode)//break opcode
					begin
						states_D<=3'b111;
						PC_D=0;
						resetInR=0;
					end
					else
					begin
						states_D<=3'b011;
						PC_D=PC_Q;
						resetInR=1;
					end
						
					dataWrite_D<=0;
					
					acknowledge=0;
					address=0;
					writeEnable=0;
					
					enableFI=0;
					enableRM=0;
					
				end
				
		3'b011:begin//EXECUTE
					
					
					states_D<=3'b100;
						
					dataWrite_D<=0;
					
					acknowledge=0;
					address=0;
					writeEnable=0;
					
					enableFI=0;
					enableRM=0;
					
					PC_D=PC_Q;
					resetInR=1;
				end
				
				

		3'b100:begin//Result Manager
				
				if(acknowledgeRM)
				begin
					if(SW[9])
						states_D<=3'b001;////CHANGE TO 001 to make it a close loop + clear the resistor
					else
						states_D<=3'b111;
					
					PC_D=PC;

				end
				else
				begin
					states_D<=3'b100;
					PC_D=PC_Q;

				end
					
				dataWrite_D<=dataWriteRM;
				
				
				acknowledge=0;
				address=addressRM;
				writeEnable=writeEnableRM;
				
				enableFI=0;
				enableRM=1;
				
				resetInR=1;
				
			end
	
		3'b111:begin //return to rest
					
					if(enable)
						states_D<=3'b111;
					else
						states_D<=3'b000;
						
					dataWrite_D<=0;
					
					acknowledge=1;
					address=0;
					writeEnable=0;
					
					enableFI=0;
					enableRM=0;
					
					PC_D=PC_Q;
					
					resetInR=1;
				end
		endcase	
		end
	
	
		always@(posedge CLOCK_50)
		begin
			dataWrite_Q<=dataWrite_D;
			states_Q<=states_D;
			PC_Q<=PC_D;
			if(enableFI)
				IR_read<=IR;	
		end
	

endmodule
