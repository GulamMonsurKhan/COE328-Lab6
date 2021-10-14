library ieee;
use ieee.std_logic_1164.all;

entity MealyMachine is

port
(	 
	clk				: in std_logic;
	data_in			: in std_logic;
	reset				: in std_logic;
	student_id		: out std_logic_vector (3 downto 0);
	current_state	: out std_logic_vector (3 downto 0)
	
	);
	
end MealyMachine;

architecture rtl of MealyMachine is

	type state_type is (s0, s1, s2,s3, s4, s5, s6, s7, s8);
	
	signal state			: state_type;
	signal data_out		: std_logic_vector (3 downto 0);
	signal Current_statee : std_logic_vector (3 downto 0);
	
begin
	process (clk, reset)
	
	begin
			if reset = '1' then
					state <= s0;
			elsif	(rising_edge(clk)) then
			
				case state is		
					when s0=>
					if data_in = '1' then
							state <= s1;
					else	
							state <=s0;
							
					end if;
					
					when s1=>
					if data_in = '1' then
							state <= s2;
					else	
							state <=s1;
							
					end if;
					
					when s2=>
					if data_in = '1' then
							state <= s3;
					else	
							state <=s2;
							
					end if;
					
					when s3=>
					if data_in = '1' then
							state <= s4;
					else	
							state <=s3;
							
					end if;
					
					when s4=>
					if data_in = '1' then
							state <= s5;
					else	
							state <=s4;
							
					end if;
					
					when s5=>
					if data_in = '1' then
							state <= s6;
					else	
							state <=s5;
							
					end if;
					
					when s6=>
					if data_in = '1' then
							state <= s7;
					else	
							state <=s6;
							
					end if;
					
					when s7=>
					if data_in = '1' then
							state <= s8;
					else	
							state <=s7;
							
					end if;
					
					when s8=>
					if data_in = '1' then
							state <= s0;
					else	
							state <=s8;
							
					end if;
			end case;
	end if;
end process;	
	
	-- STUDENT ID: 500954269      
	process (state, data_in)
	begin
			case state is 
					when s0=>
							if data_in = '1' then
									data_out <= "0000";
							else
									data_out <= "0101"; --5
							end if;
							
					when s1=>
							if data_in = '1' then
									data_out <= "0000";
							else
									data_out <= "0000"; --0
							end if;		
					when s2=>
							if data_in = '1' then
									data_out <= "1001";
							else
									data_out <= "0000"; --0
							end if;
					when s3=>
							if data_in = '1' then
									data_out <= "0110";
							else
									data_out <= "1001"; --9
							end if;
					when s4=>
							if data_in = '1' then
									data_out <= "0100";
							else
									data_out <= "0101"; --5
							end if;
					when s5=>
							if data_in = '1' then
									data_out <= "0010";
							else
									data_out <= "0100"; --4
							end if;	
					when s6=>
							if data_in = '1' then
									data_out <= "0110";
							else
									data_out <= "0010"; --2
							end if;	
					when s7=>
							if data_in = '1' then
									data_out <= "1001";
							else
									data_out <= "0110"; --6
							end if;		
					when s8=>
							if data_in = '1' then
									data_out <= "0101";
							else
									data_out <= "1001"; --9
							end if;
					end case;
			end process;
	
		process (state, data_in)
		
		begin
					case state is
							when s0=>
									if data_in = '1' then
											Current_statee <= "0001";
									else
											Current_statee <="0000";
									end if;
							when s1=>
									if data_in = '1' then
											Current_statee <= "0010";
									else
											Current_statee <="0001";
									end if;	
							when s2=>
									if data_in = '1' then
											Current_statee <= "0011";
									else
											Current_statee <="0010";
									end if;
							when s3=>
									if data_in = '1' then
											Current_statee <= "0100";
									else
											Current_statee <="0011";
									end if;
							when s4=>
									if data_in = '1' then
											Current_statee <= "0101";
									else
											Current_statee <="0100";
									end if;	
							when s5=>
									if data_in = '1' then
											Current_statee <= "0110";
									else
											Current_statee <="0101";
									end if;
							when s6=>
									if data_in = '1' then
											Current_statee <= "0111";
									else
											Current_statee <="0110";
									end if;
							when s7=>
									if data_in = '1' then
											Current_statee <= "1000";
									else
											Current_statee <="0111";
									end if;
							when s8=>
									if data_in = '1' then
											Current_statee <= "0000";
									else
											Current_statee <="1000";
									end if;
					end case;
					
					student_id(0) <= data_out(0);
					student_id(1) <= data_out(1);			
					student_id(2) <= data_out(2);
					student_id(3) <= data_out(3);
					
					current_state(0) <= Current_statee(0);
					current_state(1) <= Current_statee(1);
					current_state(2) <= Current_statee(2);
					current_state(3) <= Current_statee(3);
	
				end process;
				
		end rtl;		
											
										
												
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	