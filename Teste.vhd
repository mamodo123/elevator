library ieee;
use ieee.std_logic_1164.all;

entity Teste is
	port(
		CLOCK_50: in std_logic;
		KEY: in std_logic_vector(3 downto 0);
		SW: in std_logic_vector(0 downto 0);
		
		HEX0: out std_logic_vector(6 downto 0);
		LEDR: out std_logic_vector(9 downto 0);
		
		upButton, downButton: out std_logic
	);
end entity;

architecture test of Teste is

component TopLevel is
	generic(floors: natural := 4);
	port(
		position: in natural range 0 to floors-1;
		botoesUp, botoesDown, botoesElevator: in std_logic_vector(floors-1 downto 0);
		clk, reset: in std_logic;
		doorStatus: in std_logic;
		
		engine: out std_logic_vector(1 downto 0);
		openDoor: out std_logic;
		btLightsUp, btLightsDown, btLightsElevator: out std_logic_vector(floors-1 downto 0);
		upButton, downButton: out std_logic
		
	);
end component;

component PositionCounter is
	port(
		enable, clock: in std_logic;
		engine: in std_logic_vector(1 downto 0);
		position: out integer
	);
end component;

	signal position: integer;
	signal engine: std_logic_vector(1 downto 0);
	signal openDoor: std_logic;
	signal btLightsUp, btLightsDown, btLightsElevator: std_logic_vector(3 downto 0);
	signal botoesDown, botoesElevator: std_logic_vector(3 downto 0);
	signal notKey: std_logic_vector(3 downto 0);
	
	component Decod is 
		port(
			position: in integer;
			HEX: out std_logic_vector(6 downto 0)
		);
	end component;

begin
	top: TopLevel port map(position, notKey, botoesDown, botoesElevator, CLOCK_50, SW(0), '1', engine, openDoor, btLightsUp, btLightsDown, btLightsElevator, upButton, downButton);
	motor: PositionCounter port map (SW(0), CLOCK_50, engine, position);
	trex: Decod port map (position, HEX0);
	
	LEDR(3 downto 0) <= btLightsUp or btLightsDown or btLightsElevator;
	notKey <= not KEY;
end architecture;