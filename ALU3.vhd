LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

ENTITY ALU3 IS
	PORT( Clock			: IN STD_LOGIC;
			A,B 			: IN unsigned(7 DOWNTO 0);
			student_id	: IN unsigned(3 DOWNTO 0); 	
			OP				: IN unsigned(0 TO 15); 
			Neg			: OUT STD_LOGIC; 	
			R				: OUT	UNSIGNED (7 DOWNTO 0);
			R1	 			: OUT unsigned(3 DOWNTO 0);
			R2				: OUT unsigned(3 DOWNTO 0));  
END ALU3;

ARCHITECTURE calculation OF ALU3 IS
	SIGNAL Reg1, Reg2, Result : unsigned(7 downto 0):=(others =>'0');
	SIGNAL Reg4: UNSIGNED (0 to 7);
	BEGIN
		Reg1 <= A;
		Reg2 <= B;
		Process (Clock, OP)
		BEGIN
			if(rising_edge(Clock)) THEN
				CASE OP IS
				WHEN "0000000000000001" => --5
				Result <= "00000000";
				neg <= '0';

				WHEN "0000000000000010" => --0
				Result <= "00000001";
				neg <= '0';
				
				WHEN "0000000000000100" => --0
				Result <= "00000001";
				neg <= '0';
				
				WHEN "0000000000001000" => --9
				Result <= "00000000";
				neg <= '0';
				
				WHEN "0000000000010000" => --5
				Result <= "00000000";
				neg <= '0';
				
				WHEN "0000000000100000" => --4
				Result <= "00000001";
				neg <= '0';
				
				WHEN "0000000001000000" => --2
				Result <= "00000001";
				neg <= '0';
				
				WHEN "0000000010000000" => --6
				Result <= "00000001";
				neg <= '0';
				
				WHEN "0000000100000000" => --9
				Result <= "00000000";
				neg <= '0';
				
				WHEN OTHERS =>
				END CASE;
				END IF;
				END PROCESS;
				R <= Result (7 DOWNTO 0);
				END calculation;
				