module decoder (
	/* INPUTS */
	instruction_register_rev,
	CLOCK_50,
	program_counter,
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
	result_opcode, 
	reg_d,
	
	/* DEBUGGING */
	LEDR,
	LEDR2
);

	output [17:0]LEDR;
	output [17:0]LEDR2;

	/* INPUTS */
	input 	[31:0] 		instruction_register_rev;
	input 					CLOCK_50;
	input 	[31:0]		program_counter;
	// Registers
	input 	[31:0]		R0;
	input 	[31:0]		R1;
	input 	[31:0]		R2;
	input 	[31:0]		R3;
	input 	[31:0]		R4;
	input 	[31:0]		R5;
	input 	[31:0]		R6;
	input 	[31:0]		R7;
	input 	[31:0]		R8;
	input 	[31:0]		R9;
	input 	[31:0]		R10;
	input 	[31:0]		R11;
	input 	[31:0]		R12;
	input 	[31:0]		R13;
	input 	[31:0]		R14;
	input 	[31:0]		R15;
	input 	[31:0]		R16;
	input 	[31:0]		R17;
	input 	[31:0]		R18;
	input 	[31:0]		R19;
	input 	[31:0]		R20;
	input 	[31:0]		R21;
	input 	[31:0]		R22;
	input 	[31:0]		R23;
	input 	[31:0]		R24;
	input 	[31:0]		R25;
	input 	[31:0]		R26;
	input 	[31:0]		R27;
	input 	[31:0]		R28;
	input 	[31:0]		R29;
	input 	[31:0]		R30;
	input 	[31:0]		R31;
	
	/* OUTPUTS */
	
	//TO CPU CONTROLLER
	
	output reg exitCode;
	
	// To Executer
	output 	[31:0] 		alu_A; 
	output 	[31:0] 		alu_B; 
	output 	[25:0] 		immediate;
	output 	[31:0] 		pc_increment_jump; 
	output 	[3:0] 		alu_opcode;
	output					select_immediate;
	// To Result Manager
	output 	[2:0] 		result_opcode; 
	output 	[4:0] 		reg_d;
	
	/* INTERNAL WIRES */
	wire 		[5:0] 		ir_opcode;
	wire		[5:0]			rtype_function;
	wire		[31:0]		instruction_register;
	
	/* INTERNAL REGISTERS */
	reg 		[4:0] 		reg_t; 
	reg 		[4:0] 		reg_s; 
	reg 		[25:0]		immediate;
   reg 		[25:0]		pc_increment_jump;
	reg 		[3:0] 		alu_opcode;
	reg 		[2:0] 		result_opcode; 
	reg 		[5:0]			reg_d;
	reg 						select_immediate;
	
	/* INTERNAL MODULES */
	//reverse r(instruction_register_rev, instruction_register);
	
	/* ASSIGNMENTS & COMBINATIONAL LOGIC */
	assign ir_opcode = instruction_register[31:26];
	assign rtype_function = instruction_register[5:0];
	assign instruction_register = instruction_register_rev;

	assign LEDR[3:0] = alu_opcode;
	assign LEDR[6:4] = result_opcode;
	assign LEDR[11:7] = reg_s;
	assign LEDR[17:12] = ir_opcode;
	
	assign LEDR2[8:0]=instruction_register_rev[8:0];
	assign LEDR2[9]=exitCode;
	assign LEDR2[15:10]=rtype_function;

	
/*
	MAJOR CHANGE CREATED EXIT CODE	
	*/
