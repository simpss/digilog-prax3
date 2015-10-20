------------------------------------------------------------------------------
--  File: adder.vhd
------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

--Adder entity
entity behave_adder is
  port ( X     : in std_logic;
         Y     : in std_logic;
         C_IN  : in std_logic;
         C_OUT : in  std_logic;
         S     : out std_logic;
       );
end behave_adder;

--Architecture of the adder
architecture RTL of BEHAVE_ADDER is
	--Siin saab deklareerida abisignaale ja alamkomponente
begin
	--everything will be async from here on out(after the begin), except processes, procedures and functions
	
	--DISP_ADDER process
	DISP_ADDER: process ( X, Y, C_IN, C_OUT, S ) 
	--Process parameters are called "sensitivity list". Defines what variable value changes does the process listen to.
	--Private variables for a process:
	variable truth :std_logic_vector( 2 downto 0 );
	  begin
	    truth := X & Y & C_IN;
	    case truth is
	       when "000" => 
	          C_OUT <= '0';
	          S <= '0';
	       when "001" => 
	          C_OUT <= '0';
	          S <= '1';
	       when "010" => 
	          C_OUT <= '0';
	          S <= '1';
	       when "011" => 
	          C_OUT <= '1';
	          S <= '0';
	       when "100" => 
	          C_OUT <= '0';
	          S <= '1';
	       when "101" => 
	          C_OUT <= '1';
	          S <= '0';
	       when "110" => 
	          C_OUT <= '1';
	          S <= '0';
	       when "111" => 
	          C_OUT <= '1';
	          S <= '1';
	       when others => 
	          C_OUT <= 'U';
	          S <= 'U';
	    end case;
	  end process DISP_ADDER;     
end RTL;
