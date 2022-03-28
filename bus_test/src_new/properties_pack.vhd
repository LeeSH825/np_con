library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package properties_pack is
	--===============================================
	-- Overall Parameter
	--===============================================
	constant SYSTEM_NUM_SOMA_MODULE		: integer			:= 16;
	constant SYSTEM_NUM_SYNAPSE_MODULE	: integer			:= 16;

	constant SYSTEM_ADDR_WIDTH_SOMA		: integer			:= 4;		-- associated with SYSTEM_NUM_SOMA_MODULE
	constant SYSTEM_ADDR_WIDTH_SOMA		: integer			:= 4;		-- associated with SYSTEM_NUM_SOMA_MODULE
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
	-- STDP		(Function)
	--===============================================
	function STDP_weight_rule(
		PRE_neuron_TIME		: sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG),
		POST_neuron_TIME	: sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG)
	) return sfixed(SYNAPSE_WEIGHT_REAL-1 downto -SYNAPSE_WEIGHT_IMG);
	--===============================================
	
	
end package properties_pack;

package body properties_pack is
	function STDP_weight_rule(
		PRE_neuron_TIME		: sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG),
		POST_neuron_TIME	: sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG)
	) return sfixed(SYNAPSE_WEIGHT_REAL-1 downto -SYNAPSE_WEIGHT_IMG) is
		variable LTP_LEARNING_RATE 	: sfixed(1 downto -3) : to_sfixed(0.1, 1, -3);
		variable LTD_LEARNING_RATE 	: sfixed(1 downto -3) : to_sfixed(-0.12, 1, -3);
		variable MAX_TIME_DELTA		: sfixed(4 downto 0) : to_sfixed(30, 4, 0);
		variable delta_time			: stixed(INTERVAL_TIME_REAL downto -INTERVAL_TIME_IMG);
		variable temp				: sfixed(SYNAPSE_WEIGHT_REAL downto -SYNAPSE_WEIGHT_IMG);
		variable RESULT				: sfixed(SYNAPSE_WEIGHT_REAL-1 downto -SYNAPSE_WEIGHT_IMG);
	begin
		delta_time := POST_neuron_TIME - PRE_neuron_TIME;
		if PRE_neuron_TIME > POST_neuron_TIME then	-- LTD
			temp := (delta_time / MAX_TIME_DELTA);
			RESULT := LTD_LEARNING_RATE * exp(-temp);
		else
			temp := (delta_time / MAX_TIME_DELTA);
			RESULT := LTD_LEARNING_RATE * exp(-temp);
		end if;
		return RESULT;
	end function STDP_weight_rule
	
	
end package body properties_pack;