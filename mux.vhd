------------------------------------------------------------------------------
--  File: mux.vhd
------------------------------------------------------------------------------
--Multiplexer design
--Control signal is CONT_SIG
--The output is chosen from 2 signals with length 8 bits
--If control signal is '1' then input A_in is chosen 
--If '0' then input B_IN is chosen to the output OUT_SIG


library IEEE;
use IEEE.std_logic_1164.all;

--Multiplexer entity
entity Mux is
  port ( X     : in std_logic;
         Y     : in std_logic;
         C_IN  : in std_logic;
         C_OUT : in  std_logic;
         S     : out std_logic;
       );
end Mux;

--Architecture of the multiplexer
architecture RTL of Mux is
	--Siin saab deklareerida abisignaale ja alamkomponente
begin

--everything will be async from here on out(after the begin), except processes, procedures and functions
--DISP_MUX process
DISP_MUX: process ( X, Y, C_IN, C_OUT, S ) 
--Process parameters are called "sensitivity list". Defines what variable value changes does the process listen to.
--Private variables for a process:
variable counter :integer;
  begin
    if C_IN = '1' then
       C_OUT <= '0';
       S <= '0';
    else
       C_OUT <= '1';
       S <= '1';
    end if;
  end process DISP_MUX;
               
end RTL;
