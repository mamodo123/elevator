library ieee;
use ieee.std_logic_1164.all;

entity Datapath is
	generic(floors: natural := 8);
	port(
		btUp, btDown, btElevator: in std_logic_vector(floors-1 downto 0);
		-- data inputs
		position: in natural range 0 to floors-1;
		
		btDownPU, btUpPU, btElevatorPU: out std_logic;
		btDownU, btUpUM, btElevatorUM: out std_logic;
		btDownZP, btUpZP, btElevatorZP: out std_logic
	);
end entity;

architecture canonic of Datapath is

component Verific is
	generic(size: natural := 8);
	port(
		input: in std_logic_vector(size-1 downto 0);
		start, final: integer;
		output: out std_logic
	);
end component;
	signal pMais, pMenos: integer;
begin

	pMais <= position + 1;
	pMenos <= position - 1;
	
	xbtDownPU: Verific generic map (floors) port map (btDown, pMais, floors-1, btDownPU);
	xbtDownU: Verific generic map (floors) port map (btDown, 0, floors-1, btDownU);
	xbtDownZP: Verific generic map (floors) port map (btDown, 0, pMenos, btDownZP);
	
	xbtUpPU: Verific generic map (floors) port map (btUp, pMais, floors-1, btUpPU);
	xbtUpUM: Verific generic map (floors) port map (btUp, 1, floors-1, btUpUM);
	xbtUpZP: Verific generic map (floors) port map (btUp, 0, pMenos, btUpZP);
	
	xbtElevatorPU: Verific generic map (floors) port map (btElevator, pMais, floors-1, btElevatorPU);
	xbtElevatorUM: Verific generic map (floors) port map (btElevator, 1, floors-1, btElevatorUM);
	xbtElevatorZP: Verific generic map (floors) port map (btElevator, 0, pMenos, btElevatorZP);
end architecture;
	