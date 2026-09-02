LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY latch2 IS
	PORT (B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Reset,Clock : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END latch2;

ARCHITECTURE Behaviour OF latch2 IS
BEGIN
	PROCESS (Reset, Clock) --begins the operations using these inputs
	BEGIN
		IF Reset = '0' then -- resets the states to initial states
			Q <= "00000000";
		ELSIF (Clock'EVENT AND Clock ='1') THEN -- positive edge triggered
			Q <= B;
		END IF;
	END PROCESS;
END Behaviour;