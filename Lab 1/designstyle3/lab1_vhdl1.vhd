library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY lab1_vhdl1 IS 
PORT(
x1, x2, x3 : STD_LOGIC ;
f : OUT STD_LOGIC);
end lab1_vhdl1;
ARCHITECTURE Behavior OF lab1_vhdl1 IS 
BEGIN
f <= (x1 AND x2) OR (x3 AND (NOT x2));
END Behavior;