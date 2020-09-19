
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ff is
  PORT
  (
    rst       : IN STD_LOGIC;
    clk       : IN STD_LOGIC;
    d         : IN STD_LOGIC;
    q         : OUT STD_LOGIC
  );
END ENTITY ff;

ARCHITECTURE rtl OF ff is

BEGIN

  ff_p : PROCESS(rst, clk)
  BEGIN
    IF rst = '1' then
      q <= '0';
    ELSIF rising_edge(clk) then
      q <= d;
    END IF;
  END PROCESS;

END;
