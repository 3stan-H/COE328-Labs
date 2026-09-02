LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ALU2 IS
PORT (Clock : IN STD_LOGIC ;
	A ,B : IN UNSIGNED(7 DOWNTO 0);
	OP: IN UNSIGNED(15 downto 0);
	Neg: OUT STD_LOGIC;
	R1: OUT UNSIGNED(3 DOWNTO 0);--lower of the 4bits from 8bits Result
	R2: OUT UNSIGNED(3 DOWNTO 0));--higher of the 4bits from 8bits Result
END ALU2;

ARCHITECTURE Behavior OF ALU2 IS
SIGNAL Reg1, Reg2, Result: UNSIGNED(7 DOWNTO 0) := (OTHERS => '0');
SIGNAL temp: UNSIGNED (7 DOWNTO 0);

BEGIN
	Reg1 <= A;
	Reg2 <= B;
	PROCESS (Clock, OP,A,B)
	BEGIN
		--IF (rising_edge(Clock)) THEN
			CASE OP IS
				WHEN "0000000000000001" => --funtion 1 - swapping lower and upper 4 bits of A
					Neg <= '0';
					temp(7)<=Reg1(3);
					temp(6)<=Reg1(2);
					temp(5)<=Reg1(1);
					temp(4)<=Reg1(0);
					temp(3)<=Reg1(7);
					temp(2)<=Reg1(6);
					temp(1)<=Reg1(5);
					temp(0)<=Reg1(4);
					Result <= temp;
				WHEN "0000000000000010"  => --function 2 - A OR B
					Neg <= '0';
					Result <= (Reg1 OR Reg2);
				WHEN "0000000000000100" => --Function 3 - Decrement B by 5
					IF (Reg2 < "0101") then
						Neg <= '1';
						Result <= "0101" - Reg2;
					ELSE
						Neg <= '0';
						Result <= Reg2 - "0101";
					END IF;
				WHEN "0000000000001000" => --Function 4 - Invert all bits of A
					Neg <= '0';
					Result <= NOT(Reg1);
				WHEN "0000000000010000" => --Function 5 - Invert the bit-significance order of A
					Neg <= '0';
					temp(7)<=Reg1(0);
					temp(6)<=Reg1(1);
					temp(5)<=Reg1(2);
					temp(4)<=Reg1(3);
					temp(3)<=Reg1(4);
					temp(2)<=Reg1(5);
					temp(1)<=Reg1(6);
					temp(0)<=Reg1(7);
					Result <= temp;
				WHEN "0000000000100000" => --Function 6 - Greater value of A and B 
					Neg <= '0';
					IF (Reg2 >= Reg1) then
						Result <= Reg2;
					ELSE
						Result <= Reg1;
					END IF; 
				WHEN "0000000001000000" => --Function 7 - Difference between A and B
					IF (Reg1 < Reg2) then
						Neg <= '1';
						Result <= Reg2 - Reg1;
					ELSE
						Neg <= '0';
						Result <= Reg1 - Reg2;
							END IF;
				WHEN "0000000010000000" => --Function 8 - XNORing A and B
					Neg <= '0';
					Result <= NOT(Reg1 XOR Reg2);
				WHEN "0000000100000000" => --Function 9 - Rotate B to left by three bits (ROL)
					Neg <= '0';
					temp(7)<=Reg1(4); 
					temp(6)<=Reg1(3);
					temp(5)<=Reg1(2);
					temp(4)<=Reg1(1);
					temp(3)<=Reg1(0);
					temp(2)<=Reg1(7);
					temp(1)<=Reg1(6);
					temp(0)<=Reg1(5);
				WHEN OTHERS => -- Don't care
			END CASE;
		--END IF;
	END PROCESS;
	
R1 <= Result(3 DOWNTO 0);
R2 <= Result(7 DOWNTO 4);

END Behavior;