library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_subtractor is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           diff : out STD_LOGIC;
           borrow : out STD_LOGIC);
end half_subtractor;

architecture dataflow of half_subtractor is
begin
    diff <= A xor B;
    borrow <= (not A) and B;


end dataflow;
