library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use IEEE.fixed_float_types.all;
use IEEE.fixed_pkg.all;

-- TODO: in STDP_REG -> add response signals

entity synapse_module is
	generic(	--variables for port
				-- common variables (for port)
				BYTEENABLE_WIDTH : integer := 4;

				-- fetch
				FETCH_ADDR_WIDTH : integer := 2;			-- pre-neuron / post-neuron / synapse-weight
				FETCH_DATA_WIDTH : integer := 16;
				
				-- receive pre/post neurons
				POST_NEURON_ADDR_WIDTH : integer := 32;
				WEIGHT_WIDTH : integer := 10;
				AXONAL_DELAY_WIDTH : integer := 10;
				SYNAPSE_DATA_WIDTH : integer := 32; -- WEIGHT_WIDTH+DELAY_TIME_WIDTH;
				-- SYNAPSE_DATA_WIDTH : integer := 16;

				-- push synapse
				SPIKE_ADDR_WIDTH : integer := 32;
				SPIKE_DATA_WIDTH : integer := 32;
				---------------------------------------
				-- variables for internal signals
				-- Neuron Properties
				INTERVAL_TIME_WIDTH : integer := 10;
				INTERVAL_TIME_REAL : integer := 5;
				INTERVAL_TIME_IMG : integer := 5;

				SYNAPSE_WEIGHT_WIDTH : integer := 16;
				SYNAPSE_WEIGHT_REAL : integer := 8;
				SYNAPSE_WEIGHT_IMG : integer := 8;

				-- STDP
				NUM_STDP_PRE_NEURONS : integer := 4;
				NUM_STDP_POST_NEURONS : integer := 2

	);
	port (		clk : in std_logic;
				rst : in std_logic;

				-- Avalon-MM Slave interface
				-- interface with Initializer 
				-- => set Synapse Info (including target(post) Neuron Info and Synapse Weight)
				avs_fetchSynapse_address : in std_logic_vector(FETCH_ADDR_WIDTH-1 downto 0);
				avs_fetchSynapse_waitrequest : out std_logic;
				avs_fetchSynapse_write : in std_logic;
				avs_fetchSynapse_writedata : in std_logic_vector(FETCH_DATA_WIDTH-1 downto 0);
				avs_fetchSynapse_response : out std_logic_vector(1 downto 0);
				-- DEBUG
				-- dbg_response : out std_logic;
				-- dbg_synapseWeight : out std_logic_vector(FETCH_DATA_WIDTH-1 downto 0);


				-- Avalon-MM Slave interface
				-- interface with Upload Server
				-- => receives pulled Spikes from pre-neuron/post-neuron
				avs_pullSpike_address : in std_logic_vector(SPIKE_ADDR_WIDTH-1 downto 0);
				avs_pullSpike_waitrequest : out std_logic;
				avs_pullSpike_byteenable : in std_logic_vector(BYTEENABLE_WIDTH-1 downto 0);
				avs_pullSpike_write : in std_logic;
				avs_pullSpike_writedata : in std_logic_vector(SPIKE_DATA_WIDTH-1 downto 0);
				-- DEBUG
				dbg_arxivPRE0 : out std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);
				dbg_arxivPRE1 : out std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);
				dbg_arxivPOST0 : out std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);
				dbg_arxivPOST1 : out std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);


				-- -- Avalon-MM Master interface
				-- -- interface with Download Server
				-- -- => tranfer synapse to post-neuron
				avm_pushSynapse_address : out std_logic_vector(POST_NEURON_ADDR_WIDTH-1 downto 0);
				avm_pushSynapse_waitrequest : in std_logic;
				avm_pushSynapse_byteenable : out std_logic_vector(BYTEENABLE_WIDTH-1 downto 0);
				avm_pushSynapse_write: out std_logic;
				-- avm_pushSynapse_writedata: out std_logic_vector(SYNAPSE_DATA_WIDTH-1 downto 0)
				avm_pushSynapse_writedata: out std_logic_vector(SYNAPSE_WEIGHT_WIDTH-1 downto 0);
				-- TODO: push Synapse Data structure???
				-- DEBUG
				dbg_deltaidx : out std_logic_vector(31 downto 0);
				dbg_full_idx : out std_logic_vector(31 downto 0);
				dbg_stack : out std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);
				dbg_synapsedelta : out std_logic_vector(SYNAPSE_WEIGHT_WIDTH-1 downto 0)
		
	);
