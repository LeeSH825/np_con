library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use IEEE.fixed_float_types.all;
use IEEE.fixed_pkg.all;

use work.properties_pack.all;

entity STDP_reg_block is
	generic(	--================
				-- Default Parameter	-> Must to set for each usage (Pre-neuron/ Post-neuron)
				--================
				REG_CAPACITY		: integer				: 4;
				REG_ADDR_WIDTH		: integer				: 2;
	);
	port (		clk_STDP_reg_block	: in std_logic;
				rst_STDP_reg_block	: in std_logic;

				--===============
				-- Signal Pin
				--================
				-- Store Spike Value
				-- Rx: Pre-Neuron/ Post-Neuron's Interval Time
				-- Tx: Top Level of this register
				DATA_EN				: in std_logic;
				DATA_IN				: in std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);
				TOP					: out std_logic_vector(REG_ADDR_WIDTH-1 downto 0);

				-- Adjust Time-line to Post-Neuron's time
				DATA_ADJ_EN			: in std_logic;
				DATA_ADJ_IN			: in std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);

				-- Calculate STDP	(For Pre-Neuron)
				-- Rx: POST-Nueron's time-line
				-- Tx: Sum of (LTD & LTP)
				DATA_CAL_EN			: in std_logic;
				DATA_CAL_IN			: in std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);
				DATA_CAL_OUT		: out std_logic_vector(SYNAPSE_WEIGHT_WIDTH-1 downto 0);		--TODO: computation within Module(Upper Level?)?

				-- Pop all element in this register consequently (For POST)
				-- Can be used as =DEBUG= 
				POP_EN				: in std_logic;
				POP_ADDR			: in std_logic(REG_ADDR_WIDTH-1 downto 0);
				POP_OUT				: out std_logic(INTERVAL_TIME_WIDTH-1 downto 0)
	);
end entity STDP_reg_block;

architecture rtl of STDP_reg_block is
	type SHIFT_REG is array(natural range 0 to REG_CAPACITY) of sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG);
	signal		REG					: SHIFT_REG;
	signal		TOP_LEVEL			: integer range 0 to REG_CAPACITY						:= 0;
begin
	REGISTER_BLOCK:
	process(	STDP_reg_block_clk, STDP_reg_block_rst,
				DATA_EN, DATA_IN,
				DATA_ADJ_EN, DATA_ADJ_IN,
				DATA_CAL_EN, DATA_CAL_IN,
				POP_EN, POP_ADDR,
				REG, TOP_LEVEL)
		--===============
		-- Temporary Wire for operation
		--===============
		variable temp_DATA_IN_sfixed, temp_DATA_ADJ_IN_sfixed 	: sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG);	-- WARnING: SUM range must within INTERVAL_TIME_WIDTH
		variable temp_SUM_TIME_sfixed							: sfixed(INTERVAL_TIME_REAL downto -INTERVAL_TIME_IMG);		-- SUM ignores LSB bit
		variable temp_SUM_WEIGHT_sfixed							: sfixed(SYNAPSE_WEIGHT_REAL downto -SYNAPSE_WEIGHT_IMG);
		variable total_SUM_WEIGHT_sfixed						: sfixed(SYNAPSE_WEIGHT_REAL downto -SYNAPSE_WEIGHT_IMG);
	begin
		if STDP_reg_block_rst = '1' then
			for idx in - to REG_CAPACITY-1 loop
				REG(idx) <= (others => '0');
			end loop;
			TOP_LEVEL <= 0;
		elsif falling_edge(STDP_reg_block_clk) then
			-- CSR's clock In Unit 			: rising_edge
			-- But This Module's clock		: falling_edge				=> Because It's more efficient for reducing cylces

			-- Push Data(=Interval Time between Spike)
			if DATA_EN = '1' then
				if TOP_LEVEL < REG_CAPACITY-1 then				-- Renew the top level of this REG
					TOP_LEVEL <= TOP_LEVEL + 1;					-- Rise level when there's Income Data
				end if;

				-- Push DATA_IN to REG(0)
				-- Calculate New Spike Timeline with DATA_IN(=Interval Time between Spike)
				temp_DATA_IN_sfixed := to_sfixed(DATA_IN, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG);
				temp_SUM_TIME_sfixed := REG(0) + temp_DATA_IN_sfixed;
				for IDX_shift in 1 to REG_CAPACITY-1 loop		-- Shift all REG
					REG(IDX_shift) <= REG(idx-1);
				end loop;
				REG(0) <= temp_SUM_TIME_sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG);
			else
				for IDX_shift in 0 to REG_CAPACITY-1 loop
					REG(IDX_shift) <= REG(IDX_shift);
				end loop;
			end if;

			-- Adjust Spike Timeline
			-- For POST neuron, Calculate Spike Timeline, with DATA_ADJ_IN(= Pre Neuton's Timeline)
			if DATA_ADJ_EN = '1' then
				for IDX_adj in 0 to REG_CAPACITY loop
					if IDX_adj <= TOP_LEVEL then			-- Adjust within TOP_LEVEL
						temp_DATA_ADJ_IN_sfixed := to_sfixed(DATA_ADJ_IN, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG);
						temp_SUM_TIME_sfixed := REG(IDX_adj) - temp_DATA_ADJ_IN_sfixed;
						REG(IDX_adj) <= temp_SUM_TIME_sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG);
					end if;
				end loop;
			else
			end if;

			-- Calculate STDP
			-- Calculate Spike Time Delta(= POST neuron - PRE neuron), with DATA_CAL_IN(= Pre Neuron's Time)
			if DATA_CAL_EN = '1' then
				total_SUM_WEIGHT_sfixed := (others => '0');
				for IDX_cal in 0 to REG_CAPACITY loop
					temp_SUM_WEIGHT_sfixed := STDP_weight_rule( PRE_neuron_TIME		=> DATA_CAL_IN,
																POST_neuron_TIME	=> REG(IDX_cal));
					total_SUM_WEIGHT_sfixed := total_SUM_WEIGHT_sfixed(SYNAPSE_WEIGHT_REAL-1 downto) + temp_SUM_WEIGHT_sfixed(SYNAPSE_WEIGHT_REAL-1 downto);
				end loop;
				DATA_CAL_OUT <= std_logic_vector(total_SUM_WEIGHT_sfixed);
			end if;

			-- POP REG element
			-- For PRE neuron, POP out REG's element with Address
			if POP_EN = '1' then
				POP_OUT <= std_logic_vector(REG(to_integer(signed(POP_ADDR))));
			else
				POP_OUT <= (others => '0');
			end if;
		end if;
	end process;
	TOP <= std_logic_vector(to_signed(TOP_LEVEL, TOP'length));
	
end architecture rtl;