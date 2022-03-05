library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity simple_up_server_sm is
	generic(	DATA_WIDTH : integer := 8;
				ADDR_WIDTH : integer := 7
	);
    port(		clk : in std_logic;
        		rst : in std_logic;

				-- Avalon-MM Slave Interface
				-- Slave_0 : spike	=> Connect to Soma.avm_m0.spike(write)
				avs_s0_address : in std_logic_vector(ADDR_WIDTH downto 0);

				avs_s0_write_spike : in std_logic;
				avs_s0_writedata_spike_time : in std_logic_vector(DATA_WIDTH downto 0);

				-- Avalon-MM Master Interface
				-- Master_0 : spike => Connect to Synapse.avs.(write)
				avm_m0_address : out std_logic_vector(ADDR_WIDTH downto 0);
				avm_m0_waitrequest : in std_logic;

				avm_m0_write_spike : out std_logic;
				avm_m0_writedata_spike_time : out std_logic_vector(DATA_WIDTH downto 0);

				-- Master_1 : get info => Connect to SDC.avs.(read)
				avm_m1_address : out std_logic_vector(ADDR_WIDTH downto 0);
				avm_m1_waitrequest : in std_logic;

				avm_m1_read_target_synapse_addr : out std_logic;
				avm_m1_readdata_target_synapse_addr : in std_logic_vector(ADDR_WIDTH downto 0)
    );

end simple_up_server_sm;

architecture behavioral of simple_up_server_sm is
    
type state_type is (STATE_IDLE, STATE_REQUEST, STATE_UPLOAD, STATE_BURST);
signal state : state_type;

signal spike_time : std_logic_vector(DATA_WIDTH downto 0);
signal target_synapse_addr : std_logic_vector(ADDR_WIDTH downto 0);

begin
	
	process(clk, rst, state,
			avs_s0_address, avs_s0_write_spike, avs_s0_writedata_spike_time,
			avm_m0_waitrequest,
			avm_m1_waitrequest, avm_m1_readdata_target_synapse_addr)
	
	begin
	if rst = '1' then
		state <= STATE_IDLE;

		avm_m0_address <= (others => '0');
		avm_m0_write_spike <= '0';
		avm_m0_writedata_spike_time <= (others => '0');
	elsif rising_edge(clk) then
		case state is
		when STATE_IDLE =>
			avm_m0_address <= (others => '0');
			avm_m0_write_spike <= '0';
			avm_m0_writedata_spike_time <= (others => '0');

			if (avs_s0_write_spike = '1') then
				avm_m1_address <= avs_s0_address;
				spike_time <= avs_s0_writedata_spike_time;
				avm_m1_read_target_synapse_addr <= '1';
				state <= STATE_REQUEST;
			else
				state <= STATE_IDLE;
			end if;
		when STATE_REQUEST =>
			target_synapse_addr <= avm_m1_readdata_target_synapse_addr;
			state <= STATE_UPLOAD;

		when STATE_UPLOAD =>
			avm_m0_address <= target_synapse_addr;
			avm_m0_write_spike <= '1';
			avm_m0_writedata_spike_time <= spike_time;
			if (avm_m1_waitrequest = '1') then
				avm_m1_read_target_synapse_addr <= '1';
				state <= STATE_BURST;
			else
				avm_m1_read_target_synapse_addr <= '0';
				state <= STATE_IDLE;
			end if;

		when STATE_BURST =>
			target_synapse_addr <= avm_m1_readdata_target_synapse_addr;
			avm_m0_address <= target_synapse_addr;
			avm_m0_write_spike <= '1';
			avm_m0_writedata_spike_time <= spike_time;
			if (avm_m1_waitrequest = '1') then
				avm_m1_read_target_synapse_addr <= '1';
				state <= STATE_BURST;
			else
				avm_m1_read_target_synapse_addr <= '0';
				state <= STATE_IDLE;
			end if;



		end case;
	end if;
end process;

end architecture behavioral;