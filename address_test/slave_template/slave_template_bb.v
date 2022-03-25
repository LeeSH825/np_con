
module slave_template (
	clk,
	reset,
	slave_address,
	slave_read,
	slave_write,
	slave_readdata,
	slave_writedata,
	slave_byteenable,
	user_dataout_0,
	user_dataout_1,
	user_dataout_2,
	user_dataout_3,
	user_dataout_4,
	user_dataout_5,
	user_dataout_6,
	user_dataout_7,
	user_dataout_8,
	user_dataout_9,
	user_dataout_10,
	user_dataout_11,
	user_dataout_12,
	user_dataout_13,
	user_dataout_14,
	user_dataout_15,
	user_datain_0,
	user_datain_1,
	user_datain_2,
	user_datain_3,
	user_datain_4,
	user_datain_5,
	user_datain_6,
	user_datain_7,
	user_datain_8,
	user_datain_9,
	user_datain_10,
	user_datain_11,
	user_datain_12,
	user_datain_13,
	user_datain_14,
	user_datain_15);	

	input		clk;
	input		reset;
	input	[8:0]	slave_address;
	input		slave_read;
	input		slave_write;
	output	[31:0]	slave_readdata;
	input	[31:0]	slave_writedata;
	input	[3:0]	slave_byteenable;
	output	[31:0]	user_dataout_0;
	output	[31:0]	user_dataout_1;
	output	[31:0]	user_dataout_2;
	output	[31:0]	user_dataout_3;
	output	[31:0]	user_dataout_4;
	output	[31:0]	user_dataout_5;
	output	[31:0]	user_dataout_6;
	output	[31:0]	user_dataout_7;
	output	[31:0]	user_dataout_8;
	output	[31:0]	user_dataout_9;
	output	[31:0]	user_dataout_10;
	output	[31:0]	user_dataout_11;
	output	[31:0]	user_dataout_12;
	output	[31:0]	user_dataout_13;
	output	[31:0]	user_dataout_14;
	output	[31:0]	user_dataout_15;
	input	[31:0]	user_datain_0;
	input	[31:0]	user_datain_1;
	input	[31:0]	user_datain_2;
	input	[31:0]	user_datain_3;
	input	[31:0]	user_datain_4;
	input	[31:0]	user_datain_5;
	input	[31:0]	user_datain_6;
	input	[31:0]	user_datain_7;
	input	[31:0]	user_datain_8;
	input	[31:0]	user_datain_9;
	input	[31:0]	user_datain_10;
	input	[31:0]	user_datain_11;
	input	[31:0]	user_datain_12;
	input	[31:0]	user_datain_13;
	input	[31:0]	user_datain_14;
	input	[31:0]	user_datain_15;
endmodule
