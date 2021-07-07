/****************************************************
*	Description: Get outputs for the 7 segments from 
*					 a 3-bit  input (just 1 digit)
*	
*	Inputs: [2:0] ones, symbol to be displayed
*	
*	Outputs: reg[6:0] segments, obtained through 
*				behavioral description. (low means ON)
*				>, <, = symbols.
****************************************************/

module SevenSegmentsModified( 
						input     [2:0] ones,
						output reg[6:0] segments);

	always@(ones)
	begin
		case(ones)
			3'b100  : segments = 7'b0110110; // segment =
			3'b010  : segments = 7'b0001111; // segment >
			3'b001  : segments = 7'b0111001; // segment <
			default : segments = 7'b0111111; // segment -
		endcase
	end

endmodule