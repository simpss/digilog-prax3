------------------------------------------------------------------------------
--  File: or2.vhd
------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

--Adder entity
entity or_2 is
  port ( X     : in std_logic;
         Y     : in std_logic;
         Z     : out std_logic;
       );
end or_2;

--Architecture of the adder
architecture RTL of or_2 is
	--Siin saab deklareerida abisignaale ja alamkomponente
begin
	--everything will be async from here on out(after the begin), except processes, procedures and functions
	
	--DISP_ADDER process
	DISP_ADDER: process ( X, Y, Z ) 
	--Process parameters are called "sensitivity list". Defines what variable value changes does the process listen to.
	--Private variables for a process:
	variable truth :std_logic_vector( 2 downto 0 );
	  begin
	    
	  end process DISP_ADDER;     
end RTL;
