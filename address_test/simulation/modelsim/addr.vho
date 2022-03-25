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

-- DATE "03/21/2022 10:54:21"

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

ENTITY 	addr_slave IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	avs_s0_address : IN std_logic_vector(11 DOWNTO 0);
	avs_s0_waitrequest : OUT std_logic;
	avs_s0_burstcount : IN std_logic_vector(3 DOWNTO 0);
	avs_s0_byteenable : IN std_logic_vector(3 DOWNTO 0);
	avs_s0_write : IN std_logic;
	avs_s0_writedata : IN std_logic_vector(31 DOWNTO 0);
	avm_m0_address : OUT std_logic_vector(11 DOWNTO 0);
	avm_m0_waitrequest : IN std_logic;
	avm_m0_burstcount : OUT std_logic_vector(3 DOWNTO 0);
	avm_m0_byteenable : OUT std_logic_vector(3 DOWNTO 0);
	avm_m0_write : OUT std_logic;
	avm_m0_writedata : OUT std_logic_vector(31 DOWNTO 0)
	);
END addr_slave;

-- Design Ports Information
-- avs_s0_waitrequest	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_address[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_address[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_address[2]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_address[3]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_address[4]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_address[5]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_address[6]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_address[7]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_address[8]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_address[9]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_address[10]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_address[11]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_burstcount[0]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_burstcount[1]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_burstcount[2]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_burstcount[3]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_byteenable[0]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_byteenable[1]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_byteenable[2]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_byteenable[3]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_write	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[0]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[1]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[2]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[3]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[4]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[6]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[7]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[8]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[9]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[10]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[11]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[12]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[13]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[14]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[15]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[16]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[17]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[18]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[19]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[20]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[21]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[22]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[23]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[24]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[25]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[26]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[27]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[28]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[29]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[30]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_writedata[31]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_m0_waitrequest	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_write	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[1]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[2]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[3]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[4]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[5]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[6]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[7]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[8]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[9]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[10]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_address[11]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_burstcount[0]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_burstcount[1]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_burstcount[2]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_burstcount[3]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_byteenable[0]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_byteenable[1]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_byteenable[2]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_byteenable[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[1]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[2]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[3]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[4]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[5]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[6]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[7]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[8]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[9]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[10]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[11]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[12]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[13]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[14]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[15]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[16]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[17]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[18]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[19]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[20]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[21]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[22]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[23]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[24]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[25]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[26]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[27]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[28]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[29]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[30]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_s0_writedata[31]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF addr_slave IS
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
SIGNAL ww_avs_s0_address : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_avs_s0_waitrequest : std_logic;
SIGNAL ww_avs_s0_burstcount : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_avs_s0_byteenable : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_avs_s0_write : std_logic;
SIGNAL ww_avs_s0_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_avm_m0_address : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_avm_m0_waitrequest : std_logic;
SIGNAL ww_avm_m0_burstcount : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_avm_m0_byteenable : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_avm_m0_write : std_logic;
SIGNAL ww_avm_m0_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL \avm_m0_waitrequest~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \avs_s0_write~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \s0_state.STATE_IDLE~q\ : std_logic;
SIGNAL \temp_data[17]~0_combout\ : std_logic;
SIGNAL \s0_state.STATE_PUSH~q\ : std_logic;
SIGNAL \m0_next_state.STATE_PUSH_m0~0_combout\ : std_logic;
SIGNAL \m0_state.STATE_IDLE_m0~q\ : std_logic;
SIGNAL \m0_state.STATE_PUSH_m0~q\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \avs_s0_address[0]~input_o\ : std_logic;
SIGNAL \temp_addr[0]~0_combout\ : std_logic;
SIGNAL \temp_burst[0]~0_combout\ : std_logic;
SIGNAL \avm_m0_address[0]$latch~combout\ : std_logic;
SIGNAL \avs_s0_address[1]~input_o\ : std_logic;
SIGNAL \temp_addr[1]~1_combout\ : std_logic;
SIGNAL \avm_m0_address[1]$latch~combout\ : std_logic;
SIGNAL \avs_s0_address[2]~input_o\ : std_logic;
SIGNAL \temp_addr[2]~2_combout\ : std_logic;
SIGNAL \avm_m0_address[2]$latch~combout\ : std_logic;
SIGNAL \avs_s0_address[3]~input_o\ : std_logic;
SIGNAL \temp_addr[3]~3_combout\ : std_logic;
SIGNAL \avm_m0_address[3]$latch~combout\ : std_logic;
SIGNAL \avs_s0_address[4]~input_o\ : std_logic;
SIGNAL \temp_addr[4]~4_combout\ : std_logic;
SIGNAL \avm_m0_address[4]$latch~combout\ : std_logic;
SIGNAL \avs_s0_address[5]~input_o\ : std_logic;
SIGNAL \temp_addr[5]~5_combout\ : std_logic;
SIGNAL \avm_m0_address[5]$latch~combout\ : std_logic;
SIGNAL \avs_s0_address[6]~input_o\ : std_logic;
SIGNAL \temp_addr[6]~6_combout\ : std_logic;
SIGNAL \avm_m0_address[6]$latch~combout\ : std_logic;
SIGNAL \avs_s0_address[7]~input_o\ : std_logic;
SIGNAL \temp_addr[7]~7_combout\ : std_logic;
SIGNAL \avm_m0_address[7]$latch~combout\ : std_logic;
SIGNAL \avs_s0_address[8]~input_o\ : std_logic;
SIGNAL \temp_addr[8]~8_combout\ : std_logic;
SIGNAL \avm_m0_address[8]$latch~combout\ : std_logic;
SIGNAL \avs_s0_address[9]~input_o\ : std_logic;
SIGNAL \temp_addr[9]~9_combout\ : std_logic;
SIGNAL \avm_m0_address[9]$latch~combout\ : std_logic;
SIGNAL \avs_s0_address[10]~input_o\ : std_logic;
SIGNAL \temp_addr[10]~10_combout\ : std_logic;
SIGNAL \avm_m0_address[10]$latch~combout\ : std_logic;
SIGNAL \avs_s0_address[11]~input_o\ : std_logic;
SIGNAL \temp_addr[11]~11_combout\ : std_logic;
SIGNAL \avm_m0_address[11]$latch~combout\ : std_logic;
SIGNAL \avs_s0_burstcount[0]~input_o\ : std_logic;
SIGNAL \temp_burst[0]~1_combout\ : std_logic;
SIGNAL \avm_m0_burstcount[0]$latch~combout\ : std_logic;
SIGNAL \avs_s0_burstcount[1]~input_o\ : std_logic;
SIGNAL \temp_burst[1]~2_combout\ : std_logic;
SIGNAL \avm_m0_burstcount[1]$latch~combout\ : std_logic;
SIGNAL \avs_s0_burstcount[2]~input_o\ : std_logic;
SIGNAL \temp_burst[2]~3_combout\ : std_logic;
SIGNAL \avm_m0_burstcount[2]$latch~combout\ : std_logic;
SIGNAL \avs_s0_burstcount[3]~input_o\ : std_logic;
SIGNAL \temp_burst[3]~4_combout\ : std_logic;
SIGNAL \avm_m0_burstcount[3]$latch~combout\ : std_logic;
SIGNAL \avs_s0_byteenable[0]~input_o\ : std_logic;
SIGNAL \temp_byte[0]~0_combout\ : std_logic;
SIGNAL \avm_m0_byteenable[0]$latch~combout\ : std_logic;
SIGNAL \avs_s0_byteenable[1]~input_o\ : std_logic;
SIGNAL \temp_byte[1]~1_combout\ : std_logic;
SIGNAL \avm_m0_byteenable[1]$latch~combout\ : std_logic;
SIGNAL \avs_s0_byteenable[2]~input_o\ : std_logic;
SIGNAL \temp_byte[2]~2_combout\ : std_logic;
SIGNAL \avm_m0_byteenable[2]$latch~combout\ : std_logic;
SIGNAL \avs_s0_byteenable[3]~input_o\ : std_logic;
SIGNAL \temp_byte[3]~3_combout\ : std_logic;
SIGNAL \avm_m0_byteenable[3]$latch~combout\ : std_logic;
SIGNAL \avm_m0_write$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[0]~input_o\ : std_logic;
SIGNAL \temp_data[0]~1_combout\ : std_logic;
SIGNAL \avm_m0_writedata[0]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[1]~input_o\ : std_logic;
SIGNAL \temp_data[1]~2_combout\ : std_logic;
SIGNAL \avm_m0_writedata[1]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[2]~input_o\ : std_logic;
SIGNAL \temp_data[2]~3_combout\ : std_logic;
SIGNAL \avm_m0_writedata[2]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[3]~input_o\ : std_logic;
SIGNAL \temp_data[3]~4_combout\ : std_logic;
SIGNAL \avm_m0_writedata[3]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[4]~input_o\ : std_logic;
SIGNAL \temp_data[4]~5_combout\ : std_logic;
SIGNAL \avm_m0_writedata[4]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[5]~input_o\ : std_logic;
SIGNAL \temp_data[5]~6_combout\ : std_logic;
SIGNAL \avm_m0_writedata[5]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[6]~input_o\ : std_logic;
SIGNAL \temp_data[6]~7_combout\ : std_logic;
SIGNAL \avm_m0_writedata[6]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[7]~input_o\ : std_logic;
SIGNAL \temp_data[7]~8_combout\ : std_logic;
SIGNAL \avm_m0_writedata[7]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[8]~input_o\ : std_logic;
SIGNAL \temp_data[8]~9_combout\ : std_logic;
SIGNAL \avm_m0_writedata[8]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[9]~input_o\ : std_logic;
SIGNAL \temp_data[9]~10_combout\ : std_logic;
SIGNAL \avm_m0_writedata[9]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[10]~input_o\ : std_logic;
SIGNAL \temp_data[10]~11_combout\ : std_logic;
SIGNAL \avm_m0_writedata[10]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[11]~input_o\ : std_logic;
SIGNAL \temp_data[11]~12_combout\ : std_logic;
SIGNAL \avm_m0_writedata[11]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[12]~input_o\ : std_logic;
SIGNAL \temp_data[12]~13_combout\ : std_logic;
SIGNAL \avm_m0_writedata[12]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[13]~input_o\ : std_logic;
SIGNAL \temp_data[13]~14_combout\ : std_logic;
SIGNAL \avm_m0_writedata[13]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[14]~input_o\ : std_logic;
SIGNAL \temp_data[14]~15_combout\ : std_logic;
SIGNAL \avm_m0_writedata[14]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[15]~input_o\ : std_logic;
SIGNAL \temp_data[15]~16_combout\ : std_logic;
SIGNAL \avm_m0_writedata[15]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[16]~input_o\ : std_logic;
SIGNAL \temp_data[16]~17_combout\ : std_logic;
SIGNAL \avm_m0_writedata[16]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[17]~input_o\ : std_logic;
SIGNAL \temp_data[17]~18_combout\ : std_logic;
SIGNAL \avm_m0_writedata[17]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[18]~input_o\ : std_logic;
SIGNAL \temp_data[18]~19_combout\ : std_logic;
SIGNAL \avm_m0_writedata[18]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[19]~input_o\ : std_logic;
SIGNAL \temp_data[19]~20_combout\ : std_logic;
SIGNAL \avm_m0_writedata[19]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[20]~input_o\ : std_logic;
SIGNAL \temp_data[20]~21_combout\ : std_logic;
SIGNAL \avm_m0_writedata[20]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[21]~input_o\ : std_logic;
SIGNAL \temp_data[21]~22_combout\ : std_logic;
SIGNAL \avm_m0_writedata[21]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[22]~input_o\ : std_logic;
SIGNAL \temp_data[22]~23_combout\ : std_logic;
SIGNAL \avm_m0_writedata[22]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[23]~input_o\ : std_logic;
SIGNAL \temp_data[23]~24_combout\ : std_logic;
SIGNAL \avm_m0_writedata[23]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[24]~input_o\ : std_logic;
SIGNAL \temp_data[24]~25_combout\ : std_logic;
SIGNAL \avm_m0_writedata[24]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[25]~input_o\ : std_logic;
SIGNAL \temp_data[25]~26_combout\ : std_logic;
SIGNAL \avm_m0_writedata[25]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[26]~input_o\ : std_logic;
SIGNAL \temp_data[26]~27_combout\ : std_logic;
SIGNAL \avm_m0_writedata[26]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[27]~input_o\ : std_logic;
SIGNAL \temp_data[27]~28_combout\ : std_logic;
SIGNAL \avm_m0_writedata[27]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[28]~input_o\ : std_logic;
SIGNAL \temp_data[28]~29_combout\ : std_logic;
SIGNAL \avm_m0_writedata[28]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[29]~input_o\ : std_logic;
SIGNAL \temp_data[29]~30_combout\ : std_logic;
SIGNAL \avm_m0_writedata[29]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[30]~input_o\ : std_logic;
SIGNAL \temp_data[30]~31_combout\ : std_logic;
SIGNAL \avm_m0_writedata[30]$latch~combout\ : std_logic;
SIGNAL \avs_s0_writedata[31]~input_o\ : std_logic;
SIGNAL \temp_data[31]~32_combout\ : std_logic;
SIGNAL \avm_m0_writedata[31]$latch~combout\ : std_logic;
SIGNAL temp_data : std_logic_vector(31 DOWNTO 0);
SIGNAL temp_byte : std_logic_vector(3 DOWNTO 0);
SIGNAL temp_burst : std_logic_vector(3 DOWNTO 0);
SIGNAL temp_addr : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_avs_s0_writedata[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_writedata[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_byteenable[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_byteenable[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_byteenable[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_byteenable[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_burstcount[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_burstcount[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_burstcount[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_burstcount[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_write~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_s0_address[0]~input_o\ : std_logic;
SIGNAL ALT_INV_temp_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_temp_byte : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_temp_burst : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_temp_addr : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_avm_m0_writedata[31]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[30]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[29]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[28]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[27]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[26]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[25]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[24]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[23]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[22]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[21]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[20]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[19]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[18]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[17]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[16]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[15]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[14]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[13]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[12]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[11]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[10]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_writedata[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_write$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_byteenable[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_byteenable[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_byteenable[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_byteenable[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_burstcount[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_burstcount[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_burstcount[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_burstcount[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_address[11]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_address[10]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_address[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_address[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_address[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_address[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_address[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_address[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_address[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_address[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_address[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_m0_address[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[31]~32_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[30]~31_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[29]~30_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[28]~29_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[27]~28_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[26]~27_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[25]~26_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[24]~25_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[23]~24_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[22]~23_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[21]~22_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[20]~21_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[19]~20_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[18]~19_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[17]~18_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[16]~17_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[15]~16_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[14]~15_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[13]~14_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[12]~13_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[11]~12_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[10]~11_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[9]~10_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[8]~9_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[7]~8_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[6]~7_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[5]~6_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[4]~5_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[3]~4_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_temp_data[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_temp_byte[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_temp_byte[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_temp_byte[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_temp_byte[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_temp_burst[3]~4_combout\ : std_logic;
SIGNAL \ALT_INV_temp_burst[2]~3_combout\ : std_logic;
SIGNAL \ALT_INV_temp_burst[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_temp_burst[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_temp_addr[11]~11_combout\ : std_logic;
SIGNAL \ALT_INV_temp_addr[10]~10_combout\ : std_logic;
SIGNAL \ALT_INV_temp_addr[9]~9_combout\ : std_logic;
SIGNAL \ALT_INV_temp_addr[8]~8_combout\ : std_logic;
SIGNAL \ALT_INV_temp_addr[7]~7_combout\ : std_logic;
SIGNAL \ALT_INV_temp_addr[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_temp_addr[5]~5_combout\ : std_logic;
SIGNAL \ALT_INV_temp_addr[4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_temp_addr[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_temp_addr[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_temp_addr[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_temp_burst[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_temp_addr[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_s0_state.STATE_IDLE~q\ : std_logic;
SIGNAL \ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \ALT_INV_m0_state.STATE_IDLE_m0~q\ : std_logic;
SIGNAL \ALT_INV_s0_state.STATE_PUSH~q\ : std_logic;
SIGNAL \ALT_INV_m0_state.STATE_PUSH_m0~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_avs_s0_address <= avs_s0_address;
avs_s0_waitrequest <= ww_avs_s0_waitrequest;
ww_avs_s0_burstcount <= avs_s0_burstcount;
ww_avs_s0_byteenable <= avs_s0_byteenable;
ww_avs_s0_write <= avs_s0_write;
ww_avs_s0_writedata <= avs_s0_writedata;
avm_m0_address <= ww_avm_m0_address;
ww_avm_m0_waitrequest <= avm_m0_waitrequest;
avm_m0_burstcount <= ww_avm_m0_burstcount;
avm_m0_byteenable <= ww_avm_m0_byteenable;
avm_m0_write <= ww_avm_m0_write;
avm_m0_writedata <= ww_avm_m0_writedata;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_avs_s0_writedata[31]~input_o\ <= NOT \avs_s0_writedata[31]~input_o\;
\ALT_INV_avs_s0_writedata[30]~input_o\ <= NOT \avs_s0_writedata[30]~input_o\;
\ALT_INV_avs_s0_writedata[29]~input_o\ <= NOT \avs_s0_writedata[29]~input_o\;
\ALT_INV_avs_s0_writedata[28]~input_o\ <= NOT \avs_s0_writedata[28]~input_o\;
\ALT_INV_avs_s0_writedata[27]~input_o\ <= NOT \avs_s0_writedata[27]~input_o\;
\ALT_INV_avs_s0_writedata[26]~input_o\ <= NOT \avs_s0_writedata[26]~input_o\;
\ALT_INV_avs_s0_writedata[25]~input_o\ <= NOT \avs_s0_writedata[25]~input_o\;
\ALT_INV_avs_s0_writedata[24]~input_o\ <= NOT \avs_s0_writedata[24]~input_o\;
\ALT_INV_avs_s0_writedata[23]~input_o\ <= NOT \avs_s0_writedata[23]~input_o\;
\ALT_INV_avs_s0_writedata[22]~input_o\ <= NOT \avs_s0_writedata[22]~input_o\;
\ALT_INV_avs_s0_writedata[21]~input_o\ <= NOT \avs_s0_writedata[21]~input_o\;
\ALT_INV_avs_s0_writedata[20]~input_o\ <= NOT \avs_s0_writedata[20]~input_o\;
\ALT_INV_avs_s0_writedata[19]~input_o\ <= NOT \avs_s0_writedata[19]~input_o\;
\ALT_INV_avs_s0_writedata[18]~input_o\ <= NOT \avs_s0_writedata[18]~input_o\;
\ALT_INV_avs_s0_writedata[17]~input_o\ <= NOT \avs_s0_writedata[17]~input_o\;
\ALT_INV_avs_s0_writedata[16]~input_o\ <= NOT \avs_s0_writedata[16]~input_o\;
\ALT_INV_avs_s0_writedata[15]~input_o\ <= NOT \avs_s0_writedata[15]~input_o\;
\ALT_INV_avs_s0_writedata[14]~input_o\ <= NOT \avs_s0_writedata[14]~input_o\;
\ALT_INV_avs_s0_writedata[13]~input_o\ <= NOT \avs_s0_writedata[13]~input_o\;
\ALT_INV_avs_s0_writedata[12]~input_o\ <= NOT \avs_s0_writedata[12]~input_o\;
\ALT_INV_avs_s0_writedata[11]~input_o\ <= NOT \avs_s0_writedata[11]~input_o\;
\ALT_INV_avs_s0_writedata[10]~input_o\ <= NOT \avs_s0_writedata[10]~input_o\;
\ALT_INV_avs_s0_writedata[9]~input_o\ <= NOT \avs_s0_writedata[9]~input_o\;
\ALT_INV_avs_s0_writedata[8]~input_o\ <= NOT \avs_s0_writedata[8]~input_o\;
\ALT_INV_avs_s0_writedata[7]~input_o\ <= NOT \avs_s0_writedata[7]~input_o\;
\ALT_INV_avs_s0_writedata[6]~input_o\ <= NOT \avs_s0_writedata[6]~input_o\;
\ALT_INV_avs_s0_writedata[5]~input_o\ <= NOT \avs_s0_writedata[5]~input_o\;
\ALT_INV_avs_s0_writedata[4]~input_o\ <= NOT \avs_s0_writedata[4]~input_o\;
\ALT_INV_avs_s0_writedata[3]~input_o\ <= NOT \avs_s0_writedata[3]~input_o\;
\ALT_INV_avs_s0_writedata[2]~input_o\ <= NOT \avs_s0_writedata[2]~input_o\;
\ALT_INV_avs_s0_writedata[1]~input_o\ <= NOT \avs_s0_writedata[1]~input_o\;
\ALT_INV_avs_s0_writedata[0]~input_o\ <= NOT \avs_s0_writedata[0]~input_o\;
\ALT_INV_avs_s0_byteenable[3]~input_o\ <= NOT \avs_s0_byteenable[3]~input_o\;
\ALT_INV_avs_s0_byteenable[2]~input_o\ <= NOT \avs_s0_byteenable[2]~input_o\;
\ALT_INV_avs_s0_byteenable[1]~input_o\ <= NOT \avs_s0_byteenable[1]~input_o\;
\ALT_INV_avs_s0_byteenable[0]~input_o\ <= NOT \avs_s0_byteenable[0]~input_o\;
\ALT_INV_avs_s0_burstcount[3]~input_o\ <= NOT \avs_s0_burstcount[3]~input_o\;
\ALT_INV_avs_s0_burstcount[2]~input_o\ <= NOT \avs_s0_burstcount[2]~input_o\;
\ALT_INV_avs_s0_burstcount[1]~input_o\ <= NOT \avs_s0_burstcount[1]~input_o\;
\ALT_INV_avs_s0_burstcount[0]~input_o\ <= NOT \avs_s0_burstcount[0]~input_o\;
\ALT_INV_avs_s0_address[11]~input_o\ <= NOT \avs_s0_address[11]~input_o\;
\ALT_INV_avs_s0_address[10]~input_o\ <= NOT \avs_s0_address[10]~input_o\;
\ALT_INV_avs_s0_address[9]~input_o\ <= NOT \avs_s0_address[9]~input_o\;
\ALT_INV_avs_s0_address[8]~input_o\ <= NOT \avs_s0_address[8]~input_o\;
\ALT_INV_avs_s0_address[7]~input_o\ <= NOT \avs_s0_address[7]~input_o\;
\ALT_INV_avs_s0_address[6]~input_o\ <= NOT \avs_s0_address[6]~input_o\;
\ALT_INV_avs_s0_address[5]~input_o\ <= NOT \avs_s0_address[5]~input_o\;
\ALT_INV_avs_s0_address[4]~input_o\ <= NOT \avs_s0_address[4]~input_o\;
\ALT_INV_avs_s0_address[3]~input_o\ <= NOT \avs_s0_address[3]~input_o\;
\ALT_INV_avs_s0_address[2]~input_o\ <= NOT \avs_s0_address[2]~input_o\;
\ALT_INV_avs_s0_address[1]~input_o\ <= NOT \avs_s0_address[1]~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_avs_s0_write~input_o\ <= NOT \avs_s0_write~input_o\;
\ALT_INV_avs_s0_address[0]~input_o\ <= NOT \avs_s0_address[0]~input_o\;
ALT_INV_temp_data(31) <= NOT temp_data(31);
ALT_INV_temp_data(30) <= NOT temp_data(30);
ALT_INV_temp_data(29) <= NOT temp_data(29);
ALT_INV_temp_data(28) <= NOT temp_data(28);
ALT_INV_temp_data(27) <= NOT temp_data(27);
ALT_INV_temp_data(26) <= NOT temp_data(26);
ALT_INV_temp_data(25) <= NOT temp_data(25);
ALT_INV_temp_data(24) <= NOT temp_data(24);
ALT_INV_temp_data(23) <= NOT temp_data(23);
ALT_INV_temp_data(22) <= NOT temp_data(22);
ALT_INV_temp_data(21) <= NOT temp_data(21);
ALT_INV_temp_data(20) <= NOT temp_data(20);
ALT_INV_temp_data(19) <= NOT temp_data(19);
ALT_INV_temp_data(18) <= NOT temp_data(18);
ALT_INV_temp_data(17) <= NOT temp_data(17);
ALT_INV_temp_data(16) <= NOT temp_data(16);
ALT_INV_temp_data(15) <= NOT temp_data(15);
ALT_INV_temp_data(14) <= NOT temp_data(14);
ALT_INV_temp_data(13) <= NOT temp_data(13);
ALT_INV_temp_data(12) <= NOT temp_data(12);
ALT_INV_temp_data(11) <= NOT temp_data(11);
ALT_INV_temp_data(10) <= NOT temp_data(10);
ALT_INV_temp_data(9) <= NOT temp_data(9);
ALT_INV_temp_data(8) <= NOT temp_data(8);
ALT_INV_temp_data(7) <= NOT temp_data(7);
ALT_INV_temp_data(6) <= NOT temp_data(6);
ALT_INV_temp_data(5) <= NOT temp_data(5);
ALT_INV_temp_data(4) <= NOT temp_data(4);
ALT_INV_temp_data(3) <= NOT temp_data(3);
ALT_INV_temp_data(2) <= NOT temp_data(2);
ALT_INV_temp_data(1) <= NOT temp_data(1);
ALT_INV_temp_data(0) <= NOT temp_data(0);
ALT_INV_temp_byte(3) <= NOT temp_byte(3);
ALT_INV_temp_byte(2) <= NOT temp_byte(2);
ALT_INV_temp_byte(1) <= NOT temp_byte(1);
ALT_INV_temp_byte(0) <= NOT temp_byte(0);
ALT_INV_temp_burst(3) <= NOT temp_burst(3);
ALT_INV_temp_burst(2) <= NOT temp_burst(2);
ALT_INV_temp_burst(1) <= NOT temp_burst(1);
ALT_INV_temp_burst(0) <= NOT temp_burst(0);
ALT_INV_temp_addr(11) <= NOT temp_addr(11);
ALT_INV_temp_addr(10) <= NOT temp_addr(10);
ALT_INV_temp_addr(9) <= NOT temp_addr(9);
ALT_INV_temp_addr(8) <= NOT temp_addr(8);
ALT_INV_temp_addr(7) <= NOT temp_addr(7);
ALT_INV_temp_addr(6) <= NOT temp_addr(6);
ALT_INV_temp_addr(5) <= NOT temp_addr(5);
ALT_INV_temp_addr(4) <= NOT temp_addr(4);
ALT_INV_temp_addr(3) <= NOT temp_addr(3);
ALT_INV_temp_addr(2) <= NOT temp_addr(2);
ALT_INV_temp_addr(1) <= NOT temp_addr(1);
ALT_INV_temp_addr(0) <= NOT temp_addr(0);
\ALT_INV_avm_m0_writedata[31]$latch~combout\ <= NOT \avm_m0_writedata[31]$latch~combout\;
\ALT_INV_avm_m0_writedata[30]$latch~combout\ <= NOT \avm_m0_writedata[30]$latch~combout\;
\ALT_INV_avm_m0_writedata[29]$latch~combout\ <= NOT \avm_m0_writedata[29]$latch~combout\;
\ALT_INV_avm_m0_writedata[28]$latch~combout\ <= NOT \avm_m0_writedata[28]$latch~combout\;
\ALT_INV_avm_m0_writedata[27]$latch~combout\ <= NOT \avm_m0_writedata[27]$latch~combout\;
\ALT_INV_avm_m0_writedata[26]$latch~combout\ <= NOT \avm_m0_writedata[26]$latch~combout\;
\ALT_INV_avm_m0_writedata[25]$latch~combout\ <= NOT \avm_m0_writedata[25]$latch~combout\;
\ALT_INV_avm_m0_writedata[24]$latch~combout\ <= NOT \avm_m0_writedata[24]$latch~combout\;
\ALT_INV_avm_m0_writedata[23]$latch~combout\ <= NOT \avm_m0_writedata[23]$latch~combout\;
\ALT_INV_avm_m0_writedata[22]$latch~combout\ <= NOT \avm_m0_writedata[22]$latch~combout\;
\ALT_INV_avm_m0_writedata[21]$latch~combout\ <= NOT \avm_m0_writedata[21]$latch~combout\;
\ALT_INV_avm_m0_writedata[20]$latch~combout\ <= NOT \avm_m0_writedata[20]$latch~combout\;
\ALT_INV_avm_m0_writedata[19]$latch~combout\ <= NOT \avm_m0_writedata[19]$latch~combout\;
\ALT_INV_avm_m0_writedata[18]$latch~combout\ <= NOT \avm_m0_writedata[18]$latch~combout\;
\ALT_INV_avm_m0_writedata[17]$latch~combout\ <= NOT \avm_m0_writedata[17]$latch~combout\;
\ALT_INV_avm_m0_writedata[16]$latch~combout\ <= NOT \avm_m0_writedata[16]$latch~combout\;
\ALT_INV_avm_m0_writedata[15]$latch~combout\ <= NOT \avm_m0_writedata[15]$latch~combout\;
\ALT_INV_avm_m0_writedata[14]$latch~combout\ <= NOT \avm_m0_writedata[14]$latch~combout\;
\ALT_INV_avm_m0_writedata[13]$latch~combout\ <= NOT \avm_m0_writedata[13]$latch~combout\;
\ALT_INV_avm_m0_writedata[12]$latch~combout\ <= NOT \avm_m0_writedata[12]$latch~combout\;
\ALT_INV_avm_m0_writedata[11]$latch~combout\ <= NOT \avm_m0_writedata[11]$latch~combout\;
\ALT_INV_avm_m0_writedata[10]$latch~combout\ <= NOT \avm_m0_writedata[10]$latch~combout\;
\ALT_INV_avm_m0_writedata[9]$latch~combout\ <= NOT \avm_m0_writedata[9]$latch~combout\;
\ALT_INV_avm_m0_writedata[8]$latch~combout\ <= NOT \avm_m0_writedata[8]$latch~combout\;
\ALT_INV_avm_m0_writedata[7]$latch~combout\ <= NOT \avm_m0_writedata[7]$latch~combout\;
\ALT_INV_avm_m0_writedata[6]$latch~combout\ <= NOT \avm_m0_writedata[6]$latch~combout\;
\ALT_INV_avm_m0_writedata[5]$latch~combout\ <= NOT \avm_m0_writedata[5]$latch~combout\;
\ALT_INV_avm_m0_writedata[4]$latch~combout\ <= NOT \avm_m0_writedata[4]$latch~combout\;
\ALT_INV_avm_m0_writedata[3]$latch~combout\ <= NOT \avm_m0_writedata[3]$latch~combout\;
\ALT_INV_avm_m0_writedata[2]$latch~combout\ <= NOT \avm_m0_writedata[2]$latch~combout\;
\ALT_INV_avm_m0_writedata[1]$latch~combout\ <= NOT \avm_m0_writedata[1]$latch~combout\;
\ALT_INV_avm_m0_writedata[0]$latch~combout\ <= NOT \avm_m0_writedata[0]$latch~combout\;
\ALT_INV_avm_m0_write$latch~combout\ <= NOT \avm_m0_write$latch~combout\;
\ALT_INV_avm_m0_byteenable[3]$latch~combout\ <= NOT \avm_m0_byteenable[3]$latch~combout\;
\ALT_INV_avm_m0_byteenable[2]$latch~combout\ <= NOT \avm_m0_byteenable[2]$latch~combout\;
\ALT_INV_avm_m0_byteenable[1]$latch~combout\ <= NOT \avm_m0_byteenable[1]$latch~combout\;
\ALT_INV_avm_m0_byteenable[0]$latch~combout\ <= NOT \avm_m0_byteenable[0]$latch~combout\;
\ALT_INV_avm_m0_burstcount[3]$latch~combout\ <= NOT \avm_m0_burstcount[3]$latch~combout\;
\ALT_INV_avm_m0_burstcount[2]$latch~combout\ <= NOT \avm_m0_burstcount[2]$latch~combout\;
\ALT_INV_avm_m0_burstcount[1]$latch~combout\ <= NOT \avm_m0_burstcount[1]$latch~combout\;
\ALT_INV_avm_m0_burstcount[0]$latch~combout\ <= NOT \avm_m0_burstcount[0]$latch~combout\;
\ALT_INV_avm_m0_address[11]$latch~combout\ <= NOT \avm_m0_address[11]$latch~combout\;
\ALT_INV_avm_m0_address[10]$latch~combout\ <= NOT \avm_m0_address[10]$latch~combout\;
\ALT_INV_avm_m0_address[9]$latch~combout\ <= NOT \avm_m0_address[9]$latch~combout\;
\ALT_INV_avm_m0_address[8]$latch~combout\ <= NOT \avm_m0_address[8]$latch~combout\;
\ALT_INV_avm_m0_address[7]$latch~combout\ <= NOT \avm_m0_address[7]$latch~combout\;
\ALT_INV_avm_m0_address[6]$latch~combout\ <= NOT \avm_m0_address[6]$latch~combout\;
\ALT_INV_avm_m0_address[5]$latch~combout\ <= NOT \avm_m0_address[5]$latch~combout\;
\ALT_INV_avm_m0_address[4]$latch~combout\ <= NOT \avm_m0_address[4]$latch~combout\;
\ALT_INV_avm_m0_address[3]$latch~combout\ <= NOT \avm_m0_address[3]$latch~combout\;
\ALT_INV_avm_m0_address[2]$latch~combout\ <= NOT \avm_m0_address[2]$latch~combout\;
\ALT_INV_avm_m0_address[1]$latch~combout\ <= NOT \avm_m0_address[1]$latch~combout\;
\ALT_INV_avm_m0_address[0]$latch~combout\ <= NOT \avm_m0_address[0]$latch~combout\;
\ALT_INV_temp_data[31]~32_combout\ <= NOT \temp_data[31]~32_combout\;
\ALT_INV_temp_data[30]~31_combout\ <= NOT \temp_data[30]~31_combout\;
\ALT_INV_temp_data[29]~30_combout\ <= NOT \temp_data[29]~30_combout\;
\ALT_INV_temp_data[28]~29_combout\ <= NOT \temp_data[28]~29_combout\;
\ALT_INV_temp_data[27]~28_combout\ <= NOT \temp_data[27]~28_combout\;
\ALT_INV_temp_data[26]~27_combout\ <= NOT \temp_data[26]~27_combout\;
\ALT_INV_temp_data[25]~26_combout\ <= NOT \temp_data[25]~26_combout\;
\ALT_INV_temp_data[24]~25_combout\ <= NOT \temp_data[24]~25_combout\;
\ALT_INV_temp_data[23]~24_combout\ <= NOT \temp_data[23]~24_combout\;
\ALT_INV_temp_data[22]~23_combout\ <= NOT \temp_data[22]~23_combout\;
\ALT_INV_temp_data[21]~22_combout\ <= NOT \temp_data[21]~22_combout\;
\ALT_INV_temp_data[20]~21_combout\ <= NOT \temp_data[20]~21_combout\;
\ALT_INV_temp_data[19]~20_combout\ <= NOT \temp_data[19]~20_combout\;
\ALT_INV_temp_data[18]~19_combout\ <= NOT \temp_data[18]~19_combout\;
\ALT_INV_temp_data[17]~18_combout\ <= NOT \temp_data[17]~18_combout\;
\ALT_INV_temp_data[16]~17_combout\ <= NOT \temp_data[16]~17_combout\;
\ALT_INV_temp_data[15]~16_combout\ <= NOT \temp_data[15]~16_combout\;
\ALT_INV_temp_data[14]~15_combout\ <= NOT \temp_data[14]~15_combout\;
\ALT_INV_temp_data[13]~14_combout\ <= NOT \temp_data[13]~14_combout\;
\ALT_INV_temp_data[12]~13_combout\ <= NOT \temp_data[12]~13_combout\;
\ALT_INV_temp_data[11]~12_combout\ <= NOT \temp_data[11]~12_combout\;
\ALT_INV_temp_data[10]~11_combout\ <= NOT \temp_data[10]~11_combout\;
\ALT_INV_temp_data[9]~10_combout\ <= NOT \temp_data[9]~10_combout\;
\ALT_INV_temp_data[8]~9_combout\ <= NOT \temp_data[8]~9_combout\;
\ALT_INV_temp_data[7]~8_combout\ <= NOT \temp_data[7]~8_combout\;
\ALT_INV_temp_data[6]~7_combout\ <= NOT \temp_data[6]~7_combout\;
\ALT_INV_temp_data[5]~6_combout\ <= NOT \temp_data[5]~6_combout\;
\ALT_INV_temp_data[4]~5_combout\ <= NOT \temp_data[4]~5_combout\;
\ALT_INV_temp_data[3]~4_combout\ <= NOT \temp_data[3]~4_combout\;
\ALT_INV_temp_data[2]~3_combout\ <= NOT \temp_data[2]~3_combout\;
\ALT_INV_temp_data[1]~2_combout\ <= NOT \temp_data[1]~2_combout\;
\ALT_INV_temp_data[0]~1_combout\ <= NOT \temp_data[0]~1_combout\;
\ALT_INV_temp_byte[3]~3_combout\ <= NOT \temp_byte[3]~3_combout\;
\ALT_INV_temp_byte[2]~2_combout\ <= NOT \temp_byte[2]~2_combout\;
\ALT_INV_temp_byte[1]~1_combout\ <= NOT \temp_byte[1]~1_combout\;
\ALT_INV_temp_byte[0]~0_combout\ <= NOT \temp_byte[0]~0_combout\;
\ALT_INV_temp_burst[3]~4_combout\ <= NOT \temp_burst[3]~4_combout\;
\ALT_INV_temp_burst[2]~3_combout\ <= NOT \temp_burst[2]~3_combout\;
\ALT_INV_temp_burst[1]~2_combout\ <= NOT \temp_burst[1]~2_combout\;
\ALT_INV_temp_burst[0]~1_combout\ <= NOT \temp_burst[0]~1_combout\;
\ALT_INV_temp_addr[11]~11_combout\ <= NOT \temp_addr[11]~11_combout\;
\ALT_INV_temp_addr[10]~10_combout\ <= NOT \temp_addr[10]~10_combout\;
\ALT_INV_temp_addr[9]~9_combout\ <= NOT \temp_addr[9]~9_combout\;
\ALT_INV_temp_addr[8]~8_combout\ <= NOT \temp_addr[8]~8_combout\;
\ALT_INV_temp_addr[7]~7_combout\ <= NOT \temp_addr[7]~7_combout\;
\ALT_INV_temp_addr[6]~6_combout\ <= NOT \temp_addr[6]~6_combout\;
\ALT_INV_temp_addr[5]~5_combout\ <= NOT \temp_addr[5]~5_combout\;
\ALT_INV_temp_addr[4]~4_combout\ <= NOT \temp_addr[4]~4_combout\;
\ALT_INV_temp_addr[3]~3_combout\ <= NOT \temp_addr[3]~3_combout\;
\ALT_INV_temp_addr[2]~2_combout\ <= NOT \temp_addr[2]~2_combout\;
\ALT_INV_temp_addr[1]~1_combout\ <= NOT \temp_addr[1]~1_combout\;
\ALT_INV_temp_burst[0]~0_combout\ <= NOT \temp_burst[0]~0_combout\;
\ALT_INV_temp_addr[0]~0_combout\ <= NOT \temp_addr[0]~0_combout\;
\ALT_INV_s0_state.STATE_IDLE~q\ <= NOT \s0_state.STATE_IDLE~q\;
\ALT_INV_Selector23~0_combout\ <= NOT \Selector23~0_combout\;
\ALT_INV_m0_state.STATE_IDLE_m0~q\ <= NOT \m0_state.STATE_IDLE_m0~q\;
\ALT_INV_s0_state.STATE_PUSH~q\ <= NOT \s0_state.STATE_PUSH~q\;
\ALT_INV_m0_state.STATE_PUSH_m0~q\ <= NOT \m0_state.STATE_PUSH_m0~q\;

-- Location: IOOBUF_X89_Y23_N22
\avs_s0_waitrequest~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avs_s0_waitrequest);

-- Location: IOOBUF_X8_Y0_N2
\avm_m0_address[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_address[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_address(0));

-- Location: IOOBUF_X56_Y0_N19
\avm_m0_address[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_address[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_address(1));

-- Location: IOOBUF_X74_Y0_N42
\avm_m0_address[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_address[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_address(2));

-- Location: IOOBUF_X80_Y0_N53
\avm_m0_address[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_address[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_address(3));

-- Location: IOOBUF_X8_Y0_N36
\avm_m0_address[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_address[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_address(4));

-- Location: IOOBUF_X64_Y0_N53
\avm_m0_address[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_address[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_address(5));

-- Location: IOOBUF_X4_Y0_N36
\avm_m0_address[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_address[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_address(6));

-- Location: IOOBUF_X56_Y0_N53
\avm_m0_address[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_address[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_address(7));

-- Location: IOOBUF_X52_Y0_N36
\avm_m0_address[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_address[8]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_address(8));

-- Location: IOOBUF_X56_Y0_N2
\avm_m0_address[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_address[9]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_address(9));

-- Location: IOOBUF_X6_Y0_N53
\avm_m0_address[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_address[10]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_address(10));

-- Location: IOOBUF_X6_Y0_N36
\avm_m0_address[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_address[11]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_address(11));

-- Location: IOOBUF_X74_Y0_N59
\avm_m0_burstcount[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_burstcount[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_burstcount(0));

-- Location: IOOBUF_X26_Y0_N42
\avm_m0_burstcount[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_burstcount[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_burstcount(1));

-- Location: IOOBUF_X26_Y0_N93
\avm_m0_burstcount[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_burstcount[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_burstcount(2));

-- Location: IOOBUF_X50_Y0_N42
\avm_m0_burstcount[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_burstcount[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_burstcount(3));

-- Location: IOOBUF_X60_Y0_N2
\avm_m0_byteenable[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_byteenable[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_byteenable(0));

-- Location: IOOBUF_X78_Y0_N53
\avm_m0_byteenable[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_byteenable[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_byteenable(1));

-- Location: IOOBUF_X40_Y0_N2
\avm_m0_byteenable[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_byteenable[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_byteenable(2));

-- Location: IOOBUF_X30_Y0_N53
\avm_m0_byteenable[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_byteenable[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_byteenable(3));

-- Location: IOOBUF_X86_Y0_N53
\avm_m0_write~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_write$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_write);

-- Location: IOOBUF_X54_Y0_N36
\avm_m0_writedata[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(0));

-- Location: IOOBUF_X70_Y0_N19
\avm_m0_writedata[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(1));

-- Location: IOOBUF_X30_Y0_N36
\avm_m0_writedata[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(2));

-- Location: IOOBUF_X66_Y0_N76
\avm_m0_writedata[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(3));

-- Location: IOOBUF_X56_Y0_N36
\avm_m0_writedata[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(4));

-- Location: IOOBUF_X68_Y0_N2
\avm_m0_writedata[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(5));

-- Location: IOOBUF_X70_Y0_N53
\avm_m0_writedata[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(6));

-- Location: IOOBUF_X60_Y0_N36
\avm_m0_writedata[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(7));

-- Location: IOOBUF_X70_Y0_N36
\avm_m0_writedata[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[8]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(8));

-- Location: IOOBUF_X32_Y0_N2
\avm_m0_writedata[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[9]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(9));

-- Location: IOOBUF_X2_Y0_N93
\avm_m0_writedata[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[10]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(10));

-- Location: IOOBUF_X38_Y0_N53
\avm_m0_writedata[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[11]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(11));

-- Location: IOOBUF_X36_Y0_N53
\avm_m0_writedata[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[12]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(12));

-- Location: IOOBUF_X68_Y0_N53
\avm_m0_writedata[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[13]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(13));

-- Location: IOOBUF_X52_Y0_N2
\avm_m0_writedata[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[14]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(14));

-- Location: IOOBUF_X2_Y0_N76
\avm_m0_writedata[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[15]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(15));

-- Location: IOOBUF_X50_Y0_N76
\avm_m0_writedata[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[16]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(16));

-- Location: IOOBUF_X6_Y0_N19
\avm_m0_writedata[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[17]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(17));

-- Location: IOOBUF_X64_Y0_N19
\avm_m0_writedata[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[18]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(18));

-- Location: IOOBUF_X32_Y0_N19
\avm_m0_writedata[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[19]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(19));

-- Location: IOOBUF_X50_Y0_N93
\avm_m0_writedata[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[20]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(20));

-- Location: IOOBUF_X66_Y0_N42
\avm_m0_writedata[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[21]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(21));

-- Location: IOOBUF_X68_Y0_N19
\avm_m0_writedata[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[22]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(22));

-- Location: IOOBUF_X34_Y0_N59
\avm_m0_writedata[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[23]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(23));

-- Location: IOOBUF_X78_Y0_N36
\avm_m0_writedata[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[24]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(24));

-- Location: IOOBUF_X36_Y0_N36
\avm_m0_writedata[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[25]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(25));

-- Location: IOOBUF_X40_Y0_N36
\avm_m0_writedata[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[26]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(26));

-- Location: IOOBUF_X64_Y0_N2
\avm_m0_writedata[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[27]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(27));

-- Location: IOOBUF_X8_Y0_N53
\avm_m0_writedata[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[28]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(28));

-- Location: IOOBUF_X82_Y0_N76
\avm_m0_writedata[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[29]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(29));

-- Location: IOOBUF_X2_Y0_N42
\avm_m0_writedata[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[30]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(30));

-- Location: IOOBUF_X60_Y0_N19
\avm_m0_writedata[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_m0_writedata[31]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_m0_writedata(31));

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

-- Location: IOIBUF_X28_Y0_N18
\avs_s0_write~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_write,
	o => \avs_s0_write~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X30_Y3_N14
\s0_state.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \temp_data[17]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s0_state.STATE_IDLE~q\);

-- Location: LABCELL_X30_Y3_N54
\temp_data[17]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[17]~0_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( \avs_s0_write~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[17]~0_combout\);

-- Location: FF_X30_Y3_N59
\s0_state.STATE_PUSH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \temp_data[17]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s0_state.STATE_PUSH~q\);

-- Location: LABCELL_X31_Y3_N54
\m0_next_state.STATE_PUSH_m0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m0_next_state.STATE_PUSH_m0~0_combout\ = ( \s0_state.STATE_PUSH~q\ & ( !\m0_state.STATE_IDLE_m0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_m0_state.STATE_IDLE_m0~q\,
	dataf => \ALT_INV_s0_state.STATE_PUSH~q\,
	combout => \m0_next_state.STATE_PUSH_m0~0_combout\);

-- Location: FF_X30_Y3_N56
\m0_state.STATE_IDLE_m0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0_next_state.STATE_PUSH_m0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m0_state.STATE_IDLE_m0~q\);

-- Location: FF_X30_Y3_N31
\m0_state.STATE_PUSH_m0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \m0_next_state.STATE_PUSH_m0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m0_state.STATE_PUSH_m0~q\);

-- Location: LABCELL_X30_Y3_N12
\Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = ( \m0_state.STATE_PUSH_m0~q\ & ( (!\m0_state.STATE_IDLE_m0~q\) # (\s0_state.STATE_PUSH~q\) ) ) # ( !\m0_state.STATE_PUSH_m0~q\ & ( !\m0_state.STATE_IDLE_m0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_m0_state.STATE_IDLE_m0~q\,
	datad => \ALT_INV_s0_state.STATE_PUSH~q\,
	dataf => \ALT_INV_m0_state.STATE_PUSH_m0~q\,
	combout => \Selector23~0_combout\);

-- Location: IOIBUF_X4_Y0_N18
\avs_s0_address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(0),
	o => \avs_s0_address[0]~input_o\);

-- Location: MLABCELL_X28_Y3_N21
\temp_addr[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_addr[0]~0_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_address[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avs_s0_write~input_o\,
	datac => \ALT_INV_avs_s0_address[0]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_addr[0]~0_combout\);

-- Location: LABCELL_X30_Y3_N21
\temp_burst[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_burst[0]~0_combout\ = ( \rst~input_o\ ) # ( !\rst~input_o\ & ( !\s0_state.STATE_IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s0_state.STATE_IDLE~q\,
	dataf => \ALT_INV_rst~input_o\,
	combout => \temp_burst[0]~0_combout\);

-- Location: MLABCELL_X28_Y3_N6
\temp_addr[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_addr(0) = ( \temp_burst[0]~0_combout\ & ( \temp_addr[0]~0_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_addr(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_temp_addr(0),
	datac => \ALT_INV_temp_addr[0]~0_combout\,
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_addr(0));

-- Location: MLABCELL_X28_Y3_N9
\avm_m0_address[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_address[0]$latch~combout\ = ( temp_addr(0) & ( (\Selector23~0_combout\) # (\avm_m0_address[0]$latch~combout\) ) ) # ( !temp_addr(0) & ( (\avm_m0_address[0]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_m0_address[0]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_addr(0),
	combout => \avm_m0_address[0]$latch~combout\);

-- Location: IOIBUF_X54_Y0_N18
\avs_s0_address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(1),
	o => \avs_s0_address[1]~input_o\);

-- Location: LABCELL_X31_Y2_N39
\temp_addr[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_addr[1]~1_combout\ = ( \avs_s0_write~input_o\ & ( !\s0_state.STATE_IDLE~q\ & ( \avs_s0_address[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_address[1]~input_o\,
	datae => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_addr[1]~1_combout\);

-- Location: LABCELL_X31_Y2_N48
\temp_addr[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_addr(1) = ( \temp_burst[0]~0_combout\ & ( \temp_addr[1]~1_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_addr(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp_addr[1]~1_combout\,
	datad => ALT_INV_temp_addr(1),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_addr(1));

-- Location: LABCELL_X31_Y2_N51
\avm_m0_address[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_address[1]$latch~combout\ = ( temp_addr(1) & ( (\Selector23~0_combout\) # (\avm_m0_address[1]$latch~combout\) ) ) # ( !temp_addr(1) & ( (\avm_m0_address[1]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avm_m0_address[1]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_addr(1),
	combout => \avm_m0_address[1]$latch~combout\);

-- Location: IOIBUF_X34_Y0_N41
\avs_s0_address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(2),
	o => \avs_s0_address[2]~input_o\);

-- Location: MLABCELL_X28_Y3_N48
\temp_addr[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_addr[2]~2_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_address[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_write~input_o\,
	datac => \ALT_INV_avs_s0_address[2]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_addr[2]~2_combout\);

-- Location: MLABCELL_X28_Y3_N51
\temp_addr[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_addr(2) = ( temp_addr(2) & ( (!\temp_burst[0]~0_combout\) # (\temp_addr[2]~2_combout\) ) ) # ( !temp_addr(2) & ( (\temp_addr[2]~2_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_addr[2]~2_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_addr(2),
	combout => temp_addr(2));

-- Location: MLABCELL_X28_Y3_N54
\avm_m0_address[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_address[2]$latch~combout\ = ( temp_addr(2) & ( (\avm_m0_address[2]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_addr(2) & ( (!\Selector23~0_combout\ & \avm_m0_address[2]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_address[2]$latch~combout\,
	dataf => ALT_INV_temp_addr(2),
	combout => \avm_m0_address[2]$latch~combout\);

-- Location: IOIBUF_X76_Y0_N1
\avs_s0_address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(3),
	o => \avs_s0_address[3]~input_o\);

-- Location: LABCELL_X30_Y3_N15
\temp_addr[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_addr[3]~3_combout\ = (\avs_s0_address[3]~input_o\ & (!\s0_state.STATE_IDLE~q\ & \avs_s0_write~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_address[3]~input_o\,
	datab => \ALT_INV_s0_state.STATE_IDLE~q\,
	datac => \ALT_INV_avs_s0_write~input_o\,
	combout => \temp_addr[3]~3_combout\);

-- Location: LABCELL_X30_Y3_N51
\temp_addr[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_addr(3) = ( temp_addr(3) & ( (!\temp_burst[0]~0_combout\) # (\temp_addr[3]~3_combout\) ) ) # ( !temp_addr(3) & ( (\temp_addr[3]~3_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_addr[3]~3_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_addr(3),
	combout => temp_addr(3));

-- Location: LABCELL_X30_Y3_N36
\avm_m0_address[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_address[3]$latch~combout\ = ( temp_addr(3) & ( (\avm_m0_address[3]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_addr(3) & ( (!\Selector23~0_combout\ & \avm_m0_address[3]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_address[3]$latch~combout\,
	dataf => ALT_INV_temp_addr(3),
	combout => \avm_m0_address[3]$latch~combout\);

-- Location: IOIBUF_X4_Y0_N1
\avs_s0_address[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(4),
	o => \avs_s0_address[4]~input_o\);

-- Location: MLABCELL_X28_Y3_N18
\temp_addr[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_addr[4]~4_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_address[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avs_s0_write~input_o\,
	datac => \ALT_INV_avs_s0_address[4]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_addr[4]~4_combout\);

-- Location: MLABCELL_X28_Y3_N15
\temp_addr[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_addr(4) = ( \temp_burst[0]~0_combout\ & ( \temp_addr[4]~4_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_addr(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp_addr[4]~4_combout\,
	datad => ALT_INV_temp_addr(4),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_addr(4));

-- Location: MLABCELL_X28_Y3_N12
\avm_m0_address[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_address[4]$latch~combout\ = ( temp_addr(4) & ( (\Selector23~0_combout\) # (\avm_m0_address[4]$latch~combout\) ) ) # ( !temp_addr(4) & ( (\avm_m0_address[4]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avm_m0_address[4]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_addr(4),
	combout => \avm_m0_address[4]$latch~combout\);

-- Location: IOIBUF_X62_Y0_N35
\avs_s0_address[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(5),
	o => \avs_s0_address[5]~input_o\);

-- Location: LABCELL_X30_Y2_N21
\temp_addr[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_addr[5]~5_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_address[5]~input_o\ & \avs_s0_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avs_s0_address[5]~input_o\,
	datac => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_addr[5]~5_combout\);

-- Location: LABCELL_X30_Y2_N6
\temp_addr[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_addr(5) = ( \temp_burst[0]~0_combout\ & ( \temp_addr[5]~5_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_addr(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp_addr[5]~5_combout\,
	datad => ALT_INV_temp_addr(5),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_addr(5));

-- Location: LABCELL_X30_Y2_N9
\avm_m0_address[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_address[5]$latch~combout\ = ( temp_addr(5) & ( (\Selector23~0_combout\) # (\avm_m0_address[5]$latch~combout\) ) ) # ( !temp_addr(5) & ( (\avm_m0_address[5]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_m0_address[5]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_addr(5),
	combout => \avm_m0_address[5]$latch~combout\);

-- Location: IOIBUF_X8_Y0_N18
\avs_s0_address[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(6),
	o => \avs_s0_address[6]~input_o\);

-- Location: MLABCELL_X28_Y3_N57
\temp_addr[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_addr[6]~6_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_address[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avs_s0_write~input_o\,
	datac => \ALT_INV_avs_s0_address[6]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_addr[6]~6_combout\);

-- Location: MLABCELL_X28_Y3_N42
\temp_addr[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_addr(6) = ( \temp_burst[0]~0_combout\ & ( \temp_addr[6]~6_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_addr(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_temp_addr(6),
	datac => \ALT_INV_temp_addr[6]~6_combout\,
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_addr(6));

-- Location: MLABCELL_X28_Y3_N45
\avm_m0_address[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_address[6]$latch~combout\ = ( temp_addr(6) & ( (\Selector23~0_combout\) # (\avm_m0_address[6]$latch~combout\) ) ) # ( !temp_addr(6) & ( (\avm_m0_address[6]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_m0_address[6]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_addr(6),
	combout => \avm_m0_address[6]$latch~combout\);

-- Location: IOIBUF_X28_Y0_N52
\avs_s0_address[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(7),
	o => \avs_s0_address[7]~input_o\);

-- Location: MLABCELL_X28_Y3_N30
\temp_addr[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_addr[7]~7_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_address[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avs_s0_write~input_o\,
	datac => \ALT_INV_avs_s0_address[7]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_addr[7]~7_combout\);

-- Location: MLABCELL_X28_Y3_N33
\temp_addr[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_addr(7) = ( temp_addr(7) & ( (!\temp_burst[0]~0_combout\) # (\temp_addr[7]~7_combout\) ) ) # ( !temp_addr(7) & ( (\temp_addr[7]~7_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp_addr[7]~7_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_addr(7),
	combout => temp_addr(7));

-- Location: MLABCELL_X28_Y3_N0
\avm_m0_address[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_address[7]$latch~combout\ = ( temp_addr(7) & ( (\avm_m0_address[7]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_addr(7) & ( (!\Selector23~0_combout\ & \avm_m0_address[7]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_address[7]$latch~combout\,
	dataf => ALT_INV_temp_addr(7),
	combout => \avm_m0_address[7]$latch~combout\);

-- Location: IOIBUF_X62_Y0_N18
\avs_s0_address[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(8),
	o => \avs_s0_address[8]~input_o\);

-- Location: LABCELL_X30_Y3_N18
\temp_addr[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_addr[8]~8_combout\ = ( \avs_s0_address[8]~input_o\ & ( (!\s0_state.STATE_IDLE~q\ & \avs_s0_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s0_state.STATE_IDLE~q\,
	datac => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_avs_s0_address[8]~input_o\,
	combout => \temp_addr[8]~8_combout\);

-- Location: LABCELL_X30_Y3_N39
\temp_addr[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_addr(8) = ( temp_addr(8) & ( (!\temp_burst[0]~0_combout\) # (\temp_addr[8]~8_combout\) ) ) # ( !temp_addr(8) & ( (\temp_addr[8]~8_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp_addr[8]~8_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_addr(8),
	combout => temp_addr(8));

-- Location: LABCELL_X30_Y3_N57
\avm_m0_address[8]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_address[8]$latch~combout\ = ( temp_addr(8) & ( (\Selector23~0_combout\) # (\avm_m0_address[8]$latch~combout\) ) ) # ( !temp_addr(8) & ( (\avm_m0_address[8]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avm_m0_address[8]$latch~combout\,
	datac => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_addr(8),
	combout => \avm_m0_address[8]$latch~combout\);

-- Location: IOIBUF_X52_Y0_N52
\avs_s0_address[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(9),
	o => \avs_s0_address[9]~input_o\);

-- Location: LABCELL_X31_Y2_N0
\temp_addr[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_addr[9]~9_combout\ = ( \avs_s0_write~input_o\ & ( !\s0_state.STATE_IDLE~q\ & ( \avs_s0_address[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avs_s0_address[9]~input_o\,
	datae => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_addr[9]~9_combout\);

-- Location: LABCELL_X31_Y2_N15
\temp_addr[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_addr(9) = (!\temp_burst[0]~0_combout\ & ((temp_addr(9)))) # (\temp_burst[0]~0_combout\ & (\temp_addr[9]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp_addr[9]~9_combout\,
	datac => ALT_INV_temp_addr(9),
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_addr(9));

-- Location: LABCELL_X31_Y2_N12
\avm_m0_address[9]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_address[9]$latch~combout\ = ( temp_addr(9) & ( (\Selector23~0_combout\) # (\avm_m0_address[9]$latch~combout\) ) ) # ( !temp_addr(9) & ( (\avm_m0_address[9]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avm_m0_address[9]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_addr(9),
	combout => \avm_m0_address[9]$latch~combout\);

-- Location: IOIBUF_X2_Y0_N58
\avs_s0_address[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(10),
	o => \avs_s0_address[10]~input_o\);

-- Location: LABCELL_X29_Y2_N24
\temp_addr[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_addr[10]~10_combout\ = ( \avs_s0_write~input_o\ & ( !\s0_state.STATE_IDLE~q\ & ( \avs_s0_address[10]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_address[10]~input_o\,
	datae => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_addr[10]~10_combout\);

-- Location: LABCELL_X29_Y2_N15
\temp_addr[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_addr(10) = ( \temp_burst[0]~0_combout\ & ( \temp_addr[10]~10_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_addr(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_addr[10]~10_combout\,
	datac => ALT_INV_temp_addr(10),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_addr(10));

-- Location: LABCELL_X29_Y2_N12
\avm_m0_address[10]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_address[10]$latch~combout\ = ( temp_addr(10) & ( (\avm_m0_address[10]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_addr(10) & ( (!\Selector23~0_combout\ & \avm_m0_address[10]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_address[10]$latch~combout\,
	dataf => ALT_INV_temp_addr(10),
	combout => \avm_m0_address[10]$latch~combout\);

-- Location: IOIBUF_X4_Y0_N52
\avs_s0_address[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_address(11),
	o => \avs_s0_address[11]~input_o\);

-- Location: MLABCELL_X28_Y3_N3
\temp_addr[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_addr[11]~11_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_address[11]~input_o\ & \avs_s0_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_address[11]~input_o\,
	datac => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_addr[11]~11_combout\);

-- Location: MLABCELL_X28_Y3_N24
\temp_addr[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_addr(11) = ( temp_addr(11) & ( (!\temp_burst[0]~0_combout\) # (\temp_addr[11]~11_combout\) ) ) # ( !temp_addr(11) & ( (\temp_addr[11]~11_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp_addr[11]~11_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_addr(11),
	combout => temp_addr(11));

-- Location: MLABCELL_X28_Y3_N27
\avm_m0_address[11]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_address[11]$latch~combout\ = ( temp_addr(11) & ( (\avm_m0_address[11]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_addr(11) & ( (!\Selector23~0_combout\ & \avm_m0_address[11]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_address[11]$latch~combout\,
	dataf => ALT_INV_temp_addr(11),
	combout => \avm_m0_address[11]$latch~combout\);

-- Location: IOIBUF_X70_Y0_N1
\avs_s0_burstcount[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_burstcount(0),
	o => \avs_s0_burstcount[0]~input_o\);

-- Location: LABCELL_X30_Y2_N30
\temp_burst[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_burst[0]~1_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_burstcount[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_write~input_o\,
	datac => \ALT_INV_avs_s0_burstcount[0]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_burst[0]~1_combout\);

-- Location: LABCELL_X30_Y2_N33
\temp_burst[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_burst(0) = ( temp_burst(0) & ( (!\temp_burst[0]~0_combout\) # (\temp_burst[0]~1_combout\) ) ) # ( !temp_burst(0) & ( (\temp_burst[0]~1_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_burst[0]~1_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_burst(0),
	combout => temp_burst(0));

-- Location: LABCELL_X30_Y2_N0
\avm_m0_burstcount[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_burstcount[0]$latch~combout\ = ( temp_burst(0) & ( (\Selector23~0_combout\) # (\avm_m0_burstcount[0]$latch~combout\) ) ) # ( !temp_burst(0) & ( (\avm_m0_burstcount[0]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_m0_burstcount[0]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_burst(0),
	combout => \avm_m0_burstcount[0]$latch~combout\);

-- Location: IOIBUF_X28_Y0_N1
\avs_s0_burstcount[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_burstcount(1),
	o => \avs_s0_burstcount[1]~input_o\);

-- Location: LABCELL_X29_Y2_N36
\temp_burst[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_burst[1]~2_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_burstcount[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_write~input_o\,
	datac => \ALT_INV_avs_s0_burstcount[1]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_burst[1]~2_combout\);

-- Location: LABCELL_X29_Y2_N39
\temp_burst[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_burst(1) = ( \temp_burst[0]~0_combout\ & ( \temp_burst[1]~2_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_burst(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_burst[1]~2_combout\,
	datac => ALT_INV_temp_burst(1),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_burst(1));

-- Location: LABCELL_X29_Y2_N0
\avm_m0_burstcount[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_burstcount[1]$latch~combout\ = ( temp_burst(1) & ( (\avm_m0_burstcount[1]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_burst(1) & ( (!\Selector23~0_combout\ & \avm_m0_burstcount[1]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_burstcount[1]$latch~combout\,
	dataf => ALT_INV_temp_burst(1),
	combout => \avm_m0_burstcount[1]$latch~combout\);

-- Location: IOIBUF_X34_Y0_N75
\avs_s0_burstcount[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_burstcount(2),
	o => \avs_s0_burstcount[2]~input_o\);

-- Location: LABCELL_X29_Y2_N51
\temp_burst[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_burst[2]~3_combout\ = ( \avs_s0_write~input_o\ & ( !\s0_state.STATE_IDLE~q\ & ( \avs_s0_burstcount[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_burstcount[2]~input_o\,
	datae => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_burst[2]~3_combout\);

-- Location: LABCELL_X29_Y2_N18
\temp_burst[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_burst(2) = ( \temp_burst[0]~0_combout\ & ( \temp_burst[2]~3_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_burst(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_burst[2]~3_combout\,
	datac => ALT_INV_temp_burst(2),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_burst(2));

-- Location: LABCELL_X29_Y2_N21
\avm_m0_burstcount[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_burstcount[2]$latch~combout\ = ( temp_burst(2) & ( (\avm_m0_burstcount[2]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_burst(2) & ( (!\Selector23~0_combout\ & \avm_m0_burstcount[2]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_burstcount[2]$latch~combout\,
	dataf => ALT_INV_temp_burst(2),
	combout => \avm_m0_burstcount[2]$latch~combout\);

-- Location: IOIBUF_X78_Y0_N18
\avs_s0_burstcount[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_burstcount(3),
	o => \avs_s0_burstcount[3]~input_o\);

-- Location: LABCELL_X30_Y3_N3
\temp_burst[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_burst[3]~4_combout\ = ( \avs_s0_write~input_o\ & ( (!\s0_state.STATE_IDLE~q\ & \avs_s0_burstcount[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s0_state.STATE_IDLE~q\,
	datad => \ALT_INV_avs_s0_burstcount[3]~input_o\,
	dataf => \ALT_INV_avs_s0_write~input_o\,
	combout => \temp_burst[3]~4_combout\);

-- Location: LABCELL_X30_Y2_N51
\temp_burst[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_burst(3) = ( temp_burst(3) & ( (!\temp_burst[0]~0_combout\) # (\temp_burst[3]~4_combout\) ) ) # ( !temp_burst(3) & ( (\temp_burst[3]~4_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_burst[3]~4_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_burst(3),
	combout => temp_burst(3));

-- Location: LABCELL_X30_Y2_N18
\avm_m0_burstcount[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_burstcount[3]$latch~combout\ = ( temp_burst(3) & ( (\Selector23~0_combout\) # (\avm_m0_burstcount[3]$latch~combout\) ) ) # ( !temp_burst(3) & ( (\avm_m0_burstcount[3]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avm_m0_burstcount[3]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_burst(3),
	combout => \avm_m0_burstcount[3]$latch~combout\);

-- Location: IOIBUF_X32_Y0_N35
\avs_s0_byteenable[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_byteenable(0),
	o => \avs_s0_byteenable[0]~input_o\);

-- Location: LABCELL_X29_Y3_N6
\temp_byte[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_byte[0]~0_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_byteenable[0]~input_o\ & \avs_s0_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_byteenable[0]~input_o\,
	datad => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_byte[0]~0_combout\);

-- Location: LABCELL_X29_Y3_N9
\temp_byte[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_byte(0) = ( temp_byte(0) & ( (!\temp_burst[0]~0_combout\) # (\temp_byte[0]~0_combout\) ) ) # ( !temp_byte(0) & ( (\temp_byte[0]~0_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp_byte[0]~0_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_byte(0),
	combout => temp_byte(0));

-- Location: LABCELL_X29_Y3_N54
\avm_m0_byteenable[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_byteenable[0]$latch~combout\ = ( temp_byte(0) & ( (\avm_m0_byteenable[0]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_byte(0) & ( (!\Selector23~0_combout\ & \avm_m0_byteenable[0]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_byteenable[0]$latch~combout\,
	dataf => ALT_INV_temp_byte(0),
	combout => \avm_m0_byteenable[0]$latch~combout\);

-- Location: IOIBUF_X80_Y0_N35
\avs_s0_byteenable[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_byteenable(1),
	o => \avs_s0_byteenable[1]~input_o\);

-- Location: LABCELL_X30_Y2_N57
\temp_byte[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_byte[1]~1_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_byteenable[1]~input_o\ & \avs_s0_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_byteenable[1]~input_o\,
	datac => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_byte[1]~1_combout\);

-- Location: LABCELL_X30_Y2_N42
\temp_byte[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_byte(1) = (!\temp_burst[0]~0_combout\ & (temp_byte(1))) # (\temp_burst[0]~0_combout\ & ((\temp_byte[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_temp_byte(1),
	datac => \ALT_INV_temp_byte[1]~1_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_byte(1));

-- Location: LABCELL_X30_Y2_N45
\avm_m0_byteenable[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_byteenable[1]$latch~combout\ = ( temp_byte(1) & ( (\Selector23~0_combout\) # (\avm_m0_byteenable[1]$latch~combout\) ) ) # ( !temp_byte(1) & ( (\avm_m0_byteenable[1]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_m0_byteenable[1]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_byte(1),
	combout => \avm_m0_byteenable[1]$latch~combout\);

-- Location: IOIBUF_X38_Y0_N35
\avs_s0_byteenable[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_byteenable(2),
	o => \avs_s0_byteenable[2]~input_o\);

-- Location: LABCELL_X31_Y1_N0
\temp_byte[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_byte[2]~2_combout\ = ( \avs_s0_write~input_o\ & ( !\s0_state.STATE_IDLE~q\ & ( \avs_s0_byteenable[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avs_s0_byteenable[2]~input_o\,
	datae => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_byte[2]~2_combout\);

-- Location: LABCELL_X31_Y1_N51
\temp_byte[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_byte(2) = ( \temp_burst[0]~0_combout\ & ( \temp_byte[2]~2_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_byte(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp_byte[2]~2_combout\,
	datad => ALT_INV_temp_byte(2),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_byte(2));

-- Location: LABCELL_X31_Y1_N48
\avm_m0_byteenable[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_byteenable[2]$latch~combout\ = ( temp_byte(2) & ( (\Selector23~0_combout\) # (\avm_m0_byteenable[2]$latch~combout\) ) ) # ( !temp_byte(2) & ( (\avm_m0_byteenable[2]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_m0_byteenable[2]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_byte(2),
	combout => \avm_m0_byteenable[2]$latch~combout\);

-- Location: IOIBUF_X36_Y0_N18
\avs_s0_byteenable[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_byteenable(3),
	o => \avs_s0_byteenable[3]~input_o\);

-- Location: LABCELL_X30_Y1_N30
\temp_byte[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_byte[3]~3_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_byteenable[3]~input_o\ & \avs_s0_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avs_s0_byteenable[3]~input_o\,
	datac => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_byte[3]~3_combout\);

-- Location: LABCELL_X30_Y1_N24
\temp_byte[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_byte(3) = ( \temp_burst[0]~0_combout\ & ( \temp_byte[3]~3_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_byte(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_byte[3]~3_combout\,
	datac => ALT_INV_temp_byte(3),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_byte(3));

-- Location: LABCELL_X30_Y1_N21
\avm_m0_byteenable[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_byteenable[3]$latch~combout\ = ( \Selector23~0_combout\ & ( temp_byte(3) ) ) # ( !\Selector23~0_combout\ & ( temp_byte(3) & ( \avm_m0_byteenable[3]$latch~combout\ ) ) ) # ( !\Selector23~0_combout\ & ( !temp_byte(3) & ( 
-- \avm_m0_byteenable[3]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_avm_m0_byteenable[3]$latch~combout\,
	datae => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_byte(3),
	combout => \avm_m0_byteenable[3]$latch~combout\);

-- Location: LABCELL_X30_Y3_N30
\avm_m0_write$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_write$latch~combout\ = ( \avm_m0_write$latch~combout\ & ( (!\Selector23~0_combout\) # (\m0_state.STATE_PUSH_m0~q\) ) ) # ( !\avm_m0_write$latch~combout\ & ( (\Selector23~0_combout\ & \m0_state.STATE_PUSH_m0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_m0_state.STATE_PUSH_m0~q\,
	dataf => \ALT_INV_avm_m0_write$latch~combout\,
	combout => \avm_m0_write$latch~combout\);

-- Location: IOIBUF_X36_Y0_N1
\avs_s0_writedata[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(0),
	o => \avs_s0_writedata[0]~input_o\);

-- Location: LABCELL_X31_Y1_N39
\temp_data[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[0]~1_combout\ = ( \avs_s0_write~input_o\ & ( !\s0_state.STATE_IDLE~q\ & ( \avs_s0_writedata[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_writedata[0]~input_o\,
	datae => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[0]~1_combout\);

-- Location: LABCELL_X31_Y1_N6
\temp_data[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(0) = ( \temp_burst[0]~0_combout\ & ( \temp_data[0]~1_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_temp_data(0),
	datac => \ALT_INV_temp_data[0]~1_combout\,
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(0));

-- Location: LABCELL_X31_Y1_N9
\avm_m0_writedata[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[0]$latch~combout\ = ( temp_data(0) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[0]$latch~combout\) ) ) # ( !temp_data(0) & ( (\avm_m0_writedata[0]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_m0_writedata[0]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(0),
	combout => \avm_m0_writedata[0]$latch~combout\);

-- Location: IOIBUF_X34_Y0_N92
\avs_s0_writedata[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(1),
	o => \avs_s0_writedata[1]~input_o\);

-- Location: LABCELL_X29_Y3_N57
\temp_data[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[1]~2_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_writedata[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_write~input_o\,
	datad => \ALT_INV_avs_s0_writedata[1]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[1]~2_combout\);

-- Location: LABCELL_X29_Y3_N30
\temp_data[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(1) = ( temp_data(1) & ( (!\temp_burst[0]~0_combout\) # (\temp_data[1]~2_combout\) ) ) # ( !temp_data(1) & ( (\temp_data[1]~2_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_data[1]~2_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_data(1),
	combout => temp_data(1));

-- Location: LABCELL_X29_Y3_N33
\avm_m0_writedata[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[1]$latch~combout\ = ( temp_data(1) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[1]$latch~combout\) ) ) # ( !temp_data(1) & ( (\avm_m0_writedata[1]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avm_m0_writedata[1]$latch~combout\,
	datac => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(1),
	combout => \avm_m0_writedata[1]$latch~combout\);

-- Location: IOIBUF_X30_Y0_N1
\avs_s0_writedata[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(2),
	o => \avs_s0_writedata[2]~input_o\);

-- Location: LABCELL_X30_Y1_N36
\temp_data[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[2]~3_combout\ = ( \avs_s0_writedata[2]~input_o\ & ( (!\s0_state.STATE_IDLE~q\ & \avs_s0_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s0_state.STATE_IDLE~q\,
	datac => \ALT_INV_avs_s0_write~input_o\,
	datae => \ALT_INV_avs_s0_writedata[2]~input_o\,
	combout => \temp_data[2]~3_combout\);

-- Location: LABCELL_X30_Y1_N9
\temp_data[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(2) = ( \temp_burst[0]~0_combout\ & ( \temp_data[2]~3_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_data[2]~3_combout\,
	datac => ALT_INV_temp_data(2),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(2));

-- Location: LABCELL_X30_Y1_N6
\avm_m0_writedata[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[2]$latch~combout\ = ( temp_data(2) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[2]$latch~combout\) ) ) # ( !temp_data(2) & ( (\avm_m0_writedata[2]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_m0_writedata[2]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(2),
	combout => \avm_m0_writedata[2]$latch~combout\);

-- Location: IOIBUF_X74_Y0_N75
\avs_s0_writedata[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(3),
	o => \avs_s0_writedata[3]~input_o\);

-- Location: LABCELL_X31_Y3_N48
\temp_data[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[3]~4_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_writedata[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_write~input_o\,
	datad => \ALT_INV_avs_s0_writedata[3]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[3]~4_combout\);

-- Location: LABCELL_X31_Y3_N51
\temp_data[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(3) = ( temp_data(3) & ( (!\temp_burst[0]~0_combout\) # (\temp_data[3]~4_combout\) ) ) # ( !temp_data(3) & ( (\temp_data[3]~4_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_data[3]~4_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_data(3),
	combout => temp_data(3));

-- Location: LABCELL_X31_Y3_N36
\avm_m0_writedata[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[3]$latch~combout\ = ( temp_data(3) & ( (\avm_m0_writedata[3]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_data(3) & ( (!\Selector23~0_combout\ & \avm_m0_writedata[3]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_writedata[3]$latch~combout\,
	dataf => ALT_INV_temp_data(3),
	combout => \avm_m0_writedata[3]$latch~combout\);

-- Location: IOIBUF_X6_Y0_N1
\avs_s0_writedata[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(4),
	o => \avs_s0_writedata[4]~input_o\);

-- Location: LABCELL_X29_Y3_N36
\temp_data[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[4]~5_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_writedata[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_write~input_o\,
	datad => \ALT_INV_avs_s0_writedata[4]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[4]~5_combout\);

-- Location: LABCELL_X29_Y3_N39
\temp_data[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(4) = ( temp_data(4) & ( (!\temp_burst[0]~0_combout\) # (\temp_data[4]~5_combout\) ) ) # ( !temp_data(4) & ( (\temp_data[4]~5_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp_data[4]~5_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_data(4),
	combout => temp_data(4));

-- Location: LABCELL_X29_Y3_N24
\avm_m0_writedata[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[4]$latch~combout\ = ( temp_data(4) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[4]$latch~combout\) ) ) # ( !temp_data(4) & ( (\avm_m0_writedata[4]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avm_m0_writedata[4]$latch~combout\,
	datac => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(4),
	combout => \avm_m0_writedata[4]$latch~combout\);

-- Location: IOIBUF_X54_Y0_N52
\avs_s0_writedata[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(5),
	o => \avs_s0_writedata[5]~input_o\);

-- Location: LABCELL_X31_Y3_N57
\temp_data[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[5]~6_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_writedata[5]~input_o\ & \avs_s0_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_writedata[5]~input_o\,
	datad => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[5]~6_combout\);

-- Location: LABCELL_X31_Y3_N30
\temp_data[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(5) = (!\temp_burst[0]~0_combout\ & ((temp_data(5)))) # (\temp_burst[0]~0_combout\ & (\temp_data[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_data[5]~6_combout\,
	datac => ALT_INV_temp_data(5),
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(5));

-- Location: LABCELL_X31_Y3_N33
\avm_m0_writedata[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[5]$latch~combout\ = ( temp_data(5) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[5]$latch~combout\) ) ) # ( !temp_data(5) & ( (\avm_m0_writedata[5]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avm_m0_writedata[5]$latch~combout\,
	datac => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(5),
	combout => \avm_m0_writedata[5]$latch~combout\);

-- Location: IOIBUF_X64_Y0_N35
\avs_s0_writedata[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(6),
	o => \avs_s0_writedata[6]~input_o\);

-- Location: LABCELL_X30_Y3_N24
\temp_data[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[6]~7_combout\ = ( \avs_s0_write~input_o\ & ( (!\s0_state.STATE_IDLE~q\ & \avs_s0_writedata[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s0_state.STATE_IDLE~q\,
	datac => \ALT_INV_avs_s0_writedata[6]~input_o\,
	dataf => \ALT_INV_avs_s0_write~input_o\,
	combout => \temp_data[6]~7_combout\);

-- Location: LABCELL_X30_Y3_N27
\temp_data[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(6) = ( temp_data(6) & ( (!\temp_burst[0]~0_combout\) # (\temp_data[6]~7_combout\) ) ) # ( !temp_data(6) & ( (\temp_data[6]~7_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp_data[6]~7_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_data(6),
	combout => temp_data(6));

-- Location: LABCELL_X30_Y3_N48
\avm_m0_writedata[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[6]$latch~combout\ = ( temp_data(6) & ( (\avm_m0_writedata[6]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_data(6) & ( (!\Selector23~0_combout\ & \avm_m0_writedata[6]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_writedata[6]$latch~combout\,
	dataf => ALT_INV_temp_data(6),
	combout => \avm_m0_writedata[6]$latch~combout\);

-- Location: IOIBUF_X52_Y0_N18
\avs_s0_writedata[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(7),
	o => \avs_s0_writedata[7]~input_o\);

-- Location: LABCELL_X31_Y2_N57
\temp_data[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[7]~8_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_writedata[7]~input_o\ & \avs_s0_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_writedata[7]~input_o\,
	datad => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[7]~8_combout\);

-- Location: LABCELL_X31_Y2_N6
\temp_data[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(7) = ( \temp_burst[0]~0_combout\ & ( \temp_data[7]~8_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_data[7]~8_combout\,
	datad => ALT_INV_temp_data(7),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(7));

-- Location: LABCELL_X31_Y2_N54
\avm_m0_writedata[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[7]$latch~combout\ = ( temp_data(7) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[7]$latch~combout\) ) ) # ( !temp_data(7) & ( (\avm_m0_writedata[7]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_m0_writedata[7]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(7),
	combout => \avm_m0_writedata[7]$latch~combout\);

-- Location: IOIBUF_X62_Y0_N52
\avs_s0_writedata[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(8),
	o => \avs_s0_writedata[8]~input_o\);

-- Location: LABCELL_X30_Y2_N36
\temp_data[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[8]~9_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_writedata[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_write~input_o\,
	datac => \ALT_INV_avs_s0_writedata[8]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[8]~9_combout\);

-- Location: LABCELL_X30_Y2_N39
\temp_data[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(8) = ( \temp_burst[0]~0_combout\ & ( \temp_data[8]~9_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_data[8]~9_combout\,
	datad => ALT_INV_temp_data(8),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(8));

-- Location: LABCELL_X30_Y2_N48
\avm_m0_writedata[8]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[8]$latch~combout\ = ( temp_data(8) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[8]$latch~combout\) ) ) # ( !temp_data(8) & ( (\avm_m0_writedata[8]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avm_m0_writedata[8]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(8),
	combout => \avm_m0_writedata[8]$latch~combout\);

-- Location: IOIBUF_X28_Y0_N35
\avs_s0_writedata[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(9),
	o => \avs_s0_writedata[9]~input_o\);

-- Location: LABCELL_X29_Y2_N9
\temp_data[9]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[9]~10_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_writedata[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_write~input_o\,
	datad => \ALT_INV_avs_s0_writedata[9]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[9]~10_combout\);

-- Location: LABCELL_X29_Y2_N6
\temp_data[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(9) = ( \temp_burst[0]~0_combout\ & ( \temp_data[9]~10_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_data[9]~10_combout\,
	datad => ALT_INV_temp_data(9),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(9));

-- Location: LABCELL_X29_Y2_N54
\avm_m0_writedata[9]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[9]$latch~combout\ = ( temp_data(9) & ( (\avm_m0_writedata[9]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_data(9) & ( (!\Selector23~0_combout\ & \avm_m0_writedata[9]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_writedata[9]$latch~combout\,
	dataf => ALT_INV_temp_data(9),
	combout => \avm_m0_writedata[9]$latch~combout\);

-- Location: IOIBUF_X82_Y0_N58
\avs_s0_writedata[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(10),
	o => \avs_s0_writedata[10]~input_o\);

-- Location: LABCELL_X29_Y3_N21
\temp_data[10]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[10]~11_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_writedata[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_write~input_o\,
	datad => \ALT_INV_avs_s0_writedata[10]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[10]~11_combout\);

-- Location: LABCELL_X29_Y3_N48
\temp_data[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(10) = ( temp_data(10) & ( (!\temp_burst[0]~0_combout\) # (\temp_data[10]~11_combout\) ) ) # ( !temp_data(10) & ( (\temp_data[10]~11_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp_data[10]~11_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_data(10),
	combout => temp_data(10));

-- Location: LABCELL_X29_Y3_N51
\avm_m0_writedata[10]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[10]$latch~combout\ = ( temp_data(10) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[10]$latch~combout\) ) ) # ( !temp_data(10) & ( (\avm_m0_writedata[10]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avm_m0_writedata[10]$latch~combout\,
	datac => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(10),
	combout => \avm_m0_writedata[10]$latch~combout\);

-- Location: IOIBUF_X54_Y0_N1
\avs_s0_writedata[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(11),
	o => \avs_s0_writedata[11]~input_o\);

-- Location: LABCELL_X31_Y1_N57
\temp_data[11]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[11]~12_combout\ = ( \avs_s0_write~input_o\ & ( !\s0_state.STATE_IDLE~q\ & ( \avs_s0_writedata[11]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_writedata[11]~input_o\,
	datae => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[11]~12_combout\);

-- Location: LABCELL_X31_Y1_N33
\temp_data[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(11) = ( \temp_burst[0]~0_combout\ & ( \temp_data[11]~12_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(11) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_temp_data(11),
	datab => \ALT_INV_temp_data[11]~12_combout\,
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(11));

-- Location: LABCELL_X31_Y1_N30
\avm_m0_writedata[11]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[11]$latch~combout\ = ( temp_data(11) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[11]$latch~combout\) ) ) # ( !temp_data(11) & ( (\avm_m0_writedata[11]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_m0_writedata[11]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(11),
	combout => \avm_m0_writedata[11]$latch~combout\);

-- Location: IOIBUF_X62_Y0_N1
\avs_s0_writedata[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(12),
	o => \avs_s0_writedata[12]~input_o\);

-- Location: LABCELL_X30_Y1_N15
\temp_data[12]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[12]~13_combout\ = ( \avs_s0_writedata[12]~input_o\ & ( !\s0_state.STATE_IDLE~q\ & ( \avs_s0_write~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_write~input_o\,
	datae => \ALT_INV_avs_s0_writedata[12]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[12]~13_combout\);

-- Location: LABCELL_X30_Y1_N42
\temp_data[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(12) = ( \temp_burst[0]~0_combout\ & ( \temp_data[12]~13_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(12) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_data[12]~13_combout\,
	datad => ALT_INV_temp_data(12),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(12));

-- Location: LABCELL_X30_Y1_N45
\avm_m0_writedata[12]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[12]$latch~combout\ = ( temp_data(12) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[12]$latch~combout\) ) ) # ( !temp_data(12) & ( (\avm_m0_writedata[12]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_m0_writedata[12]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(12),
	combout => \avm_m0_writedata[12]$latch~combout\);

-- Location: IOIBUF_X38_Y0_N1
\avs_s0_writedata[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(13),
	o => \avs_s0_writedata[13]~input_o\);

-- Location: LABCELL_X31_Y1_N24
\temp_data[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[13]~14_combout\ = ( \avs_s0_write~input_o\ & ( !\s0_state.STATE_IDLE~q\ & ( \avs_s0_writedata[13]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_writedata[13]~input_o\,
	datae => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[13]~14_combout\);

-- Location: LABCELL_X31_Y1_N15
\temp_data[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(13) = ( \temp_burst[0]~0_combout\ & ( \temp_data[13]~14_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp_data[13]~14_combout\,
	datad => ALT_INV_temp_data(13),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(13));

-- Location: LABCELL_X31_Y1_N12
\avm_m0_writedata[13]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[13]$latch~combout\ = ( temp_data(13) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[13]$latch~combout\) ) ) # ( !temp_data(13) & ( (\avm_m0_writedata[13]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avm_m0_writedata[13]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(13),
	combout => \avm_m0_writedata[13]$latch~combout\);

-- Location: IOIBUF_X58_Y0_N75
\avs_s0_writedata[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(14),
	o => \avs_s0_writedata[14]~input_o\);

-- Location: LABCELL_X30_Y3_N33
\temp_data[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[14]~15_combout\ = (!\s0_state.STATE_IDLE~q\ & (\avs_s0_write~input_o\ & \avs_s0_writedata[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s0_state.STATE_IDLE~q\,
	datac => \ALT_INV_avs_s0_write~input_o\,
	datad => \ALT_INV_avs_s0_writedata[14]~input_o\,
	combout => \temp_data[14]~15_combout\);

-- Location: LABCELL_X30_Y3_N42
\temp_data[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(14) = ( \temp_burst[0]~0_combout\ & ( \temp_data[14]~15_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp_data[14]~15_combout\,
	datad => ALT_INV_temp_data(14),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(14));

-- Location: LABCELL_X30_Y3_N0
\avm_m0_writedata[14]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[14]$latch~combout\ = ( temp_data(14) & ( (\avm_m0_writedata[14]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_data(14) & ( (!\Selector23~0_combout\ & \avm_m0_writedata[14]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_writedata[14]$latch~combout\,
	dataf => ALT_INV_temp_data(14),
	combout => \avm_m0_writedata[14]$latch~combout\);

-- Location: IOIBUF_X58_Y0_N41
\avs_s0_writedata[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(15),
	o => \avs_s0_writedata[15]~input_o\);

-- Location: LABCELL_X29_Y3_N27
\temp_data[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[15]~16_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_writedata[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_write~input_o\,
	datad => \ALT_INV_avs_s0_writedata[15]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[15]~16_combout\);

-- Location: LABCELL_X29_Y3_N42
\temp_data[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(15) = ( temp_data(15) & ( (!\temp_burst[0]~0_combout\) # (\temp_data[15]~16_combout\) ) ) # ( !temp_data(15) & ( (\temp_data[15]~16_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_data[15]~16_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_data(15),
	combout => temp_data(15));

-- Location: LABCELL_X29_Y3_N45
\avm_m0_writedata[15]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[15]$latch~combout\ = ( temp_data(15) & ( (\avm_m0_writedata[15]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_data(15) & ( (!\Selector23~0_combout\ & \avm_m0_writedata[15]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_writedata[15]$latch~combout\,
	dataf => ALT_INV_temp_data(15),
	combout => \avm_m0_writedata[15]$latch~combout\);

-- Location: IOIBUF_X40_Y0_N52
\avs_s0_writedata[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(16),
	o => \avs_s0_writedata[16]~input_o\);

-- Location: LABCELL_X31_Y2_N33
\temp_data[16]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[16]~17_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_writedata[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_write~input_o\,
	datad => \ALT_INV_avs_s0_writedata[16]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[16]~17_combout\);

-- Location: LABCELL_X31_Y2_N30
\temp_data[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(16) = ( \temp_burst[0]~0_combout\ & ( \temp_data[16]~17_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(16) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_temp_data(16),
	datac => \ALT_INV_temp_data[16]~17_combout\,
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(16));

-- Location: LABCELL_X31_Y2_N9
\avm_m0_writedata[16]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[16]$latch~combout\ = ( temp_data(16) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[16]$latch~combout\) ) ) # ( !temp_data(16) & ( (\avm_m0_writedata[16]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_m0_writedata[16]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(16),
	combout => \avm_m0_writedata[16]$latch~combout\);

-- Location: IOIBUF_X32_Y0_N52
\avs_s0_writedata[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(17),
	o => \avs_s0_writedata[17]~input_o\);

-- Location: LABCELL_X29_Y2_N3
\temp_data[17]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[17]~18_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_writedata[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_write~input_o\,
	datac => \ALT_INV_avs_s0_writedata[17]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[17]~18_combout\);

-- Location: LABCELL_X29_Y2_N42
\temp_data[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(17) = ( \temp_burst[0]~0_combout\ & ( \temp_data[17]~18_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_data[17]~18_combout\,
	datac => ALT_INV_temp_data(17),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(17));

-- Location: LABCELL_X29_Y2_N45
\avm_m0_writedata[17]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[17]$latch~combout\ = ( temp_data(17) & ( (\avm_m0_writedata[17]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_data(17) & ( (!\Selector23~0_combout\ & \avm_m0_writedata[17]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datac => \ALT_INV_avm_m0_writedata[17]$latch~combout\,
	dataf => ALT_INV_temp_data(17),
	combout => \avm_m0_writedata[17]$latch~combout\);

-- Location: IOIBUF_X50_Y0_N58
\avs_s0_writedata[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(18),
	o => \avs_s0_writedata[18]~input_o\);

-- Location: LABCELL_X31_Y2_N27
\temp_data[18]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[18]~19_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_writedata[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_write~input_o\,
	datad => \ALT_INV_avs_s0_writedata[18]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[18]~19_combout\);

-- Location: LABCELL_X31_Y2_N24
\temp_data[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(18) = ( temp_data(18) & ( (!\temp_burst[0]~0_combout\) # (\temp_data[18]~19_combout\) ) ) # ( !temp_data(18) & ( (\temp_data[18]~19_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp_data[18]~19_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_data(18),
	combout => temp_data(18));

-- Location: LABCELL_X31_Y2_N42
\avm_m0_writedata[18]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[18]$latch~combout\ = ( temp_data(18) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[18]$latch~combout\) ) ) # ( !temp_data(18) & ( (\avm_m0_writedata[18]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avm_m0_writedata[18]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(18),
	combout => \avm_m0_writedata[18]$latch~combout\);

-- Location: IOIBUF_X26_Y0_N58
\avs_s0_writedata[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(19),
	o => \avs_s0_writedata[19]~input_o\);

-- Location: LABCELL_X29_Y2_N57
\temp_data[19]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[19]~20_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_writedata[19]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_write~input_o\,
	datac => \ALT_INV_avs_s0_writedata[19]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[19]~20_combout\);

-- Location: LABCELL_X29_Y2_N30
\temp_data[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(19) = ( \temp_burst[0]~0_combout\ & ( \temp_data[19]~20_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(19) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_data[19]~20_combout\,
	datac => ALT_INV_temp_data(19),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(19));

-- Location: LABCELL_X29_Y2_N33
\avm_m0_writedata[19]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[19]$latch~combout\ = ( temp_data(19) & ( (\avm_m0_writedata[19]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_data(19) & ( (!\Selector23~0_combout\ & \avm_m0_writedata[19]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_writedata[19]$latch~combout\,
	dataf => ALT_INV_temp_data(19),
	combout => \avm_m0_writedata[19]$latch~combout\);

-- Location: IOIBUF_X68_Y0_N35
\avs_s0_writedata[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(20),
	o => \avs_s0_writedata[20]~input_o\);

-- Location: LABCELL_X31_Y2_N45
\temp_data[20]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[20]~21_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_writedata[20]~input_o\ & \avs_s0_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_writedata[20]~input_o\,
	datad => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[20]~21_combout\);

-- Location: LABCELL_X31_Y2_N18
\temp_data[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(20) = ( \temp_burst[0]~0_combout\ & ( \temp_data[20]~21_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(20) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_temp_data(20),
	datac => \ALT_INV_temp_data[20]~21_combout\,
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(20));

-- Location: LABCELL_X31_Y2_N21
\avm_m0_writedata[20]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[20]$latch~combout\ = ( temp_data(20) & ( (\avm_m0_writedata[20]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_data(20) & ( (!\Selector23~0_combout\ & \avm_m0_writedata[20]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_writedata[20]$latch~combout\,
	dataf => ALT_INV_temp_data(20),
	combout => \avm_m0_writedata[20]$latch~combout\);

-- Location: IOIBUF_X76_Y0_N18
\avs_s0_writedata[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(21),
	o => \avs_s0_writedata[21]~input_o\);

-- Location: LABCELL_X30_Y3_N45
\temp_data[21]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[21]~22_combout\ = ( \avs_s0_write~input_o\ & ( (!\s0_state.STATE_IDLE~q\ & \avs_s0_writedata[21]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_s0_state.STATE_IDLE~q\,
	datac => \ALT_INV_avs_s0_writedata[21]~input_o\,
	dataf => \ALT_INV_avs_s0_write~input_o\,
	combout => \temp_data[21]~22_combout\);

-- Location: LABCELL_X30_Y3_N6
\temp_data[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(21) = ( \temp_burst[0]~0_combout\ & ( \temp_data[21]~22_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(21) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp_data[21]~22_combout\,
	datab => ALT_INV_temp_data(21),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(21));

-- Location: LABCELL_X30_Y3_N9
\avm_m0_writedata[21]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[21]$latch~combout\ = ( temp_data(21) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[21]$latch~combout\) ) ) # ( !temp_data(21) & ( (\avm_m0_writedata[21]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_m0_writedata[21]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(21),
	combout => \avm_m0_writedata[21]$latch~combout\);

-- Location: IOIBUF_X66_Y0_N58
\avs_s0_writedata[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(22),
	o => \avs_s0_writedata[22]~input_o\);

-- Location: LABCELL_X31_Y3_N6
\temp_data[22]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[22]~23_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_writedata[22]~input_o\ & \avs_s0_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_writedata[22]~input_o\,
	datac => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[22]~23_combout\);

-- Location: LABCELL_X31_Y3_N9
\temp_data[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(22) = (!\temp_burst[0]~0_combout\ & ((temp_data(22)))) # (\temp_burst[0]~0_combout\ & (\temp_data[22]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_data[22]~23_combout\,
	datac => ALT_INV_temp_data(22),
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(22));

-- Location: LABCELL_X31_Y3_N42
\avm_m0_writedata[22]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[22]$latch~combout\ = ( temp_data(22) & ( (\avm_m0_writedata[22]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_data(22) & ( (!\Selector23~0_combout\ & \avm_m0_writedata[22]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datab => \ALT_INV_avm_m0_writedata[22]$latch~combout\,
	dataf => ALT_INV_temp_data(22),
	combout => \avm_m0_writedata[22]$latch~combout\);

-- Location: IOIBUF_X40_Y0_N18
\avs_s0_writedata[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(23),
	o => \avs_s0_writedata[23]~input_o\);

-- Location: LABCELL_X30_Y1_N54
\temp_data[23]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[23]~24_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_writedata[23]~input_o\ & \avs_s0_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_writedata[23]~input_o\,
	datac => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[23]~24_combout\);

-- Location: LABCELL_X30_Y1_N51
\temp_data[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(23) = ( temp_data(23) & ( \temp_burst[0]~0_combout\ & ( \temp_data[23]~24_combout\ ) ) ) # ( !temp_data(23) & ( \temp_burst[0]~0_combout\ & ( \temp_data[23]~24_combout\ ) ) ) # ( temp_data(23) & ( !\temp_burst[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_data[23]~24_combout\,
	datae => ALT_INV_temp_data(23),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(23));

-- Location: LABCELL_X30_Y1_N0
\avm_m0_writedata[23]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[23]$latch~combout\ = ( \Selector23~0_combout\ & ( temp_data(23) ) ) # ( !\Selector23~0_combout\ & ( temp_data(23) & ( \avm_m0_writedata[23]$latch~combout\ ) ) ) # ( !\Selector23~0_combout\ & ( !temp_data(23) & ( 
-- \avm_m0_writedata[23]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_m0_writedata[23]$latch~combout\,
	datae => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(23),
	combout => \avm_m0_writedata[23]$latch~combout\);

-- Location: IOIBUF_X58_Y0_N58
\avs_s0_writedata[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(24),
	o => \avs_s0_writedata[24]~input_o\);

-- Location: LABCELL_X31_Y3_N45
\temp_data[24]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[24]~25_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_writedata[24]~input_o\ & \avs_s0_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_writedata[24]~input_o\,
	datad => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[24]~25_combout\);

-- Location: LABCELL_X31_Y3_N18
\temp_data[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(24) = ( temp_data(24) & ( (!\temp_burst[0]~0_combout\) # (\temp_data[24]~25_combout\) ) ) # ( !temp_data(24) & ( (\temp_data[24]~25_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp_data[24]~25_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_data(24),
	combout => temp_data(24));

-- Location: LABCELL_X31_Y3_N21
\avm_m0_writedata[24]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[24]$latch~combout\ = ( temp_data(24) & ( (\avm_m0_writedata[24]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_data(24) & ( (!\Selector23~0_combout\ & \avm_m0_writedata[24]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_writedata[24]$latch~combout\,
	dataf => ALT_INV_temp_data(24),
	combout => \avm_m0_writedata[24]$latch~combout\);

-- Location: IOIBUF_X76_Y0_N52
\avs_s0_writedata[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(25),
	o => \avs_s0_writedata[25]~input_o\);

-- Location: LABCELL_X30_Y2_N3
\temp_data[25]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[25]~26_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_writedata[25]~input_o\ & \avs_s0_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_writedata[25]~input_o\,
	datac => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[25]~26_combout\);

-- Location: LABCELL_X30_Y2_N24
\temp_data[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(25) = (!\temp_burst[0]~0_combout\ & (temp_data(25))) # (\temp_burst[0]~0_combout\ & ((\temp_data[25]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_temp_data(25),
	datac => \ALT_INV_temp_data[25]~26_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(25));

-- Location: LABCELL_X30_Y2_N27
\avm_m0_writedata[25]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[25]$latch~combout\ = ( temp_data(25) & ( (\avm_m0_writedata[25]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_data(25) & ( (!\Selector23~0_combout\ & \avm_m0_writedata[25]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_writedata[25]$latch~combout\,
	dataf => ALT_INV_temp_data(25),
	combout => \avm_m0_writedata[25]$latch~combout\);

-- Location: IOIBUF_X38_Y0_N18
\avs_s0_writedata[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(26),
	o => \avs_s0_writedata[26]~input_o\);

-- Location: LABCELL_X31_Y1_N21
\temp_data[26]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[26]~27_combout\ = ( \avs_s0_write~input_o\ & ( !\s0_state.STATE_IDLE~q\ & ( \avs_s0_writedata[26]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_writedata[26]~input_o\,
	datae => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[26]~27_combout\);

-- Location: LABCELL_X31_Y1_N42
\temp_data[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(26) = ( \temp_burst[0]~0_combout\ & ( \temp_data[26]~27_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(26) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp_data[26]~27_combout\,
	datad => ALT_INV_temp_data(26),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(26));

-- Location: LABCELL_X31_Y1_N45
\avm_m0_writedata[26]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[26]$latch~combout\ = ( temp_data(26) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[26]$latch~combout\) ) ) # ( !temp_data(26) & ( (\avm_m0_writedata[26]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_m0_writedata[26]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(26),
	combout => \avm_m0_writedata[26]$latch~combout\);

-- Location: IOIBUF_X60_Y0_N52
\avs_s0_writedata[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(27),
	o => \avs_s0_writedata[27]~input_o\);

-- Location: LABCELL_X31_Y3_N24
\temp_data[27]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[27]~28_combout\ = ( \avs_s0_writedata[27]~input_o\ & ( !\s0_state.STATE_IDLE~q\ & ( \avs_s0_write~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_write~input_o\,
	datae => \ALT_INV_avs_s0_writedata[27]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[27]~28_combout\);

-- Location: LABCELL_X31_Y3_N39
\temp_data[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(27) = ( temp_data(27) & ( (!\temp_burst[0]~0_combout\) # (\temp_data[27]~28_combout\) ) ) # ( !temp_data(27) & ( (\temp_data[27]~28_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp_data[27]~28_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_data(27),
	combout => temp_data(27));

-- Location: LABCELL_X31_Y3_N0
\avm_m0_writedata[27]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[27]$latch~combout\ = ( temp_data(27) & ( (\avm_m0_writedata[27]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_data(27) & ( (!\Selector23~0_combout\ & \avm_m0_writedata[27]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_writedata[27]$latch~combout\,
	dataf => ALT_INV_temp_data(27),
	combout => \avm_m0_writedata[27]$latch~combout\);

-- Location: IOIBUF_X26_Y0_N75
\avs_s0_writedata[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(28),
	o => \avs_s0_writedata[28]~input_o\);

-- Location: LABCELL_X29_Y3_N18
\temp_data[28]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[28]~29_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_writedata[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_write~input_o\,
	datad => \ALT_INV_avs_s0_writedata[28]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[28]~29_combout\);

-- Location: MLABCELL_X28_Y3_N39
\temp_data[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(28) = ( \temp_burst[0]~0_combout\ & ( \temp_data[28]~29_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(28) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_data[28]~29_combout\,
	datad => ALT_INV_temp_data(28),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(28));

-- Location: MLABCELL_X28_Y3_N36
\avm_m0_writedata[28]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[28]$latch~combout\ = ( temp_data(28) & ( (\avm_m0_writedata[28]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_data(28) & ( (!\Selector23~0_combout\ & \avm_m0_writedata[28]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector23~0_combout\,
	datad => \ALT_INV_avm_m0_writedata[28]$latch~combout\,
	dataf => ALT_INV_temp_data(28),
	combout => \avm_m0_writedata[28]$latch~combout\);

-- Location: IOIBUF_X78_Y0_N1
\avs_s0_writedata[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(29),
	o => \avs_s0_writedata[29]~input_o\);

-- Location: LABCELL_X30_Y2_N12
\temp_data[29]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[29]~30_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_write~input_o\ & \avs_s0_writedata[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_write~input_o\,
	datac => \ALT_INV_avs_s0_writedata[29]~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[29]~30_combout\);

-- Location: LABCELL_X30_Y2_N15
\temp_data[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(29) = ( \temp_burst[0]~0_combout\ & ( \temp_data[29]~30_combout\ ) ) # ( !\temp_burst[0]~0_combout\ & ( temp_data(29) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_temp_data[29]~30_combout\,
	datac => ALT_INV_temp_data(29),
	dataf => \ALT_INV_temp_burst[0]~0_combout\,
	combout => temp_data(29));

-- Location: LABCELL_X30_Y2_N54
\avm_m0_writedata[29]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[29]$latch~combout\ = ( temp_data(29) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[29]$latch~combout\) ) ) # ( !temp_data(29) & ( (\avm_m0_writedata[29]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_m0_writedata[29]$latch~combout\,
	datad => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(29),
	combout => \avm_m0_writedata[29]$latch~combout\);

-- Location: IOIBUF_X72_Y0_N52
\avs_s0_writedata[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(30),
	o => \avs_s0_writedata[30]~input_o\);

-- Location: LABCELL_X29_Y3_N3
\temp_data[30]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[30]~31_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_writedata[30]~input_o\ & \avs_s0_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_s0_writedata[30]~input_o\,
	datad => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[30]~31_combout\);

-- Location: LABCELL_X29_Y3_N15
\temp_data[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(30) = ( temp_data(30) & ( (!\temp_burst[0]~0_combout\) # (\temp_data[30]~31_combout\) ) ) # ( !temp_data(30) & ( (\temp_data[30]~31_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_temp_data[30]~31_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_data(30),
	combout => temp_data(30));

-- Location: LABCELL_X29_Y3_N12
\avm_m0_writedata[30]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[30]$latch~combout\ = ( temp_data(30) & ( (\Selector23~0_combout\) # (\avm_m0_writedata[30]$latch~combout\) ) ) # ( !temp_data(30) & ( (\avm_m0_writedata[30]$latch~combout\ & !\Selector23~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avm_m0_writedata[30]$latch~combout\,
	datac => \ALT_INV_Selector23~0_combout\,
	dataf => ALT_INV_temp_data(30),
	combout => \avm_m0_writedata[30]$latch~combout\);

-- Location: IOIBUF_X72_Y0_N35
\avs_s0_writedata[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_s0_writedata(31),
	o => \avs_s0_writedata[31]~input_o\);

-- Location: LABCELL_X31_Y3_N3
\temp_data[31]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \temp_data[31]~32_combout\ = ( !\s0_state.STATE_IDLE~q\ & ( (\avs_s0_writedata[31]~input_o\ & \avs_s0_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_s0_writedata[31]~input_o\,
	datad => \ALT_INV_avs_s0_write~input_o\,
	dataf => \ALT_INV_s0_state.STATE_IDLE~q\,
	combout => \temp_data[31]~32_combout\);

-- Location: LABCELL_X31_Y3_N15
\temp_data[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- temp_data(31) = ( temp_data(31) & ( (!\temp_burst[0]~0_combout\) # (\temp_data[31]~32_combout\) ) ) # ( !temp_data(31) & ( (\temp_data[31]~32_combout\ & \temp_burst[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_temp_data[31]~32_combout\,
	datad => \ALT_INV_temp_burst[0]~0_combout\,
	dataf => ALT_INV_temp_data(31),
	combout => temp_data(31));

-- Location: LABCELL_X31_Y3_N12
\avm_m0_writedata[31]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_m0_writedata[31]$latch~combout\ = ( temp_data(31) & ( (\avm_m0_writedata[31]$latch~combout\) # (\Selector23~0_combout\) ) ) # ( !temp_data(31) & ( (!\Selector23~0_combout\ & \avm_m0_writedata[31]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector23~0_combout\,
	datab => \ALT_INV_avm_m0_writedata[31]$latch~combout\,
	dataf => ALT_INV_temp_data(31),
	combout => \avm_m0_writedata[31]$latch~combout\);

-- Location: IOIBUF_X89_Y4_N95
\avm_m0_waitrequest~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avm_m0_waitrequest,
	o => \avm_m0_waitrequest~input_o\);

-- Location: LABCELL_X48_Y24_N0
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


