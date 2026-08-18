library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end full_adder;

architecture dataflow of full_adder is
begin
    sum <= A xor B xor Cin;
    carry <= (A and B)or(A and Cin)or(B and Cin);
end dataflow;
