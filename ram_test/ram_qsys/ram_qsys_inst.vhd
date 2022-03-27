	component ram_qsys is
		port (
			clk_clk                               : in  std_logic                     := 'X';             -- clk
			reset_reset_n                         : in  std_logic                     := 'X';             -- reset_n
			ram_controller_0_addr_in_conduit      : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- conduit
			ram_controller_0_w_en_in_conduit      : in  std_logic                     := 'X';             -- conduit
			ram_controller_0_r_en_in_conduit      : in  std_logic                     := 'X';             -- conduit
			ram_controller_0_data_out_out_conduit : out std_logic_vector(15 downto 0);                    -- conduit
			ram_controller_0_data_in_in_conduit   : in  std_logic_vector(15 downto 0) := (others => 'X')  -- conduit
		);
	end component ram_qsys;

	u0 : component ram_qsys
		port map (
			clk_clk                               => CONNECTED_TO_clk_clk,                               --                           clk.clk
			reset_reset_n                         => CONNECTED_TO_reset_reset_n,                         --                         reset.reset_n
			ram_controller_0_addr_in_conduit      => CONNECTED_TO_ram_controller_0_addr_in_conduit,      --      ram_controller_0_addr_in.conduit
			ram_controller_0_w_en_in_conduit      => CONNECTED_TO_ram_controller_0_w_en_in_conduit,      --      ram_controller_0_w_en_in.conduit
			ram_controller_0_r_en_in_conduit      => CONNECTED_TO_ram_controller_0_r_en_in_conduit,      --      ram_controller_0_r_en_in.conduit
			ram_controller_0_data_out_out_conduit => CONNECTED_TO_ram_controller_0_data_out_out_conduit, -- ram_controller_0_data_out_out.conduit
			ram_controller_0_data_in_in_conduit   => CONNECTED_TO_ram_controller_0_data_in_in_conduit    --   ram_controller_0_data_in_in.conduit
		);

