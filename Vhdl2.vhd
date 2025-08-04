LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Vhdl2 IS
PORT (
    x1, x2, x3, x4 : IN STD_LOGIC;  -- x1=MSB (A), x4=LSB (D)
    f : OUT STD_LOGIC
);
END Vhdl2;

ARCHITECTURE Behavior OF Vhdl2 IS
BEGIN
    -- Optimized function for minterms 1,5,7,8,10,11,12
    f <= (not x1 and not x3 and x4) OR  -- Covers minterms 1,5
         (not x1 and x2 and x4) OR      -- Covers minterm 7
         (x1 and not x2 and x3) OR      -- Covers minterms 10,11
         (x1 and not x3 and not x4);    -- Covers minterms 8,12
END Behavior;