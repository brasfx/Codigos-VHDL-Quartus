-- Porta NAND

library IEEE;
use ieee.std_logic_1164.all;

entity porta_NAND is 
port( a,b: in std_logic; 
		x1: out std_logic
	);

end porta_NAND;

architecture comport_porta_NAND of porta_NAND is

begin 
x1 <= a NAND b;

end comport_porta_NAND;