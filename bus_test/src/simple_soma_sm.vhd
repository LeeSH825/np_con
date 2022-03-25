library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity simple_soma_sm is
	generic( 	THRESHOLD : integer := 10;
				DATA_WIDTH : integer := 8;
				ADDR_WIDTH : integer := 2;
				UPLOAD_SERVER_ADDRESS : std_logic_vector(7 downto 0) := "00000001"
	);
	port(		clk : in std_logic;
				rst : in std_logic;

				-- Avalon-MM Master Interface
				-- Master_0 : spike
				avm_pushSpike_address : out std_logic_vector(ADDR_WIDTH downto 0);
				avm_pushSpike_waitrequest : in std_logic;

				avm_pushSpike_write : out std_logic;
				avm_pushSpike_writedata : out std_logic_vector(DATA_WIDTH-1 downto 0);
				avm_pushSpike_response : in std_logic_vector(1 downto 0);


				-- -- Master_1 : read synapse_weight
				-- avs_m1_address : out std_logic;
				-- avs_m1_waitrequest : in std_logic;

				-- avs_m1_read_synapse ; out std_logicl;
				-- avs_m1_readdata_synapse : in std_logic_vector(DATA_WIDTH-1 downto 0);


				-- -- Master_2 : read time
				-- avs_m2_address : out std_logic;
				-- avs_m2_waitrequest : in std_logic;
				
				-- avs_m2_read_time : out std_logic;
				-- avs_m2_readdata_time : in std_logic_vector(DATA_WIDTH-1 downto 0);


				-- -- Avalon-MM Slave Interface
				-- -- Slave_0 : get address to access
				-- -- Address Type : MSB => 0: soma
				-- avs_s0_address : in std_logic;
				
				-- avs_s0_write_address : in std_logic;
				-- avs_s0_writedata_address : in std_logic_vector(DATA_WIDTH downto 0)

				-- Slave_0 : get synapse
				avs_pullSynapse_address : in std_logic_vector(ADDR_WIDTH downto 0);

				avs_pullSynapse_write : in std_logic;
				avs_pullSynapse_writedata : in std_logic_vector(DATA_WIDTH-1 downto 0)
				--avs_s0_response_synapse : out std_logic_vector(1 downto 0)
	);
end simple_soma_sm;

architecture behavioral of simple_soma_sm is

type state_type is (STATE_IDLE, STATE_WAIT, STATE_SPIKE);
signal state : state_type;
-- signal next_state : state_type;
	
begin
	-- Simply 1. Get Synapse -> 2. Accumulate -> 3. Spike

	-- process(clk, rst, state, next_state)
	-- begin
	-- 	if rst = '1' then
	-- 		state <= STATE_IDLE;
	-- 	elsif (rising_edge(clk)) then
	-- 		state <= next_state;
	-- 	end if;
	-- end process;

	process(clk, rst, state,
			avm_pushSpike_waitrequest, avm_pushSpike_response,
			--avs_m1_waitrequest. avs_m1_readdata_synapse,
			avs_pullSynapse_address, avs_pullSynapse_write, avs_pullSynapse_writedata)

			variable internal_reg : integer := 0;
			variable temp_TIME : integer := 9;
			variable wait_TIME : integer:= 5;
	begin
	if rst = '1' then
		state <= STATE_IDLE;
		
		avm_pushSpike_address <= (others => '0');
		avm_pushSpike_write <= '0';
		avm_pushSpike_writedata <= (others =>'0');

		--avs_m1_address <= (others => 'X');
		--avs_m1_read_synapse <= 'X';
		--avs_m1_readdata_synapse <= (others => 'X');
		--avs_s0_response_synapse <= "00";

		-- internal variable initializing
		internal_reg := 0;
		wait_TIME := 5;
	elsif rising_edge(clk) then
		case state is
		when STATE_IDLE =>
			avm_pushSpike_address <= (others => '0');
			avm_pushSpike_write <= '0';
			avm_pushSpike_writedata <= (others => '0');

			if (avs_pullSynapse_write = '1') then
				internal_reg := internal_reg + to_integer(signed(avs_pullSynapse_writedata));
				--avs_s0_response_synapse <= "00";
				if (internal_reg >= THRESHOLD) then
					-- next_state <= STATE_SPIKE;
					avm_pushSpike_write <= '1';
					state <= STATE_SPIKE;
				else
					-- next_state <= STATE_IDLE;
					state <= STATE_IDLE;
				end if;
			else
				state <= STATE_IDLE;
				-- next_state <= STATE_IDLE;
			end if;

		when STATE_SPIKE =>
			avm_pushSpike_address <= UPLOAD_SERVER_ADDRESS;
			avm_pushSpike_write <= '1';
			avm_pushSpike_writedata <= std_logic_vector(to_signed(temp_TIME, DATA_WIDTH));
			if (avm_pushSpike_waitrequest = '1') then
				-- next_state <= STATE_SPIKE;
				state <= STATE_SPIKE;
			else
				-- next_state <= STATE_WAIT;
				state <= STATE_WAIT;
				wait_TIME := 5;
			end if;
			if (avm_pushSpike_response = "00" ) then
				-- next_state <= STATE_WAIT;
				state <= STATE_WAIT;
				wait_TIME := 5;
			else
				-- next_state <= STATE_SPIKE;
				state <= STATE_SPIKE;
			end if;

		when STATE_WAIT =>
			if (wait_TIME = 0) then
				-- next_state <= STATE_IDLE;
				state <= STATE_IDLE;
			else
				-- next_state <= STATE_WAIT;
				state <= STATE_WAIT;
				wait_TIME := wait_TIME - 1;
				avm_pushSpike_address <= (others => '0');
				avm_pushSpike_write <= '0';
				avm_pushSpike_writedata <= (others=> '0');
				-- wait request or something?
			end if;

		when others =>
			-- next_state <= STATE_IDLE;
			state <= STATE_IDLE;
		
			avm_pushSpike_address <= (others => '0');
			avm_pushSpike_write <= '0';
			avm_pushSpike_writedata <= (others=> '0');
	
			--avs_m1_address <= (others => 'X');
			--avs_m1_read_synapse <= 'X';
			--avs_m1_readdata_synapse <= (others => 'X');
			--avs_s0_response_synapse <= "00";
	
			-- internal variable initializing
			internal_reg := 0;
			wait_TIME := 5;

		end case;
			
	end if;
	end process;

	
	
end architecture behavioral;