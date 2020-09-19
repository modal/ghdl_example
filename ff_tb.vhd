
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ff_tb is
  END ENTITY;

ARCHITECTURE tb OF ff_tb IS
  SIGNAL rst    : STD_LOGIC := '1';
  SIGNAL clk    : STD_LOGIC := '0';

  SIGNAL d      : STD_LOGIC := '0';
  SIGNAL q      : STD_LOGIC;

  constant clk_period : time := 1 ns;
BEGIN
  UUT : entity work.ff
  PORT MAP
  (
    rst         =>rst,
    clk         =>clk,
    d           =>d,
    q           =>q
  );

  ------------------------------------------------------------------------------
  clk <= not clk after clk_period / 2;
  ------------------------------------------------------------------------------
  stimulus : process
  BEGIN
    wait for 12  * clk_period;
    rst <= '0';
    wait for 12  * clk_period;
    d <= '1';
    wait for 12  * clk_period;
    d <= '0';
    wait for 4  * clk_period;
    d <= '1';
    wait for 3  * clk_period;
    d <= '1';
    wait for 2  * clk_period;
    d <= '0';
    wait for 4  * clk_period;
    report "Simulation complete";
    wait;
  END PROCESS;
END tb;
