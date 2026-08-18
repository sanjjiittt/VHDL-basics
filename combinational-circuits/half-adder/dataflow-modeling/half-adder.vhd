library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end half_adder;

architecture dataflow of half_adder is
begin
sum <= A xor B;
Cout <= A and B;

end dataflow;
