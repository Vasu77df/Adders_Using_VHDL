library ieee;
use ieee.std_logic_1164.all;

entity cla_sixteen_t is 
end cla_sixteen_t;

architecture behav of cla_sixteen_t is 

COMPONENT cla_sixteen
PORT(
a : IN std_logic_vector(15 downto 0);
b : IN std_logic_vector(15 downto 0);
cin : IN std_logic;
s : OUT std_logic_vector(15 downto 0);
cout : OUT std_logic
);
END COMPONENT;
 
--Inputs
signal a : std_logic_vector(15 downto 0) := (others => '0');
signal b : std_logic_vector(15 downto 0) := (others => '0');
signal cin : std_logic := '0';
 
--Outputs
signal s : std_logic_vector(15 downto 0);
signal cout : std_logic;
 
BEGIN

uut: cla_sixteen PORT MAP (
a => a,
b => b,
cin => cin,
s => s,
cout => cout
);

stim_proc: process 
begin 

wait for 10 ns;

a <= "1100101011101111";
b <= "1110110110101101";
cin <= '0';

wait for 10 ns;
a <= "1000101010101011";
b <= "1101101100101101";
cin <= '1';

wait for 10 ns;
a <= "1100101010101100";
b <= "0010110100100101";
cin <= '0';

wait;

end process;

END;