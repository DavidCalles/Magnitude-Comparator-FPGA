// Comparator.vhd

/************************************************************************
--	Description: Magnitude comparator implemented to the logic gate 
--						level.
--	
--	Inputs: 		 A,B 4-bit integers as boolean arrays.
--	
--	Outputs: 	Equal, will be 1 if inputs are equal
--					BigA, will be 1 if A is bigger than B
--					BigB, will be 1 if B is bigger than A
--**********************************************************************/


// Module declaration

module Comparator(
			input [3:0] A, 
			input [3:0] B,     
         output Equal,
			output BigA,
			output BigB);
			

// Architecture definition

/*------------------------------------------------------------------------
-------------------------- INTERMEDIATE SIGNALS --------------------------
------------------------------------------------------------------------*/
	wire [3:0] 	EqualSignal;
	wire 			EqualSignalOut;
	
	wire [3:0] 	BigASignal;
	wire 			BigASignalOut;
	
	wire 			BigBSignalOut;
	

/*------------------------------------------------------------------------
-------------------------- ARCHITECTURE LOGIC ----------------------------
------------------------------------------------------------------------*/

// Equal Signal

	// Compare bit by bit if they are equal
	assign EqualSignal = ~(A ^ B);
	
	// Equal output (all are equal)
	assign EqualSignalOut = EqualSignal[0] & EqualSignal[1] & EqualSignal[2] & EqualSignal[3];
	
	
// A > B signal 

	// Look if A has a MS 1 that B does ~
	assign BigASignal[3] = (A[3] & (~ B[3]));
	assign BigASignal[2] = EqualSignal[3] & (A[2] & (~ B[2]));
	assign BigASignal[1] = EqualSignal[3] & EqualSignal[2] & (A[1] & (~ B[1]));	
	assign BigASignal[0] = EqualSignal[3] & EqualSignal[2] & EqualSignal[1] & (A[0] & (~ B[0]));
	
	// A>B output
	assign BigASignalOut = BigASignal[0] | BigASignal[1] | BigASignal[2] | BigASignal[3];

	
// A < B signal

	// If ~ any of the other cases
	assign BigBSignalOut = ((~ BigASignalOut) & (~ EqualSignalOut));

// Output signals

	assign Equal 	= EqualSignalOut;
	assign BigA 	= BigASignalOut;
	assign BigB 	= BigBSignalOut;

endmodule