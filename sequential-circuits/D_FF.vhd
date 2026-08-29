library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FF is
    Port ( D : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q_bar : out STD_LOGIC);
end D_FF;

architecture Behavioral of D_FF is
begin
    process(clk)
        variable temp: std_logic;
    begin
        if rising_edge(clk) then
            temp := D;
        end if;
        Q <= temp;
        Q_bar <= not(temp);
    end process;

end Behavioral;
