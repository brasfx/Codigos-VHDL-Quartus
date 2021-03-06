library IEEE;
use ieee.std_logic_1164.all;

entity teste_bench_porta_AND is 
end teste_bench_porta_AND;

architecture funcionamento_porta_AND of teste_bench_porta_AND is 
	SIGNAL a_tb:  std_logic := '0';
	SIGNAL b_tb:  std_logic := '0';
	SIGNAL saida_tb:std_logic;
	
component porta_AND is
port( a,b: in std_logic;
		saida:out std_logic
	);
end component porta_AND;

begin
and_gate_INST :porta_AND
port map( a => a_tb, b=> b_tb, saida=> saida_tb);

process is
begin 
	a_tb <= '0';
	b_tb <= '0';
	wait for 10 ns;
	a_tb <= '0';
	b_tb <= '1';
	wait for 10 ns;
	a_tb <= '1';
	b_tb <= '0';
	wait for 10 ns;
	a_tb <= '1';
	b_tb <= '1';
	wait for 10 ns;
end process;

end funcionamento_porta_AND;
