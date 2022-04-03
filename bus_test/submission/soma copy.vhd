library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use IEEE.fixed_float_types.all;
use IEEE.fixed_pkg.all;

entity soma is
	generic(	-- Port
				BYTEENABLE_WIDTH : integer := 4;

				-- fetch
				FETCH_ADDR_WIDTH : integer := 2;
				SERVER_ADDR_WIDTH : integer := 16;

				-- pullSynapse
				SYNAPSE_ADDR_WIDTH : integer := 8;
				SYNAPSE_DATA_WIDTH : integer := 32;
				SPIKE_ADDR_WIDTH : integer := 8;
				SPIKE_DATA_WIDTH : integer := 16;

				---------------------------------
				-- variables for internal signals
				-- Neuron Properties
				INTERVAL_TIME_WIDTH : integer := 10;
				INTERVAL_TIME_REAL : integer := 5;
				INTERVAL_TIME_IMG : integer := 5;

				SYNAPSE_WEIGHT_WIDTH : integer := 16;
				SYNAPSE_WEIGHT_REAL : integer := 8;
				SYNAPSE_WEIGHT_IMG : integer := 8;

				MEMBRANE_WIDTH : integer := 16;
				MEMBRANE_REAL : integer := 8;
				MEMBRANE_IMG : integer := 8;

				THRESHOLD : sfixed(7 downto -8) := to_sfixed(2.0, 7, -8)

	);
	port (		clk_soma : in std_logic;
				rst_soma : in std_logic;

				-- Avalon-MM Slave Interface
				-- Interface with Initializer
				-- => Set Soma Info (including SomaInfo, Upload Server Address)		-- TODO:
				avs_fetchSoma_address : in std_logic_vector(FETCH_ADDR_WIDTH-1 downto 0);
				avs_fetchSoma_waitrequest : out std_logic;
				avs_fetchSoma_write : in std_logic;
				avs_fetchSoma_writedata : in std_logic_vector(SERVER_ADDR_WIDTH-1 downto 0);

				-- Avalon-MM Slave Interface
				-- Interface with Download Server
				avs_pullSynapse_address : in std_logic_vector(SYNAPSE_ADDR_WIDTH-1 downto 0);
				avs_pullSynapse_waitrequest : out std_logic;
				avs_pullSynapse_write : in std_logic;
				avs_pullSynapse_writedata : in std_logic_vector(SYNAPSE_DATA_WIDTH-1 downto 0);

				-- Avalon-MM Master Interface
				-- Interface with Upload Server
				avm_pushSpike_address : out std_logic_vector(SERVER_ADDR_WIDTH-1 downto 0);
				avm_pushSpike_waitrequest : in std_logic;
				avm_pushSpike_byteenable : out std_logic_vector(BYTEENABLE_WIDTH-1 downto 0);
				avm_pushSpike_write : out std_logic;
				avm_pushSpike_writedata : out std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);

				--DEBUG
				dbg_patchMembrane : out std_logic;
				dbg_TIME : out std_logic_vector(INTERVAL_TIME_WIDTH-1 downto 0);
				dbg_ADDR : out std_logic_vector(SERVER_ADDR_WIDTH-1 downto 0);
				dbg_Membrane : out std_logic_vector(MEMBRANE_WIDTH-1 downto 0)
		
	);
end entity soma;

architecture rtl of soma is
	-- State Variables
	type state_type_FETCH is (STATE_IDLE, STATE_FETCH, STATE_LOCK);
	signal stateFetchSoma, stateFetchSoma_next : state_type_FETCH;

	type state_type_pull is (STATE_IDLE, STATE_PATCH, STATE_WAIT);
	signal statePullSynapse, statePullSynapse_next : state_type_pull;

	type state_type_pushSpike is (STATE_IDLE, STATE_SPIKE, STATE_WAIT, STATE_RST);
	signal statePushSPike, statePushSPike_next : state_type_pushSpike;
	----------------------
	-- Fetch
	signal Addr_UploadServer : std_logic_vector(SERVER_ADDR_WIDTH-1 downto 0);
	-----------------------
	-- Internal Membrane
	signal Membrane : sfixed(MEMBRANE_REAL-1 downto -MEMBRANE_IMG) := (others => '0');
	signal Interval_Time : sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG) := (others => '0');
	signal Synapse_IN : sfixed(SYNAPSE_WEIGHT_REAL-1 downto -SYNAPSE_WEIGHT_IMG) := (others => '0');
	signal Interval_IN : sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG) := (others => '0');
	signal patchMembrane : std_logic := '0';
	signal patchMembrane_fin : std_logic := '0';
	signal spike : std_logic := '0';
	signal spike_rst : std_logic := '0';
	----------------------
	-- Spike
	signal Interval_from_last : sfixed(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG) := (others => '0');
	----------------------
	-- SOMA VALUE
	signal rstSoma : std_logic := '0';
