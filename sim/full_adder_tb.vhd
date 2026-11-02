----------------------------------------------------------------------------------
-- Testbench for the 1-bit full adder
-- Applies all 8 input combinations, 100 ns each
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY full_adder_tb IS
END full_adder_tb;

ARCHITECTURE behavior OF full_adder_tb IS

    COMPONENT full_adder
        PORT ( A, B, Cin : IN  std_logic;
               Sum, Cout : OUT std_logic );
    END COMPONENT;

    signal a    : std_logic := '0';
    signal b    : std_logic := '0';
    signal cin  : std_logic := '0';
    signal sum  : std_logic;
    signal cout : std_logic;

BEGIN

    uut: full_adder PORT MAP (A => a, B => b, Cin => cin, Sum => sum, Cout => cout);

    stim_proc: process
    begin
        a <= '0'; b <= '0'; cin <= '0'; wait for 100 ns;
        a <= '0'; b <= '0'; cin <= '1'; wait for 100 ns;
        a <= '0'; b <= '1'; cin <= '0'; wait for 100 ns;
        a <= '0'; b <= '1'; cin <= '1'; wait for 100 ns;
        a <= '1'; b <= '0'; cin <= '0'; wait for 100 ns;
        a <= '1'; b <= '0'; cin <= '1'; wait for 100 ns;
        a <= '1'; b <= '1'; cin <= '0'; wait for 100 ns;
        a <= '1'; b <= '1'; cin <= '1'; wait for 100 ns;
        wait;
    end process;

END behavior;
