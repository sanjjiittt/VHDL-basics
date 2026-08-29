library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR_FF is
    Port ( S : in STD_LOGIC;
           R : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q, Q_bar : out STD_LOGIC);
end SR_FF;

architecture Behavioral of SR_FF is

begin
process(S,R,clk)
variable temp: std_logic;
begin
if rising_edge(clk) then 
    if S /= R then 
        temp := S;
    elsif S= '1' and R= '1' then
        temp := 'X';
    end if;
end if;

Q <= temp;
Q_bar <= not(temp);

end process;  
    
    

end Behavioral;
