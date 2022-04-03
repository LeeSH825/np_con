library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use IEEE.fixed_float_types.all;
use IEEE.fixed_pkg.all;

use work.properties_pack.all;

entity STDP_reg_module is
	generic(	--================
				-- Default Parameter	-> Must to set for each usage
				--================
				REG_CAPACITY_PRE		: integer				:= 4;
				REG_CAPACITY_POST		: integer				:= 4;

				REG_ADDR_WIDTH_PRE		: integer				:= 4;		-- TODO: auto calculate ADDR_WIDTH
				REG_ADDR_WIDTH_POST		: integer				:= 3
	);
	port (		clk_STDP_reg_module		: in std_logic;
				rst_STDP_reg_module		: in std_logic;


				--================
				-- =DEBUG=
				--================
				IDX_PRE : out std_logic_vector(REG_ADDR_WIDTH_PRE-1 downto 0);
				IDX_POST : out std_logic_vector(REG_ADDR_WIDTH_POST-1 downto 0);
				dbg_cal : out std_logic_vector(REG_ADDR_WIDTH_POST-1 downto 0);
				dbg_cal_en : out std_logic;
				dbg_cal_sig : out std_logic;
				dbg_cal_fin : out std_logic;
				--================
				-- Signal Pin
				--================
				-- Store PRE neuron's Interval Time
				pushPREneuron			: in std_logic;
				pushPREneuronDATA		: in std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);

				-- Store POST neuron's Interval Time
				pushPOSTneuron			: in std_logic;
				pushPOSTneuronDATA		: in std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);

				-- POP OUT STDP_Weight
				requestWeight			: in std_logic;
				popWeightDATA			: out std_logic_vector(SYNAPSE_WEIGHT_WIDTH-1 downto 0);

				-- wait signal
				-- Ex) if calculating is processing
				wait_CAL				: out std_logic
	);
end entity STDP_reg_module;

architecture rtl of STDP_reg_module is
	component STDP_reg_block
		generic(	REG_CAPACITY		: integer;
					REG_ADDR_WIDTH 		: integer
		);
		port(		clk_STDP_reg_block	: in std_logic;
					rst_STDP_reg_block	: in std_logic;

					DATA_EN				: in std_logic;
					DATA_IN				: in std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);
					TOP					: out std_logic_vector(REG_ADDR_WIDTH-1 downto 0);

					DATA_ADJ_EN			: in std_logic;
					DATA_ADJ_IN			: in std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);

					DATA_CAL_EN			: in std_logic;
					DATA_CAL_IN			: in std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);
					DATA_CAL_OUT		: out std_logic_vector(SYNAPSE_WEIGHT_WIDTH-1 downto 0);		--TODO: computation within Module(Upper Level?)?

					POP_EN				: in std_logic;
					POP_ADDR			: in std_logic_vector(REG_ADDR_WIDTH-1 downto 0);
					POP_OUT				: out std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0)
		);
	end component;

	signal 			TOP_LEVEL_PRE		: std_logic_vector(REG_ADDR_WIDTH_PRE-1 downto 0);
	signal 			TOP_LEVEL_POST		: std_logic_vector(REG_ADDR_WIDTH_POST-1 downto 0);
	signal			IDX_top_POST		: integer range -1 to REG_CAPACITY_POST := 0;

	--================
	-- POST => PRE bridge (to STDP Calculation)
	--================
	signal			CAL_EN_POST			: std_logic;
	signal			CAL_ADDR_POST		: std_logic_vector(REG_ADDR_WIDTH_POST-1 downto 0);
	signal			CAL_DATA_POST		: std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);

	signal			STDP_per_POST		: std_logic_vector(SYNAPSE_WEIGHT_WIDTH-1 downto 0);

	signal			STDP_WEIGHT_SUM		: sfixed(SYNAPSE_WEIGHT_REAL downto -SYNAPSE_WEIGHT_IMG) := (others => '0');

	--================
	-- TEMP sig
	--================
	signal	wait_cal_sig  : std_logic;
	signal	wait_cal_fin  : std_logic;
	signal		TAG_STDP_WEIGHT_SUM		: sfixed(SYNAPSE_WEIGHT_REAL downto -SYNAPSE_WEIGHT_IMG) := (others => '0');
	--================
	-- Zero Signal
	--================
	signal			ZERO_BIT			: std_logic := '0';
	signal			ZERO_ADDR_PRE		: std_logic_vector(REG_ADDR_WIDTH_PRE-1 downto 0);
	signal			ZERO_TIME			: std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);
	signal			ZERO_WEIGHT			: std_logic_vector(SYNAPSE_WEIGHT_WIDTH-1 downto 0);

