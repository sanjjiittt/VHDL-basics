library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity multiplier_4_bit is
    Port ( A : in STD_LOGIC_VECTOR(3 downto 0);
           B : in STD_LOGIC_VECTOR(3 downto 0);
           M : out STD_LOGIC_VECTOR(7 downto 0));
end multiplier_4_bit;

architecture rtl of multiplier_4_bit is
begin
    M <= std_logic_vector(signed(A) * signed(B));

end rtl;
