library ieee;
use ieee.std_logic_1164.all;

Entity Latch2 is
	port (B	: in std_logic_vector(7 downto 0);
			Resetn, Clock	:	in std_logic;
			Q: out std_logic_vector(7 downto 0));
End Latch2;
Architecture Behaviour of Latch2 is
Begin
	Process(Resetn, Clock)
	Begin
		if Resetn = '0' then	
			Q <= "00000000";
		elsif	Clock'event and Clock = '1' then
			Q <= B;
		end if;
	end process;	
end Behaviour;	
	