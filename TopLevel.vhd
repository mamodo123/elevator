library ieee;
use ieee.std_logic_1164.all;

entity TopLevel is
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
end entity;

architecture canonic of TopLevel is

	component Datapath is
		generic(floors: natural := 8);
		port(
			btUp, btDown, btElevator: in std_logic_vector(floors-1 downto 0);
			-- data inputs
			position: in natural range 0 to floors-1;
			
			btDownPU, btUpPU, btElevatorPU: out std_logic;
			btDownU, btUpUM, btElevatorUM: out std_logic;
			btDownZP, btUpZP, btElevatorZP: out std_logic
		);
	end component;
	
	component Elevator is
		generic (floors: positive := 8);
		port(
			-- control inputs
			clk, reset: in std_logic;
			btDownPU, btUpPU, btElevatorPU: in std_logic;
			btDownU, btUpUM, btElevatorUM: in std_logic;
			btDownZP, btUpZP, btElevatorZP: in std_logic;
			btUp, btDown, btElevator: in std_logic_vector(floors-1 downto 0);
			-- data inputs
			position: in natural range 0 to floors-1;
			doorStatus: in std_logic;
			-- control outputs
			engine: out std_logic_vector(1 downto 0);
			openDoor: out std_logic;
			resetbtUp, resetbtDown, resetbtElevator: out std_logic_vector(floors-1 downto 0);
			-- data outputs
			btLightsUp, btLightsDown, btLightsElevator: out std_logic_vector(floors-1 downto 0);
			upButton, downButton: out std_logic
		
		);
	end component;
	
	component BotaoArray is
	generic (floors: positive := 8);
	port(
		dado, reset: in std_logic_vector(floors-1 downto 0);
		saida: out std_logic_vector(floors-1 downto 0)
	);
	end component;
	
	signal btDownPU, btUpPU, btElevatorPU: std_logic;
	signal btDownU, btUpUM, btElevatorUM: std_logic;
	signal btDownZP, btUpZP, btElevatorZP: std_logic;
	signal resetbtUp, resetbtDown, resetbtElevator: std_logic_vector(floors-1 downto 0);
	signal btUp, btDown, btElevator: std_logic_vector(floors-1 downto 0);
	
begin
	
	operativo: Datapath generic map(floors) port map(btUp, btDown, btElevator, position, btDownPU, btUpPU, btElevatorPU, btDownU, btUpUM, btElevatorUM, btDownZP, btUpZP, btElevatorZP);
	controle: Elevator generic map(floors) port map(clk, reset, btDownPU, btUpPU, btElevatorPU, btDownU, btUpUM, btElevatorUM, btDownZP, btUpZP, btElevatorZP, btUp, btDown, btElevator, position, doorStatus, engine, openDoor, resetbtUp, resetbtDown, resetbtElevator, btLightsUp, btLightsDown, btLightsElevator, upButton, downButton);
	btUpArray: BotaoArray generic map(floors) port map(botoesUp, resetbtUp, btUp);
	btDownArray: BotaoArray generic map(floors) port map(botoesDown, resetbtDown, btDown); 
	btElevatorArray: BotaoArray generic map(floors) port map(botoesElevator, resetbtElevator, btElevator); 
end architecture;