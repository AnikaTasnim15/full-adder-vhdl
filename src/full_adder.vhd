----------------------------------------------------------------------------------
-- Title   : 1-bit Full Adder
-- Tool    : Xilinx ISE 14.7
-- Sum     = A xor B xor Cin
-- Cout    = (A and B) or (A and Cin) or (B and Cin)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( a    : in  STD_LOGIC;
           b    : in  STD_LOGIC;
           cin  : in  STD_LOGIC;
           sum  : out STD_LOGIC;
           cout : out STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is
    signal a_b_xor : STD_LOGIC;
    signal a_b_and : STD_LOGIC;
    signal a_c_and : STD_LOGIC;
    signal b_c_and : STD_LOGIC;
begin
    a_b_xor <= a xor b;
    sum     <= a_b_xor xor cin;

    a_b_and <= a and b;
    a_c_and <= a and cin;
    b_c_and <= b and cin;
    cout    <= a_b_and or a_c_and or b_c_and;
end Behavioral;
