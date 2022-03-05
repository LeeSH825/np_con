library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity simple_soma_sm is
	generic( 	THRESHOLD : integer := 10;
				TIME_WIDTH : integer := 8;
				ADDR_WIDTH : integer := 7;
				UPLOAD_SERVER_ADDRESS : std_logic_vector(7 downto 0) := "00000001"
	);
	port(		clk : in std_logic;
				rst : in std_logic;

				-- Avalon-MM Master Interface
				-- Master_0 : spike
				avs_m0_address : out std_logic_vector(ADDR_WIDTH downto 0);
				avs_m0_waitrequest : in std_logic;

				avs_m0_write_spike : out std_logic;
				avs_m0_writedata_spike_time : out std_logic_vector(TIME_WIDTH-1 downto 0);
				avs_m0_response_spike : in std_logic_vector(1 downto 0);


				-- -- Master_1 : read synapse_weight
				-- avs_m1_address : out std_logic;
				-- avs_m1_waitrequest : in std_logic;

				-- avs_m1_read_synapse ; out std_logicl;
				-- avs_m1_readdata_synapse : in std_logic_vector(TIME_WIDTH-1 downto 0);


				-- -- Master_2 : read time
				-- avs_m2_address : out std_logic;
				-- avs_m2_waitrequest : in std_logic;
				
				-- avs_m2_read_time : out std_logic;
				-- avs_m2_readdata_time : in std_logic_vector(TIME_WIDTH-1 downto 0);


				-- -- Avalon-MM Slave Interface
				-- -- Slave_0 : get address to access
				-- -- Address Type : MSB => 0: soma
				-- avs_s0_address : in std_logic;
				
				-- avs_s0_write_address : in std_logic;
				-- avs_s0_writedata_address : in std_logic_vector(TIME_WIDTH downto 0)

				-- Slave_0 : get synapse
				avs_s0_address : in std_logic_vector(ADDR_WIDTH downto 0);

				avs_s0_write_synapse : in std_logic;
				avs_s0_writedata_synapse : in std_logic_vector(TIME_WIDTH-1 downto 0);
				avs_s0_response_synapse : out std_logic_vector(1 downto 0)
	);
end simple_soma_sm;

architecture behavioral of simple_soma_sm is

type state_type is (STATE_IDLE, STATE_WAIT, STATE_SPIKE);
signal state : state_type;
signal next_state : state_type;
	
begin
	-- Simply 1. Get Synapse -> 2. Accumulate -> 3. Spike

	process(clk, rst)
	begin
		if rst = '1' then
			state <= STATE_IDLE;
		elsif (rising_edge(clk)) then
			state <= next_state;
		end if;
	end process;

	process(rst,
			avs_m0_waitrequest, avs_m0_response_spike,
			--avs_m1_waitrequest. avs_m1_readdata_synapse,
			avs_s0_address, avs_s0_write_synapse, avs_s0_writedata_synapse)

			variable internal_reg : integer := 0;
			variable temp_TIME : integer := 9;
			variable wait_TIME : integer:= 5;
	begin
	if rst = '1' then
		next_state <= STATE_IDLE;
		
		avs_m0_address <= (others => 'X');
		avs_m0_write_spike <= 'X';
		avs_m0_writedata_spike_time <= (others =>'X');

		--avs_m1_address <= (others => 'X');
		--avs_m1_read_synapse <= 'X';
		--avs_m1_readdata_synapse <= (others => 'X');
		avs_s0_response_synapse <= "XX";

		-- internal variable initializing
		internal_reg := 0;
		wait_TIME := 5;
	else
		case state is
		when STATE_IDLE =>
			if (avs_s0_write_synapse = '1') then
				internal_reg := internal_reg + to_integer(signed(avs_s0_writedata_synapse));
				avs_s0_response_synapse <= "00";
				if (internal_reg > THRESHOLD) then
					next_state <= STATE_SPIKE;
				else
					next_state <= STATE_IDLE;
				end if;
			else
				next_state <= STATE_IDLE;
				
			end if;

		when STATE_SPIKE =>
			avs_m0_address <= UPLOAD_SERVER_ADDRESS;
			avs_m0_write_spike <= '1';
			avs_m0_writedata_spike_time <= std_logic_vector(to_signed(temp_TIME, TIME_WIDTH));
			if (avs_m0_waitrequest = '1') then
				next_state <= STATE_SPIKE;
			else
				next_state <= STATE_WAIT;
				wait_TIME := 5;
			end if;
			if (avs_m0_response_spike = "00" ) then
				next_state <= STATE_WAIT;
				wait_TIME := 5;
			else
				next_state <= STATE_SPIKE;
			end if;

		when STATE_WAIT =>
			if (wait_TIME = 0) then
				next_state <= STATE_IDLE;
			else
				next_state <= STATE_WAIT;
				wait_TIME := wait_TIME - 1;
				-- wait request or something?
			end if;

		when others =>
			next_state <= STATE_IDLE;
		
			avs_m0_address <= (others => 'X');
			avs_m0_write_spike <= 'X';
			avs_m0_writedata_spike_time <= (others=> 'X');
	
			--avs_m1_address <= (others => 'X');
			--avs_m1_read_synapse <= 'X';
			--avs_m1_readdata_synapse <= (others => 'X');
			avs_s0_response_synapse <= "XX";
	
			-- internal variable initializing
			internal_reg := 0;
			wait_TIME := 5;

		end case;
			
	end if;
	end process;

	
	
end architecture behavioral;