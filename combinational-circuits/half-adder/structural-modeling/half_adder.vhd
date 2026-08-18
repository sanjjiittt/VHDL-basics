library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end half_adder;

architecture Structural of half_adder is
component xor_gate
    port(p: in std_logic; 
        q: in std_logic; 
        r: out std_logic);
end component;
component and_gate
    port(x: in std_logic; 
        y: in std_logic; 
        z: out std_logic);
end component;
begin
u1: xor_gate port map(A,B,sum);
u2: and_gate port map(A,B,carry);
end Structural;
