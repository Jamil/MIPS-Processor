module alu (CLOCK_50, A, B, OUT, OPCODE);
	input signed [31:0] A;
	input signed [31:0] B;
	input [4:0] OPCODE;
	input CLOCK_50;
	
	output [31:0] OUT;
	reg [31:0] OUT;

	always@(CLOCK_50) 
	case (OPCODE)
		4'b0000:
			OUT <= 31'b0;
		4'b0001:
			OUT <= 31'b0;
		4'b0010:
			OUT <= 31'b0;
		4'b0011:
			OUT <= 31'b0;
		4'b0100:
			OUT <= A + B;
		4'b0101:
			OUT <= A - B;
		4'b0110:
			OUT <= A << B;
		4'b0111:
			OUT <= A >> B;
		4'b1000:
			OUT <= A & B;
		4'b1001:
			OUT <= A | B;
		4'b1010:
			OUT <= ~(A|B);
		4'b1011:
			OUT <= A ^ B;
		4'b1100:
			OUT <= (A == B);
		4'b1101:
			OUT <= (A < B);
		4'b1110:
			OUT <= (A > B);
		4'b1111:
			OUT <= (A != B);
	endcase
endmodule