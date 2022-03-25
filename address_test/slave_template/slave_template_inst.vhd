	component slave_template is
		port (
			clk              : in  std_logic                     := 'X';             -- clk
			reset            : in  std_logic                     := 'X';             -- reset
			slave_address    : in  std_logic_vector(8 downto 0)  := (others => 'X'); -- address
			slave_read       : in  std_logic                     := 'X';             -- read
			slave_write      : in  std_logic                     := 'X';             -- write
			slave_readdata   : out std_logic_vector(31 downto 0);                    -- readdata
			slave_writedata  : in  std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			slave_byteenable : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			user_dataout_0   : out std_logic_vector(31 downto 0);                    -- dataout_0
			user_dataout_1   : out std_logic_vector(31 downto 0);                    -- dataout_1
			user_dataout_2   : out std_logic_vector(31 downto 0);                    -- dataout_2
			user_dataout_3   : out std_logic_vector(31 downto 0);                    -- dataout_3
			user_dataout_4   : out std_logic_vector(31 downto 0);                    -- dataout_4
			user_dataout_5   : out std_logic_vector(31 downto 0);                    -- dataout_5
			user_dataout_6   : out std_logic_vector(31 downto 0);                    -- dataout_6
			user_dataout_7   : out std_logic_vector(31 downto 0);                    -- dataout_7
			user_dataout_8   : out std_logic_vector(31 downto 0);                    -- dataout_8
			user_dataout_9   : out std_logic_vector(31 downto 0);                    -- dataout_9
			user_dataout_10  : out std_logic_vector(31 downto 0);                    -- dataout_10
			user_dataout_11  : out std_logic_vector(31 downto 0);                    -- dataout_11
			user_dataout_12  : out std_logic_vector(31 downto 0);                    -- dataout_12
			user_dataout_13  : out std_logic_vector(31 downto 0);                    -- dataout_13
			user_dataout_14  : out std_logic_vector(31 downto 0);                    -- dataout_14
			user_dataout_15  : out std_logic_vector(31 downto 0);                    -- dataout_15
			user_datain_0    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- datain_0
			user_datain_1    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- datain_1
			user_datain_2    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- datain_2
			user_datain_3    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- datain_3
			user_datain_4    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- datain_4
			user_datain_5    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- datain_5
			user_datain_6    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- datain_6
			user_datain_7    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- datain_7
			user_datain_8    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- datain_8
			user_datain_9    : in  std_logic_vector(31 downto 0) := (others => 'X'); -- datain_9
			user_datain_10   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- datain_10
			user_datain_11   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- datain_11
			user_datain_12   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- datain_12
			user_datain_13   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- datain_13
			user_datain_14   : in  std_logic_vector(31 downto 0) := (others => 'X'); -- datain_14
			user_datain_15   : in  std_logic_vector(31 downto 0) := (others => 'X')  -- datain_15
		);
	end component slave_template;

	u0 : component slave_template
		port map (
			clk              => CONNECTED_TO_clk,              --       clock_reset.clk
			reset            => CONNECTED_TO_reset,            -- clock_reset_reset.reset
			slave_address    => CONNECTED_TO_slave_address,    --                s0.address
			slave_read       => CONNECTED_TO_slave_read,       --                  .read
			slave_write      => CONNECTED_TO_slave_write,      --                  .write
			slave_readdata   => CONNECTED_TO_slave_readdata,   --                  .readdata
			slave_writedata  => CONNECTED_TO_slave_writedata,  --                  .writedata
			slave_byteenable => CONNECTED_TO_slave_byteenable, --                  .byteenable
			user_dataout_0   => CONNECTED_TO_user_dataout_0,   --    user_interface.dataout_0
			user_dataout_1   => CONNECTED_TO_user_dataout_1,   --                  .dataout_1
			user_dataout_2   => CONNECTED_TO_user_dataout_2,   --                  .dataout_2
			user_dataout_3   => CONNECTED_TO_user_dataout_3,   --                  .dataout_3
			user_dataout_4   => CONNECTED_TO_user_dataout_4,   --                  .dataout_4
			user_dataout_5   => CONNECTED_TO_user_dataout_5,   --                  .dataout_5
			user_dataout_6   => CONNECTED_TO_user_dataout_6,   --                  .dataout_6
			user_dataout_7   => CONNECTED_TO_user_dataout_7,   --                  .dataout_7
			user_dataout_8   => CONNECTED_TO_user_dataout_8,   --                  .dataout_8
			user_dataout_9   => CONNECTED_TO_user_dataout_9,   --                  .dataout_9
			user_dataout_10  => CONNECTED_TO_user_dataout_10,  --                  .dataout_10
			user_dataout_11  => CONNECTED_TO_user_dataout_11,  --                  .dataout_11
			user_dataout_12  => CONNECTED_TO_user_dataout_12,  --                  .dataout_12
			user_dataout_13  => CONNECTED_TO_user_dataout_13,  --                  .dataout_13
			user_dataout_14  => CONNECTED_TO_user_dataout_14,  --                  .dataout_14
			user_dataout_15  => CONNECTED_TO_user_dataout_15,  --                  .dataout_15
			user_datain_0    => CONNECTED_TO_user_datain_0,    --                  .datain_0
			user_datain_1    => CONNECTED_TO_user_datain_1,    --                  .datain_1
			user_datain_2    => CONNECTED_TO_user_datain_2,    --                  .datain_2
			user_datain_3    => CONNECTED_TO_user_datain_3,    --                  .datain_3
			user_datain_4    => CONNECTED_TO_user_datain_4,    --                  .datain_4
			user_datain_5    => CONNECTED_TO_user_datain_5,    --                  .datain_5
			user_datain_6    => CONNECTED_TO_user_datain_6,    --                  .datain_6
			user_datain_7    => CONNECTED_TO_user_datain_7,    --                  .datain_7
			user_datain_8    => CONNECTED_TO_user_datain_8,    --                  .datain_8
			user_datain_9    => CONNECTED_TO_user_datain_9,    --                  .datain_9
			user_datain_10   => CONNECTED_TO_user_datain_10,   --                  .datain_10
			user_datain_11   => CONNECTED_TO_user_datain_11,   --                  .datain_11
			user_datain_12   => CONNECTED_TO_user_datain_12,   --                  .datain_12
			user_datain_13   => CONNECTED_TO_user_datain_13,   --                  .datain_13
			user_datain_14   => CONNECTED_TO_user_datain_14,   --                  .datain_14
			user_datain_15   => CONNECTED_TO_user_datain_15    --                  .datain_15
		);

