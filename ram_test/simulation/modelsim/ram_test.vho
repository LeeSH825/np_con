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

-- DATE "03/26/2022 19:50:23"

-- 
-- Device: Altera 5CGTFD9E5F35C7 Package FBGA1152
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

ENTITY 	ram_control IS
    PORT (
	clk : IN std_logic;
	W_EN_in : IN std_logic;
	R_EN_in : IN std_logic;
	ADDR_in : IN std_logic_vector(3 DOWNTO 0);
	DATA_IN_in : IN std_logic_vector(15 DOWNTO 0);
	DATA_OUT_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END ram_control;

-- Design Ports Information
-- DATA_OUT_out[0]	=>  Location: PIN_AP6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT_out[1]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT_out[2]	=>  Location: PIN_AN9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT_out[3]	=>  Location: PIN_AN4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT_out[4]	=>  Location: PIN_AN5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT_out[5]	=>  Location: PIN_AP7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT_out[6]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT_out[7]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT_out[8]	=>  Location: PIN_AP5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT_out[9]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT_out[10]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT_out[11]	=>  Location: PIN_AK10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT_out[12]	=>  Location: PIN_AM9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT_out[13]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT_out[14]	=>  Location: PIN_AN8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_OUT_out[15]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W_EN_in	=>  Location: PIN_AM10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R_EN_in	=>  Location: PIN_AL11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN_in[0]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_in[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_in[1]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_in[2]	=>  Location: PIN_AL15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADDR_in[3]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN_in[1]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN_in[2]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN_in[3]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN_in[4]	=>  Location: PIN_AP10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN_in[5]	=>  Location: PIN_AM11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN_in[6]	=>  Location: PIN_AM8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN_in[7]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN_in[8]	=>  Location: PIN_AN7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN_in[9]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN_in[10]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN_in[11]	=>  Location: PIN_AK15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN_in[12]	=>  Location: PIN_AM15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN_in[13]	=>  Location: PIN_AL10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN_in[14]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA_IN_in[15]	=>  Location: PIN_AP9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ram_control IS
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
SIGNAL ww_W_EN_in : std_logic;
SIGNAL ww_R_EN_in : std_logic;
SIGNAL ww_ADDR_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DATA_IN_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DATA_OUT_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \W_EN_in~input_o\ : std_logic;
SIGNAL \R_EN_in~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \DATA_IN_in[0]~input_o\ : std_logic;
SIGNAL \ADDR_in[0]~input_o\ : std_logic;
SIGNAL \ADDR_in[1]~input_o\ : std_logic;
SIGNAL \ADDR_in[2]~input_o\ : std_logic;
SIGNAL \ADDR_in[3]~input_o\ : std_logic;
SIGNAL \DATA_IN_in[1]~input_o\ : std_logic;
SIGNAL \DATA_IN_in[2]~input_o\ : std_logic;
SIGNAL \DATA_IN_in[3]~input_o\ : std_logic;
SIGNAL \DATA_IN_in[4]~input_o\ : std_logic;
SIGNAL \DATA_IN_in[5]~input_o\ : std_logic;
SIGNAL \DATA_IN_in[6]~input_o\ : std_logic;
SIGNAL \DATA_IN_in[7]~input_o\ : std_logic;
SIGNAL \DATA_IN_in[8]~input_o\ : std_logic;
SIGNAL \DATA_IN_in[9]~input_o\ : std_logic;
SIGNAL \DATA_IN_in[10]~input_o\ : std_logic;
SIGNAL \DATA_IN_in[11]~input_o\ : std_logic;
SIGNAL \DATA_IN_in[12]~input_o\ : std_logic;
SIGNAL \DATA_IN_in[13]~input_o\ : std_logic;
SIGNAL \DATA_IN_in[14]~input_o\ : std_logic;
SIGNAL \DATA_IN_in[15]~input_o\ : std_logic;
SIGNAL \RAMM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_W_EN_in <= W_EN_in;
ww_R_EN_in <= R_EN_in;
ww_ADDR_in <= ADDR_in;
ww_DATA_IN_in <= DATA_IN_in;
DATA_OUT_out <= ww_DATA_OUT_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \DATA_IN_in[15]~input_o\ & \DATA_IN_in[14]~input_o\ & \DATA_IN_in[13]~input_o\ & \DATA_IN_in[12]~input_o\ & \DATA_IN_in[11]~input_o\ & 
\DATA_IN_in[10]~input_o\ & \DATA_IN_in[9]~input_o\ & \DATA_IN_in[8]~input_o\ & \DATA_IN_in[7]~input_o\ & \DATA_IN_in[6]~input_o\ & \DATA_IN_in[5]~input_o\ & \DATA_IN_in[4]~input_o\ & \DATA_IN_in[3]~input_o\ & \DATA_IN_in[2]~input_o\ & 
\DATA_IN_in[1]~input_o\ & \DATA_IN_in[0]~input_o\);

\RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ADDR_in[3]~input_o\ & \ADDR_in[2]~input_o\ & \ADDR_in[1]~input_o\ & \ADDR_in[0]~input_o\);

