library ieee;
use ieee.std_logic_1164.all;

entity Teste2 is 
	port(
		CLOCK_50: in std_logic;
		SW: in std_logic_vector(1 downto 0);
		HEX0: out std_logic_vector (6 downto 0);
		LEDR: out std_logic_vector (1 downto 0)
	);
end entity;

architecture test of Teste2 is

component PositionCounter is
	port(
		enable, clock: in std_logic;
		engine: in std_logic_vector(1 downto 0);
		position: out integer
	);
end component;

component Decod is 
	port(
		position: in integer;
		HEX: out std_logic_vector(6 downto 0)
	);
end component;
	signal position: integer;

begin
	asd : PositionCounter port map('1', CLOCK_50, SW, position);
	sad: Decod port map (position, HEX0);
	LEDR <= SW;
end architecture;