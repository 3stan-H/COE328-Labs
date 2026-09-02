LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
	ENTITY ASU IS
	PORT (Cin : IN STD_LOGIC ;
	X, Y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Cout, Overflow : OUT STD_LOGIC;
	negative : OUT STD_LOGIC);
END ASU;
ARCHITECTURE Behavior OF ASU IS
	SIGNAL Sum : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL subY	: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	PROCESS(Cin, X, Y, subY)
	BEGIN
		IF (Cin = '1') THEN
			subY <= (NOT Y);
			Sum <= ('0' & X) + ('0' & subY) + Cin;
		ELSE
			subY <= Y;
			sum <= ('0' & X) + ('0' & subY) + Cin;
		END IF;
END PROCESS;
	S <= Sum(3 DOWNTO 0);
	Overflow<= Sum(4) XOR X(3) XOR subY(3) XOR Sum(3);
	Cout <= Sum(4);
	negative <= Sum(3);
END Behavior;