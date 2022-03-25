library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity simple_up_server_sm is
	generic(	DATA_WIDTH : integer := 8;
				ADDR_WIDTH : integer := 2
	);
    port(		clk : in std_logic;
        		rst : in std_logic;

				-- Avalon-MM Slave Interface
				-- Slave_0 : spike	=> Connect to Soma.avm_m0.spike(write)
				avs_pullSpike_address : in std_logic_vector(ADDR_WIDTH downto 0);

				avs_pullSpike_write : in std_logic;
				avs_pullSpike_writedata : in std_logic_vector(DATA_WIDTH-1 downto 0);

				-- Avalon-MM Master Interface
				-- Master_0 : spike => Connect to Synapse.avs.(write)
				avm_broadcastSpike_address : out std_logic_vector(ADDR_WIDTH downto 0);
				avm_broadcastSpike_waitrequest : in std_logic;

				avm_broadcastSpike_write : out std_logic;
				avm_broadcastSpike_writedata : out std_logic_vector(DATA_WIDTH-1 downto 0);

				-- Master_1 : get info => Connect to SDC.avs.(read)
				avm_getTargetSynapseAddr_address : out std_logic_vector(ADDR_WIDTH downto 0);
				avm_getTargetSynapseAddr_waitrequest : in std_logic;

				avm_getTargetSynapseAddr_read : out std_logic;
				avm_getTargetSynapseAddr_readdata : in std_logic_vector(ADDR_WIDTH downto 0)
    );

end simple_up_server_sm;

architecture behavioral of simple_up_server_sm is
    
type state_type is (STATE_IDLE, STATE_REQUEST, STATE_UPLOAD, STATE_BURST);
signal state : state_type;
signal next_state : state_type;

signal spike_time : std_logic_vector(DATA_WIDTH-1 downto 0);
signal target_synapse_addr : std_logic_vector(ADDR_WIDTH downto 0);

begin

	process(clk, rst, next_state)
	begin
		if rst = '1' then
			state <= STATE_IDLE;
		elsif (rising_edge(clk)) then
			state <= next_state;
		end if;
	end process;
	
	process(clk, rst,
			avs_pullSpike_address, avs_pullSpike_write, avs_pullSpike_writedata,
			avm_broadcastSpike_waitrequest,
			avm_getTargetSynapseAddr_waitrequest, avm_getTargetSynapseAddr_readdata)
	
	begin
	if rst = '1' then
		next_state <= STATE_IDLE;

		avm_broadcastSpike_address <= (others => '0');
		avm_broadcastSpike_write <= '0';
		avm_broadcastSpike_writedata <= (others => '0');
	else
		case state is
		when STATE_IDLE =>
			avm_broadcastSpike_address <= (others => '0');
			avm_broadcastSpike_write <= '0';
			avm_broadcastSpike_writedata <= (others => '0');

			if (avs_pullSpike_write = '1') then
				avm_getTargetSynapseAddr_address <= avs_pullSpike_address;
				spike_time <= avs_pullSpike_writedata;
				avm_getTargetSynapseAddr_read <= '1';
				next_state <= STATE_REQUEST;
			else
				next_state <= STATE_IDLE;
			end if;
		when STATE_REQUEST =>
			target_synapse_addr <= avm_getTargetSynapseAddr_readdata;
			next_state <= STATE_UPLOAD;

		when STATE_UPLOAD =>
			avm_broadcastSpike_address <= target_synapse_addr;
			avm_broadcastSpike_write <= '1';
			avm_broadcastSpike_writedata <= spike_time;
			if (avm_getTargetSynapseAddr_waitrequest = '1') then
				avm_getTargetSynapseAddr_read <= '1';
				next_state <= STATE_BURST;
			else
				avm_getTargetSynapseAddr_read <= '0';
				next_state <= STATE_IDLE;
			end if;

		when STATE_BURST =>
			target_synapse_addr <= avm_getTargetSynapseAddr_readdata;
			avm_broadcastSpike_address <= target_synapse_addr;
			avm_broadcastSpike_write <= '1';
			avm_broadcastSpike_writedata <= spike_time;
			if (avm_getTargetSynapseAddr_waitrequest = '1') then
				avm_getTargetSynapseAddr_read <= '1';
				next_state <= STATE_BURST;
			else
				avm_getTargetSynapseAddr_read <= '0';
				next_state <= STATE_IDLE;
			end if;



		end case;
	end if;
end process;

end architecture behavioral;