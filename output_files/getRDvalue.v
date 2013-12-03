module getRDvalue(input [4:0]RDadd,
	input [31:0]R0,
	input [31:0]R1,
	input [31:0]R2,
	input [31:0]R3,
	input [31:0]R4,
	input [31:0]R5,
	input [31:0]R6,
	input [31:0]R7,
	input [31:0]R8,
	input [31:0]R9,
	input [31:0]R10,
	input [31:0]R11,
	input [31:0]R12,
	input [31:0]R13,
	input [31:0]R14,
	input [31:0]R15,
	input [31:0]R16,
	input [31:0]R17,
	input [31:0]R18,
	input [31:0]R19,
	input [31:0]R20,
	input [31:0]R21,
	input [31:0]R22,
	input [31:0]R23,
	input [31:0]R24,
	input [31:0]R25,
	input [31:0]R26,
	input [31:0]R27,
	input [31:0]R28,
	input [31:0]R29,
	input [31:0]R30,
	input [31:0]R31,output reg [31:0]RD);

	
	always@(*)
	begin
		case(RDadd)
			5'b00000: RD=R0;
			5'b00001: RD=R1;
			5'b00010: RD=R2;
			5'b00011: RD=R3;
			5'b00100: RD=R4;
			5'b00101: RD=R5;
			5'b00110: RD=R6;
			5'b00111: RD=R7;
			5'b01000: RD=R8;
			5'b01001: RD=R9;
			5'b01010: RD=R10;
			5'b01011: RD=R11;
			5'b01100: RD=R12;
			5'b01101: RD=R13;
			5'b01110: RD=R14;
			5'b01111: RD=R15;
			5'b10000: RD=R16;
			5'b10001: RD=R17;
			5'b10010: RD=R18;
			5'b10011: RD=R19;
			5'b10100: RD=R20;
			5'b10101: RD=R21;
			5'b10110: RD=R22;
			5'b10111: RD=R23;
			5'b11000: RD=R24;
			5'b11001: RD=R25;
			5'b11010: RD=R26;
			5'b11011: RD=R27;
			5'b11100: RD=R28;
			5'b11101: RD=R29;
			5'b11110: RD=R30;
			5'b11111: RD=R31;
	
		endcase
	end
	
	

endmodule
