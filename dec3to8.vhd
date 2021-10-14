library ieee;
use ieee.std_logic_1164.all;

Entity dec3to8 is
	port (w: in std_logic_vector(2 downto 0);
			En: in std_logic;
			y: out std_logic_vector(0 to 7));
			
end dec3to8;

Architecture Behaviour of dec3to8 is
	Signal Enw	: std_logic_vector(3 downto 0);
Begin
		Enw <= En & w;
		with Enw select
			y <= "10000000" when "1000",
				  "01000000" when "1001",
				  "00100000" when "1010",
				  "00010000" when "1011",
				  "00001000" when "1100",
				  "00000100" when "1101",
				  "00000010" when "1110",
				  "00000001" when "1111",
				  "00000000" when others;
End Behaviour;				  