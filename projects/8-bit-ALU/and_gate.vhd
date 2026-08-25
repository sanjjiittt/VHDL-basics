library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
    Port ( A,B : in std_logic_vector(7 downto 0);
           Y : out std_logic_vector(7 downto 0));
end and_gate;

architecture dataflow of and_gate is
begin

Y <= A and B;

end dataflow;
