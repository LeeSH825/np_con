
module ram_qsys (
	clk_clk,
	reset_reset_n,
	ram_controller_0_addr_in_conduit,
	ram_controller_0_w_en_in_conduit,
	ram_controller_0_r_en_in_conduit,
	ram_controller_0_data_out_out_conduit,
	ram_controller_0_data_in_in_conduit);	

	input		clk_clk;
	input		reset_reset_n;
	input	[3:0]	ram_controller_0_addr_in_conduit;
	input		ram_controller_0_w_en_in_conduit;
	input		ram_controller_0_r_en_in_conduit;
	output	[15:0]	ram_controller_0_data_out_out_conduit;
	input	[15:0]	ram_controller_0_data_in_in_conduit;
endmodule
