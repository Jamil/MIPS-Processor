module RegisterDeclare(input [4:0]RDadd, 
							output reg [31:0]R0,
							output reg [31:0]R1,
							output reg [31:0]R2,
							output reg [31:0]R3,
							output reg [31:0]R4,
							output reg [31:0]R5,
							output reg [31:0]R6,
							output reg [31:0]R7,
							output reg [31:0]R8,
							output reg [31:0]R9,
							output reg [31:0]R10,
							output reg [31:0]R11,
							output reg [31:0]R12,
							output reg [31:0]R13,
							output reg [31:0]R14,
							output reg [31:0]R15,
							output reg [31:0]R16,
							output reg [31:0]R17,
							output reg [31:0]R18,
							output reg [31:0]R19,
							output reg [31:0]R20,
							output reg [31:0]R21,
							output reg [31:0]R22,
							output reg [31:0]R23,
							output reg [31:0]R24,
							output reg [31:0]R25,
							output reg [31:0]R26,
							output reg [31:0]R27,
							output reg [31:0]R28,
							output reg [31:0]R29,
							output reg [31:0]R30,
							output reg [31:0]R31,
							input [31:0]RD,input enableLoad,input CLOCK_50, input resetIn,output [14:0]LEDR);

	assign LEDR[0]=enableLoad;
	assign LEDR[1]=resetIn;
	assign LEDR[6:2]=RD;
	assign LEDR[11:7]=RDadd;
	assign LEDR[14:12]=R1;
	
 
	always@(posedge CLOCK_50)
	begin
		if(resetIn)
		begin
			if(enableLoad)
			begin
			case(RDadd)
				5'b00000: R0<=RD;
				5'b00001: R1<=RD;
				5'b00010: R2<=RD;
				5'b00011: R3<=RD;
				5'b00100: R4<=RD;
				5'b00101: R5<=RD;
				5'b00110: R6<=RD;
				5'b00111: R7<=RD;
				5'b01000: R8<=RD;
				5'b01001: R9<=RD;
				5'b01010: R10<=RD;
				5'b01011: R11<=RD;
				5'b01100: R12<=RD;
				5'b01101: R13<=RD;
				5'b01110: R14<=RD;
				5'b01111: R15<=RD;
				5'b10000: R16<=RD;
				5'b10001: R17<=RD;
				5'b10010: R18<=RD;
				5'b10011: R19<=RD;
				5'b10100: R20<=RD;
				5'b10101: R21<=RD;
				5'b10110: R22<=RD;
				5'b10111: R23<=RD;
				5'b11000: R24<=RD;
				5'b11001: R25<=RD;
				5'b11010: R26<=RD;
				5'b11011: R27<=RD;
				5'b11100: R28<=RD;
				5'b11101: R29<=RD;
				5'b11110: R30<=RD;
				5'b11111: R31<=RD;
		
			endcase
			end
		end
		else
		begin
		R0<=0;
		R1<=0;
		R2<=0;
		R3<=0;
		R4<=0;
		R5<=0;
		R6<=0;
		R7<=0;
		R8<=0;
		R9<=0;
		R10<=0;
		R11<=0;
		R12<=0;
		R13<=0;
		R14<=0;
		R15<=0;
		R16<=0;
		R17<=0;
		R18<=0;
		R19<=0;
		R20<=0;
		R21<=0;
		R22<=0;
		R23<=0;
		R24<=0;
		R25<=0;
		R26<=0;
		R27<=0;
		R28<=0;
		R29<=0;
		R30<=0;
		R31<=0;		
		end
		
	end
	

endmodule
