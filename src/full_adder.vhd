----------------------------------------------------------------------------------
-- Design Name : Full Adder
-- Module Name : full_adder - Behavioral
-- Description : 1-bit full adder (Xilinx ISE 14.7)
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( A    : in  STD_LOGIC;
           B    : in  STD_LOGIC;
           Cin  : in  STD_LOGIC;
           Sum  : out STD_LOGIC;
           Cout : out STD_LOGIC );
end full_adder;

architecture Behavioral of full_adder is
begin
    Sum  <= A XOR B XOR Cin;
    Cout <= (A AND B) OR (B AND Cin) OR (A AND Cin);
end Behavioral;
