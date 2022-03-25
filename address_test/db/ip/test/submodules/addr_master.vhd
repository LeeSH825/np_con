library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity addr_master is
	port (	clk : in std_logic;
			rst : in std_logic;

			avm_m0_address : out std_logic_vector(31 downto 0);
			avm_m0_waitrequest : in std_logic;

			-- avm_m0_read : out std_logic;
			-- avm_m0_readdata : in std_logic_vector(7 downto 0);

			avm_m0_write : out std_logic;
			avm_m0_writedata : out std_logic_vector(7 downto 0);
		
			dbg_input_en : out std_logic;
			dbg_output_en : out std_logic;
			dbg_data_in : out std_logic_vector(7 downto 0);
			dbg_write_to : out std_logic_vector(31 downto 0);
			dbg_write_data : out std_logic_vector(7 downto 0);

			input_en : in std_logic;
			output_en : in std_logic;
			data_in : in std_logic_vector(7 downto 0);
			write_to : in std_logic_vector(31 downto 0)
	);
end entity addr_master;	

architecture rtl of addr_master is
	
	type state_type is (STATE_IDLE, STATE_WAIT, STATE_RW);
	signal state : state_type;
	signal next_state : state_type;
	signal data : std_logic_vector(7 downto 0) := (others => '0');
	signal addr : std_logic_vector(31 downto 0) := (others => '0');

begin
	process(clk, rst, state)
	begin
		if rst = '1' then
			state <= STATE_IDLE;
		elsif rising_edge(clk) then
			state <= next_state;
		end if;
	end process;

	process (	rst,
				avm_m0_waitrequest, 
				--avm_m0_readdata, 
				data_in, write_to, input_en, output_en,
				data_in, data)

	begin
		dbg_input_en <= input_en;
		dbg_output_en <= output_en;
		dbg_data_in <= data_in;
		dbg_write_to <= write_to;
		dbg_write_data <= data;
		if rst = '1' then
			data <= (others => '0');
			addr <= (others => '0');
		end if;
	
		avm_m0_address <= (others => '0');
		avm_m0_write <= '0';
		avm_m0_writedata <= (others => '0');
		case state is
			when STATE_IDLE =>
				avm_m0_write <= '0';
				avm_m0_address <= (others => '0');
				if input_en = '1' then
					data <= data_in;
					addr <= write_to;
				else
					data <= data;
					addr <= addr;
				end if;
				-- if output_en = '1' then
				-- 	next_state <= STATE_RW;
				-- else
				-- 	next_state <= STATE_IDLE;
				-- end if;
				next_state <= STATE_IDLE;
			
			when STATE_RW =>
				avm_m0_write <= '1';
				avm_m0_address <= addr;
				avm_m0_writedata <= data;
				if avm_m0_waitrequest = '1' then
					next_state <= STATE_RW;
				else
					next_state <= STATE_IDLE;
				end if;

			when STATE_WAIT =>
				if avm_m0_waitrequest ='1' then
					next_state <= STATE_WAIT;
				else
					next_state <= STATE_IDLE;
				end if;

--			when others =>
--				state <= STATE_IDLE;
--				
--				avm_m0_address <= (others => '0');
--				avm_m0_write <= '0';
--				avm_m0_writedata <= (others => '0');
			end case;
	
	
	end process;
end architecture rtl;