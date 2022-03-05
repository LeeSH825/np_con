library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity simple_synapse is
	generic(	THRESHOLD : integer := 10;
				TIME_WIDTH : integer := 8
	);
	port(		clk : in std_logic;
				rst : in std_logic;

				-- Avalon-MM Slave Interface
				avs_s_address : in std_logic_vector(7 downto 0);

				avs_s_write_spike : in std_logic;
				avs_s_writedata_spike_time : in std_logic_vector(7 downto 0);

				avs_s_waitrequest : out std_logic;

				avs_s_read_synapse : in std_logic;
				avs_s_readdata_synapse : out std_logic_vector(7 downto 0);

				avs_s_read_time : in std_logic;
				avs_s_readdata_time : out std_logic_vector(7 downto 0)
	);
end simple_synapse;

architecture behavioral of simple_synapse is

begin
	process(clk, rst,avs_s_write_spike, avs_s_writedata_spike_time, avs_s_read_synapse, avs_s_read_time)
		variable time_reg : integer := 0;
		variable synapse_weight : integer := 0;
	begin
		if rst = '1' then
			time_reg := 0;
			synapse_weight := 0;
		elsif rising_edge(clk) then
			if avs_s_write_spike = '1' then
				synapse_weight := synapse_weight + (to_integer(signed(avs_s_writedata_spike_time)) - time_reg);
				time_reg := to_integer(signed(avs_s_writedata_spike_time));
			end if;

			if avs_s_read_synapse = '1' then
				avs_s_readdata_synapse <= std_logic_vector(to_signed(synapse_weight, TIME_WIDTH));
			else
				avs_s_readdata_synapse <= (others => 'X');
			end if;

			if avs_s_read_time = '1' then
				avs_s_readdata_time <= std_logic_vector(to_signed(time_reg, TIME_WIDTH));
			else
				avs_s_readdata_time <= (others => 'X');
			end if;
		end if;

	end process;

end behavioral;