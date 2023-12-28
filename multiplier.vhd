LIBRARY ieee;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplier is 
        port(A :in std_logic_vector (3 downto 0);
             B :in std_logic_vector (3 downto 0);
             C_OUT : out std_logic_vector (7 downto 0)
        );
end multiplier;

architecture structural of multiplier is

SIGNAL C: std_logic_vector (4 DOWNTO 0);


 
SIGNAL TEMP_COUT : std_logic_vector (3 downto 0);
SIGNAL TEMP_AND_OUT : std_logic_vector (15 downto 0);

SIGNAL TEMP_SUM_OUT1  : std_logic_vector (3 downto 0);
SIGNAL TEMP_SUM_OUT2  : std_logic_vector (3 downto 0);
SIGNAL TEMP_SUM_OUT3  : std_logic_vector (3 downto 0);

SIGNAL TEMP_C_OUT  : std_logic_vector(2 downto 0);


SIGNAL TEMP_SUM_IN_1 : std_logic_vector (3 downto 0);
SIGNAL TEMP_SUM_IN_2 : std_logic_vector (3 downto 0);
SIGNAL TEMP_SUM_IN_3 : std_logic_vector (3 downto 0);

COMPONENT adder_4a   		 
        PORT (A, B 	:IN std_logic_vector(3 DOWNTO 0); 
                Cin	:IN std_logic;
                S 	:OUT std_logic_vector(3 DOWNTO 0); 	
                Cout	:OUT std_logic);
END COMPONENT;
COMPONENT my_and   		 
        port(A_and :in std_logic;
        B_and :in std_logic;
        C_and_OUT : out std_logic);
END COMPONENT;
BEGIN      


		 gen : FOR i IN 0 TO 3 GENERATE
			  
					gen2: FOR j IN 0 TO 3 GENERATE
							  my_and_inst: my_and PORT MAP (A(i),B(j),TEMP_AND_OUT(i*4 + j));
			  END GENERATE;
		  
		  END GENERATE;
 
		  TEMP_SUM_IN_1 <= '0' & TEMP_AND_OUT(3 downto 1);
			
			
		  adder_1 : adder_4a PORT MAP (TEMP_AND_OUT(7 downto 4),TEMP_SUM_IN_1 , '0', TEMP_SUM_OUT1, TEMP_C_OUT(0)); 	
			
	          TEMP_SUM_IN_2 <= TEMP_C_OUT(0) & TEMP_SUM_OUT1(3 downto 1);
		  
                  adder_2 : adder_4a PORT MAP (TEMP_AND_OUT(11 downto 8), TEMP_SUM_IN_2, '0', TEMP_SUM_OUT2, TEMP_C_OUT(1)); 
		
	          TEMP_SUM_IN_3 <= TEMP_C_OUT(1) & TEMP_SUM_OUT2(3 downto 1);

                  adder_3 : adder_4a PORT MAP (TEMP_AND_OUT(15 downto 12),TEMP_SUM_IN_3 , '0', TEMP_SUM_OUT3, TEMP_C_OUT(2));
                
                C_OUT(0) <= TEMP_AND_OUT(0);
                C_OUT(1) <= TEMP_SUM_OUT1(0);
                C_OUT(2) <= TEMP_SUM_OUT2(0);
                C_OUT(6 DOWNTO 3) <= TEMP_SUM_OUT3;  
                C_OUT(7) <= TEMP_C_OUT(2);

end structural;


