library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity piso_setup is
    Port ( shift : in STD_LOGIC;
           Q0 : in STD_LOGIC;
           B : in STD_LOGIC;
           Q1 : out STD_LOGIC);
end piso_setup;

architecture dataflow of piso_setup is
signal o1, o2: std_logic;
begin

o1 <= Q0 and shift;
o2 <= B and not(shift);
Q1 <= o1 or o2;

end dataflow;
