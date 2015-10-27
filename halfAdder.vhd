------------------------------------------------------------------------------
--  File: halfAdder.vhd
------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

--Adder entity
entity half_adder is
  port ( X     : in std_logic;
         Y     : in std_logic;
         C_OUT : out  std_logic;
         S     : out std_logic;
       );
end half_adder;

--Architecture of the adder
architecture RTL of HALF_ADDER is
	--Siin saab deklareerida abisignaale ja alamkomponente
begin
	--everything will be async from here on out(after the begin), except processes, procedures and functions
	
	--DISP_ADDER process
	DISP_ADDER: process ( X, Y, C_OUT, S ) 
	--Process parameters are called "sensitivity list". Defines what variable value changes does the process listen to.
	--Private variables for a process:
	  begin
	    S <= X xor Y;
	    C_OUT <= X and Y;
	  end process DISP_ADDER;     
end RTL;
