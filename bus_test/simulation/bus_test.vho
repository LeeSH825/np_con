-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "03/06/2022 01:07:36"

-- 
-- Device: Altera 5CSEBA6U23I7 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	simple_SDC_sm IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	avs_s0_address : IN std_logic_vector(7 DOWNTO 0);
	avs_s0_waitrequest : OUT std_logic;
	avs_s0_read_target_synapse_addr : IN std_logic;
	avs_s0_readdata_target_synapse_addr : OUT std_logic_vector(7 DOWNTO 0)
	);
END simple_SDC_sm;

-- Design Ports Information
-- avs_s0_waitrequest	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_readdata_target_synapse_addr[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_readdata_target_synapse_addr[1]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_readdata_target_synapse_addr[2]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_readdata_target_synapse_addr[3]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_readdata_target_synapse_addr[4]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_readdata_target_synapse_addr[5]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_readdata_target_synapse_addr[6]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_readdata_target_synapse_addr[7]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_read_target_synapse_addr	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[6]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[7]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[1]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[2]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[4]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF simple_SDC_sm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_avs_s0_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_avs_s0_waitrequest : std_logic;
SIGNAL ww_avs_s0_read_target_synapse_addr : std_logic;
SIGNAL ww_avs_s0_readdata_target_synapse_addr : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add1~1_wirecell_combout\ : std_logic;
SIGNAL \avs_s0_address[7]~input_o\ : std_logic;
SIGNAL \state~feeder_combout\ : std_logic;
SIGNAL \avs_s0_address[6]~input_o\ : std_logic;
SIGNAL \avs_s0_address[5]~input_o\ : std_logic;
SIGNAL \avs_s0_address[4]~input_o\ : std_logic;
SIGNAL \avs_s0_address[3]~input_o\ : std_logic;
SIGNAL \avs_s0_address[2]~input_o\ : std_logic;
SIGNAL \avs_s0_address[1]~input_o\ : std_logic;
SIGNAL \avs_s0_address[0]~input_o\ : std_logic;
SIGNAL \Add0~34_cout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \avs_s0_read_target_synapse_addr~input_o\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \avs_s0_waitrequest~1_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \state~q\ : std_logic;
SIGNAL \index[0]~0_combout\ : std_logic;
SIGNAL \Add1~125_sumout\ : std_logic;
SIGNAL \Add1~126\ : std_logic;
SIGNAL \Add1~121_sumout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~117_sumout\ : std_logic;
SIGNAL \Add1~118\ : std_logic;
SIGNAL \Add1~113_sumout\ : std_logic;
SIGNAL \Add1~114\ : std_logic;
SIGNAL \Add1~109_sumout\ : std_logic;
SIGNAL \Add1~110\ : std_logic;
SIGNAL \Add1~105_sumout\ : std_logic;
SIGNAL \Add1~106\ : std_logic;
SIGNAL \Add1~101_sumout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~97_sumout\ : std_logic;
SIGNAL \Add1~98\ : std_logic;
SIGNAL \Add1~93_sumout\ : std_logic;
SIGNAL \Add1~94\ : std_logic;
SIGNAL \Add1~89_sumout\ : std_logic;
SIGNAL \Add1~90\ : std_logic;
SIGNAL \Add1~85_sumout\ : std_logic;
SIGNAL \Add1~86\ : std_logic;
SIGNAL \Add1~81_sumout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~77_sumout\ : std_logic;
SIGNAL \Add1~78\ : std_logic;
SIGNAL \Add1~73_sumout\ : std_logic;
SIGNAL \Add1~74\ : std_logic;
SIGNAL \Add1~69_sumout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~65_sumout\ : std_logic;
SIGNAL \Add1~66\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \avs_s0_waitrequest~0_combout\ : std_logic;
SIGNAL \avs_s0_waitrequest~1_wirecell_combout\ : std_logic;
SIGNAL \avs_s0_waitrequest~reg0_q\ : std_logic;
SIGNAL index : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_avs_s0_waitrequest~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_read_target_synapse_addr~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_waitrequest~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL ALT_INV_index : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_state~q\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_avs_s0_address <= avs_s0_address;
avs_s0_waitrequest <= ww_avs_s0_waitrequest;
ww_avs_s0_read_target_synapse_addr <= avs_s0_read_target_synapse_addr;
avs_s0_readdata_target_synapse_addr <= ww_avs_s0_readdata_target_synapse_addr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_avs_s0_waitrequest~reg0_q\ <= NOT \avs_s0_waitrequest~reg0_q\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_avs_s0_address[0]~input_o\ <= NOT \avs_s0_address[0]~input_o\;
\ALT_INV_avs_s0_address[4]~input_o\ <= NOT \avs_s0_address[4]~input_o\;
\ALT_INV_avs_s0_address[3]~input_o\ <= NOT \avs_s0_address[3]~input_o\;
\ALT_INV_avs_s0_address[2]~input_o\ <= NOT \avs_s0_address[2]~input_o\;
\ALT_INV_avs_s0_address[1]~input_o\ <= NOT \avs_s0_address[1]~input_o\;
\ALT_INV_avs_s0_address[7]~input_o\ <= NOT \avs_s0_address[7]~input_o\;
\ALT_INV_avs_s0_address[6]~input_o\ <= NOT \avs_s0_address[6]~input_o\;
\ALT_INV_avs_s0_address[5]~input_o\ <= NOT \avs_s0_address[5]~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_avs_s0_read_target_synapse_addr~input_o\ <= NOT \avs_s0_read_target_synapse_addr~input_o\;
\ALT_INV_avs_s0_waitrequest~1_combout\ <= NOT \avs_s0_waitrequest~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_index(0) <= NOT index(0);
ALT_INV_index(1) <= NOT index(1);
ALT_INV_index(2) <= NOT index(2);
ALT_INV_index(3) <= NOT index(3);
ALT_INV_index(4) <= NOT index(4);
ALT_INV_index(5) <= NOT index(5);
ALT_INV_index(6) <= NOT index(6);
ALT_INV_index(7) <= NOT index(7);
ALT_INV_index(8) <= NOT index(8);
ALT_INV_index(9) <= NOT index(9);
ALT_INV_index(10) <= NOT index(10);
ALT_INV_index(11) <= NOT index(11);
ALT_INV_index(12) <= NOT index(12);
ALT_INV_index(13) <= NOT index(13);
ALT_INV_index(14) <= NOT index(14);
ALT_INV_index(15) <= NOT index(15);
ALT_INV_index(16) <= NOT index(16);
ALT_INV_index(17) <= NOT index(17);
ALT_INV_index(18) <= NOT index(18);
ALT_INV_index(19) <= NOT index(19);
ALT_INV_index(20) <= NOT index(20);
ALT_INV_index(21) <= NOT index(21);
ALT_INV_index(22) <= NOT index(22);
ALT_INV_index(23) <= NOT index(23);
ALT_INV_index(24) <= NOT index(24);
ALT_INV_index(25) <= NOT index(25);
ALT_INV_index(26) <= NOT index(26);
ALT_INV_index(27) <= NOT index(27);
ALT_INV_index(28) <= NOT index(28);
ALT_INV_index(29) <= NOT index(29);
ALT_INV_index(30) <= NOT index(30);
ALT_INV_index(31) <= NOT index(31);
\ALT_INV_state~q\ <= NOT \state~q\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;

-- Location: IOOBUF_X6_Y0_N36
\avs_s0_waitrequest~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_avs_s0_waitrequest~reg0_q\,
	devoe => ww_devoe,
	o => ww_avs_s0_waitrequest);

