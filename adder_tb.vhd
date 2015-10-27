------------------------------------------------------------------------------
--  File: adder_tb.vhd
------------------------------------------------------------------------------
--Adder testbench
library IEEE;
use IEEE.std_logic_1164.all;

--Testbench entity is always empty
entity AdderTestBench is
end AdderTestBench;

architecture Bench of AdderTestBench is
	--Component declaration for MUX
	component six_bit_adder is --Copy of Mux Entity as a component
	  port ( 
		     X     : in std_logic_vector(5 downto 0);
		     Y     : in std_logic_vector(5 downto 0);
		     C_IN  : in std_logic;
		     C_OUT : out  std_logic;
		     S     : out std_logic_vector(5 downto 0)
	       );
	end component six_bit_adder;
	
	--Local signal declarations
	signal X, Y, S : std_logic_vector(5 downto 0);  
	signal CIn, COut : std_logic;
	
	begin
	
	--Component instantiation of SIX_BIT_ADDER
	Mux_comp: six_bit_adder port map (X, Y, CIn, COut, S);
	
	--Stimulus process
	Stimulus: process
	   begin
	      X <= '0' after 0ns, '1' after 40ns, 'U' after 80ns;
	      Y <= '0' after 0ns, '1' after 20ns, '0' after 40ns, '1' after 60ns, 'U' after 80ns;
	      CIn <= '0' after 0ns, '1' after 10ns, '0' after 20ns, '1' after 30ns, '0' after 40ns, 
	             '1' after 50ns, '0' after 60ns, '1' after 70ns, 'U' after 80ns;
	      
	   wait;  --Suspend
	end process Stimulus;
	
	
end Bench;
