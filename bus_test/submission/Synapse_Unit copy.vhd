library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use IEEE.fixed_float_types.all;
use IEEE.fixed_pkg.all;

use work.properties_pack.all;

entity Synapse_Unit is
	generic(	--================
	-- 			-- Default Value
	-- 			--================
	-- 			-- STDP
				NUM_STDP_PRE_NEURONS			: integer 		:= 4;
				NUM_STDP_POST_NEURONS			: integer		:= 2;
				WIDTH_STDP_ADDR_PRE				: integer		:= 2;
				WIDTH_STDP_ADDR_POST			: integer		:= 1
	);
	port (		clk_synapse_unit				: in std_logic;
				rst_synapse_unit				: in std_logic;

				--================
				-- DEBUG
				--================
				dbg_active						: out std_logic;
				dbg_wait2Cal					: out std_logic;
				dbg_ADDR						: out std_logic_vector(SYSTEM_ADDR_WIDTH_SYNAPSE-1 downto 0);
				dbg_weight						: out std_logic_vector(SYNAPSE_WEIGHT_WIDTH-1 downto 0);
				dbg_patchPRE					: out std_logic;
				dbg_patchPOST					: out std_logic;
				--================
				-- Init Synapse (Avalon-MM Slave Interface)
				--================
				-- Interface with Initializer
				-- Patch Download Server's Address
				--avs_fetchSynapse_address : in std_logic_vector()
				avs_initSynapse_waitrequest		: out std_logic;
				avs_initSynapse_write			: in std_logic;
				avs_initSynapse_byteenable		: in std_logic_vector(BYTEENABLE_WIDTH_16-1 downto 0);
				avs_initSynapse_writedata		: in std_logic_vector(SYSTEM_ADDR_WIDTH_SYNAPSE-1 downto 0);		-- TODO: if range exceeds, replace as "0000____" whereas '_'= Real_Data
				avs_initSynapse_response		: out std_logic_vector(1 downto 0);

				-- --================
				-- -- Pull Spike (Avalon-MM Slave Interface)
				-- --================
				-- -- Interface with Upload Server
				-- -- Pull Spike Data[PRE-neuron Interval Time | POST-neuron Interval Time]
				-- --avs_pullSpike_address			: in std_logic_vector();
				avs_pullSpike_waitrequest		: out std_logic;
				avs_pullSpike_write				: in std_logic;
				avs_pullSpike_byteenable		: in std_logic_vector(BYTEENABLE_WIDTH_32-1 downto 0);
				avs_pullSpike_writedata			: in std_logic_vector(SPIKE_DATA_WIDTH-1 downto 0);

				-- --================
				-- -- Push Synapse (Avalon-MM Master Interface)
				-- --================
				avm_pushSynapse_address			: out std_logic_vector(SYSTEM_ADDR_WIDTH_SYNAPSE-1 downto 0);		--TODO: if range exceeds, change this value
				avm_pushSynapse_waitrequest		: in std_logic;
				avm_pushSynapse_write			: out std_logic;
				avm_pushSynapse_writedata		: out std_logic_vector(SYNAPSE_WEIGHT_WIDTH-1 downto 0)			-- TODO: SYNAPSE_WEIGHT? or SYNAPSE_DATA?
		
	);
end entity Synapse_Unit;

