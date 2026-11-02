----------------------------------------------------------------------------------
-- Testbench for 1-bit Full Adder: applies all 8 input combinations, 100 ns each
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_tb is
end full_adder_tb;

architecture behavior of full_adder_tb is
    component full_adder
        Port ( a, b, cin : in  STD_LOGIC;
               sum, cout : out STD_LOGIC);
    end component;

    signal a, b, cin : STD_LOGIC := '0';
    signal sum, cout : STD_LOGIC;
begin
    uut: full_adder port map (a => a, b => b, cin => cin, sum => sum, cout => cout);

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
end behavior;
