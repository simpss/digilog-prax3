------------------------------------------------------------------------------
--  File: structAdder.vhd
------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

--Adder entity
entity struct_adder is
  port ( X, Y, C_IN : in std_logic;
         C_OUT, S : out  std_logic
       );
end struct_adder;

--Architecture of the adder
architecture RTL of STRUCT_ADDER is
	--Siin saab deklareerida abisignaale ja alamkomponente
	component half_adder is
	port (
		X, Y : in std_logic;
		S, C : out std_logic
	);
	end component half_adder;
	component or_2 is
	port (
		X, Y : in std_logic;
		Z : out std_logic
	);
	end component or_2;

	signal s1, s2, s3 : std_logic;
	
begin
	--everything will be async from here on out(after the begin), except processes, procedures and functions
	
	--DISP_ADDER process	
	--Process parameters are called "sensitivity list". Defines what variable value changes does the process listen to.
	--Private variables for a process:
	--variable truth :std_logic_vector( 2 downto 0 );
    H1: half_adder port map (X=>X, Y=>Y, S=>s1, C=>s3);
    H2: half_adder port map (X=>s1, Y=>C_IN, S=>S, C=>s2);
    O1: or_2 port map(X=>s2, Y=>s3, Z=> C_OUT);
    
end RTL;
