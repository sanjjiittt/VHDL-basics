library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
    Port ( p : in STD_LOGIC;
           q : in STD_LOGIC;
           r : out STD_LOGIC);
end xor_gate;

architecture dataflow of xor_gate is
begin
r <= p xor q;
end dataflow;
