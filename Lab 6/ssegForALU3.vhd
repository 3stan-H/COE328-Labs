LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY ssegForALU3 IS
	PORT (bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	leds : OUT STD_LOGIC_VECTOR (0 TO 6));
END ssegForALU3;
ARCHITECTURE Behaviour OF ssegForALU3 IS
BEGIN
	PROCESS (bcd)
	BEGIN
		CASE bcd IS
									    -- abcdefg
			WHEN "1111" => leds <= "1000100";--y
			WHEN "0000" => leds <= "0001001";--n
			WHEN OTHERS => leds <= "1111111";--Nothing
		END CASE;
	END PROCESS;
END Behaviour;