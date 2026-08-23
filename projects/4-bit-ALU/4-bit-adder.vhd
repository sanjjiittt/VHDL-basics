library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity adder_4_bit is
    Port ( A : in STD_LOGIC_VECTOR(3 downto 0);
           B : in STD_LOGIC_VECTOR(3 downto 0);
           Cin : in STD_LOGIC;
           sum : out STD_LOGIC_VECTOR(3 downto 0);
           Cout : out STD_LOGIC);
end adder_4_bit;

architecture rtl of adder_4_bit is
    signal temp : unsigned(4 downto 0);
begin

    temp <= ('0' & unsigned(A))
          + ('0' & unsigned(B))
          + unsigned(std_logic_vector'("0000" & Cin));

    sum  <= std_logic_vector(temp(3 downto 0));
    Cout <= temp(4);

end rtl;