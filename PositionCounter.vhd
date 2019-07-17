library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PositionCounter is
	port(
		enable, clock: in std_logic;
		engine: in std_logic_vector(1 downto 0);
		position: out integer
	);
end entity;

architecture canonic of PositionCounter is

	signal count: std_logic_vector (2 downto 0);
	signal C1Hz: std_logic;
	signal contador: std_logic_vector(27 downto 0);
	signal positionCont: integer := 0;
	signal sinal: integer;

begin

	sinal <= 1 when engine = "01" else -1 when engine = "10" else 0;
	
	process (clock, enable)
	begin
		
		if (enable = '1') then
			contador <= x"0000000";
		elsif rising_edge(clock) then
			
			contador <= std_logic_vector(unsigned(contador) + 1);
			
			if contador = x"2FAF07F" then
				
				contador <= x"0000000";
					
				C1Hz <= '1';
				
				positionCont <= positionCont + sinal;
				
			else
				C1Hz <= '0';
			end if;
		end if;
	end process;
	
	position <= positionCont;
	
end architecture;