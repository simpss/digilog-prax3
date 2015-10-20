-- 3bitAdder.vhdl created on 2:26  2015.9.20


library IEEE;
use IEEE.std_logic_1164.all;

--Adder entity
entity three_bit_adder is port ( 
     X     : in std_logic;
     Y     : in std_logic;
     C_IN  : in std_logic;
     C_OUT : in  std_logic;
     S     : out std_logic);
end three_bit_adder;

--Architecture of the adder
architecture RTL of THREE_BIT_ADDER is
	--Siin saab deklareerida abisignaale ja alamkomponente
	component behave_adder is port ( 
        SM_X     : in std_logic;
        SM_Y     : in std_logic;
        SM_C_IN  : in std_logic;
        SM_C_OUT : in std_logic;
        SM_S     : out std_logic);
    end component behave_adder;
    
    begin
		--everything will be async from here on out(after the begin), except processes, procedures and functions
		
		--Process parameters are called "sensitivity list". Defines what variable value changes does the process listen to.
		--Private variables for a process:
	    --component instatiation
	    adder : behave_adder port map (
	       SM_X => X,
	       SM_Y => Y,
	       SM_C_IN => C_IN,
	       SM_C_OUT => C_OUT,
	       SM_S => S
	    );
    
end RTL;