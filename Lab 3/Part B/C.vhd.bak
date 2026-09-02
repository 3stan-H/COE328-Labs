LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY C IS
    PORT (
        S3, S2, S1, S0 : IN  STD_LOGIC;  
        L3, L2, L1, L0 : OUT STD_LOGIC);
END C;

ARCHITECTURE Behaviour OF C IS
BEGIN

    L3 <= S2 AND S1 AND S0;
    L2 <= S2 AND S1 AND NOT S0;
	 L1 <= NOT S2 AND S1 AND S0;
    L0 <= (NOT S2) OR (NOT S3 AND S1 AND S0) OR (S3 AND NOT S1 AND NOT S0);
END Behaviour;