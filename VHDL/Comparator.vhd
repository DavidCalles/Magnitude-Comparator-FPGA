-- Comparator.vhd

--***********************************************************************
--	Description: Magnitude comparator implemented to the logic gate 
--						level.
--	
--	Inputs: 		 A,B 4-bit integers as boolean arrays.
--	
--	Outputs: 	Equal, will be 1 if inputs are equal
--					BigA, will be 1 if A is bigger than B
--					BigB, will be 1 if B is bigger than A
--***********************************************************************

-- Libraries

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

-- Entity declaration

entity Comparator is

    port(A		: in std_logic_vector(3 downto 0); 
			B 		: in std_logic_vector(3 downto 0);     
         Equal : out std_logic;
			BigA  : out std_logic;
			BigB  : out std_logic);
			

end Comparator;

-- Architecture definition

architecture Combinatory of Comparator is
--------------------------------------------------------------------------
-------------------------- INTERMEDIATE SIGNALS --------------------------
--------------------------------------------------------------------------
	signal EqualSignal 		: std_logic_vector(3 downto 0);
	signal EqualSignalOut 	: std_logic;
	
	signal BigASignal  		: std_logic_vector(3 downto 0);
	signal BigASignalOut  	: std_logic;
	
	signal BigBSignalOut  	: std_logic;
	

--------------------------------------------------------------------------
-------------------------- ARCHITECTURE LOGIC ----------------------------
--------------------------------------------------------------------------

begin

-- Equal Signal

	-- Compare bit by bit if they are equal
	EqualSignal <= A xnor B;
	
	-- Equal output (all are equal)
	EqualSignalOut <= EqualSignal(0) and EqualSignal(1) and EqualSignal(2) and EqualSignal(3);
	
	
-- A > B signal 

	-- Look if A has a MS 1 that B does not
	BigASignal(3) <= (A(3) and (not B(3)));
	BigASignal(2) <= EqualSignal(3) and (A(2) and (not B(2)));
	BigASignal(1) <= EqualSignal(3) and EqualSignal(2) and (A(1) and (not B(1)));	
	BigASignal(0) <= EqualSignal(3) and EqualSignal(2) and EqualSignal(1) and (A(0) and (not B(0)));
	
	-- A>B output
	BigASignalOut <= BigASignal(0) or BigASignal(1) or BigASignal(2) or BigASignal(3);

	
-- A < B signal

	-- If not any of the other cases
	BigBSignalOut <= ((not BigASignalOut) and (not EqualSignalOut));

-- Output signals

	Equal <= EqualSignalOut;
	BigA 	<= BigASignalOut;
	BigB 	<= BigBSignalOut;

end;