begin

	STATE_MACHINE:
	process(clk_soma, rst_soma)
	begin
		if rst_soma = '1' then
			stateFetchSoma <= STATE_IDLE;
			statePullSynapse <= STATE_IDLE;
			statePushSPike <= STATE_IDLE;
		elsif rising_edge(clk_soma) then
			stateFetchSoma <= stateFetchSoma_next;
			statePullSynapse <= statePullSynapse_next;
			statePushSPike <= statePushSPike_next;
		end if;
	end process;

	INITIAL_FETCH:
	process(	rst_soma, rstSoma,
				avs_fetchSoma_address, avs_fetchSoma_write, avs_fetchSoma_writedata)
	begin
		if rst_soma = '1' then
			stateFetchSoma_next <= STATE_IDLE;
			Addr_UploadServer <= (others => '0');
		else
			case stateFetchSoma is
				when STATE_IDLE =>
					if avs_fetchSoma_write = '1' then
						avs_fetchSoma_waitrequest <= '1';
						stateFetchSoma_next <= STATE_FETCH;
					else
						avs_fetchSoma_waitrequest <= '0';
						stateFetchSoma_next <= STATE_IDLE;
					end if;

				when STATE_FETCH =>
					Addr_UploadServer <= avs_fetchSoma_writedata;
					avs_fetchSoma_waitrequest <= '0';
					stateFetchSoma_next <= STATE_LOCK;

				when STATE_LOCK =>
					if rstSoma = '1' then
						stateFetchSoma_next <= STATE_IDLE;
					else
						Addr_UploadServer <= Addr_UploadServer;
						stateFetchSoma_next <= STATE_LOCK;
					end if;
			end case;
			
		end if;

	end process;
	
	PULL_SYNAPSE:
	process(	rst_soma,
				avs_pullSynapse_address, avs_pullSynapse_write, avs_pullSynapse_writedata,
				Synapse_IN)
	begin
		if rst_soma = '1' then
			Synapse_IN <= (others => '0');
			Interval_IN <= (others => '0');
			statePullSynapse_next <= STATE_IDLE;
			avs_pullSynapse_waitrequest <= '0';
			patchMembrane <= '0';
			-- spike_rst <= '0';
		else
			case statePullSynapse is
				when STATE_IDLE =>
				patchMembrane <= '0';
				-- spike_rst <= '0';
					if avs_pullSynapse_write = '1' then
						avs_pullSynapse_waitrequest <= '1';
						statePullSynapse_next <= STATE_PATCH;
					else
						avs_pullSynapse_waitrequest <= '0';
						statePullSynapse_next <= STATE_IDLE;
					end if;

				when STATE_PATCH =>
					Synapse_IN <= to_sfixed(avs_pullSynapse_writedata(SYNAPSE_DATA_WIDTH-1 downto SYNAPSE_DATA_WIDTH-SYNAPSE_WEIGHT_WIDTH), SYNAPSE_WEIGHT_REAL-1, -SYNAPSE_WEIGHT_IMG);
					Interval_IN <= to_sfixed(avs_pullSynapse_writedata(INTERVAL_TIME_WIDTH-1 downto 0), INTERVAL_TIME_REAL-1, -INTERVAL_TIME_IMG);

					patchMembrane <= '1';
					statePullSynapse_next <= STATE_WAIT;

				when STATE_WAIT =>
					if patchMembrane_fin = '1' then
						patchMembrane <= '0';
						avs_pullSynapse_waitrequest <= '0';
						statePullSynapse_next <= STATE_IDLE;			-- TODO: substract with Interval Time
						-- spike_rst <= '1';
					else
						statePullSynapse_next <= STATE_WAIT;
					end if;
			end case;
		end if;

	end process;

	CALCULATE_MEMBRANE:
	process(	rst_soma, clk_soma,
				patchMembrane, patchMembrane_fin,
				Membrane, Synapse_IN)
		variable temp_mem_sum : sfixed(MEMBRANE_REAL downto -MEMBRANE_IMG);
		variable temp_time_sum : sfixed(INTERVAL_TIME_REAL downto -INTERVAL_TIME_IMG);
		-- variable THRESHOLD : sfixed(MEMBRANE_REAL-1 downto -MEMBRANE_IMG) := to_sfixed(10, MEMBRANE_REAL-1, -MEMBRANE_IMG);
	begin
		if rst_soma = '1' or spike_rst = '1' then
			Membrane <= (others => '0');
			Interval_Time <= (others => '0');
			patchMembrane_fin <= '0';
			-- THRESHOLD  := sfixed(10, MEMBRANE_REAL-1, -MEMBRANE_IMG);
		elsif rising_edge(clk_soma) then
			if patchMembrane = '1' then
				temp_mem_sum := Membrane + Synapse_IN;						-- TODO: substract with Interval Time
				Membrane <= temp_mem_sum(MEMBRANE_REAL-1 downto -MEMBRANE_IMG);
				temp_time_sum := Interval_Time + Interval_IN;
				Interval_Time <= temp_time_sum(INTERVAL_TIME_REAL-1 downto -INTERVAL_TIME_IMG);
				if Membrane > THRESHOLD then
					spike <= '1';
				else
					spike <= '0';
				end if;
				patchMembrane_fin <= '1';
			else
				-- Membrane <= Membrane;
				-- if patchMembrane_fin /= '1' then
				spike <= '0';
					patchMembrane_fin <= '0';
				-- end if;
			end if;
			dbg_Membrane <= std_logic_vector(Membrane);
			dbg_TIME <= std_logic_vector(Interval_Time);

		end if;
		-- DEBUG
		-- dbg_Membrane <= std_logic_vector(Membrane);
	end process;

	PUSH_SPIKE:
	process(	rst_soma, 
				avm_pushSpike_waitrequest)
		-- variable delay_time : integer (range 0 to 7) := 3;
	begin
		if rst_soma = '1' then
			statePushSPike_next <= STATE_IDLE;
		else
			case statePushSPike is
				when STATE_IDLE =>
					avm_pushSpike_address <= (others => '0');
					avm_pushSpike_write <= '0';
					avm_pushSpike_writedata <= (others => '0');
					spike_rst <= '0';
					if spike = '1' then
						statePushSPike_next <= STATE_SPIKE;
					else
						statePushSPike_next <= STATE_IDLE;
					end if;

				when STATE_SPIKE =>
					avm_pushSpike_address <= Addr_UploadServer;
					avm_pushSpike_write <= '1';
					avm_pushSpike_writedata <= std_logic_vector(Interval_Time);

					if avm_pushSpike_waitrequest = '1' then
						-- spike_rst <= '0';
						statePushSPike_next <= STATE_WAIT;
					else
						-- spike_rst <= '1';
						statePushSPike_next <= STATE_RST;
					end if;
					
				when STATE_WAIT =>
					if avm_pushSpike_waitrequest = '0' then
						statePushSPike_next <= STATE_RST;
					else
						avm_pushSpike_write <= '1';
						statePushSPike_next <= STATE_WAIT;
					end if;
				
				when STATE_RST =>
					spike_rst <= '1';
					statePushSPike_next <= STATE_IDLE;
			end case;
		end if;

	end process;
	

	-- DEBUG
	dbg_patchMembrane <= patchMembrane;
	dbg_ADDR <= Addr_UploadServer;
	-- dbg_Membrane <= std_logic_vector(Membrane);
	
end architecture rtl;