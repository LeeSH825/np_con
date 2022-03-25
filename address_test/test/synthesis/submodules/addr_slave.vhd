library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--  Defines a design entity
entity addr_slave is
    port(   clk : in std_logic;
            rst : in std_logic;
            
            avs_s0_address : in std_logic_vector(31 downto 0);
            avs_s0_waitrequest : out std_logic;
			avs_s0_chipselect : in std_logic;

            avs_s0_write : in std_logic;
            avs_s0_writedata : in std_logic_vector(7 downto 0);
    
			dbg_wait_pin : out std_logic;
			dbg_out_en : out std_logic;
			dbg_data : out std_logic_vector(7 downto 0);
			dbg_data_write : out std_logic_vector(7 downto 0);
			dbg_chip : out std_logic;

            wait_pin : in std_logic;
			out_en : in std_logic;
            out_pin : out std_logic_vector(7 downto 0)
    );
end addr_slave;

architecture behaviour of addr_slave is

	type state_type is (STATE_IDLE, STATE_PUSH);
	signal state : state_type;
	signal next_state : state_type;
	signal temp_data : std_logic_vector(7 downto 0) := (others => '0');

begin
    process(clk, rst, state)
    begin
        if rst = '1' then
            state <= STATE_IDLE;
		elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process;
    
    process(rst, state,
            avs_s0_address, avs_s0_write,
            avs_s0_writedata,
            wait_pin,
			out_en, temp_data, avs_s0_chipselect)
    begin
		dbg_wait_pin <= wait_pin;
		dbg_out_en <= out_en;
		dbg_data <= temp_data;
		dbg_data_write <= avs_s0_writedata;
		dbg_chip <= avs_s0_chipselect;
		if rst = '1' then
			temp_data <= (others => '0');
		end if;

		avs_s0_waitrequest <= '0';
		out_pin <= (others => '0');

    	case state is
		when STATE_IDLE =>
		out_pin <= (others => '0');
		if wait_pin = '1' then
			avs_s0_waitrequest <= '1';
		else
			avs_s0_waitrequest <= '0';
		end if;

			if avs_s0_write = '1' then
				temp_data <= avs_s0_writedata;
				next_state <= STATE_PUSH;
			else
				temp_data <= (others => '0');
				next_state <= STATE_IDLE;
			end if;

				
		when STATE_PUSH =>
		if avs_s0_chipselect = '1' then
			if out_en = '1' then
				out_pin <= temp_data;
			else
				out_pin <= (others => '0');
			end if;
			if wait_pin = '1' then
				avs_s0_waitrequest <= '1';
				next_state <= STATE_PUSH;
			else
				avs_s0_waitrequest <= '0';
				next_state <= STATE_IDLE;
			end if;
		else
			next_state <= STATE_IDLE;
		end if;
			
		end case;
    end process;
end behaviour;
