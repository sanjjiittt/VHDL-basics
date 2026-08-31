library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity siso_register is
    Port ( D : in std_logic;
           clk, rst : in STD_LOGIC;
           Q : out std_logic);
end siso_register;

architecture structural of siso_register is
component D_FF
    port ( D : in STD_LOGIC;
           clk, rst : in STD_LOGIC;
           Q: out STD_LOGIC);
end component;

signal FF3out : std_logic;
signal FF2out : std_logic;
signal FF1out : std_logic;
signal FF0out : std_logic;

begin


u1: D_FF port map(D, clk, rst, FF3out);
u2: D_FF port map(FF3out, clk, rst, FF2out);
u3: D_FF port map(FF2out, clk, rst, FF1out);
u4: D_FF port map(FF1out, clk, rst, FF0out);

Q <= FF0out;

end structural;
