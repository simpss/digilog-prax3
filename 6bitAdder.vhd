library IEEE;
use IEEE.std_logic_1164.all;
 
entity six_bit_adder is
	port(
     X     : in std_logic;
     Y     : in std_logic;
     C_IN  : in std_logic;
     C_OUT : in  std_logic;
     S     : out std_logic
	);
end six_bit_adder;
 
architecture structure of six_bit_adder is
 
--component declaration
component behave_adder is
	port(
        SM_X     : in std_logic;
        SM_Y     : in std_logic;
        SM_C_IN  : in std_logic;
        SM_C_OUT : out std_logic;
        SM_S     : out std_logic
	);
end component behave_adder;
 
--signal declaration
signal out_1	:	std_logic;
signal out_2	:	std_logic;
 
begin
	--component instantiation
	sm_1	:	behave_adder
		port map(
			SM_X	=>	X,
			SM_Y	=>	Y,
			SM_C_IN	=>	C_IN,
			SM_C_OUT => C_OUT,
			SM_S	=>	S
		);
 
end structure;