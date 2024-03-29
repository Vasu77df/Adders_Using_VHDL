library IEEE;
use IEEE.STD_LOGIC_1164.ALL; -- importing libraries 

entity fourbit_rca is
port (	a : in STD_LOGIC_VECTOR (3 downto 0); --initialising an array 
	b : in STD_LOGIC_VECTOR (3 downto 0); 
	cin : in STD_LOGIC;
	s : out STD_LOGIC_VECTOR (3 downto 0);
	cout : out STD_LOGIC);
end fourbit_rca;

architecture struct of fourbit_rca is 

component rca_behav -- components of one bit rca 
port (  a : in STD_LOGIC;
	b : in STD_LOGIC;
	cin : in STD_LOGIC;
	s : out STD_LOGIC;
	cout : out STD_LOGIC);
end component;

signal c1, c2, c3: STD_LOGIC; --carry declaration

begin

rca1: rca_behav port map( a(0), b(0), cin, s(0), c1);
rca2: rca_behav port map( a(1), b(1), c1, s(1), c2);
rca3: rca_behav port map( a(2), b(2), c2, s(2), c3);
rca4: rca_behav port map( a(3), b(3), c3, s(3), cout);

end struct;
