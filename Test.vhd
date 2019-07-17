library ieee;
use ieee.std_logic_1164.all;

entity Test is
	port(
		position: natural range 0 to 7;
		btElevator: in std_logic_vector(7 downto 0);
		sadLife: out std_logic
	);
end entity;

architecture asd of Test is

component Verific is
	generic(size: natural := 8);
	port(
		input: in std_logic_vector(size-1 downto 0);
		start, final: integer;
		output: out std_logic
	);
end component;
	signal aux: integer;
begin
	aux <= position-1;
	test1: Verific generic map (8) port map(btElevator, 0, aux, sadLife);
end architecture;