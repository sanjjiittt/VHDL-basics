library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sipo_register is
    Port ( D : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           Q : out std_logic_vector(7 downto 0));
end sipo_register;

architecture structural of sipo_register is
component D_FF 
    port ( D : in STD_LOGIC;
           clk, rst : in STD_LOGIC;
           Q: out STD_LOGIC);
end component;

signal Qout: std_logic_vector(7 downto 0);

begin

u1: D_FF port map(D, clk, rst, Qout(7));
gen_ff: for i in 0 to 6 generate
begin
ui: D_FF port map(Qout(7-i),clk,rst,Qout(6-i));
end generate;

Q <= Qout;

end structural;
