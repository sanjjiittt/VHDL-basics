library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2_1 is
    Port ( A,B : in std_logic_vector(7 downto 0);
           S : in std_logic;
           Y : out std_logic_vector(7 downto 0));
end mux2_1;

architecture rtl of mux2_1 is
begin

Y <= A when S = '0' else B;

end rtl;
