library ieee;
use ieee.std_logic_1164.all;

Entity Latch1 is
	port (A	: in std_logic_vector(7 downto 0);
			Resetn, Clock	:	in std_logic;
			Q: out std_logic_vector(7 downto 0));
End Latch1;
Architecture Behaviour of Latch1 is
Begin
	Process(Resetn, Clock)
	Begin
		if Resetn = '0' then	
			Q <= "00000000";
		elsif	Clock'event and Clock = '1' then
			Q <= A;
		end if;
	end process;	
end Behaviour;	
	