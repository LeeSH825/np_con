library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use IEEE.fixed_float_types.all;
use IEEE.fixed_pkg.all;

entity STDP_reg_block is
	generic(	--================
				-- Default Parameter	-> Must to set for each usage (Pre-neuron/ Post-neuron)
				--================
				REG_CAPACITY		: integer												: 4;
				REG_ADDR_WIDTH		: integer												: 2;
	);
	port (		STDP_reg_block_clk	: in std_logic;
				STDP_reg_block_rst	: in std_logic;

				--===============
				-- Signal Pin
				--================
				-- Store Spike Value
				-- Rx: Pre-Neuron/ Post-Neuron's Interval Time
				-- Tx: Top Level of this register
				DATA_EN				: in std_logic;
				DATA_IN				: in std_logic_vector(INTERVAL_TIME_WIDTH downto 0);
				TOP					: out std_logic_vector(REG_ADDR_WIDTH downto 0);

				-- Adjust Time-line to Post-Neuron's time
				DATA_ADJ_EN			: in std_logic;
				DATA_ADJ_IN			: in std_logic_vector(INTERVAL_TIME_WIDTH downto 0);

				-- Calculate Delta time	(For Pre-Neuron)
				-- Rx: POST-Nueron's time-line
				-- Tx: Sum of Delta time		TODO: change to real computation of STDP, not just sum
				DATA_CAL_EN			: in std_logic;
				DATA_CAL_IN			: in std_logic_vector(INTERVAL_TIME_WIDTH downto 0);
				DATA_CAL_OUT		: out std_logic_vector(SYNAPSE_WEIGHT_WIDTH downto 0);		--TODO: computation within Module(Upper Level?)?

				-- Pop all element in this register consequently (For POST)
				-- Can be used as =DEBUG= 
				POP_EN				: in std_logic;
				POP_ADDR			: in std_logic(REG_ADDR_WIDTH downto 0);
				POP_OUT				: out std_logic(INTERVAL_TIME_WIDTH downto 0)
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
	begin
		if STDP_reg_block_rst = '1' then
			for idx in - to REG_CAPACITY-1 loop
				REG(idx) <= (others => '0');
			end loop;
			TOP_LEVEL <= 0;
		elsif falling_edge(STDP_reg_block_clk) then
			-- CSR's clock In Unit  : rising_edge
			-- But This clock		: falling_edge				=> Because It's more efficient for reducing cylces

			if DATA_EN = '1' then
				if TOP_LEVEL < REG_CAPACITY-1 then
					TOP_LEVEL <= TOP_LEVEL + 1;					-- Rise level when there's Income Data
				end if;
			end if;
		end if;

	end process;
	
	
end architecture rtl;