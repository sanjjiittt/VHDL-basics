library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FF is
    Port ( D : in STD_LOGIC;
           clk, rst : in STD_LOGIC;
           Q: out STD_LOGIC);
end D_FF;

architecture Behavioral of D_FF is
signal temp: std_logic;
begin
    process(clk, rst)
    begin 
        if rst = '1' then 
            temp <= '0';
        elsif rising_edge(clk) then 
            temp <= D;
        end if;
        Q <= temp;
    end process;
end Behavioral;
