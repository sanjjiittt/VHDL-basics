library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_subtractor is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           borrowIn : in STD_LOGIC;
           diff : out STD_LOGIC;
           borrowOut : out STD_LOGIC);
end full_subtractor;

architecture dataflow of full_subtractor is
begin 
    diff <= A xor B xor borrowIn;
    borrowOut <= ((not A) and B)or((not A) and borrowIn)or(B and borrowIn);


end dataflow;
