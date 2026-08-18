library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_gates is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           and_g : out STD_LOGIC;
           or_g : out STD_LOGIC;
           not_g : out STD_LOGIC;
           nand_g : out STD_LOGIC;
           nor_g : out STD_LOGIC;
           xor_g : out STD_LOGIC;
           xnor_g : out STD_LOGIC);
end logic_gates;

architecture Dataflow of logic_gates is

begin
    and_g <= A and B;
    or_g <= A or B;
    not_g <= not A;
    nand_g <= A nand B;
    nor_g <= A nor B;
    xor_g <= A xor B;
    xnor_g <= A xnor B;

end Dataflow;
