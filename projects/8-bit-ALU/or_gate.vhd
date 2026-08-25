library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    Port ( A,B : in std_logic_vector(7 downto 0);
           Y : out std_logic_vector(7 downto 0));
end or_gate;

architecture dataflow of or_gate is
begin

Y <= A or B;

end dataflow;
