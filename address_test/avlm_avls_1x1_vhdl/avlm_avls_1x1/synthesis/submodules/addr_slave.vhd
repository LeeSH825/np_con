library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--  Defines a design entity
entity addr_slave is
	generic(	ADDRESS_WIDTH : integer := 12;
				BURST_WIDTH : integer := 4;
				BYTE_WIDTH : integer := 4;
				DATA_WIDTH : integer := 32
	);
    port(   clk : in std_logic;
            rst : in std_logic;
            
            avs_s0_address : in std_logic_vector(ADDRESS_WIDTH-1 downto 0);
            avs_s0_waitrequest : out std_logic;
			avs_s0_burstcount : in std_logic_vector(BURST_WIDTH-1 downto 0);
			avs_s0_byteenable : in std_logic_vector(BYTE_WIDTH-1 downto 0);

            avs_s0_write : in std_logic;
            avs_s0_writedata : in std_logic_vector(DATA_WIDTH-1 downto 0);

            avm_m0_address : out std_logic_vector(ADDRESS_WIDTH-1 downto 0);
            avm_m0_waitrequest : in std_logic;
			avm_m0_burstcount : out std_logic_vector(BURST_WIDTH-1 downto 0);
			avm_m0_byteenable : out std_logic_vector(BYTE_WIDTH-1 downto 0);

            avm_m0_write : out std_logic;
            avm_m0_writedata : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end addr_slave;

architecture behaviour of addr_slave is

	type state_type is (STATE_IDLE, STATE_PUSH, STATE_WAIT);
	type state_type_m0 is (STATE_IDLE_m0, STATE_PUSH_m0, STATE_WAIT_m0);

	signal s0_state : state_type;
	signal m0_state : state_type_m0;
	signal s0_next_state : state_type;
	signal m0_next_state : state_type_m0;
	signal s0_temp_state : state_type;
	signal m0_temp_state : state_type_m0;

	signal temp_data : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
	signal temp_addr : std_logic_vector(ADDRESS_WIDTH-1 downto 0) := (others => '0');
	signal temp_byte : std_logic_vector(BYTE_WIDTH-1 downto 0) := (others => '0');
	signal temp_burst : std_logic_vector(BURST_WIDTH-1 downto 0) := (others => '0');


	signal go : std_logic := '0';
	signal wait_sig : std_logic := '0';

begin
    process(clk, rst)
    begin
        if rst = '1' then
            s0_state <= STATE_IDLE;
			m0_state <= STATE_IDLE_m0;
		elsif rising_edge(clk) then
            s0_state <= s0_next_state;
			m0_state <= m0_next_state;
        end if;
    end process;
    
    process(rst,
            avs_s0_address,
			avs_s0_burstcount, avs_s0_byteenable,
			avs_s0_write, avs_s0_writedata,
			wait_sig
			-- avm_m0_waitrequest
	)
    begin


		-- avm_m0_address <= avs_s0_address;
		-- avm_m0_burstcount <= avs_s0_burstcount;
		-- avm_m0_byteenable <= avs_s0_byteenable;
		-- avm_m0_write <= avs_s0_write;
		-- avm_m0_writedata <= avs_s0_writedata;

		-- avs_s0_waitrequest <= avm_m0_waitrequest;

		if rst = '1' then
			temp_data <= (others => 'X');
			temp_addr <= (others => 'X');
			temp_byte <= (others => 'X');
			temp_burst <= (others => 'X');

			s0_next_state <= STATE_IDLE;
			s0_temp_state <= STATE_IDLE;

			avs_s0_waitrequest <= '0';


			go <= '0';
			-- wait_sig <= '0';
		end if;

		case s0_state is
			when STATE_IDLE =>
			if wait_sig = '1' then
				s0_temp_state <= s0_state;
				s0_next_state <= STATE_WAIT;
			end if;
			-- go <= '0';
			if avs_s0_write = '1' then
				go <= '1';
				temp_data <= avs_s0_writedata;
				temp_addr <= avs_s0_address;
				temp_byte <= avs_s0_byteenable;
				temp_burst <= avs_s0_burstcount;
				-- go <= '1';
				s0_next_state <= STATE_PUSH;
				s0_temp_state <= STATE_IDLE;
			else
				go <= '0';
				temp_data <= (others => 'X');
				temp_addr <= (others => 'X');
				temp_byte <= (others => 'X');
				temp_burst <= (others => 'X');
				s0_next_state <= STATE_IDLE;
			end if;

			when STATE_PUSH =>
			-- go <= '0';

			if wait_sig = '1' then
				s0_temp_state <= s0_state;
				s0_next_state <= STATE_WAIT;
			end if;
			
			-- go <= '0';

			s0_next_state <= STATE_IDLE;
			-- s0_temp_state <= STATE_PUSH;
							

			when STATE_WAIT =>
			go <= '0';
			avs_s0_waitrequest <= '1';
			if wait_sig = '1' then
				s0_next_state <= STATE_WAIT;
			else
				s0_next_state <= s0_temp_state;
			end if;

		end case;
	end process;

	process(rst,
			go,
			avm_m0_waitrequest)
	begin
		if rst = '1' then
			m0_next_state <= STATE_IDLE_m0;
			m0_temp_state <= STATE_IDLE_m0;

			avm_m0_address <= (others => 'X');
			avm_m0_burstcount <= (others => 'X');
			avm_m0_byteenable <= (others => 'X');
			avm_m0_write <= '0';
			avm_m0_writedata <= (others => 'X');
		end if;
		case m0_state is
			when STATE_IDLE_m0 =>
			-- wait_sig <= '0';
			avm_m0_write <= '0';
			avm_m0_writedata <= (others => 'X');
			avm_m0_address <= (others => 'X');
			avm_m0_burstcount <= (others => 'X');
			avm_m0_byteenable <= (others => 'X');
			-- if avm_m0_waitrequest = '1' then
			-- 	wait_sig <= '1';
			-- 	m0_next_state <= STATE_WAIT;
			-- end if;
			if go = '1' then
				avm_m0_write <= '1';
				-- avm_m0_address <= temp_addr;
				-- avm_m0_writedata <= temp_data;
				-- avm_m0_burstcount <= temp_burst;
				-- temp_byte(0) <= '0';
				-- avm_m0_byteenable <= temp_byte;

				m0_next_state <= STATE_PUSH_m0;
			else
				-- avm_m0_write <= '0';
				-- avm_m0_writedata <= (others => 'X');
				-- avm_m0_address <= (others => 'X');
				-- avm_m0_burstcount <= (others => 'X');
				-- avm_m0_byteenable <= (others => 'X');

				m0_next_state <= STATE_IDLE_m0;
			end if;

			when STATE_PUSH_m0 =>
			-- wait_sig <= '1';
			-- if avm_m0_waitrequest = '1' then
			-- 	m0_next_state <= STATE_WAIT;
			-- 	m0_temp_state <= STATE_PUSH;
			-- end if;
			
			-- go <= '0';
			if go = '1' then

			----------
				avm_m0_write <= '1';
				avm_m0_address <= temp_addr;
				avm_m0_writedata <= temp_data;
				avm_m0_burstcount <= temp_burst;
				-- temp_byte(0) <= '0';
				avm_m0_byteenable <= temp_byte;


			else
				avm_m0_write <= '0';
				avm_m0_writedata <= (others => 'X');
				avm_m0_address <= (others => 'X');
				avm_m0_burstcount <= (others => 'X');
				avm_m0_byteenable <= (others => 'X');
			end if;

			m0_next_state <= STATE_IDLE_m0;
			-- m0_temp_state <= STATE_PUSH;
			

			when STATE_WAIT_m0 =>
			wait_sig <= '1';
			avm_m0_write <= '0';
			avm_m0_writedata <= (others => 'X');
			avm_m0_address <= (others => 'X');
			avm_m0_burstcount <= (others => 'X');
			avm_m0_byteenable <= (others => 'X');
			if avm_m0_waitrequest = '1' then
				m0_next_state <= STATE_WAIT_m0;
			else
				m0_next_state <= m0_temp_state;
			end if;

		end case;
    end process;
end behaviour;