architecture rtl of Synapse_Unit is
	component STDP_reg_module
		generic(	REG_CAPACITY_PRE		: integer;
					REG_CAPACITY_POST		: integer;

					REG_ADDR_WIDTH_PRE		: integer;
					REG_ADDR_WIDTH_POST		: integer
		);
		port(		clk_STDP_reg_module		: in std_logic;
					rst_STDP_reg_module		: in std_logic;

					pushPREneuron			: in std_logic;
					-- pushPREneuron_fin		: out std_logic;
					pushPREneuronDATA		: in std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);

					pushPOSTneuron			: in std_logic;
					-- pushPOSTneuron_fin		: out std_logic;
					pushPOSTneuronDATA		: in std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);

					requestWeight			: in std_logic;
					-- popWeight				: out std_logic;
					popWeightDATA			: out std_logic_vector(SYNAPSE_WEIGHT_WIDTH-1 downto 0);

					wait_CAL				: out std_logic
		);
	end component;
	--================
	-- State Variable
	-- --================
	type	state_type_initSYNAPSE is (STATE_IDLE, STATE_INIT, STATE_LOCK);
	signal	stateInitSynapse, stateInitSynapse_next : state_type_initSYNAPSE;

	type	state_type_pullSPIKE is (STATE_IDLE, STATE_PATCH, STATE_WAIT);
	signal	statePullSpike, statePullSpike_next : state_type_pullSPIKE;

	type	state_type_pushSYNAPSE is (STATE_IDLE, STATE_PUSH, STATE_WAIT);
	signal	statePushSynapse, statePushSynapse_next : state_type_pushSYNAPSE;

	-- --================
	-- -- Synapse Internal Reg
	-- --================
	signal	downloadServerAddr			: std_logic_vector(SYSTEM_ADDR_WIDTH_SYNAPSE-1 downto 0);	-- TODO: Check Server Address if this width is right
	signal	activeSynapseModule			: std_logic					:= '0';			-- Flag to check if Active at outer module
	signal	requestDeactivate			: std_logic					:= '0';			-- Request to Terminate module

	signal	spikeCondition				: std_logic					:= '0';
	signal	ready2Push					: std_logic					:= '0';
	signal	wait2Push					: std_logic					:= '0';

	-- --================
	-- -- STDP Signal
	-- --================
	signal STDP_patchPREneuron			: std_logic					:= '0';
	signal STDP_patchPREneuron_DATA		: std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0) := (others => '0');
	signal STDP_patchPOSTneuron			: std_logic					:= '0';
	signal STDP_patchPOSTneuron_DATA	: std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0) := (others => '0');
	-- signal STDP_patchPREneuron_fin			: std_logic					:= '0';
	-- signal STDP_patchPOSTneuron_fin			: std_logic					:= '0';
	signal STDP_wait2Calculate			: std_logic;
	signal STDP_synapseWeight			: std_logic_vector(SYNAPSE_WEIGHT_WIDTH-1 downto 0);

	-- --================
	-- -- Temporary
	-- --================
	signal fetchAddr					: std_logic := '0';
	signal fetchAddr_res				: std_logic := '0';
	-- signal a : std_logic;

