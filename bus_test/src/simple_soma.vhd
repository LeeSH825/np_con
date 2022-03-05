library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity simple_soma is
	generic(	THRESHOLD : integer := 10;
				TIME_WIDTH : integer := 8
	);
	port(		clk : in std_logic;
				rst : in std_logic;

				-- Avalon-MM Master Interface
				avs_m_address : out std_logic;
				m_spike_waitrequest : in std_logic;
				m_synapse_waitrequest : in std_logic;
				m_time_waitrequest : in std_logic;

				avs_m_write_spike : out std_logic;
				avs_m_writedata_spike_time : out std_logic_vector(TIME_WIDTH-1 downto 0);

				avs_m_read_synapse : out std_logic;
				avs_m_readdata_synapse : in std_logic_vector(TIME_WIDTH-1 downto 0);
				-- avs_m_response : in std_logic_vector(2 downto 0);

				avs_m_read_time : out std_logic;
				avs_m_readdata_time : in std_logic_vector(TIME_WIDTH-1 downto 0)
			
	);
end simple_soma;

architecture behavioral of simple_soma is

begin
	process(clk, rst, avs_m_readdata_synapse, avs_m_readdata_time)
		variable internal_reg : integer := 0;
		variable time_reg : integer := 0;
		variable delay_time : integer := 0;
	begin
		if rst = '1' then
			internal_reg := 0;
			delay_time := 0;
			avs_m_read_synapse <= '1';
			avs_m_read_time <= '1';
		elsif rising_edge(clk) then

			
			-- relaxation time when spikes => 5clock
			if delay_time /= 0 then
				if delay_time = 5 then
					delay_time := 0;
				else
					delay_time := delay_time + 1;
					avs_m_read_synapse <= '0';
					avs_m_read_time <= '0';
				end if;
			else
				-- seek for synapse everytime
				internal_reg := internal_reg + to_integer(signed(avs_m_readdata_synapse));

				-- set to recent time
				if to_integer(signed(avs_m_readdata_time)) > time_reg then
					time_reg := to_integer(signed(avs_m_readdata_time));
				else
					time_reg := time_reg;
				end if;
			end if;
		end if;

			-- spike when exceeds Threshold
			if internal_reg >= THRESHOLD then
				avs_m_write_spike <= '1';
				avs_m_writedata_spike_time <= std_logic_vector(to_signed(time_reg, TIME_WIDTH));
				delay_time := delay_time + 1;
				internal_reg := 0;
			else
				avs_m_write_spike <= '0';
				avs_m_writedata_spike_time <=  (others => 'X');
			end if;



	end process;

end behavioral;