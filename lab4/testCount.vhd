-- TESTCOUNT.VHD --

library ieee;
use ieee.std_logic_1164.all;

entity testCount is
end testCount;

architecture test2 of testCount is
  component Count is
	generic (threshold : natural);
	 port(reset, clk, start: in std_logic; aboveth: out std_logic);
  end component;
  signal r, c, s,a : std_logic := '0';
begin
     B: Count 
	 generic map(3)
	 port map(r,c,s,a);
		
	process
	begin
		c <= '0';
		wait for 10 ns;
		c <= '1';
		wait for 10 ns;
	end process;
	
	s <= '0', '1' after 20 ns , '0' after 40 ns, '1' after 170 ns, '0' after 190 ns, '1' after 210 ns;
	r <= '0', '1' after 200 ns, '0' after 201 ns, '1' after 290 ns, '0' after 300 ns;
end test2;

library work;
configuration config2 of work.testCount is 
    for test2 
       for B:Count use entity work.testCount(Behav);
       end for;
    end for; 
end config2; 


