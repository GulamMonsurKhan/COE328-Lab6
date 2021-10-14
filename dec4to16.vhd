library ieee;
use ieee.std_logic_1164.all;

Entity dec4to16 is
	port (w: in std_logic_vector(3 downto 0);
			En: in std_logic;
			y: out std_logic_vector(0 to 15));
			
end dec4to16;

Architecture Behaviour of dec4to16 is
Signal W1	: std_logic_vector(2 downto 0);
Signal Op1	: std_logic_vector(0 to 7);
Signal Op2	: std_logic_vector(0 to 7);


	component dec3to8
		port(w	: in std_logic_vector(2 downto 0);
			  En	: in std_logic;
			  y	: out std_logic_vector(0 to 7));
	end component;
begin
w1(2)<=w(2);
w1(1)<=w(1);
w1(0)<=w(0);

dec0	: dec3to8 port map (w1, (not w(3)) and En, Op1);
dec1	: dec3to8 port map (w1, w(3) and En, Op2);

y<= Op1 & Op2;

End Behaviour;	

	
			
	
	
	