/*
**************************************
************************************
	*/
	always@(*)
	begin
		if(&ir_opcode)
			exitCode<=1;
		else 
			exitCode<=0;
	end
	/*
**************************************
************************************
	*/
	
	
	/* SEQUENTIAL LOGIC */
	always@(posedge CLOCK_50)
	begin
		// Case statement with respect to the OPCODE (6 LSBs of IR); handle accordingly 
		case (ir_opcode)
			6'b000000:															/* R-TYPE */
			begin
	
				case (rtype_function)										// FUNCTION
					6'b100000:													/* ADD - ARITHMETIC ADDITION */
					begin
						reg_s <= instruction_register[25:21];			// Register S
						reg_t <= instruction_register[20:16];			// Register T
						immediate <= 26'b0;									// Immediate
						pc_increment_jump <= 26'd1;						// Program Counter Increment
						result_opcode <= 3'b001;							// Result Opcode
						alu_opcode <= 4'b0100;								// ALU Opcode
						reg_d <= instruction_register[15:11];			// Destination Register
						select_immediate = 1'b0;							// For ALU MUX
					end
					6'b100100:													/* AND - BITWISE AND */
					begin															
						reg_s <= instruction_register[25:21];			
						reg_t <= instruction_register[20:16];			
						immediate <= 26'b0;								
						pc_increment_jump <= 26'd1;						
						result_opcode <= 3'b001;
						alu_opcode <= 4'b1000;					
						reg_d <= instruction_register[15:11];		
						select_immediate = 1'b0;								
					end
					6'b001000:													/* JR - JUMP REGISTER */
					begin
						reg_s <= 5'b0;
						reg_t <= 5'b0;
						immediate <= 26'b0;
						pc_increment_jump <= instruction_register[25:0];
						result_opcode <= 3'b011;
						alu_opcode <= 4'b0000;
						reg_d <= instruction_register[20:16];
						select_immediate <= 1'b0;
					end
					6'b100101:													/* OR - BITWISE OR */
					begin															
						reg_s <= instruction_register[25:21];			
						reg_t <= instruction_register[20:16];			
						immediate <= 26'b0;								
						pc_increment_jump <= 26'd1;						
						result_opcode <= 3'b001;
						alu_opcode <= 4'b1001;					
						reg_d <= instruction_register[15:11];		
						select_immediate = 1'b0;								
					end
					6'b000000:													/* SLL - SHIFT LEFT LOGICAL */
					begin
						reg_s <= instruction_register[20:16];
						reg_t <= 5'b0;
						immediate <= instruction_register[25:21];
						pc_increment_jump <= 26'd1;
						result_opcode <= 3'b001;
						alu_opcode <= 4'b0110;
						reg_d <= instruction_register[15:11];
						select_immediate <= 1'b1;
					end
					6'b000100:													/* SLLV - SHIFT LEFT LOGICAL VARIABLE */
					begin
						reg_s <= instruction_register[20:16];
						reg_t <= instruction_register[25:21];
						immediate <= 26'b0;
						pc_increment_jump <= 26'd1;
						result_opcode <= 3'b001;
						alu_opcode <= 4'b0110;
						reg_d <= instruction_register[15:11];
						select_immediate <= 1'b0;
					end
					6'b000010:													/* SRL - SHIFT RIGHT LOGICAL */
					begin
						reg_s <= instruction_register[20:16];
						reg_t <= 5'b0;
						immediate <= instruction_register[25:21];
						pc_increment_jump <= 26'd1;
						result_opcode <= 3'b001;
						alu_opcode <= 4'b0111;
						reg_d <= instruction_register[15:11];
						select_immediate <= 1'b1;
					end
					6'b000110:													/* SRLV - SHIFT RIGHT LOGICAL VARIABLE */
					begin
						reg_s <= instruction_register[20:16];
						reg_t <= instruction_register[25:21];
						immediate <= instruction_register[25:21];
						pc_increment_jump <= 26'd1;
						result_opcode <= 3'b001;
						alu_opcode <= 4'b0111;
						reg_d <= instruction_register[15:11];
						select_immediate <= 1'b0;
					end
					6'b100010:													/* SUB - ARITHMETIC SUBTRACTION */
					begin
						reg_s <= instruction_register[25:21];			
						reg_t <= instruction_register[20:16];			
						immediate <= 26'b0;									
						pc_increment_jump <= 26'd1;						
						result_opcode <= 3'b001;							
						alu_opcode <= 4'b0101;								
						reg_d <= instruction_register[15:11];			
						select_immediate = 1'b0;						
					end
					6'b100110:													/* XOR - BITWISE XOR */
					begin															
						reg_s <= instruction_register[25:21];			
						reg_t <= instruction_register[20:16];			
						immediate <= 26'b0;								
						pc_increment_jump <= 26'd1;						
						result_opcode <= 3'b001;
						alu_opcode <= 4'b1011;					
						reg_d <= instruction_register[15:11];		
						select_immediate = 1'b0;								
					end
					default:
				begin
					reg_s <= 5'b0;
					reg_t <= 5'b0;
					immediate <= 27'b0;
					pc_increment_jump <= 26'd1;
					result_opcode <= 3'b000;
					alu_opcode <= 4'b0001;
					reg_d <= 5'b0;
					select_immediate <= 1'b0;
				end
				endcase
				
			end
			6'b001000:															/* ADDI - ADD IMMEDIATE */
			begin
				reg_s <= instruction_register[25:21];					
				reg_t <= 5'b0;													
				immediate <= instruction_register[15:0];				
				pc_increment_jump <= 26'd1;								
				result_opcode <= 3'b001;									
				alu_opcode <= 4'b0100;										
				reg_d <= instruction_register[20:16];			
				select_immediate <= 1'b1;
			end
			6'b001100:															/* ANDI - AND IMMEDIATE */
			begin
				reg_s <= instruction_register[25:21];					
				reg_t <= 5'b0;													
				immediate <= instruction_register[15:0];				
				pc_increment_jump <= 26'd1;										
				result_opcode <= 3'b001;									
				alu_opcode <= 4'b1000;										
				reg_d <= instruction_register[20:16];	
				select_immediate <= 1'b1;
			end
			6'b000100:															/* BEQ - BRANCH ON EQUAL */
			begin
				reg_s <= instruction_register[25:21];					
				reg_t <= instruction_register[20:16];													
				immediate <= 26'b0;				
				pc_increment_jump <= instruction_register[15:0];										
				result_opcode <= 3'b111;									
				alu_opcode <= 4'b1100;										
				reg_d <= instruction_register[20:16];		
				select_immediate <= 1'b0;
			end
			6'b000001:															/* BGTZ - BRANCH ON GREATER THAN ZERO */
			begin																	
				reg_s <= instruction_register[25:21];					
				reg_t <= 5'b0;													
				immediate <= 26'b0;													
				pc_increment_jump <= instruction_register[15:0];										
				result_opcode <= 3'b111;									
				alu_opcode <= 4'b1110;										
				reg_d <= instruction_register[20:16];	
				select_immediate <= 1'b1;
			end
			6'b000110:															/* BLTZ - BRANCH ON LESS THAN ZERO */
			begin																	
				reg_s <= instruction_register[25:21];					
				reg_t <= 5'b0;													
				immediate <= 26'b0;													
				pc_increment_jump <= instruction_register[15:0];										
				result_opcode <= 3'b111;									
				alu_opcode <= 4'b1101;										
				reg_d <= instruction_register[20:16];	
				select_immediate <= 1'b1;
			end
			6'b000101:															/* BNE - BRANCH ON NOT EQUAL */
			begin
				reg_s <= instruction_register[25:21];					
				reg_t <= instruction_register[20:16];													
				immediate <= 26'b0;				
				pc_increment_jump <= instruction_register[15:0];										
				result_opcode <= 3'b111;									
				alu_opcode <= 4'b1111;										
				reg_d <= instruction_register[20:16];		
				select_immediate <= 1'b0;
			end
			6'b000010:															/* J - JUMP RELATIVE TO PC */
			begin
				reg_s <= 5'b0;
				reg_t <= 5'b0;
				immediate <= 26'b0;
				pc_increment_jump <= instruction_register[25:0];
				result_opcode <= 3'b010;
				alu_opcode <= 4'b0000;
				reg_d <= 5'b0;
				select_immediate <= 1'b0;
			end
			6'b001111:															/* JB - JUMP BACK */
			begin
				reg_s <= 5'b0;
				reg_t <= 5'b0;
				immediate <= 26'b0;
				pc_increment_jump = instruction_register[25:0];
				pc_increment_jump <= ~pc_increment_jump + 1'b1;
				result_opcode <= 3'b010;
				alu_opcode <= 4'b0000;
				reg_d <= 5'b0;
				select_immediate <= 1'b0;
			end
			6'b000011:															/* JAL - JUMP AND LINK */
			begin
				reg_s <= 5'b0;
				reg_t <= 5'b0;
				immediate <= 26'b0;
				pc_increment_jump <= instruction_register[15:0];
				result_opcode <= 3'b110;
				alu_opcode <= 4'b0000;
				reg_d <= instruction_register[20:16];	
				select_immediate <= 1'b0;
			end
			6'b100011:															/* LW - LOAD WORD */
			begin
				reg_s <= instruction_register[25:21];
				reg_t <= 5'b0;
				immediate <= instruction_register[15:0];
				pc_increment_jump <= 26'd1;
				result_opcode <= 3'b100;
				alu_opcode <= 4'b0100;
				reg_d <= instruction_register[20:16];
				select_immediate = 1'b1;
			end
			6'b001101:															/* ORI - OR IMMEDIATE */
			begin
				reg_s <= instruction_register[25:21];					
				reg_t <= 5'b0;													
				immediate <= instruction_register[15:0];				
				pc_increment_jump <= 26'd1;								
				result_opcode <= 3'b001;									
				alu_opcode <= 4'b1001;										
				reg_d <= instruction_register[20:16];			
				select_immediate <= 1'b1;
			end
			6'b001001:															/* SUBI - SUBTRACT IMMEDIATE */
			begin
				reg_s <= instruction_register[25:21];					
				reg_t <= 5'b0;													
				immediate <= instruction_register[15:0];				
				pc_increment_jump <= 26'd1;								
				result_opcode <= 3'b001;									
				alu_opcode <= 4'b0101;										
				reg_d <= instruction_register[20:16];			
				select_immediate <= 1'b1;
			end
			6'b001011:															/* SW - STORE WORD */
			begin
				reg_s <= instruction_register[25:21];
				reg_t <= 5'b0;
				immediate <= instruction_register[15:0];
				pc_increment_jump <= 26'd1;
				result_opcode <= 3'b101;
				alu_opcode <= 4'b0100;
				reg_d <= instruction_register[20:16];
				select_immediate = 1'b1;
			end
			6'b001110:															/* XORI - XOR IMMEDIATE */
			begin
				reg_s <= instruction_register[25:21];					
				reg_t <= 5'b0;													
				immediate <= instruction_register[15:0];				
				pc_increment_jump <= 26'd1;										
				result_opcode <= 3'b001;									
				alu_opcode <= 4'b1011;										
				reg_d <= instruction_register[20:16];	
				select_immediate <= 1'b1;
			end
			default:
			begin
				reg_s <= 5'b0;
				reg_t <= 5'b0;
				immediate <= 27'b0;
				pc_increment_jump <= 26'd1;
				result_opcode <= 3'b000;
				alu_opcode <= 4'b0001;
				reg_d <= 5'b0;
				select_immediate <= 1'b0;
			end
		endcase
	end
	
	getRDvalue r1(reg_s, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, 
	R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31, alu_A);
	
	getRDvalue r2(reg_t, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, 
	R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31, alu_B);
	
