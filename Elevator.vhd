library ieee;
use ieee.std_logic_1164.all;

entity Elevator is
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
end entity;

architecture canonic of Elevator is
	type InternalState is (PARADO, SUBINDO, PARADO_SUBINDO, DESCENDO, PARADO_DESCENDO); -- ...
	signal nextState, currentState: InternalState;
begin
	-- next state logic (combinatorial)
	-- nextState <=  ...
	NSL: process(currentState, clk, reset, doorStatus, btDownPU, btUpPU, btElevatorPU, btDownU, btUpUM, btElevatorUM, btDownZP, btUpZP, btElevatorZP, btUp, btDown, btElevator, position) is
	begin
		nextState <= currentState;
		case (currentState) is
			when PARADO =>
				if (btUp(0) = '1') then
					nextState <= PARADO_SUBINDO;
				elsif (btUpUM = '1' or btDownU = '1' or btElevatorUM = '1') then
					nextState <= SUBINDO;
				end if;
					
			when SUBINDO =>
				if (position = floors-1) then
					nextState <= PARADO_DESCENDO;
				elsif(btUp(position) = '1' or btElevator(position) = '1') then
					nextState <= PARADO_SUBINDO;
				elsif(btUpPU = '1' or btDownPU = '1' or btElevatorPU = '1') then
					nextState <= SUBINDO;
				elsif(btDown(position) = '1') then
					nextState <= PARADO_DESCENDO;
				end if;
				
			when PARADO_SUBINDO =>
				if (doorStatus = '1') then
					if (btUp(position) = '1' or btElevator(position) = '1') then
						nextState <= PARADO_SUBINDO;
					elsif (btUpPU = '1' or btDownPU = '1' or btElevatorPU = '1') then
						nextState <= SUBINDO;
					else
						nextState <= DESCENDO;
					end if;
				end if;
				
			when DESCENDO =>
				if (position = 0) then
					if (btElevator(0) = '1') then
						nextState <= PARADO_SUBINDO;
					else
						nextState <= PARADO;
					end if;
				elsif (btDown(position) = '1' or btElevator(position) = '1') then
					nextState <= PARADO_DESCENDO;
				elsif (btDownZP = '1' or btUpZP = '1' or btElevatorZP = '1') then
					nextState <= DESCENDO;
				elsif (btUp(position) = '1') then
					nextState <= PARADO_SUBINDO;
				elsif (btDownPU = '1' or btUpPU = '1' or btElevatorPU = '1') then
					nextState <= SUBINDO;
				end if;
				
			when PARADO_DESCENDO =>
				if (doorStatus = '1') then
					if (btDown(position) = '1') then
						nextState <= PARADO_DESCENDO;
					elsif (btDownZP = '1' or btUpZP = '1' or btElevatorZP = '1') then
						nextState <= DESCENDO;
					elsif (btDownPU = '1' or btUpPU = '1' or btElevatorPU = '1') then
						nextState <= SUBINDO;
					else
						nextState <= DESCENDO;
					end if;
				end if;
				
		end case;
	end process;
	
	-- memory element (sequential)
	ME: process (clk, reset) is
	begin
		if reset='1' then 
			currentState <= DESCENDO; -- reset state
			-- currentState <= ...
		elsif rising_edge(clk) then
			currentState <= nextState;
		end if;
	end process;
	
	-- output logic (combinatorial)
	btLightsUp <= btUp;
	btLightsDown <= btDown;
	btLightsElevator <= btElevator;
	
	upButton <= '1' when CurrentState = SUBINDO or CurrentState = PARADO_SUBINDO else '0';
	downButton <= '1' when CurrentState = DESCENDO or CurrentState = PARADO_DESCENDO else '0';
	
	engine <= "01" when CurrentState = SUBINDO else "10" when CurrentState = DESCENDO else "00";
	
	openDoor <= '1' when CurrentState = PARADO_SUBINDO or CurrentState = PARADO_DESCENDO else '0';
	
	process(position) is
	begin
		resetbtDown <= (others=>'0');
		resetbtUP <= (others=>'0');
		resetbtElevator <= (others=>'0');
		
		if CurrentState = PARADO then
			resetbtDown(position) <= '1';
			resetbtUP(position) <= '1';
			resetbtElevator(position) <= '1';
		else
			if CurrentState = PARADO_DESCENDO then
				resetbtDown(position) <= '1';
				resetbtElevator(position) <= '1';
			elsif CurrentState = PARADO_SUBINDO then
				resetbtUP(position) <= '1';
				resetbtElevator(position) <= '1';
			end if;
		end if;
	end process;
				
		
	
	--resetbtDown(position) <= '1' when CurrentState = PARADO_DESCENDO or CurrentState = PARADO else '0';
	--resetbtUP(position) <= '1' when CurrentState = PARADO_SUBINDO or CurrentState = PARADO else '0';
	--resetbtElevator(position) <= '1' when CurrentState = PARADO_SUBINDO or CurrentState = PARADO_DESCENDO or CurrentState = PARADO else '0';
	
end architecture;