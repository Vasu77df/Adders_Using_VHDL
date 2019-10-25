library ieee;
use ieee.std_logic_1164.ALL;

entity rca_thirtytwo is 
port ( a : in STD_LOGIC_VECTOR (31 downto 0); --initialising an array 
	b : in STD_LOGIC_VECTOR (31 downto 0); 
	cin : in STD_LOGIC;
	s : out STD_LOGIC_VECTOR (31 downto 0);
	cout : out STD_LOGIC);
end rca_thirtytwo;

architecture struct of rca_thirtytwo is 

component fourbit_rca 
port (	a : in STD_LOGIC_VECTOR (3 downto 0); --initialising an array 
	b : in STD_LOGIC_VECTOR (3 downto 0); 
	cin : in STD_LOGIC;
	s : out STD_LOGIC_VECTOR (3 downto 0);
	cout : out STD_LOGIC);
end component fourbit_rca;

signal carry_in : STD_LOGIC_VECTOR (8 downto 0);

begin

rca_1: fourbit_rca port map( a, b, cin, s, carry_in(0));
rca_2: fourbit_rca port map( a, b, carry_in(0), 


