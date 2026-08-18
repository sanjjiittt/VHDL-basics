----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/17/2026 07:49:46 PM
-- Design Name: 
-- Module Name: half_adder - Structural
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity half_adder is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           sum : out STD_LOGIC;
           carry : out STD_LOGIC);
end half_adder;

architecture Structural of half_adder is
component xor_gate
    port(p: in std_logic; 
        q: in std_logic; 
        r: out std_logic);
end component;
component and_gate
    port(x: in std_logic; 
        y: in std_logic; 
        z: out std_logic);
end component;
begin
u1: xor_gate port map(A,B,sum);
u2: and_gate port map(A,B,carry);
end Structural;
