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
	component three_bit_adder is --Copy of Mux Entity as a component
	  port ( X     : in std_logic;
	         Y     : in std_logic;
	         C_IN  : in std_logic;
	         C_OUT : in  std_logic;
	         S     : out std_logic;
	       );
	end component three_bit_adder;
	
	--Local signal declarations
	signal X, Y,CIn, COut, S : std_logic;  
	
	begin
	
	--Component instantiation of THREE_BIT_ADDER
	Mux_comp: THREE_BIT_ADDER port map (X, Y, CIn, COut, S);
	
	--Stimulus process
	Stimulus: process
	   begin
	      X <= '0' after 0ns, '1' after 40ns, 'U' after 80ns;
	      Y <= '0' after 0ns, '1' after 20ns, '0' after 40ns, '1' after 60ns, 'U' after 80ns;
	      CIn <= '0' after 0ns, '1' after 10ns, '0' after 20ns, '1' after 30ns, '0' after 40ns, 
	             '1' after 50ns, '0' after 60ns, '1' after 70ns, 'U' after 80ns;
	      
	   wait;  --Suspend
	end process Stimulus;
	
	Assertions: process
	   begin
	      wait for 5ns;
	      assert (COut = '0')
	         report "COut should be 0 at 5ns"
	         severity WARNING;
	      assert (S = '0')
	         report "S should be 0 at 5ns"
	         severity WARNING;
	      wait for 10ns;
	      
	      assert (COut = '0')
	         report "COut should be 0 at 15ns"
	         severity WARNING;
	      assert (S = '1')
	         report "S should be 1 at 5ns"
	         severity WARNING;
	      wait for 10ns;
	      
	      assert (COut = '0')
	         report "COut should be 0 at 25ns"
	         severity WARNING;
	      assert (S = '1')
	         report "S should be 1 at 25ns"
	         severity WARNING;
	      wait for 10ns;
	      
	      assert (COut = '1')
	         report "COut should be 1 at 35ns"
	         severity WARNING;
	      assert (S = '0')
	         report "S should be 0 at 35ns"
	         severity WARNING;
	      wait for 10ns;
	      
	      assert (COut = '0')
	         report "COut should be 0 at 45ns"
	         severity WARNING;
	      assert (S = '1')
	         report "S should be 1 at 45ns"
	         severity WARNING;
	      wait for 10ns;
	      
	      assert (COut = '1')
	         report "COut should be 1 at 55ns"
	         severity WARNING;
	      assert (S = '0')
	         report "S should be 0 at 55ns"
	         severity WARNING;
	      wait for 10ns;
	      
	      assert (COut = '1')
	         report "COut should be 1 at 65ns"
	         severity WARNING;
	      assert (S = '0')
	         report "S should be 0 at 65ns"
	         severity WARNING;
	      wait for 10ns;
	      
	      assert (COut = '1')
	         report "COut should be 1 at 75ns"
	         severity WARNING;
	      assert (S = '1')
	         report "S should be 1 at 75ns"
	         severity WARNING;
	      
	      wait;  --Suspend
	end process Assertions;
end Bench;
