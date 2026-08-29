library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_FF is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q_bar : out STD_LOGIC);
end JK_FF;

architecture behavioural of JK_FF is
begin
    process(clk)
        variable temp: std_logic;
    begin
        if rising_edge(clk) then
            if J /= K then 
                temp:= J;
            elsif J = '1' and K = '1' then
                temp:= not(temp);
            end if;
        end if;
        Q <= temp;
        Q_bar <= not(temp);
    end process;
end behavioural;
