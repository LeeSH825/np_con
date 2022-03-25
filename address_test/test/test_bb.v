
module test (
	addr_master_0_data_in_condiut,
	addr_master_0_dbg_data_in_conduit,
	addr_master_0_dbg_input_en_conduit,
	addr_master_0_dbg_output_en_conduit,
	addr_master_0_dbg_write_data_conduit,
	addr_master_0_dbg_write_to_conduit,
	addr_master_0_input_en_conduit,
	addr_master_0_output_en_conduit,
	addr_master_0_write_to_conduit,
	clk_clk,
	reset_reset_n);	

	input	[7:0]	addr_master_0_data_in_condiut;
	output	[7:0]	addr_master_0_dbg_data_in_conduit;
	output		addr_master_0_dbg_input_en_conduit;
	output		addr_master_0_dbg_output_en_conduit;
	output	[7:0]	addr_master_0_dbg_write_data_conduit;
	output	[2:0]	addr_master_0_dbg_write_to_conduit;
	input		addr_master_0_input_en_conduit;
	input		addr_master_0_output_en_conduit;
	input	[2:0]	addr_master_0_write_to_conduit;
	input		clk_clk;
	input		reset_reset_n;
endmodule
