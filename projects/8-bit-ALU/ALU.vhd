library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity ALU is
    Port ( A, B : in std_logic_vector(7 downto 0);
           S : in std_logic_vector(0 to 3);
           Y : out std_logic_vector(7 downto 0);
           Cout, overflow, signFlag, zeroFlag: out std_logic);
           
           
           
end ALU;

architecture structural of ALU is

component mux2_1
port ( A,B : in std_logic_vector(7 downto 0);
           S : in std_logic;
           Y : out std_logic_vector(7 downto 0));
end component;

component mux4_1
Port ( I0, I1, I2, I3 : in std_logic_vector(7 downto 0);
           S : in std_logic_vector(0 to 1);
           Y : out std_logic_vector(7 downto 0));
end component;

component adder_block
Port ( A, B : in std_logic_vector(7 downto 0);
           Cin : in STD_LOGIC;
           sum : out std_logic_vector(7 downto 0);
           Cout : out STD_LOGIC;
           overflow : out STD_LOGIC);
end component;

component and_gate
port( A,B : in std_logic_vector(7 downto 0);
           Y : out std_logic_vector(7 downto 0));
end component;

component or_gate
port( A,B : in std_logic_vector(7 downto 0);
           Y : out std_logic_vector(7 downto 0));
end component;

component xor_gate
port( A,B : in std_logic_vector(7 downto 0);
           Y : out std_logic_vector(7 downto 0));
end component;

signal muxOUT1 : std_logic_vector(7 downto 0);
signal muxOUT2 : std_logic_vector(7 downto 0);
signal notA : std_logic_vector(7 downto 0);
signal notB : std_logic_vector(7 downto 0);
signal Cin : std_logic;
signal adderResult: std_logic_vector(7 downto 0);
signal Cout_s: std_logic;
signal overflow_s: std_logic;
signal andOUT: std_logic_vector(7 downto 0);
signal orOUT: std_logic_vector(7 downto 0);
signal xorOUT: std_logic_vector(7 downto 0);
signal finalOUTPUT: std_logic_vector(7 downto 0);

begin

notA <= not(A);
notB <= not(B);
Cin <= S(0) xor S(1);

u1: mux2_1 port map( A, notA, S(0), muxOUT1);
u2: mux2_1 port map( B, notB, S(1), muxOUT2);
u3: adder_block port map(muxOUT1, muxOUT2, Cin, adderResult, Cout_s, overflow_s);
u4: and_gate port map(muxOUT1, muxOUT2, andOUT);
u5: or_gate port map(muxOUT1, muxOUT2, orOUT);
u6: xor_gate port map(muxOUT1, muxOUT2, xorOUT);
u7: mux4_1 port map(adderResult, andOUT, orOUT, xorOUT, S(2 to 3),finalOUTPUT);
 
Cout <= Cout_s;
overflow <= overflow_s;                         
signFlag <= '1' when finalOUTPUT(7) = '1' else '0';
zeroFlag <= '1' when unsigned(finalOUTPUT)= 0  else '0';
Y <= finalOUTPUT;
end structural;
