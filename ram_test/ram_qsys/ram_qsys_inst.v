	ram_qsys u0 (
		.clk_clk                               (<connected-to-clk_clk>),                               //                           clk.clk
		.reset_reset_n                         (<connected-to-reset_reset_n>),                         //                         reset.reset_n
		.ram_controller_0_addr_in_conduit      (<connected-to-ram_controller_0_addr_in_conduit>),      //      ram_controller_0_addr_in.conduit
		.ram_controller_0_w_en_in_conduit      (<connected-to-ram_controller_0_w_en_in_conduit>),      //      ram_controller_0_w_en_in.conduit
		.ram_controller_0_r_en_in_conduit      (<connected-to-ram_controller_0_r_en_in_conduit>),      //      ram_controller_0_r_en_in.conduit
		.ram_controller_0_data_out_out_conduit (<connected-to-ram_controller_0_data_out_out_conduit>), // ram_controller_0_data_out_out.conduit
		.ram_controller_0_data_in_in_conduit   (<connected-to-ram_controller_0_data_in_in_conduit>)    //   ram_controller_0_data_in_in.conduit
	);