endmodule

module reverse(original, reversed);
	input [31:0] original;
	output [31:0] reversed;
	
	assign reversed[0] = original[31];
	assign reversed[1] = original[30];
	assign reversed[2] = original[29];
	assign reversed[3] = original[28];
	assign reversed[4] = original[27];
	assign reversed[5] = original[26];
	assign reversed[6] = original[25];
	assign reversed[7] = original[24];
	assign reversed[8] = original[23];
	assign reversed[9] = original[22];
	assign reversed[10] = original[21];
	assign reversed[11] = original[20];
	assign reversed[12] = original[19];
	assign reversed[13] = original[18];
	assign reversed[14] = original[17];
	assign reversed[15] = original[16];
	assign reversed[16] = original[15];
	assign reversed[17] = original[14];
	assign reversed[18] = original[13];
	assign reversed[19] = original[12];
	assign reversed[20] = original[11];
	assign reversed[21] = original[10];
	assign reversed[22] = original[9];
	assign reversed[23] = original[8];
	assign reversed[24] = original[7];
	assign reversed[25] = original[6];
	assign reversed[26] = original[5];
	assign reversed[27] = original[4];
	assign reversed[28] = original[3];
	assign reversed[29] = original[2];
	assign reversed[30] = original[1];
	assign reversed[31] = original[0];
	
endmodule