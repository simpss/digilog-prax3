library IEEE;
use IEEE.std_logic_1164.all;
 
entity six_bit_adder is
	port(
     X     : in std_logic_vector(5 downto 0);
     Y     : in std_logic_vector(5 downto 0);
     C_IN  : in std_logic;
     C_OUT : out  std_logic;
     S     : out std_logic_vector(5 downto 0)
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
signal l_carry: std_logic_vector(4 downto 0);
 
begin
	--component instantiation
	first	:	behave_adder
		port map(
			X	=>	X(0),
			Y	=>	Y(0),
			C_IN	=>	C_IN,
			C_OUT => S(0),
			S	=>	l_carry(0)
		);
		
	second : behave_adder
		port map(
			X	=>	X(1),
			Y	=>	Y(1),
			C_IN	=>	l_carry(0),
			C_OUT => S(1),
			S	=>	l_carry(1)
		);
	third : behave_adder
		port map(
			X	=>	X(2),
			Y	=>	Y(2),
			C_IN	=>	l_carry(1),
			C_OUT => S(2),
			S	=>	l_carry(2)
		);
		
	fourth : behave_adder
		port map(
			X	=>	X(3),
			Y	=>	Y(3),
			C_IN	=>	l_carry(2),
			C_OUT => S(3),
			S	=>	l_carry(3)
		);
	fifth : behave_adder
		port map(
			X	=>	X(4),
			Y	=>	Y(4),
			C_IN	=>	l_carry(3),
			C_OUT => S(4),
			S	=>	l_carry(4)
		);
	sixth : behave_adder
		port map(
			X	=>	X(5),
			Y	=>	Y(5),
			C_IN	=>	l_carry(4),
			C_OUT => S(5),
			S	=>	C_OUT
		);
 
end structure;