library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use work.PROPERTIES_PACK.all;

entity addr is
	port (	clk : in std_logic;
			-- rst : in std_logic;
			A : in std_logic_vector(DATA_WIDTH-1 downto 0);
			B : in std_logic_vector(DATA_WIDTH-1 downto 0);
			C : out std_logic_vector(DATA_WIDTH-1 downto 0)

	);
end entity addr;

architecture rtl of addr is
	
begin
	process (clk , A, B) 
		variable	temp1, temp2, temp3 : integer;
	begin
		-- if rst = '1' then
		-- 	C <= (others => '0');
		if rising_edge(clk) then
			temp1 := to_integer(signed(A));
			temp2 := to_integer(signed(B));
			temp3 := temp1 + temp2;

			C <= std_logic_vector(to_signed(temp3, C'length));
		end if;


	end process;
	
end architecture rtl;