library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_block is
    Port ( A, B : in std_logic_vector(7 downto 0);
           Cin : in STD_LOGIC;
           sum : out std_logic_vector(7 downto 0);
           Cout : out STD_LOGIC;
           overflow : out STD_LOGIC);
end adder_block;

architecture structural of adder_block is
component full_adder
Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component;

signal tempCarry: std_logic_vector(7 downto 0);
begin

u0: full_adder port map(A(0), B(0), Cin, sum(0), tempCarry(0));
u1: full_adder port map(A(1), B(1),tempCarry(0) , sum(1), tempCarry(1));
u2: full_adder port map(A(2), B(2),tempCarry(1) , sum(2), tempCarry(2));
u3: full_adder port map(A(3), B(3), tempCarry(2), sum(3), tempCarry(3));
u4: full_adder port map(A(4), B(4), tempCarry(3), sum(4), tempCarry(4));
u5: full_adder port map(A(5), B(5), tempCarry(4), sum(5), tempCarry(5));
u6: full_adder port map(A(6), B(6), tempCarry(5), sum(6), tempCarry(6));
u7: full_adder port map(A(7), B(7), tempCarry(6), sum(7), tempCarry(7));

Cout <= tempCarry(7);
overflow <= tempCarry(7) xor tempCarry(6);



end structural;
