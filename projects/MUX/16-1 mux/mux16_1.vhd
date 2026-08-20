library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity mux16_1 is
    Port ( I : in STD_LOGIC_VECTOR(15 downto 0);
           S : in STD_LOGIC_VECTOR(3 downto 0);
           Y : out STD_LOGIC);
end mux16_1;

architecture Behavioral of mux16_1 is
begin

Y   <= I(TO_INTEGER(unsigned(S)));


end Behavioral;