end entity synapse_module;

architecture rtl of synapse_module is

	component shift_reg_post_add
		generic(	SHIFT_CAP_PRE : integer;
					SHIFT_CAP_POST : integer;
					DATA_WID : integer;
					ADDR_WID : integer;
					REAL_WID : integer;
					IMG_WID : integer;
		);
		port(		sys_clk : in std_logic;
					sys_rst : in std_logic;

					-- for PRE neuron

					STDP_patchPREneuron : in std_logic;
					STDP_patchPOSTneuron : in std_logic;
					STDP_DATAIN_PRE_FIFO : in std_logic_vector(DATA_WID-1 downto 0);
					STDP_DATAIN_POST_FIFO : in std_logic_vector(DATA_WID-1 downto 0);
					

					synapsePush : in std_logic;
					STDP_OUT : out std_logic_vector(DATA_WID-1 downto 0)

		);
	end component;

	-- State variables
	type state_type_FETCH is (STATE_IDLE, STATE_FETCH, STATE_LOCK);
	signal stateFetch, stateFetch_next : state_type_FETCH;

	type state_type_pullSPIKE is (STATE_IDLE, STATE_PATCH, STATE_WAIT);
	signal statePullSpike, statePullSpike_next : state_type_pullSPIKE;

	type state_type_pushSYNAPSE is (STATE_IDLE, STATE_PUSH, STATE_WAIT);
	signal statePushSynapse , statePushSynapse_next : state_type_pushSYNAPSE;
	-----------------------
	-- STDP
	-- type STDP_PRE_NEURON_FIFO is array (integer range 0 to NUM_STDP_PRE_NEURONS-1) of sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG);
	type STDP_PRE_NEURON_FIFO is array (integer range 0 to NUM_STDP_PRE_NEURONS-1) of std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);
	signal STDP_arxivPREneuron_FIFO : STDP_PRE_NEURON_FIFO;

	signal STDP_addrPRE_FIFO : integer range 0 to NUM_STDP_PRE_NEURONS := 0;
	-- signal STDP_DATAIN_PRE_FIFO : sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG);
	signal STDP_DATAIN_PRE_FIFO : std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);
	signal STDP_fetchPREneuron : std_logic := '0';
	signal STDP_arxivPREshift : std_logic := '0';
	signal STDP_arxivPREshift_fin : std_logic := '0';
	signal STDP_patchPREneuron : std_logic := '0';
	signal STDP_patchPREneuron_fin : std_logic := '0';
	-- signal STDP_EN_arxivPREneuron_FIFO : std_logic := '0';

	-- type STDP_POST_NEURON_FIFO is array (integer range 0 to NUM_STDP_POST_NEURONS-1) of sfixed(INTERVAL_TIME_REAL downto -INTERVAL_TIME_IMG);
	type STDP_POST_NEURON_FIFO is array (integer range 0 to NUM_STDP_POST_NEURONS-1) of std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);
	signal STDP_arxivPOSTneuron_FIFO : STDP_POST_NEURON_FIFO;	--TODO: problem with fixed point + (Line 325)

	signal STDP_addrPOST_FIFO : integer range 0 to NUM_STDP_POST_NEURONS := 0;
	-- signal STDP_DATAIN_POST_FIFO : sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG);
	signal STDP_DATAIN_POST_FIFO : std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);
	signal STDP_arxivPOSTfull_FIFO : integer := 0;
	signal STDP_fetchPOSTneuron : std_logic := '0';
	signal STDP_arxivPOSTshift : std_logic := '0';
	signal STDP_arxivPOSTshift_fin : std_logic := '0';
	signal STDP_patchPOSTneuron : std_logic := '0';
	signal STDP_patchPOSTneuron_fin : std_logic := '0';
	-- signal STDP_EN_arxivPOSTneuron_FIFO : std_logic := '0';

	-- calculating STDP
	signal STDP_calculate : std_logic := '0';
	signal STDP_calculate_fin : std_logic := '0';
	type INTERVAL_DELTA_REG is array (integer range 0 to NUM_STDP_PRE_NEURONS*NUM_STDP_POST_NEURONS-1) of sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG);
	signal intervalTimeDelta_Stack : INTERVAL_DELTA_REG;
	signal iTimeDeltaidx : integer := 0;

	signal synapseDelta : sfixed(SYNAPSE_WEIGHT_REAL-1 downto -SYNAPSE_WEIGHT_IMG);		--  Synapse OutPut
	--------------------------
	-- SYNAPSE VALUE
	signal rstSynapse : std_logic := '0';
	signal synapseWeight : sfixed(SYNAPSE_WEIGHT_REAL-1 downto -SYNAPSE_WEIGHT_IMG);	-- Synapse Weight Value;
	signal synapseFetchResponse : std_logic := '0';
	signal synapseFetch : std_logic := '0';		-- flag to fetch synapse value (initial fetch from initializer)
	signal synapseWrite : std_logic := '0';		-- flag to write synapse value
	signal synapsePush : std_logic := '0';		-- flag to push synapse value to upload server
	signal synapsePush_fin : std_logic := '0';	-- flag finished push synapse value to upload server




