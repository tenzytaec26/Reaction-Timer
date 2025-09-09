-- Quartus II VHDL Template
-- Unsigned Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lightromMyprog is

	port 
	(
		addr	 : in std_logic_vector (3 downto 0);
		data   : out std_logic_vector(2 downto 0)
	);

end entity;

architecture rtl of lightromMyprog is

begin
    data <= 
        "000" when addr = "0000" else 
        "101" when addr = "0001" else 
        "000" when addr = "0010" else 
        "101" when addr = "0011" else 
        "001" when addr = "0100" else 
        "001" when addr = "0101" else 
        "001" when addr = "0110" else 
        "001" when addr = "0111" else
        "101" when addr = "1000" else 
        "010" when addr = "1001" else 
        "010" when addr = "1010" else 
        "010" when addr = "1011" else 
        "010" when addr = "1100" else 
        "000" when addr = "1101" else 
        "101" when addr = "1110" else 
        "011";                        
end rtl;
