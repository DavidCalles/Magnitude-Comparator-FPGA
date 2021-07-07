-- DCalles_Lab5_MagnitudeComparator.vhd

-- TOP ENTITY

--***********************************************************************
--	Description: 4-bit unsigned int Magnitude comparator. 
--	
--	Inputs: 	sw: 8 switches [7:4] are first integer "A"
--					 [3:0] are second integer "B"
--	
--	Outputs: led: 3 LDS which indicate if A=B, A>B, or A<B
--				segmentA: Seven segments indicating first integer
--				segmentB: Seven segments indicating second integer
--				segmentM: Seven segments indicating >, <, or =
--***********************************************************************

-- Libraries

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

-- Entity declaration

entity DCalles_Lab5_MagnitudeComparator is

    port(sw 		: in std_logic_vector(7 downto 0);    
         led  		: out std_logic_vector(2 downto 0);
			segmentA : out std_logic_vector(6 downto 0);
			segmentB : out std_logic_vector(6 downto 0);
			segmentM : out std_logic_vector(6 downto 0));
			
-- SW[7:4] -> NUMBER A	
-- SW[3:0] -> NUMBER B		
-- led[2] -> equal
-- led[1] -> A>B	
-- led[0] -> A<B

end DCalles_Lab5_MagnitudeComparator;

-- Architecture definition

architecture Behavioral of DCalles_Lab5_MagnitudeComparator is

--------------------------------------------------------------------------
---------------- COMPONENTS DEFINED IN SEPARATE FILES --------------------
--------------------------------------------------------------------------

-- 4bit magnitude comparator
	component Comparator
		port( A		: in std_logic_vector(3 downto 0); 
				B 		: in std_logic_vector(3 downto 0);     
				Equal : out std_logic;
				BigA  : out std_logic;
				BigB  : out std_logic );
	end component;
	
-- 7 segments (numbers)
	component SevenSegments
	port( binNumber  : in std_logic_vector(3 downto 0);     
         segmentLed : out std_logic_vector(6 downto 0) );
	end component;

-- 7 segments (middle symbol)
	component SevenSegmentsModified
	port( binNumber  : in std_logic_vector(2 downto 0);     
         segmentLed : out std_logic_vector(6 downto 0) );
	end component;
--------------------------------------------------------------------------
------------------------- INTERMEDIATE SIGNALS ---------------------------
--------------------------------------------------------------------------
	signal ComparisonSignal : std_logic_vector(2 downto 0);


begin
--------------------------------------------------------------------------
-------------------------- COMPONENTS MAPPING ----------------------------
--------------------------------------------------------------------------
--	Magnitude comparator
	Comparator1: Comparator 
		port map ( sw(7 downto 4), sw(3 downto 0),
					  ComparisonSignal(2), ComparisonSignal(1),
					  ComparisonSignal(0) ); 
-- LEFT digit
	SevenSegmentsL: SevenSegments 
		port map ( sw(7 downto 4),  segmentA );
		
-- RIGHT digit
	SevenSegmentsR: SevenSegments 
		port map ( sw(3 downto 0),  segmentB );
		
-- Comparison symbol
	SevenSegmentsM: SevenSegmentsModified 
		port map ( ComparisonSignal,  segmentM );
		
--------------------------------------------------------------------------
-------------------------- ARCHITECTURE LOGIC ----------------------------
--------------------------------------------------------------------------

-- Outputs

led <= ComparisonSignal;

end;