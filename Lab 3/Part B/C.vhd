LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY C IS
    PORT (
        S : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        L : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END C;

ARCHITECTURE Behaviour OF C IS
BEGIN
	
	--L(0) <= ((NOT S(1)) AND (NOT S(0))) OR (S(1) AND S(0)) OR ((NOT S(2) AND (NOT S(1))));
	--L(1) <= (S(2) AND (NOT S(1)));
	--L(2) <= (S(2) AND S(1) AND (NOT S(0))) OR ((NOT S(3) AND (NOT S(2)) AND (NOT S(1)) AND S(0)));
	--L(3) <= S(3);
	
	L(3) <= (S(2) AND S(1) AND S(0));
	L(2) <= (((NOT S(0)) AND (NOT S(1)) AND (NOT S(2)) AND (NOT S(3))) OR ((NOT S(0)) AND S(1) AND S(2)));
	L(1) <= ((NOT S(2)) AND S(1) AND S(0));
	L(0) <= ((NOT S(0)) OR (S(2) AND (NOT S(1))) OR (NOT S(2) AND S(1)));
END Behaviour;