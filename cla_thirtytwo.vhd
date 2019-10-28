library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cla_thirtytwo is
port ( a : in STD_LOGIC_VECTOR (31 downto 0);
b : in STD_LOGIC_VECTOR (31 downto 0);
cin : in STD_LOGIC;
s : out STD_LOGIC_VECTOR (31 downto 0);
cout : out STD_LOGIC);
end cla_thirtytwo;

architecture struct of cla_thirtytwo is 

component cla_sixteen 
port ( a : in STD_LOGIC_VECTOR (15 downto 0);
b : in STD_LOGIC_VECTOR (15 downto 0);
cin : in STD_LOGIC;
s : out STD_LOGIC_VECTOR (15 downto 0);
cout : out STD_LOGIC);
end component;

signal c1: STD_LOGIC;

begin 

cla_1: cla_sixteen port map( a(15 downto 0), b(15 downto 0), cin, s(15 downto 0), c1);
cla_2: cla_sixteen port map( a(31 downto 16), b(31 downto 16), c1, s(31 downto 16), cout);

end struct;

