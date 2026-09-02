LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY latch1 IS
	PORT (A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Reset,Clock : IN STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END latch1;

ARCHITECTURE Behaviour OF latch1 IS
BEGIN
	PROCESS (Reset, Clock) --begins the operations using these inputs
	BEGIN
		IF Reset = '0' then -- resets the states to initial states
			Q <= "00000000";
		ELSIF (Clock'EVENT AND Clock ='1') THEN -- positive edge triggered --set to 0 for board
			Q <= A;
		END IF;
	END PROCESS;
END Behaviour;