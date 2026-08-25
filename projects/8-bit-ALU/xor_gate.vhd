library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
    Port ( A,B : in std_logic_vector(7 downto 0);
           Y : out std_logic_vector(7 downto 0));
end xor_gate;

architecture dataflow of xor_gate is
begin

Y <= A xor B;

end dataflow;