\RAMM|altsyncram_component|auto_generated|q_a\(0) <= \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\RAMM|altsyncram_component|auto_generated|q_a\(1) <= \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\RAMM|altsyncram_component|auto_generated|q_a\(2) <= \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\RAMM|altsyncram_component|auto_generated|q_a\(3) <= \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\RAMM|altsyncram_component|auto_generated|q_a\(4) <= \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\RAMM|altsyncram_component|auto_generated|q_a\(5) <= \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\RAMM|altsyncram_component|auto_generated|q_a\(6) <= \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\RAMM|altsyncram_component|auto_generated|q_a\(7) <= \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\RAMM|altsyncram_component|auto_generated|q_a\(8) <= \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\RAMM|altsyncram_component|auto_generated|q_a\(9) <= \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\RAMM|altsyncram_component|auto_generated|q_a\(10) <= \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\RAMM|altsyncram_component|auto_generated|q_a\(11) <= \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\RAMM|altsyncram_component|auto_generated|q_a\(12) <= \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\RAMM|altsyncram_component|auto_generated|q_a\(13) <= \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\RAMM|altsyncram_component|auto_generated|q_a\(14) <= \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\RAMM|altsyncram_component|auto_generated|q_a\(15) <= \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

-- Location: IOOBUF_X20_Y0_N36
\DATA_OUT_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMM|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_DATA_OUT_out(0));

-- Location: IOOBUF_X20_Y0_N19
\DATA_OUT_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMM|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_DATA_OUT_out(1));

-- Location: IOOBUF_X26_Y0_N53
\DATA_OUT_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMM|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_DATA_OUT_out(2));

-- Location: IOOBUF_X18_Y0_N53
\DATA_OUT_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMM|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_DATA_OUT_out(3));

-- Location: IOOBUF_X18_Y0_N36
\DATA_OUT_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMM|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_DATA_OUT_out(4));

-- Location: IOOBUF_X22_Y0_N53
\DATA_OUT_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMM|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_DATA_OUT_out(5));

-- Location: IOOBUF_X20_Y0_N2
\DATA_OUT_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMM|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_DATA_OUT_out(6));

-- Location: IOOBUF_X22_Y0_N2
\DATA_OUT_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMM|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_DATA_OUT_out(7));

-- Location: IOOBUF_X20_Y0_N53
\DATA_OUT_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMM|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_DATA_OUT_out(8));

-- Location: IOOBUF_X22_Y0_N19
\DATA_OUT_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMM|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_DATA_OUT_out(9));

-- Location: IOOBUF_X18_Y0_N19
\DATA_OUT_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMM|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_DATA_OUT_out(10));

-- Location: IOOBUF_X17_Y0_N59
\DATA_OUT_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMM|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_DATA_OUT_out(11));

-- Location: IOOBUF_X26_Y0_N36
\DATA_OUT_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMM|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_DATA_OUT_out(12));

-- Location: IOOBUF_X18_Y0_N2
\DATA_OUT_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMM|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_DATA_OUT_out(13));

-- Location: IOOBUF_X25_Y0_N93
\DATA_OUT_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMM|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_DATA_OUT_out(14));

-- Location: IOOBUF_X26_Y0_N19
\DATA_OUT_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAMM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_DATA_OUT_out(15));

-- Location: IOIBUF_X27_Y0_N52
\W_EN_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W_EN_in,
	o => \W_EN_in~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\R_EN_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R_EN_in,
	o => \R_EN_in~input_o\);

-- Location: IOIBUF_X46_Y0_N18
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
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

-- Location: IOIBUF_X35_Y0_N18
\DATA_IN_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN_in(0),
	o => \DATA_IN_in[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\ADDR_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR_in(0),
	o => \ADDR_in[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\ADDR_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR_in(1),
	o => \ADDR_in[1]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\ADDR_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR_in(2),
	o => \ADDR_in[2]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\ADDR_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADDR_in(3),
	o => \ADDR_in[3]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\DATA_IN_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN_in(1),
	o => \DATA_IN_in[1]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\DATA_IN_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN_in(2),
	o => \DATA_IN_in[2]~input_o\);

-- Location: IOIBUF_X27_Y0_N18
\DATA_IN_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN_in(3),
	o => \DATA_IN_in[3]~input_o\);

-- Location: IOIBUF_X35_Y0_N35
\DATA_IN_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN_in(4),
	o => \DATA_IN_in[4]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\DATA_IN_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN_in(5),
	o => \DATA_IN_in[5]~input_o\);

-- Location: IOIBUF_X25_Y0_N75
\DATA_IN_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN_in(6),
	o => \DATA_IN_in[6]~input_o\);

-- Location: IOIBUF_X25_Y0_N58
\DATA_IN_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN_in(7),
	o => \DATA_IN_in[7]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\DATA_IN_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN_in(8),
	o => \DATA_IN_in[8]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\DATA_IN_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN_in(9),
	o => \DATA_IN_in[9]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\DATA_IN_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN_in(10),
	o => \DATA_IN_in[10]~input_o\);

-- Location: IOIBUF_X37_Y0_N18
\DATA_IN_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN_in(11),
	o => \DATA_IN_in[11]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\DATA_IN_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN_in(12),
	o => \DATA_IN_in[12]~input_o\);

-- Location: IOIBUF_X27_Y0_N35
\DATA_IN_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN_in(13),
	o => \DATA_IN_in[13]~input_o\);

-- Location: IOIBUF_X25_Y0_N41
\DATA_IN_in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN_in(14),
	o => \DATA_IN_in[14]~input_o\);

-- Location: IOIBUF_X35_Y0_N52
\DATA_IN_in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DATA_IN_in(15),
	o => \DATA_IN_in[15]~input_o\);

-- Location: M10K_X25_Y2_N0
\RAMM|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram:RAMM|altsyncram:altsyncram_component|altsyncram_el04:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \W_EN_in~input_o\,
	portare => \R_EN_in~input_o\,
	clk0 => \clk~inputCLKENA0_outclk\,
	portadatain => \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAMM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X67_Y62_N0
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


