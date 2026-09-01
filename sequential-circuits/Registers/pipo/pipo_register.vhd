library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pipo_register is
    Port ( D : in std_logic_vector(7 downto 0);
           clk, rst : in STD_LOGIC;
           Q : out std_logic_vector(7 downto 0));
end pipo_register;

architecture structural of pipo_register is
component D_FF
    port ( D : in STD_LOGIC;
           clk, rst : in STD_LOGIC;
           Q: out STD_LOGIC);
end component;
signal Qout: std_logic_vector(7 downto 0);
begin

gen_ff: for i in 7 downto 0 generate
begin
stage: D_FF port map(D(i),clk, rst, Qout(i));
end generate;

Q <= Qout;

end structural;
