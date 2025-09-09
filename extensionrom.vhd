-- Quartus II VHDL Template
-- Unsigned Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity extensionrom is
    port (
        addr : in  std_logic_vector(5 downto 0);
        data : out std_logic_vector(2 downto 0)
    );
end entity;

architecture rtl of extensionrom is
begin
    data <= 
        "000" when addr = "000000" else -- move 0s to LR  00000000
        "101" when addr = "000001" else -- bit invert LR  11111111
        "101" when addr = "000010" else -- bit invert LR  00000000
        "101" when addr = "000011" else -- bit invert LR  11111111
        "001" when addr = "000100" else -- shift LR right 01111111
        "001" when addr = "000101" else -- shift LR right 00111111
        "001" when addr = "000110" else -- rotate LR left 01111110
        "111" when addr = "000111" else -- rotate LR left 11111100
        "111" when addr = "001001" else -- rotate LR left 11111001
        "111" when addr = "001010" else -- rotate LR left 11110011
        "010" when addr = "001011" else -- shift LR left  11100110
        "111" when addr = "001100" else -- shift LR left  11001100
        "111" when addr = "001101" else -- add 1 to LR    11001101
        "101" when addr = "001110" else -- sub 1 from LR  11001100
        "000" when addr = "001111" else -- bit invert LR  00110011
        "101" when addr = "010000" else -- BRZ (Branch if Zero)
        "001" when addr = "010001" else -- move 0s to LR  00000000
        "001" when addr = "010010" else -- bit invert LR  11111111
        "011" when addr = "010011" else -- bit invert LR  00000000
        "011" when addr = "010100" else -- bit invert LR  11111111
        "011" when addr = "010101" else -- shift LR right 01111111
        "010" when addr = "010110" else -- shift LR right 00111111
        "010" when addr = "010111" else -- rotate LR left 01111110
        "010" when addr = "011000" else -- rotate LR left 11111100
        "101" when addr = "011001" else -- rotate LR left 11111001
        "101" when addr = "011010" else -- rotate LR left 11110011
        "010" when addr = "011011" else -- shift LR left  11100110
        "010" when addr = "011100" else -- shift LR left  11001100
        "011" when addr = "011101" else -- add 1 to LR    11001101
        "100" when addr = "011110" else -- sub 1 from LR  11001100
        "101" when addr = "011111" else -- bit invert LR  00110011
        "110" when addr = "100000" else -- BRZ (Branch if Zero)
        "111" when addr = "100001" else -- rotate LR left 11110011
        "010" when addr = "100010" else -- shift LR left  11100110
        "010" when addr = "100011" else -- shift LR left  11001100
        "011" when addr = "100100" else -- add 1 to LR    11001101
        "100" when addr = "100101" else -- sub 1 from LR  11001100
        "101" when addr = "100110" else -- bit invert LR  00110011
        "110" when addr = "100111" else -- BRZ (Branch if Zero)
        "010" when addr = "101000" else -- shift LR left  11001100
        "000" when addr = "101001" else -- add 1 to LR    11001101
        "101" when addr = "101010" else -- sub 1 from LR  11001100
        "010" when addr = "101011" else -- bit invert LR  00110011
        "110" when addr = "101100" else -- BRZ (Branch if Zero)
        "011" when addr = "101101" else -- sub 1 from LR  11001100
        "010" when addr = "101110" else -- bit invert LR  00110011
        "110" when addr = "101111" else -- BRZ (Branch if Zero)
        "101" when addr = "110000" else -- shift LR left  11001100
        "011" when addr = "110001" else -- add 1 to LR    11001101
        "010" when addr = "110010" else -- sub 1 from LR  11001100
        "110" when addr = "110011" else -- bit invert LR  00110011
        "110" when addr = "110100" else -- BRZ (Branch if Zero)
        "100" when addr = "110101" else -- sub 1 from LR  11001100
        "101" when addr = "110110" else -- bit invert LR  00110011
        "110" when addr = "110111" else -- BRZ (Branch if Zero)
        "000" when addr = "111000" else -- shift LR left  11001100
        "101" when addr = "111001" else -- add 1 to LR    11001101
        "000" when addr = "111010" else -- sub 1 from LR  11001100
        "101" when addr = "111011" else -- bit invert LR  00110011
        "110" when addr = "111100" else -- BRZ (Branch if Zero)
        "011";                        -- add 1 to LR    00110100
end rtl;
