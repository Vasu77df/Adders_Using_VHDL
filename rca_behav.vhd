LIBRARY ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;
-- importing library
entity rca_behav is 
	port(	a, b, cin : in std_logic; 
		s, cout : out std_logic );
end rca_behav; -- one bit ripple carry adder entity declaration

architecture behav of rca_behav is --behavioral model of entity instantiation 
begin 
	rca: process(a, b, cin) -- starting a process 
	begin
	
	if(a = '0' and b = '0' and cin = '0') then -- if condition for adder logic
		s <= '0';
		cout <= '0';
	elsif(a = '0' and b = '0' and cin = '1') then 
		s <= '1'; 
		cout <= '0';
	elsif(a = '0' and b = '1' and cin = '0') then 
		s <= '1'; 
		cout <= '0'; 
	elsif(a = '0' and b = '1' and cin = '1') then 
		s <= '0'; 
		cout <= '1'; 
	elsif(a = '1' and b = '0' and cin = '0') then 
		s <= '1'; 
 		cout <= '0'; 
	elsif(a = '1' and b = '0' and cin = '1') then 
		s <= '0'; 
		cout <= '1'; 
	elsif(a = '1' and b = '1' and cin = '0') then 
		s <= '0'; 
		cout <= '1'; 
	else 	
		s <= '1'; 
		cout <= '1';
	end if;
	
	end process rca;

end behav;