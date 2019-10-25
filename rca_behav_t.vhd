--------------------------------
-- Test Bench for One bit RCA --
--------------------------------
LIBRARY ieee;
use ieee.std_logic_1164.ALL; 
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;--importing libraries

entity rca_behav_t is 
end rca_behav_t;

architecture behav of rca_behav_t is 

component onebit_rca 
	port(	a : in  std_logic;
		b : in  std_logic;
		cin : in std_logic;
		s : out std_logic;
		cout : out std_logic
		);

end component;

   signal a : std_logic := '0'; -- initialising the signals 
   signal b : std_logic := '0';
   signal cin : std_logic := '0'; -- input signals 
   signal s : std_logic;
   signal cout : std_logic; -- output signals 

constant period : time := 10 ns;

begin
adder : onebit_rca PORT MAP ( 
	a => a,
	b => b,
	cin => cin,
        s => s,
        cout => cout
	);

stim_proc: process --stimulus process
begin
	wait for period; --hold reser state for 100ns
	
	--stimulus added here
 a <= '1';
 b <= '0';
 cin <= '0';
 wait for 10 ns;
 
 a <= '0';
 b <= '1';
 cin <= '0';
 wait for 10 ns;
 
 a <= '1';
 b <= '1';
 cin <= '0';
 wait for 10 ns;
 
 a <= '0';
 b <= '0';
 cin <= '1';
 wait for 10 ns;
 
 a <= '1';
 b <= '0';
 cin <= '1';
 wait for 10 ns;
 
 a <= '0';
 b <= '1';
 cin <= '1';
 wait for 10 ns;
 
 a <= '1';
 b <= '1';
 cin <= '1';
 wait for 10 ns;
 
end process;
 
END;
