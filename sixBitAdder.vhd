library IEEE;
use IEEE.std_logic_1164.all;
 
entity six_bit_adder is
	port(
     X     : in std_logic;
     Y     : in std_logic;
     C_IN  : in std_logic;
     C_OUT : out  std_logic;
     S     : out std_logic
	);
end six_bit_adder;
 
architecture structure of six_bit_adder is
 
--component declaration
component behave_adder is
  port ( X     : in std_logic;
         Y     : in std_logic;
         C_IN  : in std_logic;
         C_OUT : out  std_logic;
         S     : out std_logic;
       );
end component;

 
--signal declaration
--signal out_1	:	std_logic;
--signal out_2	:	std_logic;
 
begin
	--component instantiation
	sm_1	:	behave_adder
		port map(
			X	=>	X,
			Y	=>	Y,
			C_IN	=>	C_IN,
			C_OUT => C_OUT,
			S	=>	S
		);
 
end structure;