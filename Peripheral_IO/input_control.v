module input_control (
        // Inputs
        CLOCK_50,
        KEYfake,

        // Bidirectionals
        PS2_CLK,
        PS2_DAT,
        
        // Outputs (DE2)
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
        
        // Outputs (Other)
        enter,
        submit,
        did_change,
		  data
);




/*****************************************************************************
 *                             Port Declarations                             *
 *****************************************************************************/


// Inputs
input                                CLOCK_50;
input                [3:0]        	 KEYfake;


// Bidirectionals
inout                                PS2_CLK;
inout                                PS2_DAT;


// Outputs
output                [6:0]        HEX0;
output                [6:0]        HEX1;
output                [6:0]        HEX2;
output                [6:0]        HEX3;
output                [6:0]        HEX4;
output                [6:0]        HEX5;
output                [6:0]        HEX6;
output                [6:0]        HEX7;
output                [7:0]		  LEDR;
output                [7:0] 		  LEDG;
output 									  enter;
output 								  	  submit;
output 									  did_change;
output					 [31:0]		  data;


/*****************************************************************************
 *                 Internal Wires and Registers Declarations                 *
 *****************************************************************************/


// Internal Wires
wire [7:0]        ps2_key_data;
wire [3:0]  last_data_received_hex;
wire ps2_key_pressed;
wire invalid;


// Internal Registers
reg [7:0] last_data_received;
reg [2:0] count;
reg [1:0] state;
reg [31:0] data_out;
reg [7:0] LEDR;
reg [7:0] LEDG;
reg enter;
reg submit;
reg did_change;


// Internal modules
ps2_to_hex converter(last_data_received, last_data_received_hex, invalid);

/*
	wire[3:0] last_data_inv;
	assign last_data_inv[0]=last_data_received_hex[3];
	assign last_data_inv[1]=last_data_received_hex[2];
	assign last_data_inv[2]=last_data_received_hex[1];
	assign last_data_inv[3]=last_data_received_hex[0];
*/

// Assignments
assign data = data_out;


/* Finite State Machine
                00. Waiting for key_pressed to be F0 (key release scan code)
                01. Assign last_data_received to next input 
                10. Insert last_data_received_hex into appropriate register range
        */
        
always@(posedge enter)
begin
        LEDG[4] = ~LEDG[4];
end


always@(posedge submit)
begin
        LEDG[5] = ~LEDG[5];
end


always@(posedge did_change)
begin
        LEDG[6] = ~LEDG[6];
end
        
