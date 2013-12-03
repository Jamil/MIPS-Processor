module execute (
	/* INPUTS */
	// Global
	CLOCK_50,
	program_counter,
	
	// From Decoder
	alu_A,
	alu_B, 
	immediate,
	pc_increment_jump,	
	alu_opcode, 
	select_immediate,
	
	/* OUTPUTS */
	program_counter_jumped,
	alu_out
);
	/*
			I/O
						*/ 
						
	/* INPUTS */
	// Global
	input 				CLOCK_50;
	input		[31:0]	program_counter;
	
	// From Decoder
	input		[31:0]	alu_A;
	input		[31:0]	alu_B; 
	input		[26:0]	immediate;
	input 	[26:0]	pc_increment_jump;	
	input		[3:0]		alu_opcode;
	input					select_immediate;
	
	/* OUTPUTS */
	output 	[31:0]	program_counter_jumped;
	output	[31:0]	alu_out;

	/* INTERNAL WIRES */
	wire 		[31:0]	alu_B_in;
	
	/* INTERNAL REGISTERS */
	reg 		[31:0]	alu_B_in_reg;
	
	/* INTERNAL MODULES */
	alu a1(CLOCK_50, alu_A, alu_B_in, alu_out, alu_opcode);
	
	/*
		 LOGIC
					*/ 
											
	always@(CLOCK_50)
	case (select_immediate)
		1'b0:
			alu_B_in_reg <= alu_B;
		1'b1:
			alu_B_in_reg <= immediate;
	endcase
	
	/* INTERNAL ASSIGNMENTS */
	assign program_counter_jumped = pc_increment_jump + program_counter;
	assign alu_B_in = alu_B_in_reg;
	
endmodule