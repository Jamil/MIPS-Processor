module fetchInstruction(input enable, output reg acknowledge, input [31:0]dataRead,input [31:0]PC,output[31:0]readAddress,output [31:0]IR, input CLOCK_50,input resetIn);

	reg [1:0]state_Q;
	reg [1:0]state_D;
	
	assign readAddress=PC;
	assign IR=dataRead;
	
	always@(*)
	begin
		if(resetIn)
		begin
			case(state_Q)
				
				2'b00:begin
					if(enable)
						state_D<=2'b01;
					else
						state_D<=2'b00;
					
					acknowledge=0;
				
				end
				
				2'b01:begin
					
					state_D<=2'b10;
					
					acknowledge=0;
				
				end
				
				
				2'b10:begin
					
					state_D<=2'b11;
					
					acknowledge=0;
				
				end
				
				2'b11:begin
					if(enable)
						state_D<=2'b00;
					else
						state_D<=2'b11;
					
					acknowledge=1;
				
				end
				
			
			endcase
		end
		else
		begin
			state_D<=2'b00;	
		end
	end
	
	always@(posedge CLOCK_50)
	begin
		state_Q<=state_D;
	end
	
endmodule