always @(posedge CLOCK_50)
begin
        LEDG[0] <= invalid;
        LEDG[1] <= enter;
        LEDG[2] <= submit;
        LEDG[3] <= did_change;
        case (state)
                2'b00:
                        if (ps2_key_pressed) 
                        begin
                                LEDR <= ps2_key_data;
                                if (ps2_key_data == 8'hF0)
                                        state = 2'b01;
                        end
                        else
                        begin
                                did_change <= 1'b0;
                                enter <= 1'b0;
                                submit <= 1'b0;
                        end
                2'b01:
                        if (ps2_key_pressed) 
                        begin
                                last_data_received <= ps2_key_data;
                                state = 2'b10;
                        end
                2'b10:
                begin
                        if (~invalid)
                        
                        begin
                                case (count)
                                        3'b000:
                                                begin
                                                data_out[31:28] <= last_data_received_hex;
                                                did_change <= 1'b1;
                                                enter <= 1'b0;
                                                submit <= 1'b0;
                                                count <= count + 1'b1;
                                                end
                                        3'b001:
                                                begin
                                                data_out[27:24] <= last_data_received_hex;
                                                did_change <= 1'b1;
                                                enter <= 1'b0;
                                                submit <= 1'b0;
                                                count <= count + 1'b1;
                                                end
                                        3'b010:
                                                begin
                                                data_out[23:20] <= last_data_received_hex;
                                                did_change <= 1'b1;
                                                enter <= 1'b0;
                                                submit <= 1'b0;
                                                count <= count + 1'b1;
                                                end
                                        3'b011:
                                                begin
                                                data_out[19:16] <= last_data_received_hex;
                                                did_change <= 1'b1;
                                                enter <= 1'b0;
                                                submit <= 1'b0;
                                                count <= count + 1'b1;
                                                end
                                        3'b100:
                                                begin
                                                data_out[15:12] <= last_data_received_hex;
                                                did_change <= 1'b1;
                                                enter <= 1'b0;
                                                submit <= 1'b0;
                                                count <= count + 1'b1;
                                                end
                                        3'b101:
                                                begin
                                                data_out[11:8] <= last_data_received_hex;
                                                did_change <= 1'b1;
                                                enter <= 1'b0;
                                                submit <= 1'b0;
                                                count <= count + 1'b1;
                                                end
                                        3'b110:
                                                begin
                                                data_out[7:4] <= last_data_received_hex;
                                                did_change <= 1'b1;
                                                enter <= 1'b0;
                                                submit <= 1'b0;
                                                count <= count + 1'b1;
                                                end
                                        3'b111:
                                                begin
                                                data_out[3:0] <= last_data_received_hex;
                                                did_change <= 1'b1;
                                                enter <= 1'b0;
                                                submit <= 1'b0;
                                                count <= count + 1'b1;
                                                end
                                endcase
                        end
                        
                        else
                        begin
                                did_change <= 1'b0;
                                case (last_data_received)
                                        8'h5A:
                                        begin
                                                enter <= 1'b1;
                                                submit <= 1'b0;
																count <= 3'b0;
																data_out <= 32'b0;
                                        end
                                        8'h1B:
                                        begin
                                                submit <= 1'b1;
                                                enter <= 1'b0;
																count <= 3'b0;
																data_out <= 32'b0;
                                        end
                                        default:
                                        begin
                                                enter <= 1'b0;
                                                submit <= 1'b0;
                                        end
                                endcase
                        end
                        state <= 2'b00;
                end
        endcase
end


PS2_Controller PS2 (
        // Inputs
        .CLOCK_50                                (CLOCK_50),
        .reset                                        (0),


        // Bidirectionals
        .PS2_CLK                        (PS2_CLK),
         .PS2_DAT                        (PS2_DAT),


        // Outputs
        .received_data                (ps2_key_data),
        .received_data_en        (ps2_key_pressed)
);


Hexadecimal_To_Seven_Segment Segment0 (
        .hex_number                        (data_out[31:28]),
        .seven_seg_display        (HEX7)
);


Hexadecimal_To_Seven_Segment Segment1 (
        .hex_number                        (data_out[27:24]),
        .seven_seg_display        (HEX6)
);


Hexadecimal_To_Seven_Segment Segment2 (
        .hex_number                        (data_out[23:20]),
        .seven_seg_display        (HEX5)
);


Hexadecimal_To_Seven_Segment Segment3 (
        .hex_number                        (data_out[19:16]),
        .seven_seg_display        (HEX4)
);


Hexadecimal_To_Seven_Segment Segment4 (
        .hex_number                        (data_out[15:12]),
        .seven_seg_display        (HEX3)
);


Hexadecimal_To_Seven_Segment Segment5 (
        .hex_number                        (data_out[11:8]),
        .seven_seg_display        (HEX2)
);


Hexadecimal_To_Seven_Segment Segment6 (
        .hex_number                        (data_out[7:4]),
        .seven_seg_display        (HEX1)
);


Hexadecimal_To_Seven_Segment Segment7 (
        .hex_number                        (data_out[3:0]),
        .seven_seg_display        (HEX0)
);


endmodule


module ps2_to_hex (PS2_DAT, HEX, invalid);
        input [7:0] PS2_DAT;
        output [3:0] HEX;
        output invalid;
        
        reg invalid;
        reg [3:0] HEX;
        always@(*)
                case (PS2_DAT)
                        8'h45:                // 0
                                begin
                                HEX = 4'h0;
                                invalid = 1'b0;
                                end
                        8'h16:                // 1
                                begin
                                HEX = 4'h1;
                                invalid = 1'b0;
                                end
                        8'h1E:                // 2
                                begin
                                HEX = 4'h2;
                                invalid = 1'b0;
                                end
                        8'h26:                // 3
                                begin
                                HEX = 4'h3;
                                invalid = 1'b0;
                                end
                        8'h25:                // 4
                                begin
                                HEX = 4'h4;
                                invalid = 1'b0;
                                end
                        8'h2E:                // 5
                                begin
                                HEX = 4'h5;
                                invalid = 1'b0;
                                end
                        8'h36:                // 6
                                begin
                                HEX = 4'h6;
                                invalid = 1'b0;
                                end
                        8'h3D:                // 7
                                begin
                                HEX = 4'h7;
                                invalid = 1'b0;
                                end
                        8'h3E:                // 8
                                begin
                                HEX = 4'h8;
                                invalid = 1'b0;
                                end
                        8'h46:                // 9
                                begin
                                HEX = 4'h9;
                                invalid = 1'b0;
                                end
                        8'h1C:                // A
                                begin
                                HEX = 4'hA;
                                invalid = 1'b0;
                                end
                        8'h32:                // B
                                begin
                                HEX = 4'hB;
                                invalid = 1'b0;
                                end
                        8'h21:                // C
                                begin
                                HEX = 4'hC;
                                invalid = 1'b0;
                                end
                        8'h23:                // D
                                begin
                                HEX = 4'hD;
                                invalid = 1'b0;
                                end
                        8'h24:                // E
                                begin
                                HEX = 4'hE;
                                invalid = 1'b0;
                                end
                        8'h2B:                // F
                                begin
                                HEX = 4'hF;
                                invalid = 1'b0;
                                end
                        default:
                        begin
                                HEX = 4'h0;
                                invalid = 1'b1;
                        end
                endcase
endmodule

