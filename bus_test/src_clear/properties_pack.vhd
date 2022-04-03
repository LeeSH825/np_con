library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use IEEE.fixed_float_types.all;
use IEEE.fixed_pkg.all;

package properties_pack is
	--===============================================
	-- Overall System Parameter
	--===============================================
	constant SYSTEM_NUM_SOMA_MODULE			: integer			:= 16;
	constant SYSTEM_NUM_SYNAPSE_MODULE		: integer			:= 16;
	-- TODO: automate finding ADDR_WIDTH
	constant SYSTEM_ADDR_WIDTH_SOMA			: integer			:= 8;		-- associated with SYSTEM_NUM_SOMA_MODULE
	constant SYSTEM_ADDR_WIDTH_SYNAPSE		: integer			:= 8;		-- associated with SYSTEM_NUM_SYNAPSE_MODULE
	--==============================================
	-- Port
	--==============================================
	constant BYTEENABLE_WIDTH_16		: integer			:= 2;
	constant BYTEENABLE_WIDTH_32		: integer			:= 4;
	
	--==============================================
	-- Port		(DATA)
	--==============================================
	constant SPIKE_DATA_WIDTH			: integer			:= 32;
	constant SYNAPSE_DATA_WIDTH			: integer			:= 32;
	--==============================================
	-- Signal	(fixed point)
	--==============================================
	constant INTERVAL_TIME_WIDTH		: integer			:= 10;
	constant INTERVAL_TIME_REAL			: integer			:= 5;
	constant INTERVAL_TIME_IMG			: integer			:= 5;

	constant SYNAPSE_WEIGHT_WIDTH		: integer			:= 16;
	constant SYNAPSE_WEIGHT_REAL		: integer			:= 8;
	constant SYNAPSE_WEIGHT_IMG			: integer			:= 8;

	constant AXONAL_DELAY_WIDTH			: integer			:= 16;
	constant AXONAL_DELAY_REAL			: integer			:= 8;
	constant AXONAL_DELAY_IMG			: integer			:= 8;
	--===============================================
	-- STDP		(Parameter)
	--===============================================
	constant STDP_NUM_PRE_NEURON		: integer			:= 4;
	constant STDP_NUM_POST_NEURON		: integer			:= 2;
	constant STDP_ADDR_WIDTH_PRE		: integer			:= 2;
	constant STDP_ADDR_WIDTH_POST		: integer			:= 1;
	--===============================================
	-- STDP		(Array)
	--===============================================
	constant EXP_PRECISION_REAL			: integer			:= 6;
	constant EXP_PRECISION_IMG			: integer			:= 6;
	type EXP_TABLE is array(0 to 15)of sfixed(EXP_PRECISION_REAL-1 downto -EXP_PRECISION_IMG);
	constant QUANTIZED_EXP_TABLE		: EXP_TABLE			:= (
		to_sfixed(0.36787, EXP_PRECISION_REAL-1, -EXP_PRECISION_IMG),
		to_sfixed(0.41686, EXP_PRECISION_REAL-1, -EXP_PRECISION_IMG),
		to_sfixed(0.47236, EXP_PRECISION_REAL-1, -EXP_PRECISION_IMG),
		to_sfixed(0.53526, EXP_PRECISION_REAL-1, -EXP_PRECISION_IMG),
		to_sfixed(0.60653, EXP_PRECISION_REAL-1, -EXP_PRECISION_IMG),
		to_sfixed(0.68728, EXP_PRECISION_REAL-1, -EXP_PRECISION_IMG),
		to_sfixed(0.77880, EXP_PRECISION_REAL-1, -EXP_PRECISION_IMG),
		to_sfixed(0.88249, EXP_PRECISION_REAL-1, -EXP_PRECISION_IMG),
		to_sfixed(1.0, EXP_PRECISION_REAL-1, -EXP_PRECISION_IMG),
		to_sfixed(1.13314, EXP_PRECISION_REAL-1, -EXP_PRECISION_IMG),
		to_sfixed(1.28402, EXP_PRECISION_REAL-1, -EXP_PRECISION_IMG),
		to_sfixed(1.45499, EXP_PRECISION_REAL-1, -EXP_PRECISION_IMG),
		to_sfixed(1.64872, EXP_PRECISION_REAL-1, -EXP_PRECISION_IMG),
		to_sfixed(1.86824, EXP_PRECISION_REAL-1, -EXP_PRECISION_IMG),
		to_sfixed(2.11700, EXP_PRECISION_REAL-1, -EXP_PRECISION_IMG),
		to_sfixed(2.39887, EXP_PRECISION_REAL-1, -EXP_PRECISION_IMG)
	);
	--===============================================
	-- STDP		(Function)
	--===============================================
	function exp(
		DELTA_TIME			: sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG)
	-- ) return sfixed(EXP_PRECISION_REAL-1 downto -EXP_PRECISION_IMG);
	) return sfixed;

	function STDP_weight_rule(
		PRE_neuron_TIME		: sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG);
		POST_neuron_TIME	: sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG)
	) return sfixed;
	--===============================================
	
	
