library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity multiplier is
    Port ( A : in std_logic_vector(3 downto 0);
           B : in std_logic_vector(3 downto 0);
           Y : out std_logic_vector(7 downto 0));
end multiplier;

architecture rtl of multiplier is
begin

Y <= std_logic_vector(signed(A) * signed(B));


end rtl;
