library ieee;
use ieee.std_logic_1164.all;

entity Verific is
	generic(size: natural := 8);
	port(
		input: in std_logic_vector(size-1 downto 0);
		start, final: integer;
		output: out std_logic
	);
end entity;

architecture canonic of Verific is
begin

	process (input, start, final)
	begin
		output <= '0';
		for I in 0 to size-1 loop
			if (I > start-1 and I < final + 1 and I < size and I > -1) then
				if(input(I) = '1') then
					output <= '1';
				end if;
			end if;
		end loop;
	end process;
	
end architecture;