library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity adder_for_cla is
Port ( a : in STD_LOGIC;
b : in STD_LOGIC;
cin : in STD_LOGIC;
s : out STD_LOGIC;
p : out STD_LOGIC;
g : out STD_LOGIC);
end adder_for_cla;
 
architecture behav of adder_for_cla is
 
begin
 
s <= a xor b xor cin;
p <= a xor b;
g <= a and b;
 
end behav;
