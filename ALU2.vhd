LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY ALU2 IS
	PORT( Clock			: IN STD_LOGIC;
			A,B 			: IN unsigned(7 DOWNTO 0);
			student_id	: IN unsigned(3 DOWNTO 0); 	
			OP				: IN unsigned(0 TO 15); 
			Neg			: OUT STD_LOGIC; 					
			R1 			: OUT unsigned(3 DOWNTO 0);
			R2				: OUT unsigned(3 DOWNTO 0));  
END ALU2;

ARCHITECTURE calculation OF ALU2 IS
	SIGNAL Reg1,Reg2,Result: unsigned(7 DOWNTO 0):=(others => '0');
	SIGNAL Reg4 : unsigned(0 to 7);

BEGIN
	Reg1 <= A;												
	Reg2 <= B;
					
		PROCESS(Clock,OP)
					
		BEGIN	
			IF(rising_edge(Clock)) THEN 		
				CASE OP IS 
					WHEN "0000000000000001" =>
						Result <= Reg1 + "00000010";
									
					WHEN "0000000000000010" =>
						Result(0) <= Reg2(7);
						Result(1) <= Reg2(6);
						Result(2) <= Reg2(0);
						Result(3) <= Reg2(1);
						Result(4) <= Reg2(2);
						Result(5) <= Reg2(3);
						Result(6) <= Reg2(4);
						Result(7) <= Reg2(5);
					
					WHEN "0000000000000100" =>
						Result(0) <= Reg1(4);
						Result(1) <= Reg1(5);
						Result(2) <= Reg1(6);
						Result(3) <= Reg1(7);
						Result(4) <= Reg1(0);
						Result(5) <= Reg1(1);
						Result(6) <= Reg1(2);
						Result(7) <= Reg1(3);
							
					WHEN "0000000000001000" =>
						IF (Reg1>Reg2) THEN
							Result <= Reg2;
						ELSE
							Result<= Reg1;
						END IF;
							
					WHEN "0000000000010000" =>
						Result <= Reg1 ror 2;
							
					WHEN "0000000000100000" =>
						FOR i IN Reg2'RANGE LOOP
							Result(i) <= Reg2(i);
						END LOOP;
							
					WHEN "0000000001000000" =>
						Result <= Reg1 XOR Reg2;
							
					WHEN "0000000010000000" =>
						Result <= (Reg1 + Reg2)-"00000100";		
							
					WHEN "0000000100000000" =>
						Result <= "11111111";		
									
					WHEN OTHERS =>
								
					END CASE;
				END IF;
			END PROCESS;
		R1 <= Result(3 DOWNTO 0);
		R2 <= Result(7 DOWNTO 4);
	END calculation;