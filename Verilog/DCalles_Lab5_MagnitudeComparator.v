// DCalles_Lab5_MagnitudeComparator.vhd

// TOP ENTITY

/************************************************************************
--	Description: 4-bit unsigned int Magnitude comparator. 
--	
--	Inputs: 	sw: 8 switches [7:4] are first integer "A"
--					 [3:0] are second integer "B"
--	
--	Outputs: led: 3 LDS which indicate if A=B, A>B, or A<B
--				segmentA: Seven segments indicating first integer
--				segmentB: Seven segments indicating second integer
--				segmentM: Seven segments indicating >, <, or =
--***********************************************************************/


// Module declaration

module DCalles_Lab5_MagnitudeComparator (
							input [7:0] sw,
						   output[2:0] led,
							output[6:0]	segmentA,
							output[6:0]	segmentB,
							output[6:0]	segmentM); 
/* SW[7:4] -> NUMBER A	
-- SW[3:0] -> NUMBER B		
-- led[2] -> equal
-- led[1] -> A>B	
-- led[0] -> A<B 
*/						

// Architecture definition

/*------------------------------------------------------------------------
------------------------- INTERMEDIATE SIGNALS ---------------------------
------------------------------------------------------------------------*/
	wire [2:0] ComparisonSignal;


/*------------------------------------------------------------------------
-------------------------- COMPONENTS INSTANCES --------------------------
------------------------------------------------------------------------*/
//	Magnitude comparator
	Comparator Comparator1( 
					sw[7:4], sw[3:0],
					ComparisonSignal[2],
					ComparisonSignal[1],
					ComparisonSignal[0] ); 
// LEFT digit
	SevenSegments SevenSegmentsL(
					sw[7:4],  segmentA );
		
// RIGHT digit
	SevenSegments SevenSegmentsR(
					sw[3:0], segmentB );
		
// Comparison symbol
	SevenSegmentsModified SevenSegmentsM(
					ComparisonSignal,  segmentM );
		
/*------------------------------------------------------------------------
-------------------------- ARCHITECTURE LOGIC ----------------------------
------------------------------------------------------------------------*/

// Outputs

	assign led = ComparisonSignal;

endmodule
