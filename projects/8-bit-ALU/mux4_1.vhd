library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4_1 is
    Port ( I0, I1, I2, I3 : in std_logic_vector(7 downto 0);
           S : in std_logic_vector(1 downto 0);
           Y : out std_logic_vector(7 downto 0));
end mux4_1;

architecture structural of mux4_1 is
component mux2_1 is
    Port ( A,B : in std_logic_vector(7 downto 0);
           S : in std_logic;
           Y : out std_logic_vector(7 downto 0));
end component;

signal mux1OUT : std_logic_vector(7 downto 0);
signal mux2OUT : std_logic_vector(7 downto 0);
begin

u1: mux2_1 port map(I0,I1,S(0),mux1OUT);
u2: mux2_1 port map(I2,I3,S(0),mux2OUT);
u3: mux2_1 port map(mux1OUT,mux2OUT,S(1),Y);

end structural;
