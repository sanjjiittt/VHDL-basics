library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2_1 is
    Port ( D0 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           E : in STD_LOGIC;
           S : in STD_LOGIC;
           Y : out STD_LOGIC);
end mux2_1;

architecture Behavioral of mux2_1 is
begin
    process(D0,D1,E,S)
    begin
        if E = '1' then
            if S = '0' then
                Y <= D0;
            else
                Y <= D1;
            end if;
        else
            Y <= '0';
        end if;
end process;
    

end Behavioral;
