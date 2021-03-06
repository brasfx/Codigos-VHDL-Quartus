-- PORTA LOGICA AND 2x1

library IEEE;
use ieee.std_logic_1164.all;

-- criação da entidade
entity Porta_And is 
port(
		a,b: in std_logic;
		y: out std_logic
);
end Porta_And;

architecture comportamento_Porta_And of Porta_And is
SIGNAL sinal_intermediario: std_logic; -- sinal intermediario

begin

sinal_intermediario<= a AND b;
y<= sinal_intermediario;

end comportamento_Porta_And;