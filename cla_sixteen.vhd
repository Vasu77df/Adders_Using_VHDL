library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cla_sixteen is
port ( a : in STD_LOGIC_VECTOR (15 downto 0);
b : in STD_LOGIC_VECTOR (15 downto 0);
cin : in STD_LOGIC;
s : out STD_LOGIC_VECTOR (15 downto 0);
cout : out STD_LOGIC);
end cla_sixteen;

architecture struct of cla_sixteen is

component cla 
port ( a : in STD_LOGIC_VECTOR (3 downto 0);
b : in STD_LOGIC_VECTOR (3 downto 0);
cin : in STD_LOGIC;
s : out STD_LOGIC_VECTOR (3 downto 0);
cout : out STD_LOGIC);
end component;

signal c1, c2, c3: STD_LOGIC;

begin

cla1: cla port map( a(3 downto 0), b(3 downto 0), cin, s(3 downto 0), c1);
cla2: cla port map( a(7 downto 4), b(7 downto 4), c1, s(7 downto 4), c2);
cla3: cla port map( a(11 downto 8), b(11 downto 8), c2, s(11 downto 8), c3);
cla4: cla port map( a(15 downto 12), b(15 downto 12), c1, s(15 downto 12), cout);

end struct;
