library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity piso_register is
    Port ( B : in std_logic_vector(7 downto 0);
           clk, rst, shift: in STD_LOGIC;
           Q : out std_logic);
end piso_register;

architecture structural of piso_register is

component D_FF
    port ( D : in STD_LOGIC;
           clk, rst : in STD_LOGIC;
           Q: out STD_LOGIC);
end component;

component piso_setup 
    port ( Q0 : in STD_LOGIC;
           B, shift : in STD_LOGIC;
           Q1 : out STD_LOGIC);
end component;

signal  qt: std_logic_vector(7 downto 0);
signal  O: std_logic_vector(7 downto 1);

begin

    ff1: D_FF port map(B(7), clk, rst, qt(7));
    g_ff: for i in 7 downto 1 generate
    begin
        stage1: piso_setup port map(qt(i), B(i-1), shift,O(i));
        stage2: D_FF port map(O(i), clk, rst, qt(i-1));
    end generate;
    
Q <= qt(0);

end structural;