begin
	PRE_reg_block:	STDP_reg_block
	generic map(	REG_CAPACITY 		=> REG_CAPACITY_PRE,
					REG_ADDR_WIDTH 		=> REG_ADDR_WIDTH_PRE
	)
	port map(		clk_STDP_reg_block 	=> clk_STDP_reg_module,
					rst_STDP_reg_block 	=> rst_STDP_reg_module,

					DATA_EN				=> pushPREneuron,
					DATA_IN				=> pushPREneuronDATA,
					TOP					=> TOP_LEVEL_PRE,

					DATA_ADJ_EN			=> pushPOSTneuron,
					DATA_ADJ_IN			=> pushPOSTneuronDATA,

					DATA_CAL_EN			=> CAL_EN_POST,
					DATA_CAL_IN			=> CAL_DATA_POST,
					DATA_CAL_OUT		=> STDP_per_POST,

					POP_EN				=> ZERO_BIT,
					POP_ADDR			=> ZERO_ADDR_PRE,
					POP_OUT				=> ZERO_TIME
	);

	POST_reg_block:	STDP_reg_block
	generic map(	REG_CAPACITY		=> REG_CAPACITY_POST,
					REG_ADDR_WIDTH		=> REG_ADDR_WIDTH_POST
	)
	port map(		clk_STDP_reg_block	=> clk_STDP_reg_module,
					rst_STDP_reg_block	=> rst_STDP_reg_module,

					DATA_EN				=> pushPOSTneuron,
					DATA_IN				=> pushPOSTneuronDATA,
					TOP					=> TOP_LEVEL_POST,

					DATA_ADJ_EN			=> pushPOSTneuron,
					DATA_ADJ_IN			=> pushPOSTneuronDATA,

					DATA_CAL_EN			=> ZERO_BIT,
					DATA_CAL_IN			=> ZERO_TIME,
					DATA_CAL_OUT		=> ZERO_WEIGHT,

					POP_EN				=> CAL_EN_POST,
					POP_ADDR			=> CAL_ADDR_POST,
					POP_OUT				=> CAL_DATA_POST
	);
	-- wait_CAL <= wait_cal_sig;
	process(		clk_STDP_reg_module, rst_STDP_reg_module,
					pushPREneuron, pushPREneuronDATA,
					--================
					wait_cal_sig, IDX_top_POST, CAL_ADDR_POST, TAG_STDP_WEIGHT_SUM, wait_cal_fin,
					--================
					pushPOSTneuron, pushPOSTneuronDATA,
					requestWeight)

		-- variable	IDX_top_POST		: integer range 0 to REG_CAPACITY_POST := 0;
		-- variable	STDP_WEIGHT_SUM		: sfixed(SYNAPSE_WEIGHT_REAL downto -SYNAPSE_WEIGHT_IMG) := (others => '0');
		
	begin
	

	
	if rst_STDP_reg_module = '1' then
		-- CAL_EN_POST <= '0';
		IDX_top_POST <= 0;
		STDP_WEIGHT_SUM <= (others => '0');
		wait_CAL <= '0';
		wait_cal_sig <= '0';
	-- elsif falling_edge(clk_STDP_reg_module) then
	elsif rising_edge(clk_STDP_reg_module) then
		-- STDP Updates when PREneuron/POSTneuron comes in			--TODO: Optimize Updating
		-- if pushPREneuron = '1' then			
		-- 	IDX_top_POST <= to_integer(unsigned(TOP_LEVEL_POST));
		-- 	STDP_WEIGHT_SUM <= to_sfixed(0, SYNAPSE_WEIGHT_REAL-1, -SYNAPSE_WEIGHT_IMG) + to_sfixed(STDP_per_POST, SYNAPSE_WEIGHT_REAL-1, -SYNAPSE_WEIGHT_IMG);
		-- 	wait_CAL <= '1';
		-- 	wait_cal_sig <= '1';
		-- else
		-- 	wait_cal_sig <= '0';
		-- 	wait_CAL <= '0';
		-- end if;
		-- CAL_ADDR_POST <= std_logic_vector(to_signed(IDX_top_POST, CAL_ADDR_POST'length));
		-- -- wait_CAL <= wait_cal_sig;
		-- if IDX_top_POST /= -1 then			-- CAL_EN_POST assert while All POST-timeline put into PRE_REG (for Calculating STDP)
		-- 					-- also assert wait_CAL => Let Outer one knows if it's calculating
			
			
		-- 	if wait_cal_sig <= '1' then
		-- 		wait_CAL <= '1';
		-- 		CAL_EN_POST <= '1';
		-- 		IDX_top_POST <= IDX_top_POST - 1;
		-- 		STDP_WEIGHT_SUM <= STDP_WEIGHT_SUM(SYNAPSE_WEIGHT_REAL-1 downto -SYNAPSE_WEIGHT_IMG) + to_sfixed(STDP_per_POST, SYNAPSE_WEIGHT_REAL-1, -SYNAPSE_WEIGHT_IMG);
		-- 	else

		-- 		wait_CAL <= '0';
		-- 		STDP_WEIGHT_SUM <= (others => '0');
		-- 	end if;
		-- else
		-- 	-- wait_CAL <= '0';
		-- 	wait_cal_sig <= '0';
		-- 	CAL_ADDR_POST <= (others => '0');
		-- 	CAL_EN_POST <= '0';
		-- 	wait_CAL <= '0';
		-- 	-- STDP_WEIGHT_SUM <= STDP_WEIGHT_SUM;
		-- 	STDP_WEIGHT_SUM <= (others => '0');
		-- end if;
		if pushPREneuron = '1' then
			wait_cal_sig <= '1';
			wait_CAL <= '1';
			-- CAL_EN_POST <= '1';
		end if;

		if wait_cal_fin = '1' then
			wait_cal_sig <= '0';
			wait_CAL <= '0';
			-- CAL_EN_POST <= '0';
		end if;

		-- Pop out Weight
		if requestWeight = '1' then
			-- popWeight <= '1';
			popWeightDATA <= std_logic_vector(TAG_STDP_WEIGHT_SUM(SYNAPSE_WEIGHT_REAL-1 downto -SYNAPSE_WEIGHT_IMG));
		else
			-- popWeight <= '0';
			popWeightDATA <= (others => '0');
		end if;
	end if;
	--================
	-- =DEBUG=
	--================
	-- IDX_POST <=  std_logic_vector(to_signed(IDX_top_POST, IDX_POST'length));
	-- IDX_POST <=  TOP_LEVEL_POST;
	-- IDX_PRE <=  TOP_LEVEL_PRE;
	-- dbg_cal <= CAL_ADDR_POST;
	end process;

	SUM_STDP:
	process(	clk_STDP_reg_module,
				pushPREneuron, STDP_per_POST, TOP_LEVEL_POST, CAL_EN_POST, TAG_STDP_WEIGHT_SUM,
				wait_cal_sig
	)
		variable		TAG_IDX_top_POST		: integer range 0 to REG_CAPACITY_POST+1 := 0;
		
	begin
		-- Init Sum
		if pushPREneuron = '1' then
			TAG_STDP_WEIGHT_SUM <= (others => '0');
			TAG_IDX_top_POST := to_integer(unsigned(TOP_LEVEL_POST));
		-- else
		-- 	TAG_STDP_WEIGHT_SUM <= TAG_STDP_WEIGHT_SUM;
		-- 	TAG_IDX_top_POST := -1;
		-- end if;

		-- Actual Calculation Part
		-- elsif falling_edge(clk_STDP_reg_module) then
		elsif rising_edge(clk_STDP_reg_module) then
			if wait_cal_sig = '1' then
				if TAG_IDX_top_POST > 0 then
					wait_cal_fin <= '0';
					CAL_EN_POST <= '1';
					CAL_ADDR_POST <= std_logic_vector(to_signed(TAG_IDX_top_POST-1, CAL_ADDR_POST'length));
					TAG_STDP_WEIGHT_SUM <= TAG_STDP_WEIGHT_SUM(SYNAPSE_WEIGHT_REAL-1 downto -SYNAPSE_WEIGHT_IMG) + to_sfixed(STDP_per_POST, SYNAPSE_WEIGHT_REAL-1, -SYNAPSE_WEIGHT_IMG);
					TAG_IDX_top_POST := TAG_IDX_top_POST - 1;
				else
					CAL_EN_POST <= '0';
					TAG_IDX_top_POST := 0;
					wait_cal_fin <= '1';
				end if;
			else
				TAG_IDX_top_POST := 0;
				CAL_EN_POST <= '0';
				TAG_STDP_WEIGHT_SUM <= TAG_STDP_WEIGHT_SUM;
				wait_cal_fin <= '0';
			end if;
		end if;
	end process;

	-- CAL_ADDR_POST <= std_logic_vector(to_signed(IDX_top_POST, CAL_ADDR_POST'length));
	IDX_POST <=  TOP_LEVEL_POST;
	IDX_PRE <=  TOP_LEVEL_PRE;
	dbg_cal <= CAL_ADDR_POST;
	dbg_cal_en <= CAL_EN_POST;
	dbg_cal_sig <= wait_cal_sig;
	dbg_cal_fin <= wait_cal_fin;
	
end architecture rtl;