library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4_1 is
    Port ( D0 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           D2 : in STD_LOGIC;
           D3 : in STD_LOGIC;
           En : in STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Y : out STD_LOGIC);
end mux4_1;

architecture structural of mux4_1 is
component mux2_1
    port( D0 : in STD_LOGIC;
           D1 : in STD_LOGIC;
           E : in STD_LOGIC;
           S : in STD_LOGIC;
           Y : out STD_LOGIC);
    end component;
    signal X1: std_logic;
    signal X2: std_logic;
begin
u1: mux2_1 port map(D0,D1,En,S0,X1);
u2: mux2_1 port map(D2,D3,En,S0,X2);
u3: mux2_1 port map(X1,X2,En,S1,Y);
end structural;
