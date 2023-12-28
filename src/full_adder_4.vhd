library ieee; 
use ieee.std_logic_1164.all; 
--ENTITY FOR 4-BIT ADDER AND DATA FLOW ARCHITECTURE.
ENTITY adder_4a IS
	PORT (A, B 	:IN std_logic_vector(3 DOWNTO 0); 
	      Cin	:IN std_logic;
	      S 	:OUT std_logic_vector(3 DOWNTO 0); 	
	      Cout	:OUT std_logic);
END adder_4a;

ARCHITECTURE circuit OF adder_4a IS
SIGNAL C: std_logic_vector (4 DOWNTO 0); 
BEGIN
    C(0)<=Cin;
    S <=A XOR B XOR C(3 DOWNTO 0);
    C(4 DOWNTO 1)<=(A AND B) OR ((A XOR B) AND C(3 DOWNTO 0));
    Cout<=C(4);
END circuit;


