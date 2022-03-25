library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use IEEE.fixed_float_types.all;
use IEEE.fixed_pkg.all;

entity shift_regi is
	generic(	SHIFTGEG_CAP : integer := 3;
				DATA_WIDTH : integer := 4;
				REAL_WIDTH : integer := 2;
				IMG_WIDTH : integer := 2

	);
	port (	clk : in std_logic;
			rst : in std_logic;

			shiftFlag : in std_logic;
			DATA_EN : in std_logic;
			DATA_IN : in std_logic_vector(DATA_WIDTH-1 downto 0);

			dbg_0 : out std_logic_vector(DATA_WIDTH-1 downto 0);
			dbg_1 : out std_logic_vector(DATA_WIDTH-1 downto 0);
			dbg_2 : out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
end entity shift_regi;

architecture rtl of shift_regi is
	type SHIFT_REG is array (integer range 0 to SHIFTGEG_CAP-1) of sfixed(REAL_WIDTH-1 downto -IMG_WIDTH);
	-- type SHIFT_REG is array (integer range 0 to SHIFTGEG_CAP-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
	signal REG : SHIFT_REG;
begin
	SHIFT_REGI:
	process(rst, DATA_EN, DATA_IN, REG, shiftFlag)
	begin
		if rst = '1' then
			for idx in 0 to SHIFTGEG_CAP-1 loop
				REG(idx) <= (others => '0');
			end loop;
		elsif falling_edge(clk) then
			-- if shiftFlag = '1' then
			-- 	-- REG(3) <= REG(2);
			-- 	REG(2) <= REG(1);
			-- 	REG(1) <= REG(0);
			-- else
			-- 	-- REG(3) <= REG(3);
			-- 	REG(2) <= REG(2);
			-- 	REG(1) <= REG(1);
			-- end if;
			for idx in 1 to SHIFTGEG_CAP-1 loop
				if shiftFlag = '1' then
					REG(idx) <= REG(idx-1);
				else
					REG(idx) <= REG(idx);
				end if;
			end loop;
			if DATA_EN = '1' then
				REG(0) <= to_sfixed(DATA_IN, REAL_WIDTH-1, -IMG_WIDTH);
			else
				REG(0) <= REG(0);
			end if;
		end if;
	end process;
	dbg_0 <= std_logic_vector(REG(0));
	dbg_1 <= std_logic_vector(REG(1));
	dbg_2 <= std_logic_vector(REG(2));
	
end architecture rtl;