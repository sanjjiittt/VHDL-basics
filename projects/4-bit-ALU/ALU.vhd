library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
    Port ( A : in std_logic_vector(3 downto 0);
           B : in std_logic_vector(3 downto 0);
           S : in std_logic_vector(0 to 1);
           Y : out std_logic_vector(3 downto 0));
end ALU;

architecture structural of ALU is

component mux2_to_1 
    Port ( A : in STD_LOGIC_VECTOR(3 downto 0);
           B : in STD_LOGIC_VECTOR(3 downto 0);
           S : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR(3 downto 0));
end component;
           
component adder_4_bit
    port ( A : in STD_LOGIC_VECTOR(3 downto 0);
           B : in STD_LOGIC_VECTOR(3 downto 0);
           Cin : in STD_LOGIC;
           sum : out STD_LOGIC_VECTOR(3 downto 0);
           Cout : out STD_LOGIC);
end component;

component multiplier
    port ( A : in std_logic_vector(1 downto 0);
           B : in std_logic_vector(1 downto 0);
           Y : out std_logic_vector(3 downto 0));
end component;
signal not_A : std_logic_vector(3 downto 0);
signal mux1OUT : std_logic_vector(3 downto 0);
signal adderOUT: std_logic_vector(3 downto 0);
signal carryOUT: std_logic;
signal multiplierOUT : std_logic_vector(3 downto 0);
begin
not_A <= not(A);

u1: mux2_to_1 port map(A, not_A, S(0), mux1OUT);
u2: adder_4_bit port map(mux1OUT,B,S(0),adderOUT,carryOUT);
u3: multiplier port map(A(1 downto 0), B(1 downto 0), multiplierOUT);
u4: mux2_to_1 port map(adderOUT, multiplierOUT, S(1),Y);
end structural;
