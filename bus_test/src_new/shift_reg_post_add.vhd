library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use IEEE.fixed_float_types.all;
use IEEE.fixed_pkg.all;

entity shift_reg_post_add is
	generic(	SHIFT_CAP_PRE : integer := 4;
				SHIFT_CAP_POST : integer := 4;
				DATA_WID : integer := 8;
				ADDR_WID : integer := 3;
				REAL_WID : integer := 4;
				IMG_WID : integer := 4

	);
	port (	sys_clk : in std_logic;
			sys_rst : in std_logic;

			-- for PRE neuron

			STDP_patchPREneuron : in std_logic;
			STDP_patchPOSTneuron : in std_logic;
			STDP_DATAIN_PRE_FIFO : in std_logic_vector(DATA_WID-1 downto 0);
			STDP_DATAIN_POST_FIFO : in std_logic_vector(DATA_WID-1 downto 0);
			

			synapsePush : in std_logic;
			STDP_OUT : out std_logic_vector(DATA_WID-1 downto 0);
			
			dbg_PRE_0 : out std_logic_vector(DATA_WID-1 downto 0);
			dbg_PRE_1 : out std_logic_vector(DATA_WID-1 downto 0);
			dbg_PRE_2 : out std_logic_vector(DATA_WID-1 downto 0);
			dbg_PRE_3 : out std_logic_vector(DATA_WID-1 downto 0);

			dbg_POST_0 : out std_logic_vector(DATA_WID-1 downto 0);
			dbg_POST_1 : out std_logic_vector(DATA_WID-1 downto 0);
			dbg_POST_2 : out std_logic_vector(DATA_WID-1 downto 0);
			dbg_POST_3 : out std_logic_vector(DATA_WID-1 downto 0);

			dbg_DATA_CAL_POST : out std_logic_vector(DATA_WID-1 downto 0);
			dbg_ADDR : out std_logic_vector(ADDR_WID-1downto 0);
			dbg_SUM : out std_logic_vector(DATA_WID-1 downto 0);
			dbg_TEMP_SUM : out std_logic_vector(DATA_WID-1 downto 0)
		
	);
end entity shift_reg_post_add;

architecture rtl of shift_reg_post_add is
	component shift_regi_post
		generic(	SHIFTGEG_CAP : integer;
					DATA_WIDTH : integer;
					ADDR_WIDTH : integer;
					REAL_WIDTH : integer;
					IMG_WIDTH : integer

		);
		port(		clk : in std_logic;
					rst : in std_logic;

					DATA_EN : in std_logic;
					DATA_IN : in std_logic_vector(DATA_WID-1 downto 0);
					DATA_ADJ_EN : in std_logic;
					DATA_ADJ_IN : in std_logic_vector(DATA_WID-1 downto 0);
					DATA_CAL_EN : in std_logic;
					DATA_CAL_IN : in std_logic_vector(DATA_WID-1 downto 0);
					DATA_CAL_OUT : out std_logic_vector(DATA_WID-1 downto 0);
		
					POP_EN : in std_logic;
					POP_ADDR : in std_logic_vector(ADDR_WID-1 downto 0);
					POP_OUT : out std_logic_vector(DATA_WID-1 downto 0);
		
					dbg_0 : out std_logic_vector(DATA_WID-1 downto 0);
					dbg_1 : out std_logic_vector(DATA_WID-1 downto 0);
					dbg_2 : out std_logic_vector(DATA_WID-1 downto 0);
					dbg_3 : out std_logic_vector(DATA_WID-1 downto 0);
					TOP : out std_logic_vector(ADDR_WID-1 downto 0)
	
		);
	end component;
	
	-- signal TIME_ADJUST : std_logic_vector(DATA_WID-1 downto 0);
	signal CAL_ENA : std_logic;
	signal CAL_ADDR : std_logic_vector(ADDR_WID-1 downto 0);
	signal DATA_CAL_POST : std_logic_vector(DATA_WID-1 downto 0);
	signal temp_sum : std_logic_vector(DATA_WID-1 downto 0);
	signal PRE_SUM : sfixed(REAL_WID downto -IMG_WID);
	signal PRE_SUM_temp : sfixed(REAL_WID downto -IMG_WID);
	signal TOP_PRE : std_logic_vector(ADDR_WID-1 downto 0);
	signal TOP_POST : std_logic_vector(ADDR_WID-1 downto 0);
	
	signal ZERO_SIG : std_logic := '0';
	signal ZERO_DATA_IN : std_logic_vector(DATA_WID-1 downto 0) := (others => '0');
	signal ZERO_DATA_OUT : std_logic_vector(DATA_WID-1 downto 0) := (others => '0');
	signal ZERO_ADDR : std_logic_vector(ADDR_WID-1 downto 0) := (others => '0');
		
