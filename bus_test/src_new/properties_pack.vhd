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
	-- STDP
	--===============================================
	constant STDP_NUM_PRE_NEURON		: integer			:= 4;
	constant STDP_NUM_POST_NEURON		: integer			:= 2;
	constant STDP_ADDR_WIDTH_PRE		: integer			:= 2;
	constant STDP_ADDR_WIDTH_POST		: integer			:= 1;
	--===============================================
	
	
end package properties_pack;