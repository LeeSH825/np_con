// test_mm_interconnect_2.v

// This file was auto-generated from altera_mm_interconnect_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 21.1 842

`timescale 1 ps / 1 ps
module test_mm_interconnect_2 (
		input  wire       clk_0_clk_clk,                                        //                                      clk_0_clk.clk
		input  wire       simple_soma_0_reset_sink_reset_bridge_in_reset_reset, // simple_soma_0_reset_sink_reset_bridge_in_reset.reset
		input  wire [0:0] simple_soma_0_m_time_address,                         //                           simple_soma_0_m_time.address
		output wire       simple_soma_0_m_time_waitrequest,                     //                                               .waitrequest
		input  wire       simple_soma_0_m_time_read,                            //                                               .read
		output wire [7:0] simple_soma_0_m_time_readdata,                        //                                               .readdata
		output wire [7:0] simple_synapse_0_s_time_address,                      //                        simple_synapse_0_s_time.address
		output wire       simple_synapse_0_s_time_read,                         //                                               .read
		input  wire [7:0] simple_synapse_0_s_time_readdata,                     //                                               .readdata
		input  wire       simple_synapse_0_s_time_waitrequest                   //                                               .waitrequest
	);

	wire        simple_soma_0_m_time_translator_avalon_universal_master_0_waitrequest;   // simple_synapse_0_s_time_translator:uav_waitrequest -> simple_soma_0_m_time_translator:uav_waitrequest
	wire  [7:0] simple_soma_0_m_time_translator_avalon_universal_master_0_readdata;      // simple_synapse_0_s_time_translator:uav_readdata -> simple_soma_0_m_time_translator:uav_readdata
	wire        simple_soma_0_m_time_translator_avalon_universal_master_0_debugaccess;   // simple_soma_0_m_time_translator:uav_debugaccess -> simple_synapse_0_s_time_translator:uav_debugaccess
	wire  [7:0] simple_soma_0_m_time_translator_avalon_universal_master_0_address;       // simple_soma_0_m_time_translator:uav_address -> simple_synapse_0_s_time_translator:uav_address
	wire        simple_soma_0_m_time_translator_avalon_universal_master_0_read;          // simple_soma_0_m_time_translator:uav_read -> simple_synapse_0_s_time_translator:uav_read
	wire  [0:0] simple_soma_0_m_time_translator_avalon_universal_master_0_byteenable;    // simple_soma_0_m_time_translator:uav_byteenable -> simple_synapse_0_s_time_translator:uav_byteenable
	wire        simple_soma_0_m_time_translator_avalon_universal_master_0_readdatavalid; // simple_synapse_0_s_time_translator:uav_readdatavalid -> simple_soma_0_m_time_translator:uav_readdatavalid
	wire        simple_soma_0_m_time_translator_avalon_universal_master_0_lock;          // simple_soma_0_m_time_translator:uav_lock -> simple_synapse_0_s_time_translator:uav_lock
	wire        simple_soma_0_m_time_translator_avalon_universal_master_0_write;         // simple_soma_0_m_time_translator:uav_write -> simple_synapse_0_s_time_translator:uav_write
	wire  [7:0] simple_soma_0_m_time_translator_avalon_universal_master_0_writedata;     // simple_soma_0_m_time_translator:uav_writedata -> simple_synapse_0_s_time_translator:uav_writedata
	wire  [0:0] simple_soma_0_m_time_translator_avalon_universal_master_0_burstcount;    // simple_soma_0_m_time_translator:uav_burstcount -> simple_synapse_0_s_time_translator:uav_burstcount

	altera_merlin_master_translator #(
		.AV_ADDRESS_W                (1),
		.AV_DATA_W                   (8),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (1),
		.UAV_ADDRESS_W               (8),
		.UAV_BURSTCOUNT_W            (1),
		.USE_READ                    (1),
		.USE_WRITE                   (0),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (0),
		.USE_READDATAVALID           (0),
		.USE_WAITREQUEST             (1),
		.USE_READRESPONSE            (0),
		.USE_WRITERESPONSE           (0),
		.AV_SYMBOLS_PER_WORD         (1),
		.AV_ADDRESS_SYMBOLS          (1),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (0),
		.UAV_CONSTANT_BURST_BEHAVIOR (0),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0)
	) simple_soma_0_m_time_translator (
		.clk                    (clk_0_clk_clk),                                                           //                       clk.clk
		.reset                  (simple_soma_0_reset_sink_reset_bridge_in_reset_reset),                    //                     reset.reset
		.uav_address            (simple_soma_0_m_time_translator_avalon_universal_master_0_address),       // avalon_universal_master_0.address
		.uav_burstcount         (simple_soma_0_m_time_translator_avalon_universal_master_0_burstcount),    //                          .burstcount
		.uav_read               (simple_soma_0_m_time_translator_avalon_universal_master_0_read),          //                          .read
		.uav_write              (simple_soma_0_m_time_translator_avalon_universal_master_0_write),         //                          .write
		.uav_waitrequest        (simple_soma_0_m_time_translator_avalon_universal_master_0_waitrequest),   //                          .waitrequest
		.uav_readdatavalid      (simple_soma_0_m_time_translator_avalon_universal_master_0_readdatavalid), //                          .readdatavalid
		.uav_byteenable         (simple_soma_0_m_time_translator_avalon_universal_master_0_byteenable),    //                          .byteenable
		.uav_readdata           (simple_soma_0_m_time_translator_avalon_universal_master_0_readdata),      //                          .readdata
		.uav_writedata          (simple_soma_0_m_time_translator_avalon_universal_master_0_writedata),     //                          .writedata
		.uav_lock               (simple_soma_0_m_time_translator_avalon_universal_master_0_lock),          //                          .lock
		.uav_debugaccess        (simple_soma_0_m_time_translator_avalon_universal_master_0_debugaccess),   //                          .debugaccess
		.av_address             (simple_soma_0_m_time_address),                                            //      avalon_anti_master_0.address
		.av_waitrequest         (simple_soma_0_m_time_waitrequest),                                        //                          .waitrequest
		.av_read                (simple_soma_0_m_time_read),                                               //                          .read
		.av_readdata            (simple_soma_0_m_time_readdata),                                           //                          .readdata
		.av_burstcount          (1'b1),                                                                    //               (terminated)
		.av_byteenable          (1'b1),                                                                    //               (terminated)
		.av_beginbursttransfer  (1'b0),                                                                    //               (terminated)
		.av_begintransfer       (1'b0),                                                                    //               (terminated)
		.av_chipselect          (1'b0),                                                                    //               (terminated)
		.av_readdatavalid       (),                                                                        //               (terminated)
		.av_write               (1'b0),                                                                    //               (terminated)
		.av_writedata           (8'b00000000),                                                             //               (terminated)
		.av_lock                (1'b0),                                                                    //               (terminated)
		.av_debugaccess         (1'b0),                                                                    //               (terminated)
		.uav_clken              (),                                                                        //               (terminated)
		.av_clken               (1'b1),                                                                    //               (terminated)
		.uav_response           (2'b00),                                                                   //               (terminated)
		.av_response            (),                                                                        //               (terminated)
		.uav_writeresponsevalid (1'b0),                                                                    //               (terminated)
		.av_writeresponsevalid  ()                                                                         //               (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (8),
		.AV_DATA_W                      (8),
		.UAV_DATA_W                     (8),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (1),
		.UAV_BYTEENABLE_W               (1),
		.UAV_ADDRESS_W                  (8),
		.UAV_BURSTCOUNT_W               (1),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.USE_READRESPONSE               (0),
		.USE_WRITERESPONSE              (0),
		.AV_SYMBOLS_PER_WORD            (1),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) simple_synapse_0_s_time_translator (
		.clk                    (clk_0_clk_clk),                                                           //                      clk.clk
		.reset                  (simple_soma_0_reset_sink_reset_bridge_in_reset_reset),                    //                    reset.reset
		.uav_address            (simple_soma_0_m_time_translator_avalon_universal_master_0_address),       // avalon_universal_slave_0.address
		.uav_burstcount         (simple_soma_0_m_time_translator_avalon_universal_master_0_burstcount),    //                         .burstcount
		.uav_read               (simple_soma_0_m_time_translator_avalon_universal_master_0_read),          //                         .read
		.uav_write              (simple_soma_0_m_time_translator_avalon_universal_master_0_write),         //                         .write
		.uav_waitrequest        (simple_soma_0_m_time_translator_avalon_universal_master_0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid      (simple_soma_0_m_time_translator_avalon_universal_master_0_readdatavalid), //                         .readdatavalid
		.uav_byteenable         (simple_soma_0_m_time_translator_avalon_universal_master_0_byteenable),    //                         .byteenable
		.uav_readdata           (simple_soma_0_m_time_translator_avalon_universal_master_0_readdata),      //                         .readdata
		.uav_writedata          (simple_soma_0_m_time_translator_avalon_universal_master_0_writedata),     //                         .writedata
		.uav_lock               (simple_soma_0_m_time_translator_avalon_universal_master_0_lock),          //                         .lock
		.uav_debugaccess        (simple_soma_0_m_time_translator_avalon_universal_master_0_debugaccess),   //                         .debugaccess
		.av_address             (simple_synapse_0_s_time_address),                                         //      avalon_anti_slave_0.address
		.av_read                (simple_synapse_0_s_time_read),                                            //                         .read
		.av_readdata            (simple_synapse_0_s_time_readdata),                                        //                         .readdata
		.av_waitrequest         (simple_synapse_0_s_time_waitrequest),                                     //                         .waitrequest
		.av_write               (),                                                                        //              (terminated)
		.av_writedata           (),                                                                        //              (terminated)
		.av_begintransfer       (),                                                                        //              (terminated)
		.av_beginbursttransfer  (),                                                                        //              (terminated)
		.av_burstcount          (),                                                                        //              (terminated)
		.av_byteenable          (),                                                                        //              (terminated)
		.av_readdatavalid       (1'b0),                                                                    //              (terminated)
		.av_writebyteenable     (),                                                                        //              (terminated)
		.av_lock                (),                                                                        //              (terminated)
		.av_chipselect          (),                                                                        //              (terminated)
		.av_clken               (),                                                                        //              (terminated)
		.uav_clken              (1'b0),                                                                    //              (terminated)
		.av_debugaccess         (),                                                                        //              (terminated)
		.av_outputenable        (),                                                                        //              (terminated)
		.uav_response           (),                                                                        //              (terminated)
		.av_response            (2'b00),                                                                   //              (terminated)
		.uav_writeresponsevalid (),                                                                        //              (terminated)
		.av_writeresponsevalid  (1'b0)                                                                     //              (terminated)
	);

endmodule