begin
	STDP_module: STDP_reg_module
	generic map(	REG_CAPACITY_PRE		=> NUM_STDP_PRE_NEURONS,
					REG_CAPACITY_POST		=> NUM_STDP_POST_NEURONS,

					REG_ADDR_WIDTH_PRE		=> WIDTH_STDP_ADDR_PRE,
					REG_ADDR_WIDTH_POST		=> WIDTH_STDP_ADDR_POST
	)
	port map(		clk_STDP_reg_module		=> clk_synapse_unit,
					rst_STDP_reg_module		=> rst_synapse_unit,
					
					pushPREneuron			=> STDP_patchPREneuron,
					pushPREneuronDATA		=> STDP_patchPREneuron_DATA,

					pushPOSTneuron			=> STDP_patchPOSTneuron,
					pushPOSTneuronDATA		=> STDP_patchPOSTneuron_DATA,

					requestWeight			=> ready2Push,
					-- popWeight				=>
					popWeightDATA			=> STDP_synapseWeight,

					wait_CAL				=> STDP_wait2Calculate

	);


	-- requestDeactivate <= '0';
	STATE_MACHINE:
	process(		clk_synapse_unit, rst_synapse_unit)
	begin
		if rst_synapse_unit = '1' then
			stateInitSynapse <= STATE_IDLE;
			statePullSpike <= STATE_IDLE;
			statePushSynapse <= STATE_IDLE;
		elsif rising_edge(clk_synapse_unit) then
			stateInitSynapse <= stateInitSynapse_next;
			statePullSpike <= statePullSpike_next;
			statePushSynapse <= statePushSynapse_next;
		end if;
	end process;

	INIT_SYNAPSE:
	process(		rst_synapse_unit, requestDeactivate,
					stateInitSynapse, activeSynapseModule,
					fetchAddr_res,
					avs_initSynapse_write, avs_initSynapse_byteenable, avs_initSynapse_writedata)
	begin
		if rst_synapse_unit = '1' then
			stateInitSynapse_next <= STATE_IDLE;

			-- avs_initSynapse_waitrequest <= '0';
			-- avs_initSynapse_response <= "00";
			activeSynapseModule <= '0';
			-- downloadServerAddr <= (others => '0');
			--
			fetchAddr <= '0';
		else
			case stateInitSynapse is
				when STATE_IDLE =>
					-- activeSynapseModule <= '0';
					-- downloadServerAddr <= (others => '0');
					-- avs_initSynapse_waitrequest <= '0';
					-- avs_initSynapse_response <= "00";

					--
					-- fetchAddr <= '0';

					if avs_initSynapse_write = '1' then
						fetchAddr <= '1';
						avs_initSynapse_waitrequest <= '1';
						stateInitSynapse_next <= STATE_INIT;
					else
						fetchAddr <= '0';
						avs_initSynapse_waitrequest <= '0';
						stateInitSynapse_next <= STATE_IDLE;
					end if;

				when STATE_INIT =>
					-- TODO: Check After Server Build!!	=> use byteenable??
					-- downloadServerAddr <= avs_initSynapse_writedata;

					--
					-- if fetchAddr_res = '1' then
						fetchAddr <= '0';
						avs_initSynapse_response <= "00";
						avs_initSynapse_waitrequest <= '0';
						stateInitSynapse_next <= STATE_LOCK;
						activeSynapseModule <= '1';
					-- else
					-- 	fetchAddr <= '1';
					-- 	avs_initSynapse_response <= "01";
					-- 	avs_initSynapse_waitrequest <= '1';
					-- 	stateInitSynapse_next <= STATE_IDLE;
					-- 	activeSynapseModule <= '0';
					-- end if;
				
				when STATE_LOCK =>
					avs_initSynapse_response <= "XX";
					
					--
					fetchAddr <= '0';
					activeSynapseModule <= '1';
					if requestDeactivate = '1' then
						stateInitSynapse_next <= STATE_IDLE;
					else
						stateInitSynapse_next <= STATE_LOCK;
					end if;
			end case;
		end if;
		-- dbg_active <= activeSynapseModule;
	end process;

	FETCH_ADDR:
	process(		clk_synapse_unit, rst_synapse_unit, requestDeactivate,
					fetchAddr, downloadServerAddr,
					avs_initSynapse_writedata
	)
	begin
		if rst_synapse_unit = '1' or requestDeactivate = '1' then
			downloadServerAddr <= (others => '0');
			fetchAddr_res <= '0';
		else
			if fetchAddr = '1' then
				downloadServerAddr <= avs_initSynapse_writedata;
				fetchAddr_res <= '1';
			else
				downloadServerAddr <= downloadServerAddr;
				fetchAddr_res <= '0';
			end if;
		end if;
	end process;


	PULL_SPIKE:
	process(		rst_synapse_unit,
					avs_pullSpike_write, avs_pullSpike_byteenable, avs_pullSpike_writedata,
					STDP_wait2Calculate, wait2Push
	)
	begin
		if rst_synapse_unit = '1' then
			statePullSpike_next <= STATE_IDLE;
			STDP_patchPREneuron <= '0';
			STDP_patchPOSTneuron <= '0';
			STDP_patchPREneuron_DATA <= (others => '0');
			STDP_patchPOSTneuron_DATA <= (others => '0');

			spikeCondition <= '0';
			-- ready2Push <= '0';
		else
			case statePullSpike is
				when STATE_IDLE =>
					spikeCondition <= '0';
					STDP_patchPREneuron <= '0';
					STDP_patchPOSTneuron <= '0';
					-- STDP_patchPREneuron_DATA <= (others => '0');
					-- STDP_patchPOSTneuron_DATA <= (others => '0');

					-- avs_pullSpike_waitrequest <= '0';

					if avs_pullSpike_write = '1' then
						avs_pullSpike_waitrequest <= '1';
						statePullSpike_next <= STATE_PATCH;
					else
						avs_pullSpike_waitrequest <= '0';
						statePullSpike_next <= STATE_IDLE;
					end if;

				when STATE_PATCH =>
					case avs_pullSpike_byteenable is
						when "1100" =>
						-- Receive PRE neuron 
							STDP_patchPREneuron_DATA <= avs_pullSpike_writedata(SPIKE_DATA_WIDTH-1 downto SPIKE_DATA_WIDTH - INTERVAL_TIME_WIDTH);
							STDP_patchPREneuron <= '1';
							spikeCondition <= '1';

							statePullSpike_next <= STATE_WAIT;
							avs_pullSpike_waitrequest <= '0';

						when "0011" =>
						-- Reveice POST neuron
							STDP_patchPOSTneuron_DATA <= avs_pullSpike_writedata(INTERVAL_TIME_WIDTH-1 downto 0);
							STDP_patchPOSTneuron <= '1';
							spikeCondition <= '0';

							statePullSpike_next <= STATE_WAIT;
							avs_pullSpike_waitrequest <= '0';

						when "1111" =>
							STDP_patchPREneuron_DATA <= avs_pullSpike_writedata(SPIKE_DATA_WIDTH-1 downto SPIKE_DATA_WIDTH - INTERVAL_TIME_WIDTH);
							STDP_patchPREneuron <= '1';
							spikeCondition <= '1';

							STDP_patchPOSTneuron_DATA <= avs_pullSpike_writedata(INTERVAL_TIME_WIDTH-1 downto 0);
							STDP_patchPOSTneuron <= '1';

							statePullSpike_next <= STATE_WAIT;
							avs_pullSpike_waitrequest <= '0';
						
						when others =>
							STDP_patchPREneuron <= '0';
							STDP_patchPOSTneuron <= '0';
							STDP_patchPREneuron_DATA <= (others => '0');
							STDP_patchPOSTneuron_DATA <= (others => '0');
							spikeCondition <= '0';

							statePullSpike_next <= STATE_IDLE;
							avs_pullSpike_waitrequest <= '0';
					end case;

				when STATE_WAIT =>
					STDP_patchPREneuron <= '0';
					STDP_patchPOSTneuron <= '0';
					if STDP_wait2Calculate = '1' or wait2Push = '1' then
						statePullSpike_next <= STATE_WAIT;
					else
						statePullSpike_next <= STATE_IDLE;
					end if;

			end case;
		end if;
	end process;

	PUSH_SYNAPSE:
	process(		rst_synapse_unit,
					avm_pushSynapse_waitrequest,
					spikeCondition)
	begin
		if rst_synapse_unit = '1' then
			statePushSynapse_next <= STATE_IDLE;
			avm_pushSynapse_address <= (others => '0');
			avm_pushSynapse_write <= '0';
			avm_pushSynapse_writedata <= (others => '0');

			ready2Push <= '1';
			wait2Push <= '0';

		else
			case statePushSynapse is
				when STATE_IDLE =>
					avm_pushSynapse_address <= (others => '0');
					avm_pushSynapse_write <= '0';
					avm_pushSynapse_writedata <= (others => '0');

					ready2Push <= '1';
					wait2Push <= '0';

					-- if spikeCondition ='1' and STDP_wait2Calculate = '0' then
					if spikeCondition = '1' then
						ready2Push <= '1';
						statePushSynapse_next <= STATE_PUSH;
					else
						ready2Push <= '1';
						statePushSynapse_next <= STATE_IDLE;
					end if;


				when STATE_PUSH =>
					if STDP_wait2Calculate = '1' then
						avm_pushSynapse_write <= '0';
						statePushSynapse_next <= STATE_PUSH;
					else
						ready2Push <= '1';
						avm_pushSynapse_address <= downloadServerAddr;
						avm_pushSynapse_write <= '1';
						avm_pushSynapse_writedata <= STDP_synapseWeight;
						if avm_pushSynapse_waitrequest = '1' then
							wait2Push <= '1';
							statePushSynapse_next <= STATE_WAIT;
						else
							wait2Push <= '0';
							statePushSynapse_next <= STATE_IDLE;
						end if;
					end if;

				when STATE_WAIT =>
					if avm_pushSynapse_waitrequest = '1' then
						wait2Push <= '1';
						statePushSynapse_next <= STATE_WAIT;
					else
						wait2Push <= '0';
						statePushSynapse_next <= STATE_IDLE;
					end if;
			end case;
		end if;
	end process;

	-- --================
	-- -- =DEBUG=
	-- --================
	

	dbg_active <= activeSynapseModule;
	dbg_ADDR <= downloadServerAddr;
	dbg_wait2Cal <= STDP_wait2Calculate;
	dbg_weight <= STDP_synapseWeight;
	dbg_patchPRE <= STDP_patchPREneuron;
	dbg_patchPOST <= STDP_patchPOSTneuron;
end architecture rtl;