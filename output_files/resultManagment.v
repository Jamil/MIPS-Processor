module resultManagment(input enable, output reg acknowledge, input [31:0]dataRead, output reg [10:0]MMadd_Q,output reg [31:0]dataWrite,
						output reg writeEnable,input [4:0]RDadd, input [2:0]opCode, input [31:0]ALUres, input [31:0]ADDout,
						output reg [31:0]PCnew_Q, input [31:0]PCold,
							output [31:0]R0,
							output [31:0]R1,
							output [31:0]R2,
							output [31:0]R3,
							output [31:0]R4,
							output [31:0]R5,
							output [31:0]R6,
							output [31:0]R7,
							output [31:0]R8,
							output [31:0]R9,
							output [31:0]R10,
							output [31:0]R11,
							output [31:0]R12,
							output [31:0]R13,
							output [31:0]R14,
							output [31:0]R15,
							output [31:0]R16,
							output [31:0]R17,
							output [31:0]R18,
							output [31:0]R19,
							output [31:0]R20,
							output [31:0]R21,
							output [31:0]R22,
							output [31:0]R23,
							output [31:0]R24,
							output [31:0]R25,
							output [31:0]R26,
							output [31:0]R27,
							output [31:0]R28,
							output [31:0]R29,
							output [31:0]R30,
							output [31:0]R31,
						input CLOCK_50, input resetIn,output [17:0]LEDR,output [17:0]LEDR2 );
						
	//reg acknowledge, MMadd_Q, dataWrite, writeEnable,states_D,RD_Q,PCnew_D
	//pc is it current or next?
	
	wire [14:0]LERDfake;
	
	assign LEDR[3:0]=states_Q;
	assign LEDR[8:4]=RD_Q[4:0];
	assign LEDR[9]=enableRDload;
	assign LEDR[10]=enable;
	assign LEDR[11]=acknowledge;
	assign LEDR[12]=writeEnable;
	assign LEDR[15:13]=MMadd_Q;
	assign LEDR[17:16]=dataWrite;
	
	assign LEDR2[4:0]=RDadd;
	assign LEDR2[10:5]=RDold;
	assign LEDR2[17:11]=R1;
	
	reg [3:0]states_D;
	reg [3:0]states_Q;
	
	reg [31:0]RD_Q;
	reg [31:0]RD_D;
	

	reg [31:0]MMadd_D;
	
	reg [31:0]PCnew_D;
	
	reg enableRDload;
	
	reg [1:0]wait_Q;
	reg [1:0]wait_D;
	
	
	wire [31:0]RDold;
	
 
	
	getRDvalue r2(RDadd, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, 
	R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31, RDold);
					
			 RegisterDeclare(RDadd, 
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
							RD_Q, enableRDload, CLOCK_50, resetIn,LERDfake);

	
	always@(*)
	begin 
		case(states_Q)
		
		4'b0000:begin //rest
		
					if(enable)
						states_D<=4'b0001;
					else
						states_D<=4'b0000;
						
					acknowledge=0;
					dataWrite=0;
					writeEnable=0;
					
					MMadd_D=0;
					RD_D=0;
					PCnew_D=0;
					enableRDload=0;
					wait_D=0;
					
					
				 end
		4'b0001:begin//main handler 
					
					case(opCode)
					
					 3'b000: states_D<=4'b1111;
					 3'b001: states_D<=4'b0110;
					 3'b010: states_D<=4'b0011;
					 3'b011: states_D<=4'b1000;
					 3'b100: states_D<=4'b0101;
					 3'b101: states_D<=4'b0100;
					 3'b110: states_D<=4'b0011;
					 3'b111: begin
										if(ALUres[0])
											states_D<=4'b0011;
										else
											states_D<=4'b1111;
									end
					endcase
						
					acknowledge=0;
					dataWrite=0;
					writeEnable=0;
					
					MMadd_D=0;
					RD_D=ALUres;
					PCnew_D=PCold+1;
					enableRDload=0;
					wait_D=0;
					
				end
		
		
		
		4'b0011:begin //load pc with addout
					
					case(opCode)
					
						 3'b010:states_D<=4'b1111;
							
						 3'b110: states_D<=4'b0110;
						
						
					endcase
						
					acknowledge=0;
					dataWrite=0;
					writeEnable=0;
					
					MMadd_D<=MMadd_Q;
					RD_D<=PCold+1;
					PCnew_D<=ADDout;
					enableRDload=0;
					wait_D<=0;
					
				end
		
				
		4'b0100:begin //save to MM
					
					if(&wait_Q)
					begin
						states_D<=4'b1111;
						wait_D=0;
						writeEnable=1;
					end
					else
					begin
						states_D<=4'b0100;
						wait_D=wait_Q+1;
						if(|wait_Q)
							writeEnable=1;
						else
							writeEnable=0;
					end
						
					acknowledge=0;
					dataWrite=RDold;
					
					
					MMadd_D<=ALUres;
					RD_D<=RD_Q;
					PCnew_D<=PCnew_Q;
					enableRDload=0;
					
				end
				
		4'b0101:begin //load from MM
					
					if(&wait_Q)
					begin
						states_D<=4'b0110;
						wait_D=0;
					end
					else
					begin
						states_D<=4'b0101;
						wait_D=wait_Q+1;
					end
						
					acknowledge=0;
					dataWrite=0;
					writeEnable=0;
					
					MMadd_D<=ALUres;
					RD_D<=dataRead;
					PCnew_D<=PCnew_Q;
					enableRDload=0;
					
				end
				
			4'b0110:begin //load RD
					
				
					states_D<=4'b1111;
				
						
					acknowledge=0;
					dataWrite=0;
					writeEnable=0;
					
					MMadd_D<=MMadd_Q;
					RD_D<=RD_Q;
					PCnew_D<=PCnew_Q;
					enableRDload=1;
					wait_D=0;
					
				end
				
				
			4'b1000:begin //load pc with RD
					
					
							
					states_D<=4'b1111;
						
					
						
					acknowledge=0;
					dataWrite=0;
					writeEnable=0;
					
					MMadd_D<=MMadd_Q;
					RD_D<=RD_Q;
					PCnew_D<=RDold;
					enableRDload=0;
					wait_D<=0;
					
				end
	
		
	
		4'b1111:begin //return to rest
					
					if(enable)
						states_D<=4'b1111;
					else
						states_D<=4'b0000;
						
					case(opCode)
						3'b001,3'b100,3'b110:enableRDload=1;
						default: enableRDload=0;
					endcase
						
						
					acknowledge=1;
					dataWrite=0;
					writeEnable=0;
					
					MMadd_D<=MMadd_Q;
					RD_D<=RD_Q;
					PCnew_D<=PCnew_Q;
					wait_D=0;
					
				end
		endcase	
		end
	
	
		always@(posedge CLOCK_50)
		begin
			MMadd_Q<=MMadd_D;
			RD_Q<=RD_D;
			PCnew_Q<=PCnew_D;
			states_Q<=states_D;
			wait_Q<=wait_D;
		end
	

endmodule
