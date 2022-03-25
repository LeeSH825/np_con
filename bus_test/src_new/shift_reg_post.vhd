library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use IEEE.fixed_float_types.all;
use IEEE.fixed_pkg.all;

entity shift_regi_post is
	generic(	SHIFTGEG_CAP : integer := 4;
				DATA_WIDTH : integer := 8;
				ADDR_WIDTH : integer := 3;
				REAL_WIDTH : integer := 4;
				IMG_WIDTH : integer := 4

	);
	port (	clk : in std_logic;
			rst : in std_logic;

			-- shiftFlag : in std_logic;
			DATA_EN : in std_logic;
			DATA_IN : in std_logic_vector(DATA_WIDTH-1 downto 0);
			DATA_MOD_EN : in std_logic;
			DATA_MOD_IN : in std_logic_vector(DATA_WIDTH-1 downto 0);
			DATA_CAL_EN : in std_logic;
			DATA_CAL_IN : in std_logic_vector(DATA_WIDTH-1 downto 0);
			DATA_CAL_OUT : out std_logic_vector(DATA_WIDTH-1 downto 0);

			POP_EN : in std_logic;
			POP_ADDR : in std_logic_vector(ADDR_WIDTH-1 downto 0);
			POP_OUT : out std_logic_vector(DATA_WIDTH-1 downto 0);

			dbg_0 : out std_logic_vector(DATA_WIDTH-1 downto 0);
			dbg_1 : out std_logic_vector(DATA_WIDTH-1 downto 0);
			dbg_2 : out std_logic_vector(DATA_WIDTH-1 downto 0);
			dbg_3 : out std_logic_vector(DATA_WIDTH-1 downto 0);
			dbg_top : out std_logic_vector(ADDR_WIDTH-1 downto 0)
	);
end entity shift_regi_post;

architecture rtler of shift_regi_post is
	type SHIFT_REG is array (integer range 0 to SHIFTGEG_CAP-1) of sfixed(REAL_WIDTH-1 downto -IMG_WIDTH);
	-- type SHIFT_REG is array (integer range 0 to SHIFTGEG_CAP-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
	signal REG : SHIFT_REG;
	signal top : integer range 0 to SHIFTGEG_CAP:= 0;
begin
	SHIFT_REGIST:
	process(rst, clk,
			DATA_EN, DATA_IN, 
			DATA_MOD_EN, DATA_MOD_IN,
			DATA_CAL_EN, DATA_CAL_IN,
			POP_EN, POP_ADDR,
			REG, 
			-- shiftFlag,
			top)
		variable temp_in1, temp_in2, sum : sfixed(REAL_WIDTH-1 downto -IMG_WIDTH);
		variable temp_sum : sfixed(REAL_WIDTH downto -IMG_WIDTH);

		variable total_SUM : sfixed(REAL_WIDTH downto -IMG_WIDTH);
		variable temp_addr : integer range 0 to SHIFTGEG_CAP;
	begin
		if rst = '1' then
			for idx in 0 to SHIFTGEG_CAP-1 loop
				REG(idx) <= (others => '0');
			end loop;
			top <= 0;
			DATA_CAL_OUT <= (others => '0');
			POP_OUT <= (others => '0');
		elsif falling_edge(clk) then

			-- for idx in 1 to SHIFTGEG_CAP-1 loop
			-- 	if shiftFlag = '1' then
			-- 		REG(idx) <= REG(idx-1);
			-- 	else
			-- 		REG(idx) <= REG(idx);
			-- 	end if;
			-- end loop;
			if DATA_EN = '1'  then 		-- Data Input
				if top < SHIFTGEG_CAP-1 then
					top <= top + 1;
			end if;
				-- temp_in1 := to_sfixed(REG(0), REAL_WIDTH-1, -IMG_WIDTH);
				temp_in2 := to_sfixed(DATA_IN, REAL_WIDTH-1, -IMG_WIDTH);
				-- temp_sum := temp_in1 + temp_in2;
				temp_sum := REG(0) + temp_in2;
				for idx in 1 to SHIFTGEG_CAP-1 loop
					-- if shiftFlag = '1' then
						REG(idx) <= REG(idx-1);
					-- else
						-- REG(idx) <= REG(idx);
					-- end if;
				end loop;
				-- REG(0) <= std_logic_vector(temp_sum(REAL_WIDTH-1 downto -IMG_WIDTH));
				REG(0) <= temp_sum(REAL_WIDTH-1 downto -IMG_WIDTH);
			else
				-- top <= top;
				for idx in 1 to SHIFTGEG_CAP-1 loop
						REG(idx) <= REG(idx);
				end loop;	
			end if;
			if DATA_MOD_EN = '1' then		-- Time Adjustment
				for idx in 0 to SHIFTGEG_CAP-1 loop
					if idx <= top then
						-- temp_in1 := REG(idx);
						-- temp_in1 := to_sfixed(REG(idx), REAL_WIDTH-1, -IMG_WIDTH);
						temp_in2 := to_sfixed(DATA_MOD_IN, REAL_WIDTH-1, -IMG_WIDTH);
						-- temp_sum := temp_in1 + temp_in2;
						temp_sum := REG(idx) - temp_in2;
						-- REG(idx) <= std_logic_vector(temp_sum(REAL_WIDTH-1 downto -IMG_WIDTH));
						REG(idx) <= temp_sum(REAL_WIDTH-1 downto  -IMG_WIDTH);
					end if;
				end loop;
			end if;
			if DATA_CAL_EN = '1' then							-- Calculate 
				total_SUM := (others => '0');
				for idx in 0 to SHIFTGEG_CAP-1 loop
					if idx <= top then
						temp_sum := REG(idx) - to_sfixed(DATA_CAL_IN, REAL_WIDTH-1, -IMG_WIDTH);
						total_SUM := total_SUM(REAL_WIDTH-1 downto -IMG_WIDTH) + temp_sum(REAL_WIDTH-1 downto -IMG_WIDTH);
					end if;
				end loop;
					DATA_CAL_OUT <= std_logic_vector(total_SUM(REAL_WIDTH-1 downto -IMG_WIDTH));
			else
				DATA_CAL_OUT <= (others => '0');
			end if;
			if POP_EN = '1' then
				-- temp_addr := to_integer(signed(POP_ADDR));
				-- POP_OUT <= REG(temp_addr);
				POP_OUT <= std_logic_vector(REG(to_integer(signed(POP_ADDR))));
			else
				POP_OUT <= (others => '0');
			end if;
			-- else
				-- top <= top;
				-- for idx in 1 to SHIFTGEG_CAP-1 loop
				-- 		REG(idx) <= REG(idx);
				-- end loop;
					-- DATA_CAL_OUT <= (others => '0');
					-- POP_OUT <= (others => '0');
			-- end if;
		end if;

	end process;
	dbg_0 <= std_logic_vector(REG(0));
	dbg_1 <= std_logic_vector(REG(1));
	dbg_2 <= std_logic_vector(REG(2));
	dbg_3 <= std_logic_vector(REG(3));
	dbg_top <= std_logic_vector(to_signed(top, dbg_top'length));
	
end architecture rtler;