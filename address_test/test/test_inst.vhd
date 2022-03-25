	component test is
		port (
			addr_master_0_data_in_condiut        : in  std_logic_vector(7 downto 0) := (others => 'X'); -- condiut
			addr_master_0_dbg_data_in_conduit    : out std_logic_vector(7 downto 0);                    -- conduit
			addr_master_0_dbg_input_en_conduit   : out std_logic;                                       -- conduit
			addr_master_0_dbg_output_en_conduit  : out std_logic;                                       -- conduit
			addr_master_0_dbg_write_data_conduit : out std_logic_vector(7 downto 0);                    -- conduit
			addr_master_0_dbg_write_to_conduit   : out std_logic_vector(2 downto 0);                    -- conduit
			addr_master_0_input_en_conduit       : in  std_logic                    := 'X';             -- conduit
			addr_master_0_output_en_conduit      : in  std_logic                    := 'X';             -- conduit
			addr_master_0_write_to_conduit       : in  std_logic_vector(2 downto 0) := (others => 'X'); -- conduit
			clk_clk                              : in  std_logic                    := 'X';             -- clk
			reset_reset_n                        : in  std_logic                    := 'X'              -- reset_n
		);
	end component test;

	u0 : component test
		port map (
			addr_master_0_data_in_condiut        => CONNECTED_TO_addr_master_0_data_in_condiut,        --        addr_master_0_data_in.condiut
			addr_master_0_dbg_data_in_conduit    => CONNECTED_TO_addr_master_0_dbg_data_in_conduit,    --    addr_master_0_dbg_data_in.conduit
			addr_master_0_dbg_input_en_conduit   => CONNECTED_TO_addr_master_0_dbg_input_en_conduit,   --   addr_master_0_dbg_input_en.conduit
			addr_master_0_dbg_output_en_conduit  => CONNECTED_TO_addr_master_0_dbg_output_en_conduit,  --  addr_master_0_dbg_output_en.conduit
			addr_master_0_dbg_write_data_conduit => CONNECTED_TO_addr_master_0_dbg_write_data_conduit, -- addr_master_0_dbg_write_data.conduit
			addr_master_0_dbg_write_to_conduit   => CONNECTED_TO_addr_master_0_dbg_write_to_conduit,   --   addr_master_0_dbg_write_to.conduit
			addr_master_0_input_en_conduit       => CONNECTED_TO_addr_master_0_input_en_conduit,       --       addr_master_0_input_en.conduit
			addr_master_0_output_en_conduit      => CONNECTED_TO_addr_master_0_output_en_conduit,      --      addr_master_0_output_en.conduit
			addr_master_0_write_to_conduit       => CONNECTED_TO_addr_master_0_write_to_conduit,       --       addr_master_0_write_to.conduit
			clk_clk                              => CONNECTED_TO_clk_clk,                              --                          clk.clk
			reset_reset_n                        => CONNECTED_TO_reset_reset_n                         --                        reset.reset_n
		);