-- Location: IOOBUF_X52_Y0_N19
\avs_s0_readdata_target_synapse_addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_s0_readdata_target_synapse_addr(0));

-- Location: IOOBUF_X56_Y0_N53
\avs_s0_readdata_target_synapse_addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_s0_readdata_target_synapse_addr(1));

-- Location: IOOBUF_X86_Y0_N53
\avs_s0_readdata_target_synapse_addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_s0_readdata_target_synapse_addr(2));

-- Location: IOOBUF_X72_Y0_N36
\avs_s0_readdata_target_synapse_addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_s0_readdata_target_synapse_addr(3));

-- Location: IOOBUF_X74_Y0_N59
\avs_s0_readdata_target_synapse_addr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_s0_readdata_target_synapse_addr(4));

-- Location: IOOBUF_X8_Y0_N19
\avs_s0_readdata_target_synapse_addr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_s0_readdata_target_synapse_addr(5));

-- Location: IOOBUF_X70_Y0_N36
\avs_s0_readdata_target_synapse_addr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_s0_readdata_target_synapse_addr(6));

-- Location: IOOBUF_X58_Y0_N42
\avs_s0_readdata_target_synapse_addr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_s0_readdata_target_synapse_addr(7));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X4_Y1_N57
\Add1~1_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_wirecell_combout\ = ( !\Add1~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~1_sumout\,
	combout => \Add1~1_wirecell_combout\);

