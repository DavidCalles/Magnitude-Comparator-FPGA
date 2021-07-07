-- SevenSegmentsModified.vhd

--****************************************************
--	Description: Get outputs for the 7 segments from 
--					 a 4-bit  input (just 1 digit)
--	
--	Inputs: [2:0] ones, symbol to be displayed
--	
--	Outputs: reg[6:0] segments, obtained through 
--				behavioral description. (low means ON)
--***************************************************/

-- Libraries

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

-- Entity declaration

entity SevenSegmentsModified is

    port(binNumber  : in std_logic_vector(2 downto 0);     
         segmentLed : out std_logic_vector(6 downto 0));
			

end SevenSegmentsModified;

-- Architecture definition

architecture Behavioral of SevenSegmentsModified is

begin
	process(binNumber)
	begin
		case binNumber is
			when "100"  =>
				segmentLed <= "0110110"; -- segment =
			when "010"  =>   
				segmentLed <= "0001111"; -- segment >
			when "001"  =>   
				segmentLed <= "0111001"; -- segment <
			when others  =>   
				segmentLed <= "0111111"; -- segment -
		end case;
	end process;

end;