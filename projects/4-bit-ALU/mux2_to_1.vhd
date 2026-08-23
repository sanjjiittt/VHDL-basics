library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity mux2_to_1 is
    Port ( A : in STD_LOGIC_VECTOR(3 downto 0);
           B : in STD_LOGIC_VECTOR(3 downto 0);
           S : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR(3 downto 0));
end mux2_to_1;

architecture rtl of mux2_to_1 is
begin

    Y<= A when S= '0' else B;

end rtl;
