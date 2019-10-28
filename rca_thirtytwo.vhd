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

signal carry_in_out : STD_LOGIC_VECTOR (6 downto 0);

begin

rca_1: fourbit_rca port map( a(3 downto 0), b(3 downto 0), cin, s(3 downto 0), carry_in_out(0));
rca_2: fourbit_rca port map( a(7 downto 4), b(7 downto 4), carry_in_out(0), s(7 downto 4), carry_in_out(1));
rca_3: fourbit_rca port map( a(11 downto 8), b(11 downto 8), carry_in_out(1), s(11 downto 8), carry_in_out(2));
rca_4: fourbit_rca port map( a(15 downto 12), b(15 downto 12), carry_in_out(2), s(15 downto 12), carry_in_out(3));
rca_5: fourbit_rca port map( a(19 downto 16), b(19 downto 16), carry_in_out(3), s(19 downto 16), carry_in_out(4));
rca_6: fourbit_rca port map( a(23 downto 20), b(23 downto 20), carry_in_out(4), s(23 downto 20), carry_in_out(5));
rca_7: fourbit_rca port map( a(27 downto 24), b(27 downto 24), carry_in_out(5), s(27 downto 24), carry_in_out(6));
rca_8: fourbit_rca port map( a(31 downto 28), b(31 downto 28), carry_in_out(6), s(31 downto 28), cout);

end struct;