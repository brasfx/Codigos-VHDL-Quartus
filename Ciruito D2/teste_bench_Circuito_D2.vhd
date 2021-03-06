library ieee;  
 use ieee.std_logic_1164.all;  
 
 entity teste_bench_Circuito_D2 is  
 end entity teste_bench_Circuito_D2;  

 architecture tb_Circuito_D2 of teste_bench_Circuito_D2 is  
 
  signal  clock_tb: std_logic;  
  signal  reset_tb: std_logic:= '0';
  signal  A_tb,B_tb: std_logic:= '0';
  signal  D_tb: std_logic:= '0';  
  signal  Q_tb: std_logic;
  signal  Clk : std_logic := '1';

 component Circuito_D2 is  
  port  (
			D_in,Clock,Reset,A,B: in std_logic;
			Out_x: out std_logic
	 );
  end component Circuito_D2;
  
  
 
 begin

D2_UUT : Circuito_D2
    port map (
				D_in  => D_tb,
				Reset => reset_tb,
				Clock => clock_tb,
				A  => A_tb,
				B  => B_tb,
				Out_x => Q_tb
      );

  Clk  <= not Clk after 5 ns;  
  clock_tb <= Clk;  
 process is 
  begin  
		reset_tb <= '1'; -- Inicia os FFs com 000
      
		wait for 5 ns;	  
      
		reset_tb <= '0';  
      
		wait for 5 ns;  
      
		D_tb <= '0';
		A_tb <= '0';
		B_tb <= '0';
      
		wait for 5 ns;  
      
		D_tb <= '0';
		A_tb <= '0';
		B_tb <= '1';
		
		wait for 5 ns;  
      
		D_tb <= '0';
		A_tb <= '1';
		B_tb <= '0';		
      
		wait for 5 ns;  
      
		D_tb <= '0';
		A_tb <= '1';
		B_tb <= '1';
		
	   wait for 5 ns;  
      
		D_tb <= '1';
		A_tb <= '0';
		B_tb <= '0';
		wait for 5 ns;   
      
		D_tb <= '1';
		A_tb <= '0';
		B_tb <= '1';		
		wait for 5 ns;   
      
		D_tb <= '1';
		A_tb <= '1';
		B_tb <= '0';
		
		wait for 5 ns;  
      
		D_tb <= '1';
		A_tb <= '1';
		B_tb <= '1';
   
	wait;  
  end process;  
 end architecture tb_Circuito_D2; 