-- Location: IOIBUF_X2_Y0_N75
\avs_s0_address[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(7),
	o => \avs_s0_address[7]~input_o\);

-- Location: LABCELL_X4_Y1_N51
\state~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \state~feeder_combout\ = ( \Add1~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~1_sumout\,
	combout => \state~feeder_combout\);

-- Location: IOIBUF_X4_Y0_N1
\avs_s0_address[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(6),
	o => \avs_s0_address[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\avs_s0_address[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(5),
	o => \avs_s0_address[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\avs_s0_address[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(4),
	o => \avs_s0_address[4]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\avs_s0_address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(3),
	o => \avs_s0_address[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\avs_s0_address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(2),
	o => \avs_s0_address[2]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\avs_s0_address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(1),
	o => \avs_s0_address[1]~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\avs_s0_address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(0),
	o => \avs_s0_address[0]~input_o\);

-- Location: MLABCELL_X3_Y1_N30
\Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~34_cout\ = CARRY(( \avs_s0_address[7]~input_o\ ) + ( \avs_s0_address[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avs_s0_address[7]~input_o\,
	datac => \ALT_INV_avs_s0_address[0]~input_o\,
	cin => GND,
	cout => \Add0~34_cout\);

-- Location: MLABCELL_X3_Y1_N33
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \avs_s0_address[1]~input_o\ ) + ( GND ) + ( \Add0~34_cout\ ))
-- \Add0~18\ = CARRY(( \avs_s0_address[1]~input_o\ ) + ( GND ) + ( \Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_address[1]~input_o\,
	cin => \Add0~34_cout\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X3_Y1_N36
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \avs_s0_address[2]~input_o\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \avs_s0_address[2]~input_o\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avs_s0_address[2]~input_o\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: MLABCELL_X3_Y1_N39
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \avs_s0_address[3]~input_o\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \avs_s0_address[3]~input_o\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_address[3]~input_o\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X3_Y1_N42
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \avs_s0_address[4]~input_o\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \avs_s0_address[4]~input_o\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_address[4]~input_o\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: MLABCELL_X3_Y1_N45
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \avs_s0_address[5]~input_o\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~2\ = CARRY(( \avs_s0_address[5]~input_o\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_address[5]~input_o\,
	cin => \Add0~30\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X3_Y1_N48
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \avs_s0_address[6]~input_o\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \avs_s0_address[6]~input_o\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_address[6]~input_o\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X3_Y1_N15
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\Add0~21_sumout\ & ( !\Add0~29_sumout\ & ( (!\Add0~17_sumout\ & !\Add0~25_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~17_sumout\,
	datac => \ALT_INV_Add0~25_sumout\,
	datae => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_Add0~29_sumout\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X2_Y0_N41
\avs_s0_read_target_synapse_addr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_read_target_synapse_addr,
	o => \avs_s0_read_target_synapse_addr~input_o\);

-- Location: MLABCELL_X3_Y1_N51
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \avs_s0_address[7]~input_o\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \avs_s0_address[7]~input_o\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_address[7]~input_o\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X3_Y1_N54
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \avs_s0_address[7]~input_o\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avs_s0_address[7]~input_o\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\);

-- Location: MLABCELL_X3_Y1_N21
\avs_s0_waitrequest~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \avs_s0_waitrequest~1_combout\ = ( \Add0~13_sumout\ & ( \Add0~9_sumout\ & ( \avs_s0_read_target_synapse_addr~input_o\ ) ) ) # ( !\Add0~13_sumout\ & ( \Add0~9_sumout\ & ( \avs_s0_read_target_synapse_addr~input_o\ ) ) ) # ( \Add0~13_sumout\ & ( 
-- !\Add0~9_sumout\ & ( \avs_s0_read_target_synapse_addr~input_o\ ) ) ) # ( !\Add0~13_sumout\ & ( !\Add0~9_sumout\ & ( (\avs_s0_read_target_synapse_addr~input_o\ & (((!\Equal0~0_combout\) # (\Add0~1_sumout\)) # (\Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~5_sumout\,
	datab => \ALT_INV_Add0~1_sumout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_avs_s0_read_target_synapse_addr~input_o\,
	datae => \ALT_INV_Add0~13_sumout\,
	dataf => \ALT_INV_Add0~9_sumout\,
	combout => \avs_s0_waitrequest~1_combout\);

-- Location: IOIBUF_X6_Y0_N52
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X4_Y1_N53
state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state~feeder_combout\,
	asdata => \avs_s0_waitrequest~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state~q\);

-- Location: LABCELL_X4_Y1_N54
\index[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \index[0]~0_combout\ = ( \state~q\ & ( !\rst~input_o\ ) ) # ( !\state~q\ & ( (!\rst~input_o\ & \avs_s0_read_target_synapse_addr~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_rst~input_o\,
	datac => \ALT_INV_avs_s0_read_target_synapse_addr~input_o\,
	dataf => \ALT_INV_state~q\,
	combout => \index[0]~0_combout\);

-- Location: FF_X4_Y1_N59
\index[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~1_wirecell_combout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(31));

-- Location: LABCELL_X4_Y2_N0
\Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~125_sumout\ = SUM(( index(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~126\ = CARRY(( index(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index(0),
	cin => GND,
	sumout => \Add1~125_sumout\,
	cout => \Add1~126\);

-- Location: FF_X4_Y2_N2
\index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~125_sumout\,
	asdata => \avs_s0_address[0]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(0));

-- Location: LABCELL_X4_Y2_N3
\Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~121_sumout\ = SUM(( index(1) ) + ( VCC ) + ( \Add1~126\ ))
-- \Add1~122\ = CARRY(( index(1) ) + ( VCC ) + ( \Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index(1),
	cin => \Add1~126\,
	sumout => \Add1~121_sumout\,
	cout => \Add1~122\);

-- Location: FF_X4_Y2_N5
\index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~121_sumout\,
	asdata => \avs_s0_address[1]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(1));

-- Location: LABCELL_X4_Y2_N6
\Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~117_sumout\ = SUM(( index(2) ) + ( VCC ) + ( \Add1~122\ ))
-- \Add1~118\ = CARRY(( index(2) ) + ( VCC ) + ( \Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index(2),
	cin => \Add1~122\,
	sumout => \Add1~117_sumout\,
	cout => \Add1~118\);

-- Location: FF_X4_Y2_N7
\index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~117_sumout\,
	asdata => \avs_s0_address[2]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(2));

-- Location: LABCELL_X4_Y2_N9
\Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~113_sumout\ = SUM(( index(3) ) + ( VCC ) + ( \Add1~118\ ))
-- \Add1~114\ = CARRY(( index(3) ) + ( VCC ) + ( \Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(3),
	cin => \Add1~118\,
	sumout => \Add1~113_sumout\,
	cout => \Add1~114\);

-- Location: FF_X4_Y2_N11
\index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~113_sumout\,
	asdata => \avs_s0_address[3]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(3));

-- Location: LABCELL_X4_Y2_N12
\Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~109_sumout\ = SUM(( index(4) ) + ( VCC ) + ( \Add1~114\ ))
-- \Add1~110\ = CARRY(( index(4) ) + ( VCC ) + ( \Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_index(4),
	cin => \Add1~114\,
	sumout => \Add1~109_sumout\,
	cout => \Add1~110\);

-- Location: FF_X4_Y2_N14
\index[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~109_sumout\,
	asdata => \avs_s0_address[4]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(4));

-- Location: LABCELL_X4_Y2_N15
\Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~105_sumout\ = SUM(( index(5) ) + ( VCC ) + ( \Add1~110\ ))
-- \Add1~106\ = CARRY(( index(5) ) + ( VCC ) + ( \Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(5),
	cin => \Add1~110\,
	sumout => \Add1~105_sumout\,
	cout => \Add1~106\);

-- Location: FF_X4_Y2_N17
\index[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~105_sumout\,
	asdata => \avs_s0_address[5]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(5));

-- Location: LABCELL_X4_Y2_N18
\Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~101_sumout\ = SUM(( index(6) ) + ( VCC ) + ( \Add1~106\ ))
-- \Add1~102\ = CARRY(( index(6) ) + ( VCC ) + ( \Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(6),
	cin => \Add1~106\,
	sumout => \Add1~101_sumout\,
	cout => \Add1~102\);

-- Location: FF_X4_Y2_N20
\index[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~101_sumout\,
	asdata => \avs_s0_address[6]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(6));

-- Location: LABCELL_X4_Y2_N21
\Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~97_sumout\ = SUM(( index(7) ) + ( VCC ) + ( \Add1~102\ ))
-- \Add1~98\ = CARRY(( index(7) ) + ( VCC ) + ( \Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index(7),
	cin => \Add1~102\,
	sumout => \Add1~97_sumout\,
	cout => \Add1~98\);

-- Location: FF_X4_Y2_N23
\index[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~97_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(7));

-- Location: LABCELL_X4_Y2_N24
\Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~93_sumout\ = SUM(( index(8) ) + ( VCC ) + ( \Add1~98\ ))
-- \Add1~94\ = CARRY(( index(8) ) + ( VCC ) + ( \Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(8),
	cin => \Add1~98\,
	sumout => \Add1~93_sumout\,
	cout => \Add1~94\);

-- Location: FF_X4_Y2_N26
\index[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~93_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(8));

-- Location: LABCELL_X4_Y2_N27
\Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~89_sumout\ = SUM(( index(9) ) + ( VCC ) + ( \Add1~94\ ))
-- \Add1~90\ = CARRY(( index(9) ) + ( VCC ) + ( \Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index(9),
	cin => \Add1~94\,
	sumout => \Add1~89_sumout\,
	cout => \Add1~90\);

-- Location: FF_X4_Y2_N29
\index[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~89_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(9));

-- Location: LABCELL_X4_Y2_N30
\Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~85_sumout\ = SUM(( index(10) ) + ( VCC ) + ( \Add1~90\ ))
-- \Add1~86\ = CARRY(( index(10) ) + ( VCC ) + ( \Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(10),
	cin => \Add1~90\,
	sumout => \Add1~85_sumout\,
	cout => \Add1~86\);

-- Location: FF_X4_Y2_N31
\index[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~85_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(10));

-- Location: LABCELL_X4_Y2_N33
\Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~81_sumout\ = SUM(( index(11) ) + ( VCC ) + ( \Add1~86\ ))
-- \Add1~82\ = CARRY(( index(11) ) + ( VCC ) + ( \Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_index(11),
	cin => \Add1~86\,
	sumout => \Add1~81_sumout\,
	cout => \Add1~82\);

-- Location: FF_X4_Y2_N35
\index[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~81_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(11));

-- Location: LABCELL_X4_Y2_N36
\Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~77_sumout\ = SUM(( index(12) ) + ( VCC ) + ( \Add1~82\ ))
-- \Add1~78\ = CARRY(( index(12) ) + ( VCC ) + ( \Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index(12),
	cin => \Add1~82\,
	sumout => \Add1~77_sumout\,
	cout => \Add1~78\);

-- Location: FF_X4_Y2_N38
\index[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~77_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(12));

-- Location: LABCELL_X4_Y2_N39
\Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~73_sumout\ = SUM(( index(13) ) + ( VCC ) + ( \Add1~78\ ))
-- \Add1~74\ = CARRY(( index(13) ) + ( VCC ) + ( \Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(13),
	cin => \Add1~78\,
	sumout => \Add1~73_sumout\,
	cout => \Add1~74\);

-- Location: FF_X4_Y2_N41
\index[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~73_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(13));

-- Location: LABCELL_X4_Y2_N42
\Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~69_sumout\ = SUM(( index(14) ) + ( VCC ) + ( \Add1~74\ ))
-- \Add1~70\ = CARRY(( index(14) ) + ( VCC ) + ( \Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index(14),
	cin => \Add1~74\,
	sumout => \Add1~69_sumout\,
	cout => \Add1~70\);

-- Location: FF_X4_Y2_N43
\index[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~69_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(14));

-- Location: LABCELL_X4_Y2_N45
\Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~65_sumout\ = SUM(( index(15) ) + ( VCC ) + ( \Add1~70\ ))
-- \Add1~66\ = CARRY(( index(15) ) + ( VCC ) + ( \Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index(15),
	cin => \Add1~70\,
	sumout => \Add1~65_sumout\,
	cout => \Add1~66\);

-- Location: FF_X4_Y2_N47
\index[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~65_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(15));

-- Location: LABCELL_X4_Y2_N48
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( index(16) ) + ( VCC ) + ( \Add1~66\ ))
-- \Add1~62\ = CARRY(( index(16) ) + ( VCC ) + ( \Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(16),
	cin => \Add1~66\,
	sumout => \Add1~61_sumout\,
	cout => \Add1~62\);

-- Location: FF_X4_Y2_N50
\index[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~61_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(16));

-- Location: LABCELL_X4_Y2_N51
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( index(17) ) + ( VCC ) + ( \Add1~62\ ))
-- \Add1~58\ = CARRY(( index(17) ) + ( VCC ) + ( \Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index(17),
	cin => \Add1~62\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: FF_X4_Y2_N52
\index[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(17));

-- Location: LABCELL_X4_Y2_N54
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( index(18) ) + ( VCC ) + ( \Add1~58\ ))
-- \Add1~54\ = CARRY(( index(18) ) + ( VCC ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(18),
	cin => \Add1~58\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X4_Y2_N56
\index[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(18));

-- Location: LABCELL_X4_Y2_N57
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( index(19) ) + ( VCC ) + ( \Add1~54\ ))
-- \Add1~50\ = CARRY(( index(19) ) + ( VCC ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index(19),
	cin => \Add1~54\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X4_Y2_N59
\index[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~49_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(19));

-- Location: LABCELL_X4_Y1_N0
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( index(20) ) + ( VCC ) + ( \Add1~50\ ))
-- \Add1~46\ = CARRY(( index(20) ) + ( VCC ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(20),
	cin => \Add1~50\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X4_Y1_N2
\index[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~45_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(20));

-- Location: LABCELL_X4_Y1_N3
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( index(21) ) + ( VCC ) + ( \Add1~46\ ))
-- \Add1~42\ = CARRY(( index(21) ) + ( VCC ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index(21),
	cin => \Add1~46\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X4_Y1_N5
\index[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(21));

-- Location: LABCELL_X4_Y1_N6
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( index(22) ) + ( VCC ) + ( \Add1~42\ ))
-- \Add1~38\ = CARRY(( index(22) ) + ( VCC ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(22),
	cin => \Add1~42\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X4_Y1_N7
\index[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(22));

-- Location: LABCELL_X4_Y1_N9
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( index(23) ) + ( VCC ) + ( \Add1~38\ ))
-- \Add1~34\ = CARRY(( index(23) ) + ( VCC ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(23),
	cin => \Add1~38\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X4_Y1_N11
\index[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(23));

-- Location: LABCELL_X4_Y1_N12
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( index(24) ) + ( VCC ) + ( \Add1~34\ ))
-- \Add1~30\ = CARRY(( index(24) ) + ( VCC ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_index(24),
	cin => \Add1~34\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X4_Y1_N14
\index[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(24));

-- Location: LABCELL_X4_Y1_N15
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( index(25) ) + ( VCC ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( index(25) ) + ( VCC ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(25),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X4_Y1_N16
\index[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(25));

-- Location: LABCELL_X4_Y1_N18
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( index(26) ) + ( VCC ) + ( \Add1~26\ ))
-- \Add1~22\ = CARRY(( index(26) ) + ( VCC ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(26),
	cin => \Add1~26\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X4_Y1_N20
\index[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(26));

-- Location: LABCELL_X4_Y1_N21
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( index(27) ) + ( VCC ) + ( \Add1~22\ ))
-- \Add1~18\ = CARRY(( index(27) ) + ( VCC ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_index(27),
	cin => \Add1~22\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X4_Y1_N23
\index[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(27));

-- Location: LABCELL_X4_Y1_N24
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( index(28) ) + ( VCC ) + ( \Add1~18\ ))
-- \Add1~14\ = CARRY(( index(28) ) + ( VCC ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(28),
	cin => \Add1~18\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X4_Y1_N26
\index[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(28));

-- Location: LABCELL_X4_Y1_N27
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( index(29) ) + ( VCC ) + ( \Add1~14\ ))
-- \Add1~10\ = CARRY(( index(29) ) + ( VCC ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(29),
	cin => \Add1~14\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X4_Y1_N28
\index[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(29));

-- Location: LABCELL_X4_Y1_N30
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( index(30) ) + ( VCC ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( index(30) ) + ( VCC ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(30),
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X4_Y1_N31
\index[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	asdata => \avs_s0_address[7]~input_o\,
	sload => \ALT_INV_state~q\,
	ena => \index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => index(30));

-- Location: LABCELL_X4_Y1_N33
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( index(31) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_index(31),
	cin => \Add1~6\,
	sumout => \Add1~1_sumout\);

-- Location: LABCELL_X4_Y1_N48
\avs_s0_waitrequest~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \avs_s0_waitrequest~0_combout\ = ( \Add1~1_sumout\ ) # ( !\Add1~1_sumout\ & ( \avs_s0_waitrequest~reg0_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_avs_s0_waitrequest~reg0_q\,
	dataf => \ALT_INV_Add1~1_sumout\,
	combout => \avs_s0_waitrequest~0_combout\);

-- Location: LABCELL_X4_Y1_N39
\avs_s0_waitrequest~1_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \avs_s0_waitrequest~1_wirecell_combout\ = ( !\avs_s0_waitrequest~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_avs_s0_waitrequest~1_combout\,
	combout => \avs_s0_waitrequest~1_wirecell_combout\);

-- Location: FF_X4_Y1_N49
\avs_s0_waitrequest~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \avs_s0_waitrequest~0_combout\,
	asdata => \avs_s0_waitrequest~1_wirecell_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_s0_waitrequest~reg0_q\);

-- Location: LABCELL_X10_Y4_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


