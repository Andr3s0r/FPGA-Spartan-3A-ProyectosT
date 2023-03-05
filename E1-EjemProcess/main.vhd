library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity main is
    Port ( Btn : in  STD_LOGIC;
			  Led : out  STD_LOGIC;
	        Led2 : out  STD_LOGIC);
end main;
architecture Behavioral of main is
signal aux : std_logic:= '1';  
begin
	Led <= aux;
	process(Btn)
	begin
      Led2 <= Btn;	
      aux <= not(Btn);		
	end process;
end Behavioral;

