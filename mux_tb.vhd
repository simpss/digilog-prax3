------------------------------------------------------------------------------
--  File: mux_tb.vhd
------------------------------------------------------------------------------
--Multiplexor testbench
library IEEE;
use IEEE.std_logic_1164.all;

--Testbench entity is always empty
entity MuxTestBench is
end MuxTestbench;

architecture Bench of MuxTestBench is

  --Component declaration for MUX
component Mux is --Copy of Mux Entity as a component
  port ( X     : in std_logic;
         Y     : in std_logic;
         C_IN  : in std_logic;
         C_OUT : in  std_logic;
         S     : out std_logic;
       );
  end component;

  --Local signal declarations
  signal X, Y,CIn, COut, S : std_logic;  

begin

--Component instantiation of MUX
Mux_comp: MUX port map (X, Y, CIn, COut, S);
 
--Stimulus process
Stimulus: process
   begin
      X   <= '0'; 
      Y   <= '0';
      CIn <= '0';
      wait for 10 ns;

      X   <= '1'; 
      Y   <= '1';
      CIn <= '1';
      wait for 10 ns;

      wait;  --Suspend
   end process Stimulus;

end Bench;
