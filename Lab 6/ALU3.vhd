LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ALU3 IS
PORT (Clock : IN STD_LOGIC ;
	A ,B : IN UNSIGNED(7 DOWNTO 0);
	OP: IN UNSIGNED(15 downto 0);
	R: OUT UNSIGNED(3 DOWNTO 0); -- the y or n 
	Student_ID: IN UNSIGNED(3 DOWNTO 0));
END ALU3;

ARCHITECTURE Behavior OF ALU3 IS
SIGNAL Result : UNSIGNED (3 DOWNTO 0);
BEGIN
	PROCESS (Clock, OP,A,B)
	BEGIN
		--IF (rising_edge(Clock)) THEN
			CASE OP IS
				WHEN "0000000000000001" => 
					IF ((A(7 DOWNTO 4) > Student_ID) OR (A(3 DOWNTO 0) > Student_ID)) then
						Result <= "1111"; -- Y
					ELSE 
						Result <= "0000"; -- N
					END IF;
				WHEN "0000000000000010" => 
					IF ((A(7 DOWNTO 4) > Student_ID) OR (A(3 DOWNTO 0) > Student_ID)) then
						Result <= "1111"; -- Y
					ELSE 
						Result <= "0000"; -- N
					END IF;
				WHEN "0000000000000100" => 
					IF ((A(7 DOWNTO 4) > Student_ID) OR (A(3 DOWNTO 0) > Student_ID)) then
						Result <= "1111"; -- Y
					ELSE 
						Result <= "0000"; -- N
					END IF;
				WHEN "0000000000001000" => 
					IF ((A(7 DOWNTO 4) > Student_ID) OR (A(3 DOWNTO 0) > Student_ID)) then
						Result <= "1111"; -- Y
					ELSE 
						Result <= "0000"; -- N
					END IF;
				WHEN "0000000000010000" => 
					IF ((A(7 DOWNTO 4) > Student_ID) OR (A(3 DOWNTO 0) > Student_ID)) then
						Result <= "1111"; -- Y
					ELSE 
						Result <= "0000"; -- N
					END IF;
				WHEN "0000000000100000" => 
					IF ((A(7 DOWNTO 4) > Student_ID) OR (A(3 DOWNTO 0) > Student_ID)) then
						Result <= "1111"; -- Y
					ELSE 
						Result <= "0000"; -- N
					END IF;
				WHEN "0000000001000000" => 
					IF ((A(7 DOWNTO 4) > Student_ID) OR (A(3 DOWNTO 0) > Student_ID)) then
						Result <= "1111"; -- Y
					ELSE 
						Result <= "0000"; -- N
					END IF;
				WHEN "0000000010000000" => 
					IF ((A(7 DOWNTO 4) > Student_ID) OR (A(3 DOWNTO 0) > Student_ID)) then
						Result <= "1111"; -- Y
					ELSE 
						Result <= "0000"; -- N
					END IF;
				WHEN "0000000100000000" => 
					IF ((A(7 DOWNTO 4) > Student_ID) OR (A(3 DOWNTO 0) > Student_ID)) then
						Result <= "1111"; -- Y
					ELSE 
						Result <= "0000"; -- N
					END IF;
				WHEN OTHERS => -- Don't care
			END CASE;
		--END IF;
	END PROCESS;
R <= Result(3 DOWNTO 0);
END Behavior;