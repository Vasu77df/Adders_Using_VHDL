library ieee;
use ieee.std_logic_1164.ALL;

entity fourbit_rca_t is 
end fourbit_rca_t;

architecture struct of fourbit_rca_t is

component fourbit_rca 
port (	a : in std_logic_vector(3 downto 0);
	b : in std_logic_vector(3 downto 0);
	cin : in std_logic;
	S : out std_logic_vector(3 downto 0);
	cout : out std_logic
);

end component;

-- Initialsing inputs and declaraing outputs 
signal a : std_logic_vector(3 downto 0) := (others => '0');
signal b : std_logic_vector(3 downto 0) := (others => '0');
signal cin : std_logic := '0';
signal s : std_logic_vector(3 downto 0);
signal cout : std_logic;

begin
uut: fourbit_rca port map (
	a => a,
	b => b,
	cin => cin,
	s => s,
	cout => cout
);
-- stimulus
stim_proc: process 
begin 

wait for 10 ns;
a <= "0110";
b <= "1100";
 
wait for 10 ns;
a <= "1111";
b <= "1100";
 
wait for 10 ns;
a <= "0110";
b <= "0111";
 
wait for 10 ns;
a <= "0110";
b <= "1110";
 
wait for 10 ns;
a <= "1111";
b <= "1111";
 
wait;
 
end process;
 
end;


 