end package properties_pack;

package body properties_pack is

	function exp(
		DELTA_TIME			: sfixed(7 downto -8)
	)	return sfixed is
	begin
		-- case DELTA_TIME is

		if(to_sfixed(-0.875, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) >= DELTA_TIME) then
				return QUANTIZED_EXP_TABLE(0);
		elsif((to_sfixed(-1.0, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) < DELTA_TIME)
				and (to_sfixed(-0.875, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) >= DELTA_TIME)) then
				return QUANTIZED_EXP_TABLE(1);
			elsif((to_sfixed(-0.875, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) < DELTA_TIME)
				and (to_sfixed(-0.75, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) >= DELTA_TIME)) then
				return QUANTIZED_EXP_TABLE(2);
			elsif((to_sfixed(-0.75, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) < DELTA_TIME)
				and (to_sfixed(-0.625, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) >= DELTA_TIME)) then
				return QUANTIZED_EXP_TABLE(3);
			elsif((to_sfixed(-0.625, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) < DELTA_TIME)
				and (to_sfixed(-0.5, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) >= DELTA_TIME)) then
				return QUANTIZED_EXP_TABLE(4);
			elsif((to_sfixed(-0.5, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) < DELTA_TIME)
				and (to_sfixed(-0.375, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) >= DELTA_TIME)) then
				return QUANTIZED_EXP_TABLE(5);
			elsif((to_sfixed(-0.375, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) < DELTA_TIME)
				and (to_sfixed(-0.25, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) >= DELTA_TIME)) then
				return QUANTIZED_EXP_TABLE(6);
			elsif((to_sfixed(-0.25, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) < DELTA_TIME)
				and (to_sfixed(-0.125, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) >= DELTA_TIME)) then
				return QUANTIZED_EXP_TABLE(7);
			elsif((to_sfixed(-0.125, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) < DELTA_TIME)
				and (to_sfixed(0.0, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) >= DELTA_TIME)) then
				return QUANTIZED_EXP_TABLE(8);
			elsif((to_sfixed(0.0, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) < DELTA_TIME)
				and (to_sfixed(0.125, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) >= DELTA_TIME)) then
				return QUANTIZED_EXP_TABLE(9);
			elsif((to_sfixed(0.125, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) < DELTA_TIME)
				and (to_sfixed(0.25, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) >= DELTA_TIME)) then
				return QUANTIZED_EXP_TABLE(10);
			elsif((to_sfixed(0.25, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) < DELTA_TIME)
				and (to_sfixed(0.375, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) >= DELTA_TIME)) then
				return QUANTIZED_EXP_TABLE(11);
			elsif((to_sfixed(0.375, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) < DELTA_TIME)
				and (to_sfixed(0.5, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) >= DELTA_TIME)) then
				return QUANTIZED_EXP_TABLE(12);
			elsif((to_sfixed(0.5, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) < DELTA_TIME)
				and (to_sfixed(0.625, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) >= DELTA_TIME)) then
				return QUANTIZED_EXP_TABLE(13);
			elsif((to_sfixed(0.625, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) < DELTA_TIME)
				and (to_sfixed(0.75, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) >= DELTA_TIME)) then
				return QUANTIZED_EXP_TABLE(14);
			-- elsif(to_sfixed(0.75, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG) < DELTA_TIME)
			else
				return QUANTIZED_EXP_TABLE(15);
			end if;
		-- end case;
	end function exp;

	function STDP_weight_rule(
		PRE_neuron_TIME		: sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG);
		POST_neuron_TIME	: sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG)
	) return sfixed is
		variable LTP_LEARNING_RATE 	: sfixed(1 downto -3) := to_sfixed(0.1, 1, -3);
		variable LTD_LEARNING_RATE 	: sfixed(1 downto -3) := to_sfixed(-0.12, 1, -3);
		variable MAX_TIME_DELTA		: sfixed(4 downto 0) := to_sfixed(30, 4, 0);
		variable delta_time			: sfixed(INTERVAL_TIME_REAL downto -INTERVAL_TIME_IMG);
		variable temp				: sfixed(7 downto -8);
		variable RESULT				: sfixed(SYNAPSE_WEIGHT_REAL downto -SYNAPSE_WEIGHT_IMG);
		variable exp_temp			: sfixed(EXP_PRECISION_REAL-1 downto -EXP_PRECISION_IMG);
	begin
		delta_time := POST_neuron_TIME - PRE_neuron_TIME;
		if PRE_neuron_TIME > POST_neuron_TIME then	-- LTD
			temp := (delta_time / MAX_TIME_DELTA);
			exp_temp := exp(temp);
			RESULT := LTD_LEARNING_RATE * exp_temp;
			-- RESULT :=  exp_temp;
		else
			temp := (delta_time / MAX_TIME_DELTA);
			exp_temp := exp(temp);
			RESULT := LTD_LEARNING_RATE * exp_temp;
			-- RESULT :=  exp_temp;
		end if;
		return RESULT;
	end function STDP_weight_rule;
	
	
end package body properties_pack;