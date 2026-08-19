library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity four_bit_adder is
    Port ( A : in STD_LOGIC_VECTOR(3 downto 0);
           B : in STD_LOGIC_VECTOR(3 downto 0);
           Cin : in STD_LOGIC;
           sum : out STD_LOGIC_VECTOR(3 downto 0);
           Cout : out STD_LOGIC);
end four_bit_adder;

architecture dataflow of four_bit_adder is
begin
    process(A,B,Cin)
        variable carry: std_logic;
    begin
        carry := Cin;
        
        for i in 0 to 3 loop
            sum(i) <= A(i) xor B(i) xor carry;
            carry := (A(i) and B(i))
                      or (B(i) and carry) 
                      or (A(i) and carry);
        end loop;
        
        Cout <= carry;      
end process;

end dataflow;
