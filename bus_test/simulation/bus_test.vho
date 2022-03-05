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

-- DATE "03/05/2022 00:18:46"

-- 
-- Device: Altera 5CSEBA6U23I7 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	simple_soma_sm IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	avs_m0_address : BUFFER std_logic_vector(7 DOWNTO 0);
	avs_m0_waitrequest : IN std_logic;
	avs_m0_write_spike : BUFFER std_logic;
	avs_m0_writedata_spike_time : BUFFER std_logic_vector(7 DOWNTO 0);
	avs_m0_response_spike : IN std_logic_vector(1 DOWNTO 0);
	avs_s0_address : IN std_logic_vector(7 DOWNTO 0);
	avs_s0_write_synapse : IN std_logic;
	avs_s0_writedata_synapse : IN std_logic_vector(7 DOWNTO 0);
	avs_s0_response_synapse : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END simple_soma_sm;

-- Design Ports Information
-- avs_m0_address[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_address[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_address[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_address[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_address[4]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_address[5]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_address[6]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_address[7]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_write_spike	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_writedata_spike_time[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_writedata_spike_time[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_writedata_spike_time[2]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_writedata_spike_time[3]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_writedata_spike_time[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_writedata_spike_time[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_writedata_spike_time[6]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_writedata_spike_time[7]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[0]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[1]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[3]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[4]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[5]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[6]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[7]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_response_synapse[0]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_response_synapse[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata_synapse[7]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata_synapse[6]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata_synapse[5]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata_synapse[4]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata_synapse[3]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata_synapse[2]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata_synapse[1]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata_synapse[0]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_write_synapse	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_response_spike[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_response_spike[1]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_m0_waitrequest	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF simple_soma_sm IS
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
SIGNAL ww_avs_m0_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_avs_m0_waitrequest : std_logic;
SIGNAL ww_avs_m0_write_spike : std_logic;
SIGNAL ww_avs_m0_writedata_spike_time : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_avs_m0_response_spike : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_avs_s0_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_avs_s0_write_synapse : std_logic;
SIGNAL ww_avs_s0_writedata_synapse : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_avs_s0_response_synapse : std_logic_vector(1 DOWNTO 0);
SIGNAL \avs_s0_address[0]~input_o\ : std_logic;
SIGNAL \avs_s0_address[1]~input_o\ : std_logic;
SIGNAL \avs_s0_address[2]~input_o\ : std_logic;
SIGNAL \avs_s0_address[3]~input_o\ : std_logic;
SIGNAL \avs_s0_address[4]~input_o\ : std_logic;
SIGNAL \avs_s0_address[5]~input_o\ : std_logic;
SIGNAL \avs_s0_address[6]~input_o\ : std_logic;
SIGNAL \avs_s0_address[7]~input_o\ : std_logic;
SIGNAL \avs_s0_writedata_synapse[7]~input_o\ : std_logic;
SIGNAL \avs_s0_writedata_synapse[6]~input_o\ : std_logic;
SIGNAL \avs_s0_writedata_synapse[5]~input_o\ : std_logic;
SIGNAL \avs_s0_writedata_synapse[4]~input_o\ : std_logic;
SIGNAL \avs_s0_writedata_synapse[3]~input_o\ : std_logic;
SIGNAL \avs_s0_writedata_synapse[2]~input_o\ : std_logic;
SIGNAL \avs_s0_writedata_synapse[1]~input_o\ : std_logic;
SIGNAL \avs_s0_writedata_synapse[0]~input_o\ : std_logic;
SIGNAL \avs_s0_write_synapse~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \avs_m0_response_spike[0]~input_o\ : std_logic;
SIGNAL \avs_m0_response_spike[1]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \avs_m0_waitrequest~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
avs_m0_address <= ww_avs_m0_address;
ww_avs_m0_waitrequest <= avs_m0_waitrequest;
avs_m0_write_spike <= ww_avs_m0_write_spike;
avs_m0_writedata_spike_time <= ww_avs_m0_writedata_spike_time;
ww_avs_m0_response_spike <= avs_m0_response_spike;
ww_avs_s0_address <= avs_s0_address;
ww_avs_s0_write_synapse <= avs_s0_write_synapse;
ww_avs_s0_writedata_synapse <= avs_s0_writedata_synapse;
avs_s0_response_synapse <= ww_avs_s0_response_synapse;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N2
\avs_m0_address[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_avs_m0_address(0));

-- Location: IOOBUF_X52_Y0_N19
\avs_m0_address[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_m0_address(1));

-- Location: IOOBUF_X89_Y9_N5
\avs_m0_address[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_m0_address(2));

-- Location: IOOBUF_X38_Y81_N53
\avs_m0_address[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_m0_address(3));

-- Location: IOOBUF_X89_Y4_N96
\avs_m0_address[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_m0_address(4));

-- Location: IOOBUF_X86_Y0_N2
\avs_m0_address[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_m0_address(5));

-- Location: IOOBUF_X4_Y0_N2
\avs_m0_address[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_m0_address(6));

-- Location: IOOBUF_X54_Y0_N53
\avs_m0_address[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_m0_address(7));

-- Location: IOOBUF_X8_Y0_N53
\avs_m0_write_spike~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_avs_m0_write_spike);

-- Location: IOOBUF_X40_Y81_N19
\avs_m0_writedata_spike_time[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_avs_m0_writedata_spike_time(0));

-- Location: IOOBUF_X89_Y8_N5
\avs_m0_writedata_spike_time[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_m0_writedata_spike_time(1));

-- Location: IOOBUF_X40_Y0_N36
\avs_m0_writedata_spike_time[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_m0_writedata_spike_time(2));

-- Location: IOOBUF_X89_Y4_N79
\avs_m0_writedata_spike_time[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_avs_m0_writedata_spike_time(3));

-- Location: IOOBUF_X6_Y0_N19
\avs_m0_writedata_spike_time[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_m0_writedata_spike_time(4));

-- Location: IOOBUF_X86_Y0_N36
\avs_m0_writedata_spike_time[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_m0_writedata_spike_time(5));

-- Location: IOOBUF_X6_Y0_N2
\avs_m0_writedata_spike_time[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_m0_writedata_spike_time(6));

-- Location: IOOBUF_X34_Y0_N42
\avs_m0_writedata_spike_time[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_m0_writedata_spike_time(7));

-- Location: IOOBUF_X38_Y0_N19
\avs_s0_response_synapse[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_s0_response_synapse(0));

-- Location: IOOBUF_X62_Y0_N19
\avs_s0_response_synapse[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_s0_response_synapse(1));

-- Location: IOIBUF_X89_Y8_N38
\avs_s0_address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(0),
	o => \avs_s0_address[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\avs_s0_address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(1),
	o => \avs_s0_address[1]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\avs_s0_address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(2),
	o => \avs_s0_address[2]~input_o\);

-- Location: IOIBUF_X74_Y0_N75
\avs_s0_address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(3),
	o => \avs_s0_address[3]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\avs_s0_address[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(4),
	o => \avs_s0_address[4]~input_o\);

-- Location: IOIBUF_X76_Y0_N18
\avs_s0_address[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(5),
	o => \avs_s0_address[5]~input_o\);

-- Location: IOIBUF_X76_Y0_N1
\avs_s0_address[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(6),
	o => \avs_s0_address[6]~input_o\);

-- Location: IOIBUF_X68_Y0_N52
\avs_s0_address[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(7),
	o => \avs_s0_address[7]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\avs_s0_writedata_synapse[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata_synapse(7),
	o => \avs_s0_writedata_synapse[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N18
\avs_s0_writedata_synapse[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata_synapse(6),
	o => \avs_s0_writedata_synapse[6]~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\avs_s0_writedata_synapse[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata_synapse(5),
	o => \avs_s0_writedata_synapse[5]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\avs_s0_writedata_synapse[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata_synapse(4),
	o => \avs_s0_writedata_synapse[4]~input_o\);

-- Location: IOIBUF_X80_Y0_N35
\avs_s0_writedata_synapse[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata_synapse(3),
	o => \avs_s0_writedata_synapse[3]~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\avs_s0_writedata_synapse[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata_synapse(2),
	o => \avs_s0_writedata_synapse[2]~input_o\);

-- Location: IOIBUF_X60_Y0_N52
\avs_s0_writedata_synapse[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata_synapse(1),
	o => \avs_s0_writedata_synapse[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\avs_s0_writedata_synapse[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata_synapse(0),
	o => \avs_s0_writedata_synapse[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\avs_s0_write_synapse~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_write_synapse,
	o => \avs_s0_write_synapse~input_o\);

-- Location: IOIBUF_X84_Y0_N1
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X40_Y81_N1
\avs_m0_response_spike[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_m0_response_spike(0),
	o => \avs_m0_response_spike[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N18
\avs_m0_response_spike[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_m0_response_spike(1),
	o => \avs_m0_response_spike[1]~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\avs_m0_waitrequest~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_m0_waitrequest,
	o => \avs_m0_waitrequest~input_o\);

-- Location: LABCELL_X2_Y13_N3
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