begin
	STDP_REG: shift_reg_post_add
	generic map(	SHIFT_CAP_PRE => NUM_STDP_PRE_NEURONS;
					SHIFT_CAP_POST => NUM_STDP_POST_NEURONS;
					DATA_WID => INTERVAL_TIME_WIDTH;
					ADDR_WID => 3;
					REAL_WID => INTERVAL_TIME_REAL;
					IMG_WID => INTERVAL_TIME_IMG;
	)
	port map(		sys_clk => clk;
					sys_rst => rst;

					-- for PRE neuron

					STDP_patchPREneuron => STDP_patchPREneuron;
					STDP_patchPOSTneuron => STDP_patchPOSTneuron;
					STDP_DATAIN_PRE_FIFO => STDP_DATAIN_PRE_FIFO;
					STDP_DATAIN_POST_FIFO => STDP_DATAIN_POST_FIFO;
					

					synapsePush => synapsePush;
					STDP_OUT => synapseDelta

	);


	STATE_MACHINE:
	process (clk, rst)
	begin 
		if rst = '1' then
			stateFetch <= STATE_IDLE;
			statePullSpike <= STATE_IDLE;
			statePushSynapse <= STATE_IDLE;
		elsif rising_edge(clk) then
			stateFetch <= stateFetch_next;
			statePullSpike <= statePullSpike_next;
			statePushSynapse <= statePushSynapse_next;
		end if;
	end process;

	INITIAL_FETCH:
	process (	rst, rstSynapse, stateFetch,
				synapseFetchResponse,
				avs_fetchSynapse_address, avs_fetchSynapse_write, avs_fetchSynapse_writedata)
	begin
		if rst = '1' then
			-- state init
			stateFetch_next <= STATE_IDLE;
			-- port init
			avs_fetchSynapse_waitrequest <= 'X';
			avs_fetchSynapse_response <= "XX";
			-- internal value init
			synapseFetch <= '0';
			

		else
			case stateFetch is
				when STATE_IDLE =>
					if (avs_fetchSynapse_write = '1') then
						synapseFetch <= '1';
						avs_fetchSynapse_waitrequest <= '1';
						stateFetch_next <= STATE_FETCH;
					else
						synapseFetch <= '0';
						avs_fetchSynapse_waitrequest <= '0';
						stateFetch_next <= STATE_IDLE;
					end if;

				when STATE_FETCH =>
					if synapseFetchResponse = '1' then
						-- success to store Synapse Weight => STATE_LOCK (don't fetch while functioning)
						synapseFetch <='0';
						avs_fetchSynapse_response <= "00";
						avs_fetchSynapse_waitrequest <= '0';
						stateFetch_next <= STATE_LOCK;
					else
						-- fail to store Synapse Weight => STATE_IDLE (try to receive init values again)
						avs_fetchSynapse_response <= "10";
						avs_fetchSynapse_waitrequest <= '1';
						stateFetch_next <= STATE_IDLE;
					end if;

				when STATE_LOCK =>					-- wait until synapse module is shut-down
					if rstSynapse = '1' then
						stateFetch_next <= STATE_IDLE;
					else
						stateFetch_next <= STATE_LOCK;
					end if;
			end case;
		end if;
	end process;

	PULL_SPIKE:
	process(	rst, statePullSpike,
				STDP_patchPREneuron_fin, STDP_patchPOSTneuron_fin, STDP_arxivPREshift_fin, STDP_arxivPOSTshift_fin,
				avs_pullSpike_address, avs_pullSpike_byteenable, avs_pullSpike_write, avs_pullSpike_writedata)
	begin
		if rst = '1' then
			STDP_patchPREneuron <= '0';
			STDP_arxivPREshift <= '0';
			STDP_patchPOSTneuron <= '0';
			STDP_arxivPOSTshift <= '0';
			statePullSpike_next <= STATE_IDLE;
		else
			case statePullSpike is
				when STATE_IDLE =>
					synapsePush <= '0';
					if avs_pullSpike_write = '1' then
						avs_pullSpike_waitrequest <= '1';
						statePullSpike_next <= STATE_PATCH;
					else
						avs_pullSpike_waitrequest <= '0';
						statePullSpike_next <= STATE_IDLE;
					end if;

				when STATE_PATCH => 
					case avs_pullSpike_byteenable is	-- patch STDP with Spike's Info (Interval time between SPIKEs)
						when "1100" =>					-- "1100" : pre-neuron
							-- STDP_DATAIN_PRE_FIFO <= to_sfixed(avs_pullSpike_writedata(SPIKE_DATA_WIDTH-1 downto SPIKE_DATA_WIDTH-INTERVAL_TIME_WIDTH), INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG);
							STDP_DATAIN_PRE_FIFO <= avs_pullSpike_writedata(SPIKE_DATA_WIDTH-1 downto SPIKE_DATA_WIDTH-INTERVAL_TIME_WIDTH);
							
							STDP_patchPREneuron <= '1';
							statePullSpike_next <= STATE_IDLE;
							-- STDP_arxivPREshift <= '1';
							-- if STDP_arxivPREshift_fin = '1' then
							-- 	STDP_arxivPREshift <= '0';
							-- 	STDP_patchPREneuron <= '1';
							-- else
							-- 	STDP_arxivPREshift <= '1';
							-- 	STDP_patchPREneuron <= '0';
							-- end if;

							-- if STDP_patchPREneuron_fin = '1' then	-- when stored -> push Synapse
							-- 	avs_pullSpike_waitrequest <= '0';
							-- 	statePullSpike_next <= STATE_WAIT;
							-- else
							-- 	statePullSpike_next <= STATE_PATCH;
							-- end if;

						when "0011" =>					-- "0011" : post-neuron
							-- STDP_DATAIN_POST_FIFO <= to_sfixed(avs_pullSpike_writedata(INTERVAL_TIME_WIDTH-1 downto 0), INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG);
							STDP_DATAIN_POST_FIFO <= avs_pullSpike_writedata(INTERVAL_TIME_WIDTH-1 downto 0);
							
							STDP_patchPOSTneuron <= '1';
							statePullSpike_next <= STATE_WAIT;
							-- STDP_arxivPOSTshift <= '1';
							-- if STDP_arxivPOSTshift_fin = '1' then
							-- 	STDP_arxivPOSTshift <= '0';
							-- 	STDP_patchPOSTneuron <= '1';
							-- else
							-- 	STDP_arxivPOSTshift <= '1';
							-- 	STDP_patchPOSTneuron <= '0';
							-- end if;

							-- if STDP_patchPOSTneuron_fin = '1' then	-- when stored -> push Synapse
							-- 	avs_pullSpike_waitrequest <= '0';
							-- 	statePullSpike_next <= STATE_WAIT;
							-- else
							-- 	statePullSpike_next <= STATE_PATCH;
							-- end if;

						when "1111" =>					-- "1111": pre-neuron&post-neuron
							-- STDP_DATAIN_PRE_FIFO <= to_sfixed(avs_pullSpike_writedata(SPIKE_DATA_WIDTH-1 downto SPIKE_DATA_WIDTH-INTERVAL_TIME_WIDTH), INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG);
							-- STDP_DATAIN_POST_FIFO <= to_sfixed(avs_pullSpike_writedata(INTERVAL_TIME_WIDTH-1 downto 0), INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG);
							STDP_DATAIN_PRE_FIFO <= avs_pullSpike_writedata(SPIKE_DATA_WIDTH-1 downto SPIKE_DATA_WIDTH-INTERVAL_TIME_WIDTH);
							STDP_DATAIN_POST_FIFO <= avs_pullSpike_writedata(INTERVAL_TIME_WIDTH-1 downto 0);

							STDP_patchPREneuron <= '1';
							STDP_patchPOSTneuron <= '1';
							statePullSpike_next <= STATE_WAIT;
							-- STDP_arxivPREshift <= '1';
							-- if STDP_arxivPREshift_fin = '1' then
							-- 	STDP_arxivPREshift <= '0';
							-- 	STDP_patchPREneuron <= '1';
							-- else
							-- 	STDP_arxivPREshift <= '1';
							-- 	STDP_patchPREneuron <= '0';
							-- end if;

							-- STDP_arxivPOSTshift <= '1';
							-- if STDP_arxivPOSTshift_fin = '1' then
							-- 	STDP_arxivPOSTshift <= '0';
							-- 	STDP_patchPOSTneuron <= '1';
							-- else
							-- 	STDP_arxivPOSTshift <= '1';
							-- 	STDP_patchPOSTneuron <= '0';
							-- end if;


							-- if STDP_patchPREneuron_fin = '1' and STDP_patchPOSTneuron_fin = '1' then	-- when stored -> push Synapse
							-- 	avs_pullSpike_waitrequest <= '0';
							-- 	statePullSpike_next <= STATE_WAIT;
							-- else
							-- 	statePullSpike_next <= STATE_PATCH;
							-- end if;

						when others =>
							STDP_DATAIN_PRE_FIFO <= (others => '0');
							STDP_DATAIN_POST_FIFO <= (others => '0');
							STDP_arxivPREshift <= '0';
							STDP_arxivPOSTshift <= '0';
							STDP_patchPREneuron <= '0';
							STDP_patchPOSTneuron <= '0';
							statePullSpike_next <= STATE_IDLE;
					end case;

				when STATE_WAIT =>			-- Wait until push Synapse Weight successfully
					synapsePush <= '1';
					-- if synapsePush_fin = '1' then
						statePullSpike_next <= STATE_IDLE;
					-- else
					-- 	statePullSpike_next <= STATE_WAIT;
					-- end if;
			end case;
		end if;
	end process;
	
	SYNAPSE_WEIGHT:
	process(	rst, rstSynapse,
				synapseFetch, synapseWrite,
				avs_fetchSynapse_writedata
	)
	begin
		if rst = '1' or rstSynapse = '1' then
			-- Latch Init
			synapseWeight <= (others => '0');
			synapseFetchResponse <= '0';
		else
			if synapseFetch = '1' and synapseWrite = '0' then
				-- Fetch Synapse Weight from Initializer
				synapseWeight <= to_sfixed(avs_fetchSynapse_writedata, SYNAPSE_WEIGHT_REAL-1, -SYNAPSE_WEIGHT_IMG);
				synapseFetchResponse <= '1';
			else
				if synapseFetchResponse /= '1' then
					synapseFetchResponse <= '0';
				end if;
			end if;
		end if;
	end process;


	-- -- STDP_EN_arxivPREneuron_FIFO = STDP_fetchPREneuron xor STDP_patchPREneuron;
	-- -- STDP_EN_arxivPOSTneuron_FIFO = STDP_fetchPOSTneuron xor STDP_patchPOSTneuron;
	-- STDP_FIFO:
	-- process(	rst, rstSynapse,
	-- 			STDP_arxivPREneuron_FIFO, STDP_arxivPOSTneuron_FIFO,
	-- 			STDP_DATAIN_PRE_FIFO, STDP_DATAIN_POST_FIFO,
	-- 			STDP_arxivPREshift, STDP_arxivPOSTshift,
	-- 			STDP_arxivPOSTfull_FIFO,
	-- 			STDP_fetchPREneuron, STDP_patchPREneuron, 
	-- 			STDP_fetchPOSTneuron, STDP_patchPOSTneuron)

	-- 			variable STDP_arxivPOSTfullIDX_FIFO : integer := 0;
	-- 			variable STDP_tempPOSToriginal : sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG);
	-- 			variable STDP_tempPOSTdatain : sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG);
	-- 			variable STDP_tempPOSTsfixed : sfixed(INTERVAL_TIME_REAL downto -INTERVAL_TIME_IMG);
	-- begin
	-- 	-- TODO: if Delta exceeds the MIN-MAX range, then assert rstSynapse 
	-- 	if rst = '1' or rstSynapse = '1' then
	-- 		-- latch init
	-- 		for initPREidx in 0 to NUM_STDP_PRE_NEURONS-1 loop
	-- 			STDP_arxivPREneuron_FIFO(initPREidx) <= (others => '0');
	-- 		end loop;
	-- 		for initPOSTidx in 0 to NUM_STDP_POST_NEURONS-1 loop
	-- 			STDP_arxivPOSTneuron_FIFO(initPOSTidx) <= (others => '0');
	-- 		end loop;
	-- 		-- Variable init
	-- 		STDP_arxivPOSTfullIDX_FIFO := 0;

	-- 		STDP_arxivPREshift_fin <= '0';
	-- 		STDP_arxivPOSTshift_fin <= '0';
	-- 		STDP_patchPREneuron_fin <= '0';
	-- 		STDP_patchPOSTneuron_fin <= '0';
	-- 	elsif falling_edge(clk) then
	-- 		-- PRE neuron
	-- 		-- SHIFT
	-- 		for PREidx in 0 to (NUM_STDP_PRE_NEURONS-1)-1 loop	-- simply shift due to insert new interval
	-- 			if STDP_arxivPREshift = '1' then
	-- 				STDP_arxivPREneuron_FIFO(PREidx+1) <= STDP_arxivPREneuron_FIFO(PREidx);
	-- 				-- STDP_arxivPREshift_fin <= '1';
	-- 			else
	-- 				STDP_arxivPREneuron_FIFO(PREidx) <= STDP_arxivPREneuron_FIFO(PREidx);
	-- 				-- STDP_arxivPREshift_fin <= '0';
	-- 			end if;
	-- 		end loop;
	-- 		STDP_arxivPREshift_fin <= '1';
	-- 		-- PATCH
	-- 		if STDP_patchPREneuron = '1' then
	-- 			STDP_arxivPREneuron_FIFO(0) <= STDP_DATAIN_PRE_FIFO;	-- simply add Interval to latest arxiv
	-- 			STDP_patchPREneuron_fin <= '1';
	-- 		else 
	-- 			STDP_arxivPREneuron_FIFO(0) <= STDP_arxivPREneuron_FIFO(0);
	-- 			STDP_patchPREneuron_fin <= '0';
	-- 		end if;

	-- 		-- POST neuron
	-- 		for POSTidx in 0 to (NUM_STDP_POST_NEURONS-1)-1 loop
	-- 			if STDP_arxivPOSTshift = '1' then
	-- 				STDP_arxivPOSTneuron_FIFO(POSTidx+1) <= STDP_arxivPOSTneuron_FIFO(POSTidx);
	-- 				-- STDP_arxivPOSTshift_fin <= '1';
	-- 			else
	-- 				STDP_arxivPOSTneuron_FIFO(POSTidx) <= STDP_arxivPOSTneuron_FIFO(POSTidx);
	-- 				-- STDP_arxivPOSTshift_fin <= '0';
	-- 			end if;
	-- 		end loop;
	-- 		STDP_arxivPOSTshift_fin <= '1';
	-- 		if STDP_patchPOSTneuron = '1' then
	-- 			STDP_arxivPOSTfull_FIFO <= STDP_arxivPOSTfull_FIFO + 1;	
	-- 			-- STDP_arxivPOSTneuron_FIFO(0) <= '0' & STDP_DATAIN_POST_FIFO;	-- simply add interval to latest arxiv ()
	-- 			STDP_arxivPOSTneuron_FIFO(0) <= STDP_DATAIN_POST_FIFO;	-- simply add interval to latest arxiv ()
	-- 			for POSTidx in 1 to (NUM_STDP_POST_NEURONS-1) loop	-- adjust all POSTneuron's timeline
	-- 				if POSTidx <= STDP_arxivPOSTfull_FIFO then
	-- 					STDP_tempPOSToriginal := to_sfixed(STDP_arxivPOSTneuron_FIFO(POSTidx), INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG);
	-- 					STDP_tempPOSTdatain := to_sfixed(STDP_DATAIN_POST_FIFO, INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG);
	-- 					STDP_tempPOSTsfixed := STDP_tempPOSToriginal + STDP_tempPOSTdatain;
	-- 					STDP_arxivPOSTneuron_FIFO(POSTidx) <= std_logic_vector(STDP_tempPOSTsfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG));
	-- 					-- STDP_arxivPOSTneuron_FIFO(POSTidx) <= STDP_arxivPOSTneuron_FIFO(POSTidx)(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG) + STDP_DATAIN_POST_FIFO;
	-- 				end if;
	-- 			end loop;
	-- 			STDP_patchPOSTneuron_fin <= '1';
	-- 		else
	-- 			STDP_arxivPOSTfull_FIFO <= STDP_arxivPOSTfull_FIFO;
	-- 			STDP_arxivPOSTneuron_FIFO(0) <= STDP_arxivPOSTneuron_FIFO(0);
	-- 			for POSTidx in 0 to (NUM_STDP_POST_NEURONS-1)-1 loop	-- simply shift due to insert new interval
	-- 				STDP_arxivPOSTneuron_FIFO(POSTidx) <= STDP_arxivPOSTneuron_FIFO(POSTidx);
	-- 			end loop;
	-- 			STDP_patchPOSTneuron_fin <= '0';
	-- 		end if;
	-- 	end if;
	-- end process;

	PUSH_SYNAPSE:
	process(	rst,
				avm_pushSynapse_waitrequest)
		variable STDP_tempPREdata : sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG);
		variable STDP_tempPOSTdata : sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG);
		variable STDP_tempsfixed : sfixed(INTERVAL_TIME_REAL downto -INTERVAL_TIME_IMG);
	begin
		if rst = '1' or rstSynapse = '1' then
			statePushSynapse_next <= STATE_IDLE;
			avm_pushSynapse_write <= '0';
			avm_pushSynapse_writedata <= (others => '0');

			-------- ADDITION
			for ITDidx in 0 to NUM_STDP_PRE_NEURONS*NUM_STDP_POST_NEURONS-1 loop
				intervalTimeDelta_Stack(ITDidx) <= (others => '0');
			end loop;
			synapseDelta <= (others => '0');
			iTimeDeltaidx <= 0;
			-----------------
		else
			case statePushSynapse is
				when STATE_IDLE =>
				if synapsePush = '1' then
					for POSTidx in 0 to NUM_STDP_POST_NEURONS-1 loop
						-- if POSTidx <= STDP_arxivPOSTfull_FIFO then			-- within MAX_stored POST neuron Interval
							for PREidx in 0 to NUM_STDP_PRE_NEURONS-1 loop
								STDP_tempPREdata := to_sfixed(STDP_arxivPREneuron_FIFO(PREidx), INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG);
								STDP_tempPOSTdata := to_sfixed(STDP_arxivPOSTneuron_FIFO(POSTidx), INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG);
								STDP_tempsfixed := STDP_tempPREdata - STDP_tempPOSTdata;
								intervalTimeDelta_Stack(iTimeDeltaidx) <= STDP_tempsfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG);
								-- intervalTimeDelta_Stack(iTimeDeltaidx) <= STDP_arxivPREneuron_FIFO(PREidx)-STDP_arxivPOSTneuron_FIFO(POSTidx);
								iTimeDeltaidx <= iTimeDeltaidx + 1;
							end loop;
						-- end if;
					end loop;

					-- TODO: calculate LTP or LTD
					for iTDidx in 0 to NUM_STDP_PRE_NEURONS*NUM_STDP_POST_NEURONS-1 loop
						-- temporary code
						-- TODO: must pass by exp() function
						synapseDelta <= synapseDelta(SYNAPSE_WEIGHT_REAL-2 downto -SYNAPSE_WEIGHT_IMG) + (intervalTimeDelta_Stack(iTDidx));
					end loop;
					statePushSynapse_next <= STATE_PUSH;
				else
					synapsePush_fin <= '0';
					statePushSynapse_next <= STATE_IDLE;
				end if;


				----------------- ORIGINAL CODE---------------------
					-- avm_pushSynapse_write <= '0';
					-- avm_pushSynapse_writedata <= (others => '0');
					-- if synapsePush = '1' then
					-- 	STDP_calculate <= '1';
					-- else
					-- 	STDP_calculate <= '0';
					-- end if;

					-- if STDP_calculate_fin = '1' then
					-- 	statePushSynapse_next <= STATE_PUSH;
					-- else
					-- 	statePushSynapse_next <= STATE_IDLE;
					-- end if;

				when  STATE_PUSH =>
					if avm_pushSynapse_waitrequest = '1' then
						statePushSynapse_next <= STATE_WAIT;
					else
						avm_pushSynapse_write <= '1';
						avm_pushSynapse_writedata <= std_logic_vector(synapseDelta);

						synapsePush_fin <= '1';
						statePushSynapse_next <= STATE_IDLE;
					end if;

				when STATE_WAIT =>
					if avm_pushSynapse_waitrequest = '0' then
						statePushSynapse_next <= STATE_PUSH;
					else
						statePushSynapse_next <= STATE_PUSH;
					end if;
			end case;
		end if;
	end process;

	-- CALCULATE_STDP:
	-- process(	rst,
	-- 			STDP_calculate)
	-- begin
	-- 	if rst = '1' or rstSynapse = '1' then
	-- 		for ITDidx in 0 to NUM_STDP_PRE_NEURONS*NUM_STDP_POST_NEURONS-1 loop
	-- 			intervalTimeDelta_Stack(ITDidx) <= (others => '0');
	-- 		end loop;
	-- 		synapseDelta <= (others => '0');
	-- 	else
	-- 		if STDP_calculate = '1' then
	-- 			-- Calculate interval Time Delta
	-- 			for POSTidx in 0 to NUM_STDP_POST_NEURONS-1 loop
	-- 				if POSTidx <= STDP_arxivPOSTfull_FIFO then			-- within MAX_stored POST neuron Interval
	-- 					for PREidx in 0 to NUM_STDP_PRE_NEURONS-1 loop
	-- 						intervalTimeDelta_Stack(iTimeDeltaidx) <= STDP_arxivPREneuron_FIFO(PREidx)-STDP_arxivPOSTneuron_FIFO(POSTidx);
	-- 						iTimeDeltaidx <= iTimeDeltaidx + 1;
	-- 					end loop;
	-- 				end if;
	-- 			end loop;

	-- 			-- TODO: calculate LTP or LTD
	-- 			for iTDidx in 0 to NUM_STDP_PRE_NEURONS*NUM_STDP_POST_NEURONS-1 loop
	-- 				-- temporary code
	-- 				-- TODO: must pass by exp() function
	-- 				synapseDelta <= synapseDelta(SYNAPSE_WEIGHT_REAL-2 downto -SYNAPSE_WEIGHT_IMG) + (intervalTimeDelta_Stack(iTDidx));
	-- 			end loop;
	-- 			STDP_calculate_fin <= '1';
	-- 		end if;
	-- 	end if;
	-- end process;

	-- Debug Session
	-- FETCH
	-- dbg_response <= synapseFetchResponse;
	-- dbg_synapseWeight <= std_logic_vector(synapseWeight);
	-- PULL
	dbg_arxivPRE0 <= std_logic_vector(STDP_arxivPREneuron_FIFO(0));
	dbg_arxivPRE1 <= std_logic_vector(STDP_arxivPREneuron_FIFO(1));
	dbg_arxivPOST0 <= std_logic_vector(STDP_arxivPOSTneuron_FIFO(0));
	dbg_arxivPOST1 <= std_logic_vector(STDP_arxivPOSTneuron_FIFO(1));
	-- PUSH
	dbg_synapsedelta <= std_logic_vector(synapseDelta);
	dbg_stack <= std_logic_vector(intervalTimeDelta_Stack(0));
	dbg_deltaidx <= std_logic_vector(to_signed(iTimeDeltaidx, dbg_deltaidx'length));
	dbg_full_idx <= std_logic_vector(to_signed(STDP_arxivPOSTfull_FIFO, dbg_full_idx'length));
	
	
end architecture rtl;