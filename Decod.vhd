library ieee;
use ieee.std_logic_1164.all;

entity Decod is 
	port(
		position: in integer;
		HEX: out std_logic_vector(6 downto 0)
	);
end entity;

architecture test of Decod is
begin
	HEX <= "1111001" when position = 1 else
		"0100100" when position = 2 else
		"0110000" when position = 3 else
		"0011001" when position = 4 else
		"1000000" when position = 0 else
		"0101010";
end architecture;