begin
	PRE_STDP: shift_regi_post
	generic map( 	SHIFTGEG_CAP => SHIFT_CAP_PRE,
					DATA_WIDTH => DATA_WID,
					ADDR_WIDTH => ADDR_WID,
					REAL_WIDTH => REAL_WID,
					IMG_WIDTH => IMG_WID
	)
	port map(		clk => sys_clk,
					rst => sys_rst,

					DATA_EN => STDP_patchPREneuron,
					DATA_IN => STDP_DATAIN_PRE_FIFO,
					DATA_ADJ_EN => STDP_patchPOSTneuron,
					DATA_ADJ_IN =>STDP_DATAIN_POST_FIFO,
					DATA_CAL_EN => CAL_ENA,
					DATA_CAL_IN => DATA_CAL_POST,
					DATA_CAL_OUT => temp_sum,

					POP_EN => ZERO_SIG,
					POP_ADDR => ZERO_ADDR,
					POP_OUT => ZERO_DATA_OUT,

					dbg_0 => dbg_PRE_0,
					dbg_1 => dbg_PRE_1,
					dbg_2 => dbg_PRE_2,
					dbg_3 => dbg_PRE_3,
					TOP => TOP_PRE
	);

	POST_STDP: shift_regi_post
	generic map( 	SHIFTGEG_CAP => SHIFT_CAP_POST,
					DATA_WIDTH => DATA_WID,
					ADDR_WIDTH => ADDR_WID,
					REAL_WIDTH => REAL_WID,
					IMG_WIDTH => IMG_WID
	)
	port map(		clk => sys_clk,
					rst => sys_rst,

					DATA_EN => STDP_patchPOSTneuron,
					DATA_IN => STDP_DATAIN_POST_FIFO,
					DATA_ADJ_EN => STDP_patchPOSTneuron,
					DATA_ADJ_IN => STDP_DATAIN_POST_FIFO,
					DATA_CAL_EN => ZERO_SIG,
					DATA_CAL_IN => ZERO_DATA_IN,
					DATA_CAL_OUT => ZERO_DATA_OUT,

					POP_EN => CAL_ENA,
					POP_ADDR =>CAL_ADDR,
					POP_OUT => DATA_CAL_POST,

					dbg_0 => dbg_POST_0,
					dbg_1 => dbg_POST_1,
					dbg_2 => dbg_POST_2,
					dbg_3 => dbg_POST_3,
					TOP => TOP_POST
	);
process(sys_clk, sys_rst,
		STDP_patchPOSTneuron, STDP_patchPREneuron,
		STDP_DATAIN_POST_FIFO, STDP_DATAIN_PRE_FIFO,
		synapsePush)
	variable idx : integer range 0 to SHIFT_CAP_POST := 0;
	variable PRE_SUM : sfixed(REAL_WID downto -IMG_WID) := (others => '0');
begin
	-- CAL_ADDR <= std_logic_vector(to_signed(idx, CAL_ADDR'length));
if sys_rst = '1' then
	CAL_ENA <= '0';
	idx := 0;
	PRE_SUM := (others => '0');
elsif falling_edge(sys_clk) then
	if STDP_patchPOSTneuron = '1' or STDP_patchPREneuron = '1' then
		idx := to_integer(signed(TOP_POST));
		-- CAL_ADDR <= std_logic_vector(to_signed(idx, CAL_ADDR'length));
		-- if idx = to_integer(signed(TOP_POST)) then
		-- 	CAL_ENA <= '0';
		-- else
		-- 	idx := idx + 1;
		-- 	CAL_ENA <= '1';
		-- 	PRE_SUM <= PRE_SsUM(REAL_WID-1 downto -IMG_WID) + to_sfixed(temp_sum, REAL_WID-1, -IMG_WID);
		-- end if;
		PRE_SUM := (others => '0');
	end if;
	CAL_ADDR <= std_logic_vector(to_signed(idx, CAL_ADDR'length));

	if idx /= 0 then
		CAL_ENA <= '1';
		-- PRE_SUM := PRE_SUM(REAL_WID-1 downto -IMG_WID) + to_sfixed(temp_sum, REAL_WID-1, -IMG_WID);
		-- PRE_SUM := '0' & to_sfixed(temp_sum, REAL_WID-1, -IMG_WID);
		idx := idx - 1;
	else
		CAL_ENA <= '0';
		-- PRE_SUM := PRE_SUM;
	end if;
	PRE_SUM := PRE_SUM(REAL_WID-1 downto -IMG_WID) + to_sfixed(temp_sum, REAL_WID-1, -IMG_WID);
	if synapsePush = '1' then
		STDP_OUT <= std_logic_vector(PRE_SUM(REAL_WID-1 downto -IMG_WID));
	else
		STDP_OUT <= (others => '0');
	end if;

end if;
-- dbg_SUM <= std_logic_vector(PRE_SUM(REAL_WID-1 downto -IMG_WID));
end process;
	dbg_DATA_CAL_POST <= DATA_CAL_POST;
	dbg_ADDR <= CAL_ADDR;
	dbg_SUM <= std_logic_vector(PRE_SUM(REAL_WID-1 downto -IMG_WID));
	dbg_TEMP_SUM <= temp_sum;
end architecture rtl;