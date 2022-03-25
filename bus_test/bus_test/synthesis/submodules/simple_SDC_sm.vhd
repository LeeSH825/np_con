library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity simple_SDC_sm is
    generic(    DATA_WIDTH : integer := 8;
                ADDR_WIDTH : integer := 7
    );
    port (		clk : in std_logic;
				rst : in std_logic;

                -- Avalon-MM Slave Interface
                avs_s0_address : in std_logic_vector(ADDR_WIDTH downto 0);
                avs_s0_waitrequest : out std_logic;

                avs_s0_read_target_synapse_addr : in std_logic;
                avs_s0_readdata_target_synapse_addr : out std_logic_vector(ADDR_WIDTH downto 0)
    );
end simple_SDC_sm;

architecture behavior of simple_SDC_sm is
    
type state_type is (STATE_IDLE, STATE_BURST);
signal state : state_type;

--type ram_word is std_logic_vector(ADDR_WIDTH downto 0);
type ram_replacement is array (integer range 0 to 15) of std_logic_vector(ADDR_WIDTH downto 0);
signal internal_ram : ram_replacement := ("00000000", "00000001", "00000010", "00000011", "00000100", "00000101", "00000110", "00000111", "00001000", "00001001", "00001010", "00001100", "00001101", "00001110", "00001111", "00010000");



begin
    process(clk, rst, state,
			avs_s0_address, avs_s0_read_target_synapse_addr)

	variable index : integer := -1;

    begin

    if rst = '1' then
        state <= STATE_IDLE;
        avs_s0_waitrequest <= '0';
        -- for i in 0 to 15 loop
        --     internal_ram(i) <= (others => '0');
        -- end loop;
    elsif rising_edge(clk) then
        case state is
		when STATE_IDLE =>
			if (avs_s0_read_target_synapse_addr = '1') then
				index := to_integer(signed(avs_s0_address));
				avs_s0_readdata_target_synapse_addr <= internal_ram(index);
				avs_s0_waitrequest <= '1';
				if ((index/2) /= 0) then
					state <= STATE_BURST;
				else
					avs_s0_waitrequest <= '0';
					index := -1;
					state <= STATE_IDLE;
				end if;
			else
				avs_s0_readdata_target_synapse_addr <= (others => '0');
				avs_s0_waitrequest <= '0';
			end if;
		
		when STATE_BURST =>
			index := index - 1;
			if (index < 0) then
				state <= STATE_IDLE;
			else
				avs_s0_readdata_target_synapse_addr <= internal_ram(index);
				avs_s0_waitrequest <= '0';
				state <= STATE_BURST;
			end if;

		end case;
    end if;
    end process;
end architecture behavior;