library ieee;
use ieee.std_logic_1164.all;

entity Botao is
port(
	dado, reset: in std_logic;
	saida: out std_logic
);
end entity;

architecture seg of Botao is
begin
	process(dado,reset)
	begin
		if reset = '1' then
			saida <= '0';
		elsif dado = '1' then
			saida <= '1';
		end if;
	end process;
end architecture;
