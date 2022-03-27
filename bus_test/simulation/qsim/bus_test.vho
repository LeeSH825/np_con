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

-- DATE "03/28/2022 00:00:46"

-- 
-- Device: Altera 5CGXFC9E7F35C8 Package FBGA1152
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

ENTITY 	soma IS
    PORT (
	clk_soma : IN std_logic;
	rst_soma : IN std_logic;
	avs_fetchSoma_address : IN std_logic_vector(1 DOWNTO 0);
	avs_fetchSoma_waitrequest : OUT std_logic;
	avs_fetchSoma_write : IN std_logic;
	avs_fetchSoma_writedata : IN std_logic_vector(15 DOWNTO 0);
	avs_pullSynapse_address : IN std_logic_vector(7 DOWNTO 0);
	avs_pullSynapse_waitrequest : OUT std_logic;
	avs_pullSynapse_write : IN std_logic;
	avs_pullSynapse_writedata : IN std_logic_vector(31 DOWNTO 0);
	avm_pushSpike_address : OUT std_logic_vector(15 DOWNTO 0);
	avm_pushSpike_waitrequest : IN std_logic;
	avm_pushSpike_byteenable : OUT std_logic_vector(3 DOWNTO 0);
	avm_pushSpike_write : OUT std_logic;
	avm_pushSpike_writedata : OUT std_logic_vector(9 DOWNTO 0);
	dbg_patchMembrane : OUT std_logic;
	dbg_TIME : OUT std_logic_vector(9 DOWNTO 0);
	dbg_ADDR : OUT std_logic_vector(15 DOWNTO 0);
	dbg_Membrane : OUT std_logic_vector(15 DOWNTO 0)
	);
END soma;

-- Design Ports Information
-- avs_fetchSoma_address[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_address[1]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_waitrequest	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[0]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[1]	=>  Location: PIN_P31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[2]	=>  Location: PIN_N29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[3]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[4]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[5]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[6]	=>  Location: PIN_AG31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[7]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_waitrequest	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[10]	=>  Location: PIN_AC31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[11]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[12]	=>  Location: PIN_N33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[13]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[14]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[15]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_address[0]	=>  Location: PIN_AN7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_address[1]	=>  Location: PIN_AP19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_address[2]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_address[3]	=>  Location: PIN_AN23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_address[4]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_address[5]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_address[6]	=>  Location: PIN_AN13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_address[7]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_address[8]	=>  Location: PIN_AP25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_address[9]	=>  Location: PIN_AL8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_address[10]	=>  Location: PIN_AP7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_address[11]	=>  Location: PIN_AL6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_address[12]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_address[13]	=>  Location: PIN_AK10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_address[14]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_address[15]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_byteenable[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_byteenable[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_byteenable[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_byteenable[3]	=>  Location: PIN_C29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_write	=>  Location: PIN_AN5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_writedata[0]	=>  Location: PIN_AL7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_writedata[1]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_writedata[2]	=>  Location: PIN_AN9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_writedata[3]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_writedata[4]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_writedata[5]	=>  Location: PIN_AP6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_writedata[6]	=>  Location: PIN_AM6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_writedata[7]	=>  Location: PIN_AM9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_writedata[8]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_writedata[9]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_patchMembrane	=>  Location: PIN_AJ15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TIME[0]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TIME[1]	=>  Location: PIN_AP9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TIME[2]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TIME[3]	=>  Location: PIN_AM8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TIME[4]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TIME[5]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TIME[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TIME[7]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TIME[8]	=>  Location: PIN_AN8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TIME[9]	=>  Location: PIN_AP10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[0]	=>  Location: PIN_AL11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[2]	=>  Location: PIN_AL15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[3]	=>  Location: PIN_AN12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[4]	=>  Location: PIN_AM15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[5]	=>  Location: PIN_AM18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[6]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[7]	=>  Location: PIN_AM23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[8]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[9]	=>  Location: PIN_AM19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[10]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[11]	=>  Location: PIN_AP12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[12]	=>  Location: PIN_AM11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[13]	=>  Location: PIN_AM14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[14]	=>  Location: PIN_AK15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[15]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_Membrane[0]	=>  Location: PIN_AP11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_Membrane[1]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_Membrane[2]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_Membrane[3]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_Membrane[4]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_Membrane[5]	=>  Location: PIN_AN4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_Membrane[6]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_Membrane[7]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_Membrane[8]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_Membrane[9]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_Membrane[10]	=>  Location: PIN_AN26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_Membrane[11]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_Membrane[12]	=>  Location: PIN_AL10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_Membrane[13]	=>  Location: PIN_AM13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_Membrane[14]	=>  Location: PIN_AN11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_Membrane[15]	=>  Location: PIN_AM10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_write	=>  Location: PIN_AL12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_soma	=>  Location: PIN_AL13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_write	=>  Location: PIN_AP26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSpike_waitrequest	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_soma	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_writedata[0]	=>  Location: PIN_AP5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_writedata[1]	=>  Location: PIN_AN19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_writedata[2]	=>  Location: PIN_AL21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_writedata[3]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_writedata[4]	=>  Location: PIN_AP22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_writedata[5]	=>  Location: PIN_AP20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_writedata[6]	=>  Location: PIN_AM20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_writedata[7]	=>  Location: PIN_AL18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_writedata[8]	=>  Location: PIN_AL20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_writedata[9]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_writedata[10]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_writedata[11]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_writedata[12]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_writedata[13]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_writedata[14]	=>  Location: PIN_AN22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_fetchSoma_writedata[15]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[0]	=>  Location: PIN_AN17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[1]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[2]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[3]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[4]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[5]	=>  Location: PIN_AP21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[6]	=>  Location: PIN_AP16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[7]	=>  Location: PIN_AL16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[8]	=>  Location: PIN_AP17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[9]	=>  Location: PIN_AN18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[16]	=>  Location: PIN_AP15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[17]	=>  Location: PIN_AN16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[18]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[19]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[20]	=>  Location: PIN_AN21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[21]	=>  Location: PIN_AM16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[22]	=>  Location: PIN_AN14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[23]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[24]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[25]	=>  Location: PIN_AM21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[26]	=>  Location: PIN_AK17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[27]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[28]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[29]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[30]	=>  Location: PIN_AL17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[31]	=>  Location: PIN_AP14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF soma IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_soma : std_logic;
SIGNAL ww_rst_soma : std_logic;
SIGNAL ww_avs_fetchSoma_address : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_avs_fetchSoma_waitrequest : std_logic;
SIGNAL ww_avs_fetchSoma_write : std_logic;
SIGNAL ww_avs_fetchSoma_writedata : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_avs_pullSynapse_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_avs_pullSynapse_waitrequest : std_logic;
SIGNAL ww_avs_pullSynapse_write : std_logic;
SIGNAL ww_avs_pullSynapse_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_avm_pushSpike_address : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_avm_pushSpike_waitrequest : std_logic;
SIGNAL ww_avm_pushSpike_byteenable : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_avm_pushSpike_write : std_logic;
SIGNAL ww_avm_pushSpike_writedata : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_dbg_patchMembrane : std_logic;
SIGNAL ww_dbg_TIME : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_dbg_ADDR : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dbg_Membrane : std_logic_vector(15 DOWNTO 0);
SIGNAL \avs_fetchSoma_address[0]~input_o\ : std_logic;
SIGNAL \avs_fetchSoma_address[1]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[0]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[1]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[2]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[3]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[4]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[5]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[6]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[7]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[10]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[11]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[12]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[13]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[14]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[15]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \avs_fetchSoma_write~input_o\ : std_logic;
SIGNAL \clk_soma~input_o\ : std_logic;
SIGNAL \clk_soma~inputCLKENA0_outclk\ : std_logic;
SIGNAL \stateFetchSoma_next.STATE_IDLE~0_combout\ : std_logic;
SIGNAL \rst_soma~input_o\ : std_logic;
SIGNAL \stateFetchSoma.STATE_IDLE~q\ : std_logic;
SIGNAL \stateFetchSoma_next.STATE_FETCH~0_combout\ : std_logic;
SIGNAL \stateFetchSoma.STATE_FETCH~q\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \stateFetchSoma.STATE_LOCK~q\ : std_logic;
SIGNAL \avs_fetchSoma_waitrequest~1_combout\ : std_logic;
SIGNAL \avs_fetchSoma_waitrequest$latch~combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \avs_pullSynapse_write~input_o\ : std_logic;
SIGNAL \statePullSynapse_next.STATE_IDLE~0_combout\ : std_logic;
SIGNAL \statePullSynapse.STATE_IDLE~q\ : std_logic;
SIGNAL \statePullSynapse_next.STATE_PATCH~0_combout\ : std_logic;
SIGNAL \statePullSynapse.STATE_PATCH~q\ : std_logic;
SIGNAL \patchMembrane~combout\ : std_logic;
SIGNAL \avm_pushSpike_waitrequest~input_o\ : std_logic;
SIGNAL \statePushSPike_next.STATE_RST~0_combout\ : std_logic;
SIGNAL \statePushSPike.STATE_RST~q\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[30]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[29]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[28]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[27]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[26]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[25]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[24]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[23]~input_o\ : std_logic;
SIGNAL \Synapse_IN[-1]~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[22]~input_o\ : std_logic;
SIGNAL \Synapse_IN[-2]~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[21]~input_o\ : std_logic;
SIGNAL \Synapse_IN[-3]~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[20]~input_o\ : std_logic;
SIGNAL \Synapse_IN[-4]~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[19]~input_o\ : std_logic;
SIGNAL \Synapse_IN[-5]~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[18]~input_o\ : std_logic;
SIGNAL \Synapse_IN[-6]~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[17]~input_o\ : std_logic;
SIGNAL \Synapse_IN[-7]~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[16]~input_o\ : std_logic;
SIGNAL \Synapse_IN[-8]~combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Membrane[-8]~q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Membrane[-7]~q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Membrane[-6]~q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Membrane[-5]~q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Membrane[-4]~q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Membrane[-3]~q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Membrane[-2]~q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Membrane[-1]~q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[31]~input_o\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \spike~q\ : std_logic;
SIGNAL \statePushSPike_next.STATE_IDLE~0_combout\ : std_logic;
SIGNAL \statePushSPike.STATE_IDLE~q\ : std_logic;
SIGNAL \statePushSPike_next.STATE_SPIKE~0_combout\ : std_logic;
SIGNAL \statePushSPike.STATE_SPIKE~q\ : std_logic;
SIGNAL \statePushSPike_next.STATE_WAIT~0_combout\ : std_logic;
SIGNAL \statePushSPike.STATE_WAIT~q\ : std_logic;
SIGNAL \spike_rst~0_combout\ : std_logic;
SIGNAL \spike_rst~combout\ : std_logic;
SIGNAL \CALCULATE_MEMBRANE~0_combout\ : std_logic;
SIGNAL \patchMembrane_fin~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \statePullSynapse.STATE_WAIT~q\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \avs_pullSynapse_waitrequest$latch~combout\ : std_logic;
SIGNAL \avm_pushSpike_address[15]~2_combout\ : std_logic;
SIGNAL \avs_fetchSoma_writedata[0]~input_o\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_address[0]$latch~combout\ : std_logic;
SIGNAL \avs_fetchSoma_writedata[1]~input_o\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_address[1]$latch~combout\ : std_logic;
SIGNAL \avs_fetchSoma_writedata[2]~input_o\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_address[2]$latch~combout\ : std_logic;
SIGNAL \avs_fetchSoma_writedata[3]~input_o\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_address[3]$latch~combout\ : std_logic;
SIGNAL \avs_fetchSoma_writedata[4]~input_o\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_address[4]$latch~combout\ : std_logic;
SIGNAL \avs_fetchSoma_writedata[5]~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_address[5]$latch~combout\ : std_logic;
SIGNAL \avs_fetchSoma_writedata[6]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_address[6]$latch~combout\ : std_logic;
SIGNAL \avs_fetchSoma_writedata[7]~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_address[7]$latch~combout\ : std_logic;
SIGNAL \avs_fetchSoma_writedata[8]~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_address[8]$latch~combout\ : std_logic;
SIGNAL \avs_fetchSoma_writedata[9]~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_address[9]$latch~combout\ : std_logic;
SIGNAL \avs_fetchSoma_writedata[10]~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_address[10]$latch~combout\ : std_logic;
SIGNAL \avs_fetchSoma_writedata[11]~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_address[11]$latch~combout\ : std_logic;
SIGNAL \avs_fetchSoma_writedata[12]~input_o\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_address[12]$latch~combout\ : std_logic;
SIGNAL \avs_fetchSoma_writedata[13]~input_o\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_address[13]$latch~combout\ : std_logic;
SIGNAL \avs_fetchSoma_writedata[14]~input_o\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_address[14]$latch~combout\ : std_logic;
SIGNAL \avs_fetchSoma_writedata[15]~input_o\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_address[15]$latch~combout\ : std_logic;
SIGNAL \avm_pushSpike_write~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_write$latch~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[0]~input_o\ : std_logic;
SIGNAL \Interval_IN[-5]~combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Interval_Time[-5]~q\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_writedata[0]$latch~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[1]~input_o\ : std_logic;
SIGNAL \Interval_IN[-4]~combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Interval_Time[-4]~q\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_writedata[1]$latch~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[2]~input_o\ : std_logic;
SIGNAL \Interval_IN[-3]~combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Interval_Time[-3]~q\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_writedata[2]$latch~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[3]~input_o\ : std_logic;
SIGNAL \Interval_IN[-2]~combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Interval_Time[-2]~q\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_writedata[3]$latch~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[4]~input_o\ : std_logic;
SIGNAL \Interval_IN[-1]~combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Interval_Time[-1]~q\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_writedata[4]$latch~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[5]~input_o\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_writedata[5]$latch~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[6]~input_o\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_writedata[6]$latch~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[7]~input_o\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_writedata[7]$latch~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[8]~input_o\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_writedata[8]$latch~combout\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[9]~input_o\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \avm_pushSpike_writedata[9]$latch~combout\ : std_logic;
SIGNAL \dbg_TIME[0]~reg0_q\ : std_logic;
SIGNAL \dbg_TIME[1]~reg0_q\ : std_logic;
SIGNAL \dbg_TIME[2]~reg0_q\ : std_logic;
SIGNAL \dbg_TIME[3]~reg0_q\ : std_logic;
SIGNAL \dbg_TIME[4]~reg0_q\ : std_logic;
SIGNAL \dbg_TIME[5]~reg0_q\ : std_logic;
SIGNAL \dbg_TIME[6]~reg0_q\ : std_logic;
SIGNAL \dbg_TIME[7]~reg0_q\ : std_logic;
SIGNAL \dbg_TIME[8]~reg0_q\ : std_logic;
SIGNAL \dbg_TIME[9]~reg0feeder_combout\ : std_logic;
SIGNAL \dbg_TIME[9]~reg0_q\ : std_logic;
SIGNAL \dbg_Membrane[0]~reg0_q\ : std_logic;
SIGNAL \dbg_Membrane[1]~reg0_q\ : std_logic;
SIGNAL \dbg_Membrane[2]~reg0feeder_combout\ : std_logic;
SIGNAL \dbg_Membrane[2]~reg0_q\ : std_logic;
SIGNAL \dbg_Membrane[3]~reg0_q\ : std_logic;
SIGNAL \dbg_Membrane[4]~reg0_q\ : std_logic;
SIGNAL \dbg_Membrane[5]~reg0_q\ : std_logic;
SIGNAL \dbg_Membrane[6]~reg0_q\ : std_logic;
SIGNAL \dbg_Membrane[7]~reg0_q\ : std_logic;
SIGNAL \dbg_Membrane[8]~reg0_q\ : std_logic;
SIGNAL \dbg_Membrane[9]~reg0_q\ : std_logic;
SIGNAL \dbg_Membrane[10]~reg0feeder_combout\ : std_logic;
SIGNAL \dbg_Membrane[10]~reg0_q\ : std_logic;
SIGNAL \dbg_Membrane[11]~reg0_q\ : std_logic;
SIGNAL \dbg_Membrane[12]~reg0_q\ : std_logic;
SIGNAL \dbg_Membrane[13]~reg0_q\ : std_logic;
SIGNAL \dbg_Membrane[14]~reg0feeder_combout\ : std_logic;
SIGNAL \dbg_Membrane[14]~reg0_q\ : std_logic;
SIGNAL \dbg_Membrane[15]~reg0feeder_combout\ : std_logic;
SIGNAL \dbg_Membrane[15]~reg0_q\ : std_logic;
SIGNAL Synapse_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL Interval_Time : std_logic_vector(4 DOWNTO 0);
SIGNAL Membrane : std_logic_vector(7 DOWNTO 0);
SIGNAL Addr_UploadServer : std_logic_vector(15 DOWNTO 0);
SIGNAL Interval_IN : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_avs_pullSynapse_writedata[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_writedata[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_writedata[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_writedata[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_writedata[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_writedata[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_writedata[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_writedata[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_writedata[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_writedata[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_writedata[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_writedata[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_writedata[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_writedata[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_writedata[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_writedata[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_writedata[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_writedata[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_waitrequest~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_write~input_o\ : std_logic;
SIGNAL \ALT_INV_rst_soma~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_write~input_o\ : std_logic;
SIGNAL ALT_INV_Synapse_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Synapse_IN[-1]~combout\ : std_logic;
SIGNAL \ALT_INV_Synapse_IN[-2]~combout\ : std_logic;
SIGNAL \ALT_INV_Synapse_IN[-3]~combout\ : std_logic;
SIGNAL \ALT_INV_Synapse_IN[-4]~combout\ : std_logic;
SIGNAL \ALT_INV_Synapse_IN[-5]~combout\ : std_logic;
SIGNAL \ALT_INV_Synapse_IN[-6]~combout\ : std_logic;
SIGNAL \ALT_INV_Synapse_IN[-7]~combout\ : std_logic;
SIGNAL \ALT_INV_Synapse_IN[-8]~combout\ : std_logic;
SIGNAL ALT_INV_Interval_IN : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_Interval_IN[-1]~combout\ : std_logic;
SIGNAL \ALT_INV_Interval_IN[-2]~combout\ : std_logic;
SIGNAL \ALT_INV_Interval_IN[-3]~combout\ : std_logic;
SIGNAL \ALT_INV_Interval_IN[-4]~combout\ : std_logic;
SIGNAL \ALT_INV_Interval_IN[-5]~combout\ : std_logic;
SIGNAL \ALT_INV_spike_rst~combout\ : std_logic;
SIGNAL ALT_INV_Addr_UploadServer : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_patchMembrane~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_writedata[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_writedata[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_writedata[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_writedata[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_writedata[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_writedata[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_writedata[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_writedata[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_writedata[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_writedata[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_write$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[15]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[14]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[13]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[12]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[11]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[10]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[9]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[8]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[7]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[6]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[5]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[4]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[3]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[2]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[1]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[0]$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_waitrequest$latch~combout\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_waitrequest$latch~combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_spike_rst~0_combout\ : std_logic;
SIGNAL \ALT_INV_stateFetchSoma.STATE_IDLE~q\ : std_logic;
SIGNAL ALT_INV_Membrane : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Membrane[-1]~q\ : std_logic;
SIGNAL \ALT_INV_Membrane[-2]~q\ : std_logic;
SIGNAL \ALT_INV_Membrane[-3]~q\ : std_logic;
SIGNAL \ALT_INV_Membrane[-4]~q\ : std_logic;
SIGNAL \ALT_INV_Membrane[-5]~q\ : std_logic;
SIGNAL \ALT_INV_Membrane[-6]~q\ : std_logic;
SIGNAL \ALT_INV_Membrane[-7]~q\ : std_logic;
SIGNAL \ALT_INV_Membrane[-8]~q\ : std_logic;
SIGNAL \ALT_INV_CALCULATE_MEMBRANE~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector38~0_combout\ : std_logic;
SIGNAL \ALT_INV_statePullSynapse.STATE_PATCH~q\ : std_logic;
SIGNAL \ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL ALT_INV_Interval_Time : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \ALT_INV_Interval_Time[-1]~q\ : std_logic;
SIGNAL \ALT_INV_Selector24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Interval_Time[-2]~q\ : std_logic;
SIGNAL \ALT_INV_Selector25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Interval_Time[-3]~q\ : std_logic;
SIGNAL \ALT_INV_Selector26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Interval_Time[-4]~q\ : std_logic;
SIGNAL \ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Interval_Time[-5]~q\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_write~0_combout\ : std_logic;
SIGNAL \ALT_INV_statePushSPike.STATE_IDLE~q\ : std_logic;
SIGNAL \ALT_INV_Selector36~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector35~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector34~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector33~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector13~0_combout\ : std_logic;
SIGNAL \ALT_INV_avm_pushSpike_address[15]~2_combout\ : std_logic;
SIGNAL \ALT_INV_statePushSPike.STATE_RST~q\ : std_logic;
SIGNAL \ALT_INV_statePushSPike.STATE_WAIT~q\ : std_logic;
SIGNAL \ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \ALT_INV_statePushSPike.STATE_SPIKE~q\ : std_logic;
SIGNAL \ALT_INV_Selector39~0_combout\ : std_logic;
SIGNAL \ALT_INV_patchMembrane_fin~q\ : std_logic;
SIGNAL \ALT_INV_statePullSynapse.STATE_IDLE~q\ : std_logic;
SIGNAL \ALT_INV_Selector11~0_combout\ : std_logic;
SIGNAL \ALT_INV_avs_fetchSoma_waitrequest~1_combout\ : std_logic;
SIGNAL \ALT_INV_stateFetchSoma.STATE_LOCK~q\ : std_logic;
SIGNAL \ALT_INV_Selector40~0_combout\ : std_logic;
SIGNAL \ALT_INV_stateFetchSoma.STATE_FETCH~q\ : std_logic;
SIGNAL \ALT_INV_spike~q\ : std_logic;
SIGNAL \ALT_INV_statePullSynapse.STATE_WAIT~q\ : std_logic;

BEGIN

ww_clk_soma <= clk_soma;
ww_rst_soma <= rst_soma;
ww_avs_fetchSoma_address <= avs_fetchSoma_address;
avs_fetchSoma_waitrequest <= ww_avs_fetchSoma_waitrequest;
ww_avs_fetchSoma_write <= avs_fetchSoma_write;
ww_avs_fetchSoma_writedata <= avs_fetchSoma_writedata;
ww_avs_pullSynapse_address <= avs_pullSynapse_address;
avs_pullSynapse_waitrequest <= ww_avs_pullSynapse_waitrequest;
ww_avs_pullSynapse_write <= avs_pullSynapse_write;
ww_avs_pullSynapse_writedata <= avs_pullSynapse_writedata;
avm_pushSpike_address <= ww_avm_pushSpike_address;
ww_avm_pushSpike_waitrequest <= avm_pushSpike_waitrequest;
avm_pushSpike_byteenable <= ww_avm_pushSpike_byteenable;
avm_pushSpike_write <= ww_avm_pushSpike_write;
avm_pushSpike_writedata <= ww_avm_pushSpike_writedata;
dbg_patchMembrane <= ww_dbg_patchMembrane;
dbg_TIME <= ww_dbg_TIME;
dbg_ADDR <= ww_dbg_ADDR;
dbg_Membrane <= ww_dbg_Membrane;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_avs_pullSynapse_writedata[31]~input_o\ <= NOT \avs_pullSynapse_writedata[31]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[30]~input_o\ <= NOT \avs_pullSynapse_writedata[30]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[29]~input_o\ <= NOT \avs_pullSynapse_writedata[29]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[28]~input_o\ <= NOT \avs_pullSynapse_writedata[28]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[27]~input_o\ <= NOT \avs_pullSynapse_writedata[27]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[26]~input_o\ <= NOT \avs_pullSynapse_writedata[26]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[25]~input_o\ <= NOT \avs_pullSynapse_writedata[25]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[24]~input_o\ <= NOT \avs_pullSynapse_writedata[24]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[23]~input_o\ <= NOT \avs_pullSynapse_writedata[23]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[22]~input_o\ <= NOT \avs_pullSynapse_writedata[22]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[21]~input_o\ <= NOT \avs_pullSynapse_writedata[21]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[20]~input_o\ <= NOT \avs_pullSynapse_writedata[20]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[19]~input_o\ <= NOT \avs_pullSynapse_writedata[19]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[18]~input_o\ <= NOT \avs_pullSynapse_writedata[18]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[17]~input_o\ <= NOT \avs_pullSynapse_writedata[17]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[16]~input_o\ <= NOT \avs_pullSynapse_writedata[16]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[9]~input_o\ <= NOT \avs_pullSynapse_writedata[9]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[8]~input_o\ <= NOT \avs_pullSynapse_writedata[8]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[7]~input_o\ <= NOT \avs_pullSynapse_writedata[7]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[6]~input_o\ <= NOT \avs_pullSynapse_writedata[6]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[5]~input_o\ <= NOT \avs_pullSynapse_writedata[5]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[4]~input_o\ <= NOT \avs_pullSynapse_writedata[4]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[3]~input_o\ <= NOT \avs_pullSynapse_writedata[3]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[2]~input_o\ <= NOT \avs_pullSynapse_writedata[2]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[1]~input_o\ <= NOT \avs_pullSynapse_writedata[1]~input_o\;
\ALT_INV_avs_pullSynapse_writedata[0]~input_o\ <= NOT \avs_pullSynapse_writedata[0]~input_o\;
\ALT_INV_avs_fetchSoma_writedata[15]~input_o\ <= NOT \avs_fetchSoma_writedata[15]~input_o\;
\ALT_INV_avs_fetchSoma_writedata[14]~input_o\ <= NOT \avs_fetchSoma_writedata[14]~input_o\;
\ALT_INV_avs_fetchSoma_writedata[13]~input_o\ <= NOT \avs_fetchSoma_writedata[13]~input_o\;
\ALT_INV_avs_fetchSoma_writedata[12]~input_o\ <= NOT \avs_fetchSoma_writedata[12]~input_o\;
\ALT_INV_avs_fetchSoma_writedata[11]~input_o\ <= NOT \avs_fetchSoma_writedata[11]~input_o\;
\ALT_INV_avs_fetchSoma_writedata[10]~input_o\ <= NOT \avs_fetchSoma_writedata[10]~input_o\;
\ALT_INV_avs_fetchSoma_writedata[9]~input_o\ <= NOT \avs_fetchSoma_writedata[9]~input_o\;
\ALT_INV_avs_fetchSoma_writedata[8]~input_o\ <= NOT \avs_fetchSoma_writedata[8]~input_o\;
\ALT_INV_avs_fetchSoma_writedata[7]~input_o\ <= NOT \avs_fetchSoma_writedata[7]~input_o\;
\ALT_INV_avs_fetchSoma_writedata[6]~input_o\ <= NOT \avs_fetchSoma_writedata[6]~input_o\;
\ALT_INV_avs_fetchSoma_writedata[5]~input_o\ <= NOT \avs_fetchSoma_writedata[5]~input_o\;
\ALT_INV_avs_fetchSoma_writedata[4]~input_o\ <= NOT \avs_fetchSoma_writedata[4]~input_o\;
\ALT_INV_avs_fetchSoma_writedata[3]~input_o\ <= NOT \avs_fetchSoma_writedata[3]~input_o\;
\ALT_INV_avs_fetchSoma_writedata[2]~input_o\ <= NOT \avs_fetchSoma_writedata[2]~input_o\;
\ALT_INV_avs_fetchSoma_writedata[1]~input_o\ <= NOT \avs_fetchSoma_writedata[1]~input_o\;
\ALT_INV_avs_fetchSoma_writedata[0]~input_o\ <= NOT \avs_fetchSoma_writedata[0]~input_o\;
\ALT_INV_avm_pushSpike_waitrequest~input_o\ <= NOT \avm_pushSpike_waitrequest~input_o\;
\ALT_INV_avs_pullSynapse_write~input_o\ <= NOT \avs_pullSynapse_write~input_o\;
\ALT_INV_rst_soma~input_o\ <= NOT \rst_soma~input_o\;
\ALT_INV_avs_fetchSoma_write~input_o\ <= NOT \avs_fetchSoma_write~input_o\;
ALT_INV_Synapse_IN(7) <= NOT Synapse_IN(7);
ALT_INV_Synapse_IN(6) <= NOT Synapse_IN(6);
ALT_INV_Synapse_IN(5) <= NOT Synapse_IN(5);
ALT_INV_Synapse_IN(4) <= NOT Synapse_IN(4);
ALT_INV_Synapse_IN(3) <= NOT Synapse_IN(3);
ALT_INV_Synapse_IN(2) <= NOT Synapse_IN(2);
ALT_INV_Synapse_IN(1) <= NOT Synapse_IN(1);
ALT_INV_Synapse_IN(0) <= NOT Synapse_IN(0);
\ALT_INV_Synapse_IN[-1]~combout\ <= NOT \Synapse_IN[-1]~combout\;
\ALT_INV_Synapse_IN[-2]~combout\ <= NOT \Synapse_IN[-2]~combout\;
\ALT_INV_Synapse_IN[-3]~combout\ <= NOT \Synapse_IN[-3]~combout\;
\ALT_INV_Synapse_IN[-4]~combout\ <= NOT \Synapse_IN[-4]~combout\;
\ALT_INV_Synapse_IN[-5]~combout\ <= NOT \Synapse_IN[-5]~combout\;
\ALT_INV_Synapse_IN[-6]~combout\ <= NOT \Synapse_IN[-6]~combout\;
\ALT_INV_Synapse_IN[-7]~combout\ <= NOT \Synapse_IN[-7]~combout\;
\ALT_INV_Synapse_IN[-8]~combout\ <= NOT \Synapse_IN[-8]~combout\;
ALT_INV_Interval_IN(4) <= NOT Interval_IN(4);
ALT_INV_Interval_IN(3) <= NOT Interval_IN(3);
ALT_INV_Interval_IN(2) <= NOT Interval_IN(2);
ALT_INV_Interval_IN(1) <= NOT Interval_IN(1);
ALT_INV_Interval_IN(0) <= NOT Interval_IN(0);
\ALT_INV_Interval_IN[-1]~combout\ <= NOT \Interval_IN[-1]~combout\;
\ALT_INV_Interval_IN[-2]~combout\ <= NOT \Interval_IN[-2]~combout\;
\ALT_INV_Interval_IN[-3]~combout\ <= NOT \Interval_IN[-3]~combout\;
\ALT_INV_Interval_IN[-4]~combout\ <= NOT \Interval_IN[-4]~combout\;
\ALT_INV_Interval_IN[-5]~combout\ <= NOT \Interval_IN[-5]~combout\;
\ALT_INV_spike_rst~combout\ <= NOT \spike_rst~combout\;
ALT_INV_Addr_UploadServer(15) <= NOT Addr_UploadServer(15);
ALT_INV_Addr_UploadServer(14) <= NOT Addr_UploadServer(14);
ALT_INV_Addr_UploadServer(13) <= NOT Addr_UploadServer(13);
ALT_INV_Addr_UploadServer(12) <= NOT Addr_UploadServer(12);
ALT_INV_Addr_UploadServer(11) <= NOT Addr_UploadServer(11);
ALT_INV_Addr_UploadServer(10) <= NOT Addr_UploadServer(10);
ALT_INV_Addr_UploadServer(9) <= NOT Addr_UploadServer(9);
ALT_INV_Addr_UploadServer(8) <= NOT Addr_UploadServer(8);
ALT_INV_Addr_UploadServer(7) <= NOT Addr_UploadServer(7);
ALT_INV_Addr_UploadServer(6) <= NOT Addr_UploadServer(6);
ALT_INV_Addr_UploadServer(5) <= NOT Addr_UploadServer(5);
ALT_INV_Addr_UploadServer(4) <= NOT Addr_UploadServer(4);
ALT_INV_Addr_UploadServer(3) <= NOT Addr_UploadServer(3);
ALT_INV_Addr_UploadServer(2) <= NOT Addr_UploadServer(2);
ALT_INV_Addr_UploadServer(1) <= NOT Addr_UploadServer(1);
ALT_INV_Addr_UploadServer(0) <= NOT Addr_UploadServer(0);
\ALT_INV_patchMembrane~combout\ <= NOT \patchMembrane~combout\;
\ALT_INV_avm_pushSpike_writedata[9]$latch~combout\ <= NOT \avm_pushSpike_writedata[9]$latch~combout\;
\ALT_INV_avm_pushSpike_writedata[8]$latch~combout\ <= NOT \avm_pushSpike_writedata[8]$latch~combout\;
\ALT_INV_avm_pushSpike_writedata[7]$latch~combout\ <= NOT \avm_pushSpike_writedata[7]$latch~combout\;
\ALT_INV_avm_pushSpike_writedata[6]$latch~combout\ <= NOT \avm_pushSpike_writedata[6]$latch~combout\;
\ALT_INV_avm_pushSpike_writedata[5]$latch~combout\ <= NOT \avm_pushSpike_writedata[5]$latch~combout\;
\ALT_INV_avm_pushSpike_writedata[4]$latch~combout\ <= NOT \avm_pushSpike_writedata[4]$latch~combout\;
\ALT_INV_avm_pushSpike_writedata[3]$latch~combout\ <= NOT \avm_pushSpike_writedata[3]$latch~combout\;
\ALT_INV_avm_pushSpike_writedata[2]$latch~combout\ <= NOT \avm_pushSpike_writedata[2]$latch~combout\;
\ALT_INV_avm_pushSpike_writedata[1]$latch~combout\ <= NOT \avm_pushSpike_writedata[1]$latch~combout\;
\ALT_INV_avm_pushSpike_writedata[0]$latch~combout\ <= NOT \avm_pushSpike_writedata[0]$latch~combout\;
\ALT_INV_avm_pushSpike_write$latch~combout\ <= NOT \avm_pushSpike_write$latch~combout\;
\ALT_INV_avm_pushSpike_address[15]$latch~combout\ <= NOT \avm_pushSpike_address[15]$latch~combout\;
\ALT_INV_avm_pushSpike_address[14]$latch~combout\ <= NOT \avm_pushSpike_address[14]$latch~combout\;
\ALT_INV_avm_pushSpike_address[13]$latch~combout\ <= NOT \avm_pushSpike_address[13]$latch~combout\;
\ALT_INV_avm_pushSpike_address[12]$latch~combout\ <= NOT \avm_pushSpike_address[12]$latch~combout\;
\ALT_INV_avm_pushSpike_address[11]$latch~combout\ <= NOT \avm_pushSpike_address[11]$latch~combout\;
\ALT_INV_avm_pushSpike_address[10]$latch~combout\ <= NOT \avm_pushSpike_address[10]$latch~combout\;
\ALT_INV_avm_pushSpike_address[9]$latch~combout\ <= NOT \avm_pushSpike_address[9]$latch~combout\;
\ALT_INV_avm_pushSpike_address[8]$latch~combout\ <= NOT \avm_pushSpike_address[8]$latch~combout\;
\ALT_INV_avm_pushSpike_address[7]$latch~combout\ <= NOT \avm_pushSpike_address[7]$latch~combout\;
\ALT_INV_avm_pushSpike_address[6]$latch~combout\ <= NOT \avm_pushSpike_address[6]$latch~combout\;
\ALT_INV_avm_pushSpike_address[5]$latch~combout\ <= NOT \avm_pushSpike_address[5]$latch~combout\;
\ALT_INV_avm_pushSpike_address[4]$latch~combout\ <= NOT \avm_pushSpike_address[4]$latch~combout\;
\ALT_INV_avm_pushSpike_address[3]$latch~combout\ <= NOT \avm_pushSpike_address[3]$latch~combout\;
\ALT_INV_avm_pushSpike_address[2]$latch~combout\ <= NOT \avm_pushSpike_address[2]$latch~combout\;
\ALT_INV_avm_pushSpike_address[1]$latch~combout\ <= NOT \avm_pushSpike_address[1]$latch~combout\;
\ALT_INV_avm_pushSpike_address[0]$latch~combout\ <= NOT \avm_pushSpike_address[0]$latch~combout\;
\ALT_INV_avs_pullSynapse_waitrequest$latch~combout\ <= NOT \avs_pullSynapse_waitrequest$latch~combout\;
\ALT_INV_avs_fetchSoma_waitrequest$latch~combout\ <= NOT \avs_fetchSoma_waitrequest$latch~combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_spike_rst~0_combout\ <= NOT \spike_rst~0_combout\;
\ALT_INV_stateFetchSoma.STATE_IDLE~q\ <= NOT \stateFetchSoma.STATE_IDLE~q\;
ALT_INV_Membrane(7) <= NOT Membrane(7);
ALT_INV_Membrane(6) <= NOT Membrane(6);
ALT_INV_Membrane(5) <= NOT Membrane(5);
ALT_INV_Membrane(4) <= NOT Membrane(4);
ALT_INV_Membrane(3) <= NOT Membrane(3);
ALT_INV_Membrane(2) <= NOT Membrane(2);
ALT_INV_Membrane(1) <= NOT Membrane(1);
ALT_INV_Membrane(0) <= NOT Membrane(0);
\ALT_INV_Membrane[-1]~q\ <= NOT \Membrane[-1]~q\;
\ALT_INV_Membrane[-2]~q\ <= NOT \Membrane[-2]~q\;
\ALT_INV_Membrane[-3]~q\ <= NOT \Membrane[-3]~q\;
\ALT_INV_Membrane[-4]~q\ <= NOT \Membrane[-4]~q\;
\ALT_INV_Membrane[-5]~q\ <= NOT \Membrane[-5]~q\;
\ALT_INV_Membrane[-6]~q\ <= NOT \Membrane[-6]~q\;
\ALT_INV_Membrane[-7]~q\ <= NOT \Membrane[-7]~q\;
\ALT_INV_Membrane[-8]~q\ <= NOT \Membrane[-8]~q\;
\ALT_INV_CALCULATE_MEMBRANE~0_combout\ <= NOT \CALCULATE_MEMBRANE~0_combout\;
\ALT_INV_Selector38~0_combout\ <= NOT \Selector38~0_combout\;
\ALT_INV_statePullSynapse.STATE_PATCH~q\ <= NOT \statePullSynapse.STATE_PATCH~q\;
\ALT_INV_Selector18~0_combout\ <= NOT \Selector18~0_combout\;
ALT_INV_Interval_Time(4) <= NOT Interval_Time(4);
\ALT_INV_Selector19~0_combout\ <= NOT \Selector19~0_combout\;
ALT_INV_Interval_Time(3) <= NOT Interval_Time(3);
\ALT_INV_Selector20~0_combout\ <= NOT \Selector20~0_combout\;
ALT_INV_Interval_Time(2) <= NOT Interval_Time(2);
\ALT_INV_Selector21~0_combout\ <= NOT \Selector21~0_combout\;
ALT_INV_Interval_Time(1) <= NOT Interval_Time(1);
\ALT_INV_Selector22~0_combout\ <= NOT \Selector22~0_combout\;
ALT_INV_Interval_Time(0) <= NOT Interval_Time(0);
\ALT_INV_Selector23~0_combout\ <= NOT \Selector23~0_combout\;
\ALT_INV_Interval_Time[-1]~q\ <= NOT \Interval_Time[-1]~q\;
\ALT_INV_Selector24~0_combout\ <= NOT \Selector24~0_combout\;
\ALT_INV_Interval_Time[-2]~q\ <= NOT \Interval_Time[-2]~q\;
\ALT_INV_Selector25~0_combout\ <= NOT \Selector25~0_combout\;
\ALT_INV_Interval_Time[-3]~q\ <= NOT \Interval_Time[-3]~q\;
\ALT_INV_Selector26~0_combout\ <= NOT \Selector26~0_combout\;
\ALT_INV_Interval_Time[-4]~q\ <= NOT \Interval_Time[-4]~q\;
\ALT_INV_Selector27~0_combout\ <= NOT \Selector27~0_combout\;
\ALT_INV_Interval_Time[-5]~q\ <= NOT \Interval_Time[-5]~q\;
\ALT_INV_avm_pushSpike_write~0_combout\ <= NOT \avm_pushSpike_write~0_combout\;
\ALT_INV_statePushSPike.STATE_IDLE~q\ <= NOT \statePushSPike.STATE_IDLE~q\;
\ALT_INV_Selector36~0_combout\ <= NOT \Selector36~0_combout\;
\ALT_INV_Selector35~0_combout\ <= NOT \Selector35~0_combout\;
\ALT_INV_Selector34~0_combout\ <= NOT \Selector34~0_combout\;
\ALT_INV_Selector33~0_combout\ <= NOT \Selector33~0_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_Selector2~0_combout\ <= NOT \Selector2~0_combout\;
\ALT_INV_Selector3~0_combout\ <= NOT \Selector3~0_combout\;
\ALT_INV_Selector4~0_combout\ <= NOT \Selector4~0_combout\;
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
\ALT_INV_Selector9~0_combout\ <= NOT \Selector9~0_combout\;
\ALT_INV_Selector10~0_combout\ <= NOT \Selector10~0_combout\;
\ALT_INV_Selector12~0_combout\ <= NOT \Selector12~0_combout\;
\ALT_INV_Selector13~0_combout\ <= NOT \Selector13~0_combout\;
\ALT_INV_avm_pushSpike_address[15]~2_combout\ <= NOT \avm_pushSpike_address[15]~2_combout\;
\ALT_INV_statePushSPike.STATE_RST~q\ <= NOT \statePushSPike.STATE_RST~q\;
\ALT_INV_statePushSPike.STATE_WAIT~q\ <= NOT \statePushSPike.STATE_WAIT~q\;
\ALT_INV_Selector14~0_combout\ <= NOT \Selector14~0_combout\;
\ALT_INV_statePushSPike.STATE_SPIKE~q\ <= NOT \statePushSPike.STATE_SPIKE~q\;
\ALT_INV_Selector39~0_combout\ <= NOT \Selector39~0_combout\;
\ALT_INV_patchMembrane_fin~q\ <= NOT \patchMembrane_fin~q\;
\ALT_INV_statePullSynapse.STATE_IDLE~q\ <= NOT \statePullSynapse.STATE_IDLE~q\;
\ALT_INV_Selector11~0_combout\ <= NOT \Selector11~0_combout\;
\ALT_INV_avs_fetchSoma_waitrequest~1_combout\ <= NOT \avs_fetchSoma_waitrequest~1_combout\;
\ALT_INV_stateFetchSoma.STATE_LOCK~q\ <= NOT \stateFetchSoma.STATE_LOCK~q\;
\ALT_INV_Selector40~0_combout\ <= NOT \Selector40~0_combout\;
\ALT_INV_stateFetchSoma.STATE_FETCH~q\ <= NOT \stateFetchSoma.STATE_FETCH~q\;
\ALT_INV_spike~q\ <= NOT \spike~q\;
\ALT_INV_statePullSynapse.STATE_WAIT~q\ <= NOT \statePullSynapse.STATE_WAIT~q\;

-- Location: IOOBUF_X67_Y0_N2
\avs_fetchSoma_waitrequest~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avs_fetchSoma_waitrequest$latch~combout\,
	devoe => ww_devoe,
	o => ww_avs_fetchSoma_waitrequest);

-- Location: IOOBUF_X50_Y0_N19
\avs_pullSynapse_waitrequest~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avs_pullSynapse_waitrequest$latch~combout\,
	devoe => ww_devoe,
	o => ww_avs_pullSynapse_waitrequest);

-- Location: IOOBUF_X22_Y0_N36
\avm_pushSpike_address[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_address[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_address(0));

-- Location: IOOBUF_X65_Y0_N93
\avm_pushSpike_address[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_address[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_address(1));

-- Location: IOOBUF_X22_Y0_N2
\avm_pushSpike_address[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_address[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_address(2));

-- Location: IOOBUF_X75_Y0_N53
\avm_pushSpike_address[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_address[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_address(3));

-- Location: IOOBUF_X27_Y0_N2
\avm_pushSpike_address[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_address[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_address(4));

-- Location: IOOBUF_X14_Y0_N36
\avm_pushSpike_address[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_address[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_address(5));

-- Location: IOOBUF_X42_Y0_N53
\avm_pushSpike_address[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_address[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_address(6));

-- Location: IOOBUF_X14_Y0_N53
\avm_pushSpike_address[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_address[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_address(7));

-- Location: IOOBUF_X77_Y0_N2
\avm_pushSpike_address[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_address[8]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_address(8));

-- Location: IOOBUF_X12_Y0_N53
\avm_pushSpike_address[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_address[9]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_address(9));

-- Location: IOOBUF_X22_Y0_N53
\avm_pushSpike_address[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_address[10]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_address(10));

-- Location: IOOBUF_X17_Y0_N76
\avm_pushSpike_address[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_address[11]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_address(11));

-- Location: IOOBUF_X14_Y0_N2
\avm_pushSpike_address[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_address[12]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_address(12));

-- Location: IOOBUF_X17_Y0_N59
\avm_pushSpike_address[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_address[13]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_address(13));

-- Location: IOOBUF_X12_Y0_N19
\avm_pushSpike_address[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_address[14]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_address(14));

-- Location: IOOBUF_X14_Y0_N19
\avm_pushSpike_address[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_address[15]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_address(15));

-- Location: IOOBUF_X92_Y0_N19
\avm_pushSpike_byteenable[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_byteenable(0));

-- Location: IOOBUF_X54_Y115_N19
\avm_pushSpike_byteenable[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_byteenable(1));

-- Location: IOOBUF_X22_Y115_N19
\avm_pushSpike_byteenable[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_byteenable(2));

-- Location: IOOBUF_X94_Y115_N36
\avm_pushSpike_byteenable[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_byteenable(3));

-- Location: IOOBUF_X18_Y0_N36
\avm_pushSpike_write~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_write$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_write);

-- Location: IOOBUF_X10_Y0_N53
\avm_pushSpike_writedata[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_writedata[0]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_writedata(0));

-- Location: IOOBUF_X17_Y0_N42
\avm_pushSpike_writedata[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_writedata[1]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_writedata(1));

-- Location: IOOBUF_X26_Y0_N53
\avm_pushSpike_writedata[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_writedata[2]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_writedata(2));

-- Location: IOOBUF_X27_Y0_N19
\avm_pushSpike_writedata[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_writedata[3]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_writedata(3));

-- Location: IOOBUF_X18_Y0_N2
\avm_pushSpike_writedata[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_writedata[4]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_writedata(4));

-- Location: IOOBUF_X20_Y0_N36
\avm_pushSpike_writedata[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_writedata[5]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_writedata(5));

-- Location: IOOBUF_X17_Y0_N93
\avm_pushSpike_writedata[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_writedata[6]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_writedata(6));

-- Location: IOOBUF_X26_Y0_N36
\avm_pushSpike_writedata[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_writedata[7]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_writedata(7));

-- Location: IOOBUF_X22_Y0_N19
\avm_pushSpike_writedata[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_writedata[8]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_writedata(8));

-- Location: IOOBUF_X12_Y0_N36
\avm_pushSpike_writedata[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \avm_pushSpike_writedata[9]$latch~combout\,
	devoe => ww_devoe,
	o => ww_avm_pushSpike_writedata(9));

-- Location: IOOBUF_X37_Y0_N2
\dbg_patchMembrane~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \patchMembrane~combout\,
	devoe => ww_devoe,
	o => ww_dbg_patchMembrane);

-- Location: IOOBUF_X26_Y0_N19
\dbg_TIME[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_TIME[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_TIME(0));

-- Location: IOOBUF_X35_Y0_N53
\dbg_TIME[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_TIME[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_TIME(1));

-- Location: IOOBUF_X26_Y0_N2
\dbg_TIME[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_TIME[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_TIME(2));

-- Location: IOOBUF_X25_Y0_N76
\dbg_TIME[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_TIME[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_TIME(3));

-- Location: IOOBUF_X30_Y0_N36
\dbg_TIME[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_TIME[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_TIME(4));

-- Location: IOOBUF_X30_Y0_N53
\dbg_TIME[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_TIME[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_TIME(5));

-- Location: IOOBUF_X30_Y0_N19
\dbg_TIME[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_TIME[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_TIME(6));

-- Location: IOOBUF_X30_Y0_N2
\dbg_TIME[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_TIME[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_TIME(7));

-- Location: IOOBUF_X25_Y0_N93
\dbg_TIME[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_TIME[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_TIME(8));

-- Location: IOOBUF_X35_Y0_N36
\dbg_TIME[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_TIME[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_TIME(9));

-- Location: IOOBUF_X33_Y0_N76
\dbg_ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Addr_UploadServer(0),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(0));

-- Location: IOOBUF_X42_Y0_N19
\dbg_ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Addr_UploadServer(1),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(1));

-- Location: IOOBUF_X33_Y0_N42
\dbg_ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Addr_UploadServer(2),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(2));

-- Location: IOOBUF_X40_Y0_N76
\dbg_ADDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Addr_UploadServer(3),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(3));

-- Location: IOOBUF_X33_Y0_N59
\dbg_ADDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Addr_UploadServer(4),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(4));

-- Location: IOOBUF_X52_Y0_N36
\dbg_ADDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Addr_UploadServer(5),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(5));

-- Location: IOOBUF_X42_Y0_N2
\dbg_ADDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Addr_UploadServer(6),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(6));

-- Location: IOOBUF_X75_Y0_N36
\dbg_ADDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Addr_UploadServer(7),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(7));

-- Location: IOOBUF_X69_Y0_N53
\dbg_ADDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Addr_UploadServer(8),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(8));

-- Location: IOOBUF_X65_Y0_N42
\dbg_ADDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Addr_UploadServer(9),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(9));

-- Location: IOOBUF_X39_Y0_N2
\dbg_ADDR[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Addr_UploadServer(10),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(10));

-- Location: IOOBUF_X40_Y0_N93
\dbg_ADDR[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Addr_UploadServer(11),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(11));

-- Location: IOOBUF_X33_Y0_N93
\dbg_ADDR[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Addr_UploadServer(12),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(12));

-- Location: IOOBUF_X40_Y0_N42
\dbg_ADDR[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Addr_UploadServer(13),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(13));

-- Location: IOOBUF_X37_Y0_N19
\dbg_ADDR[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Addr_UploadServer(14),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(14));

-- Location: IOOBUF_X35_Y0_N19
\dbg_ADDR[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => Addr_UploadServer(15),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(15));

-- Location: IOOBUF_X37_Y0_N53
\dbg_Membrane[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_Membrane[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_Membrane(0));

-- Location: IOOBUF_X54_Y0_N19
\dbg_Membrane[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_Membrane[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_Membrane(1));

-- Location: IOOBUF_X39_Y0_N19
\dbg_Membrane[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_Membrane[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_Membrane(2));

-- Location: IOOBUF_X25_Y0_N59
\dbg_Membrane[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_Membrane[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_Membrane(3));

-- Location: IOOBUF_X54_Y0_N2
\dbg_Membrane[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_Membrane[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_Membrane(4));

-- Location: IOOBUF_X18_Y0_N53
\dbg_Membrane[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_Membrane[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_Membrane(5));

-- Location: IOOBUF_X25_Y0_N42
\dbg_Membrane[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_Membrane[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_Membrane(6));

-- Location: IOOBUF_X18_Y0_N19
\dbg_Membrane[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_Membrane[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_Membrane(7));

-- Location: IOOBUF_X46_Y0_N2
\dbg_Membrane[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_Membrane[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_Membrane(8));

-- Location: IOOBUF_X20_Y0_N19
\dbg_Membrane[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_Membrane[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_Membrane(9));

-- Location: IOOBUF_X77_Y0_N36
\dbg_Membrane[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_Membrane[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_Membrane(10));

-- Location: IOOBUF_X35_Y0_N2
\dbg_Membrane[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_Membrane[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_Membrane(11));

-- Location: IOOBUF_X27_Y0_N36
\dbg_Membrane[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_Membrane[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_Membrane(12));

-- Location: IOOBUF_X42_Y0_N36
\dbg_Membrane[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_Membrane[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_Membrane(13));

-- Location: IOOBUF_X37_Y0_N36
\dbg_Membrane[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_Membrane[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_Membrane(14));

-- Location: IOOBUF_X27_Y0_N53
\dbg_Membrane[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \dbg_Membrane[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_dbg_Membrane(15));

-- Location: IOIBUF_X39_Y0_N35
\avs_fetchSoma_write~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_write,
	o => \avs_fetchSoma_write~input_o\);

-- Location: IOIBUF_X46_Y0_N18
\clk_soma~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_soma,
	o => \clk_soma~input_o\);

-- Location: CLKCTRL_G6
\clk_soma~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk_soma~input_o\,
	outclk => \clk_soma~inputCLKENA0_outclk\);

-- Location: LABCELL_X38_Y2_N42
\stateFetchSoma_next.STATE_IDLE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stateFetchSoma_next.STATE_IDLE~0_combout\ = ( \avs_fetchSoma_write~input_o\ ) # ( !\avs_fetchSoma_write~input_o\ & ( \stateFetchSoma.STATE_IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stateFetchSoma.STATE_IDLE~q\,
	dataf => \ALT_INV_avs_fetchSoma_write~input_o\,
	combout => \stateFetchSoma_next.STATE_IDLE~0_combout\);

-- Location: IOIBUF_X39_Y0_N52
\rst_soma~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_soma,
	o => \rst_soma~input_o\);

-- Location: FF_X38_Y2_N44
\stateFetchSoma.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \stateFetchSoma_next.STATE_IDLE~0_combout\,
	clrn => \ALT_INV_rst_soma~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateFetchSoma.STATE_IDLE~q\);

-- Location: LABCELL_X38_Y2_N51
\stateFetchSoma_next.STATE_FETCH~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stateFetchSoma_next.STATE_FETCH~0_combout\ = ( !\stateFetchSoma.STATE_IDLE~q\ & ( \avs_fetchSoma_write~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_fetchSoma_write~input_o\,
	dataf => \ALT_INV_stateFetchSoma.STATE_IDLE~q\,
	combout => \stateFetchSoma_next.STATE_FETCH~0_combout\);

-- Location: FF_X38_Y2_N53
\stateFetchSoma.STATE_FETCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \stateFetchSoma_next.STATE_FETCH~0_combout\,
	clrn => \ALT_INV_rst_soma~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateFetchSoma.STATE_FETCH~q\);

-- Location: LABCELL_X39_Y2_N36
\Selector40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = ( !\stateFetchSoma.STATE_FETCH~q\ & ( \avs_fetchSoma_write~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avs_fetchSoma_write~input_o\,
	dataf => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	combout => \Selector40~0_combout\);

-- Location: FF_X38_Y2_N35
\stateFetchSoma.STATE_LOCK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \stateFetchSoma.STATE_IDLE~q\,
	clrn => \ALT_INV_rst_soma~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateFetchSoma.STATE_LOCK~q\);

-- Location: LABCELL_X38_Y2_N33
\avs_fetchSoma_waitrequest~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \avs_fetchSoma_waitrequest~1_combout\ = ( \rst_soma~input_o\ ) # ( !\rst_soma~input_o\ & ( \stateFetchSoma.STATE_LOCK~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_stateFetchSoma.STATE_LOCK~q\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \avs_fetchSoma_waitrequest~1_combout\);

-- Location: LABCELL_X38_Y2_N45
\avs_fetchSoma_waitrequest$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avs_fetchSoma_waitrequest$latch~combout\ = ( \avs_fetchSoma_waitrequest~1_combout\ & ( \avs_fetchSoma_waitrequest$latch~combout\ ) ) # ( !\avs_fetchSoma_waitrequest~1_combout\ & ( \Selector40~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Selector40~0_combout\,
	datad => \ALT_INV_avs_fetchSoma_waitrequest$latch~combout\,
	dataf => \ALT_INV_avs_fetchSoma_waitrequest~1_combout\,
	combout => \avs_fetchSoma_waitrequest$latch~combout\);

-- Location: LABCELL_X38_Y1_N30
\Selector38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = ( \patchMembrane_fin~q\ ) # ( !\patchMembrane_fin~q\ & ( !\statePullSynapse.STATE_WAIT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_statePullSynapse.STATE_WAIT~q\,
	dataf => \ALT_INV_patchMembrane_fin~q\,
	combout => \Selector38~0_combout\);

-- Location: IOIBUF_X77_Y0_N52
\avs_pullSynapse_write~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_write,
	o => \avs_pullSynapse_write~input_o\);

-- Location: LABCELL_X39_Y1_N6
\statePullSynapse_next.STATE_IDLE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \statePullSynapse_next.STATE_IDLE~0_combout\ = ( \statePullSynapse.STATE_WAIT~q\ & ( (!\patchMembrane_fin~q\ & ((\statePullSynapse.STATE_IDLE~q\) # (\avs_pullSynapse_write~input_o\))) ) ) # ( !\statePullSynapse.STATE_WAIT~q\ & ( 
-- (\statePullSynapse.STATE_IDLE~q\) # (\avs_pullSynapse_write~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_patchMembrane_fin~q\,
	datac => \ALT_INV_avs_pullSynapse_write~input_o\,
	datad => \ALT_INV_statePullSynapse.STATE_IDLE~q\,
	dataf => \ALT_INV_statePullSynapse.STATE_WAIT~q\,
	combout => \statePullSynapse_next.STATE_IDLE~0_combout\);

-- Location: FF_X39_Y1_N8
\statePullSynapse.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \statePullSynapse_next.STATE_IDLE~0_combout\,
	clrn => \ALT_INV_rst_soma~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statePullSynapse.STATE_IDLE~q\);

-- Location: LABCELL_X39_Y1_N54
\statePullSynapse_next.STATE_PATCH~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \statePullSynapse_next.STATE_PATCH~0_combout\ = ( \avs_pullSynapse_write~input_o\ & ( !\statePullSynapse.STATE_IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_avs_pullSynapse_write~input_o\,
	dataf => \ALT_INV_statePullSynapse.STATE_IDLE~q\,
	combout => \statePullSynapse_next.STATE_PATCH~0_combout\);

-- Location: FF_X38_Y1_N35
\statePullSynapse.STATE_PATCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \statePullSynapse_next.STATE_PATCH~0_combout\,
	clrn => \ALT_INV_rst_soma~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statePullSynapse.STATE_PATCH~q\);

-- Location: LABCELL_X38_Y1_N48
patchMembrane : cyclonev_lcell_comb
-- Equation(s):
-- \patchMembrane~combout\ = ( !\rst_soma~input_o\ & ( (!\Selector38~0_combout\ & ((\patchMembrane~combout\))) # (\Selector38~0_combout\ & (\statePullSynapse.STATE_PATCH~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector38~0_combout\,
	datac => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datad => \ALT_INV_patchMembrane~combout\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \patchMembrane~combout\);

-- Location: IOIBUF_X12_Y0_N1
\avm_pushSpike_waitrequest~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avm_pushSpike_waitrequest,
	o => \avm_pushSpike_waitrequest~input_o\);

-- Location: LABCELL_X35_Y2_N42
\statePushSPike_next.STATE_RST~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \statePushSPike_next.STATE_RST~0_combout\ = (!\avm_pushSpike_waitrequest~input_o\ & (\statePushSPike.STATE_IDLE~q\ & !\statePushSPike.STATE_RST~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avm_pushSpike_waitrequest~input_o\,
	datac => \ALT_INV_statePushSPike.STATE_IDLE~q\,
	datad => \ALT_INV_statePushSPike.STATE_RST~q\,
	combout => \statePushSPike_next.STATE_RST~0_combout\);

-- Location: FF_X35_Y2_N44
\statePushSPike.STATE_RST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \statePushSPike_next.STATE_RST~0_combout\,
	clrn => \ALT_INV_rst_soma~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statePushSPike.STATE_RST~q\);

-- Location: IOIBUF_X50_Y0_N52
\avs_pullSynapse_writedata[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(30),
	o => \avs_pullSynapse_writedata[30]~input_o\);

-- Location: LABCELL_X39_Y1_N48
\Synapse_IN[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- Synapse_IN(6) = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & ((Synapse_IN(6)))) # (\statePullSynapse.STATE_PATCH~q\ & (\avs_pullSynapse_writedata[30]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_pullSynapse_writedata[30]~input_o\,
	datac => ALT_INV_Synapse_IN(6),
	datad => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Synapse_IN(6));

-- Location: IOIBUF_X52_Y0_N18
\avs_pullSynapse_writedata[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(29),
	o => \avs_pullSynapse_writedata[29]~input_o\);

-- Location: LABCELL_X38_Y1_N27
\Synapse_IN[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- Synapse_IN(5) = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & ((Synapse_IN(5)))) # (\statePullSynapse.STATE_PATCH~q\ & (\avs_pullSynapse_writedata[29]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datac => \ALT_INV_avs_pullSynapse_writedata[29]~input_o\,
	datad => ALT_INV_Synapse_IN(5),
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Synapse_IN(5));

-- Location: IOIBUF_X10_Y0_N1
\avs_pullSynapse_writedata[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(28),
	o => \avs_pullSynapse_writedata[28]~input_o\);

-- Location: LABCELL_X38_Y1_N0
\Synapse_IN[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- Synapse_IN(4) = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & ((Synapse_IN(4)))) # (\statePullSynapse.STATE_PATCH~q\ & (\avs_pullSynapse_writedata[28]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datab => \ALT_INV_avs_pullSynapse_writedata[28]~input_o\,
	datac => ALT_INV_Synapse_IN(4),
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Synapse_IN(4));

-- Location: IOIBUF_X20_Y0_N1
\avs_pullSynapse_writedata[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(27),
	o => \avs_pullSynapse_writedata[27]~input_o\);

-- Location: LABCELL_X38_Y1_N36
\Synapse_IN[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- Synapse_IN(3) = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & ((Synapse_IN(3)))) # (\statePullSynapse.STATE_PATCH~q\ & (\avs_pullSynapse_writedata[27]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datab => \ALT_INV_avs_pullSynapse_writedata[27]~input_o\,
	datad => ALT_INV_Synapse_IN(3),
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Synapse_IN(3));

-- Location: IOIBUF_X50_Y0_N35
\avs_pullSynapse_writedata[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(26),
	o => \avs_pullSynapse_writedata[26]~input_o\);

-- Location: LABCELL_X38_Y1_N15
\Synapse_IN[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- Synapse_IN(2) = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & (Synapse_IN(2))) # (\statePullSynapse.STATE_PATCH~q\ & ((\avs_pullSynapse_writedata[26]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datac => ALT_INV_Synapse_IN(2),
	datad => \ALT_INV_avs_pullSynapse_writedata[26]~input_o\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Synapse_IN(2));

-- Location: IOIBUF_X71_Y0_N52
\avs_pullSynapse_writedata[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(25),
	o => \avs_pullSynapse_writedata[25]~input_o\);

-- Location: LABCELL_X39_Y1_N51
\Synapse_IN[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- Synapse_IN(1) = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & ((Synapse_IN(1)))) # (\statePullSynapse.STATE_PATCH~q\ & (\avs_pullSynapse_writedata[25]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datac => \ALT_INV_avs_pullSynapse_writedata[25]~input_o\,
	datad => ALT_INV_Synapse_IN(1),
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Synapse_IN(1));

-- Location: IOIBUF_X67_Y0_N18
\avs_pullSynapse_writedata[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(24),
	o => \avs_pullSynapse_writedata[24]~input_o\);

-- Location: LABCELL_X38_Y1_N24
\Synapse_IN[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- Synapse_IN(0) = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & (Synapse_IN(0))) # (\statePullSynapse.STATE_PATCH~q\ & ((\avs_pullSynapse_writedata[24]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datac => ALT_INV_Synapse_IN(0),
	datad => \ALT_INV_avs_pullSynapse_writedata[24]~input_o\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Synapse_IN(0));

-- Location: IOIBUF_X52_Y0_N1
\avs_pullSynapse_writedata[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(23),
	o => \avs_pullSynapse_writedata[23]~input_o\);

-- Location: LABCELL_X39_Y1_N24
\Synapse_IN[-1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Synapse_IN[-1]~combout\ = ( \statePullSynapse.STATE_PATCH~q\ & ( !\rst_soma~input_o\ & ( \avs_pullSynapse_writedata[23]~input_o\ ) ) ) # ( !\statePullSynapse.STATE_PATCH~q\ & ( !\rst_soma~input_o\ & ( \Synapse_IN[-1]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_pullSynapse_writedata[23]~input_o\,
	datac => \ALT_INV_Synapse_IN[-1]~combout\,
	datae => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \Synapse_IN[-1]~combout\);

-- Location: IOIBUF_X40_Y0_N58
\avs_pullSynapse_writedata[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(22),
	o => \avs_pullSynapse_writedata[22]~input_o\);

-- Location: LABCELL_X38_Y1_N3
\Synapse_IN[-2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Synapse_IN[-2]~combout\ = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & ((\Synapse_IN[-2]~combout\))) # (\statePullSynapse.STATE_PATCH~q\ & (\avs_pullSynapse_writedata[22]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datac => \ALT_INV_avs_pullSynapse_writedata[22]~input_o\,
	datad => \ALT_INV_Synapse_IN[-2]~combout\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \Synapse_IN[-2]~combout\);

-- Location: IOIBUF_X44_Y0_N52
\avs_pullSynapse_writedata[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(21),
	o => \avs_pullSynapse_writedata[21]~input_o\);

-- Location: LABCELL_X38_Y1_N33
\Synapse_IN[-3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Synapse_IN[-3]~combout\ = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & ((\Synapse_IN[-3]~combout\))) # (\statePullSynapse.STATE_PATCH~q\ & (\avs_pullSynapse_writedata[21]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_pullSynapse_writedata[21]~input_o\,
	datac => \ALT_INV_Synapse_IN[-3]~combout\,
	datad => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \Synapse_IN[-3]~combout\);

-- Location: IOIBUF_X67_Y0_N35
\avs_pullSynapse_writedata[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(20),
	o => \avs_pullSynapse_writedata[20]~input_o\);

-- Location: LABCELL_X38_Y1_N9
\Synapse_IN[-4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Synapse_IN[-4]~combout\ = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & ((\Synapse_IN[-4]~combout\))) # (\statePullSynapse.STATE_PATCH~q\ & (\avs_pullSynapse_writedata[20]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datac => \ALT_INV_avs_pullSynapse_writedata[20]~input_o\,
	datad => \ALT_INV_Synapse_IN[-4]~combout\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \Synapse_IN[-4]~combout\);

-- Location: IOIBUF_X44_Y0_N1
\avs_pullSynapse_writedata[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(19),
	o => \avs_pullSynapse_writedata[19]~input_o\);

-- Location: LABCELL_X38_Y1_N12
\Synapse_IN[-5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Synapse_IN[-5]~combout\ = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & (\Synapse_IN[-5]~combout\)) # (\statePullSynapse.STATE_PATCH~q\ & ((\avs_pullSynapse_writedata[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datab => \ALT_INV_Synapse_IN[-5]~combout\,
	datac => \ALT_INV_avs_pullSynapse_writedata[19]~input_o\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \Synapse_IN[-5]~combout\);

-- Location: IOIBUF_X50_Y0_N1
\avs_pullSynapse_writedata[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(18),
	o => \avs_pullSynapse_writedata[18]~input_o\);

-- Location: LABCELL_X39_Y1_N21
\Synapse_IN[-6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Synapse_IN[-6]~combout\ = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & ((\Synapse_IN[-6]~combout\))) # (\statePullSynapse.STATE_PATCH~q\ & (\avs_pullSynapse_writedata[18]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datac => \ALT_INV_avs_pullSynapse_writedata[18]~input_o\,
	datad => \ALT_INV_Synapse_IN[-6]~combout\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \Synapse_IN[-6]~combout\);

-- Location: IOIBUF_X48_Y0_N75
\avs_pullSynapse_writedata[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(17),
	o => \avs_pullSynapse_writedata[17]~input_o\);

-- Location: LABCELL_X38_Y1_N39
\Synapse_IN[-7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Synapse_IN[-7]~combout\ = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & (\Synapse_IN[-7]~combout\)) # (\statePullSynapse.STATE_PATCH~q\ & ((\avs_pullSynapse_writedata[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datac => \ALT_INV_Synapse_IN[-7]~combout\,
	datad => \ALT_INV_avs_pullSynapse_writedata[17]~input_o\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \Synapse_IN[-7]~combout\);

-- Location: IOIBUF_X46_Y0_N35
\avs_pullSynapse_writedata[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(16),
	o => \avs_pullSynapse_writedata[16]~input_o\);

-- Location: LABCELL_X39_Y1_N18
\Synapse_IN[-8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Synapse_IN[-8]~combout\ = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & ((\Synapse_IN[-8]~combout\))) # (\statePullSynapse.STATE_PATCH~q\ & (\avs_pullSynapse_writedata[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_pullSynapse_writedata[16]~input_o\,
	datac => \ALT_INV_Synapse_IN[-8]~combout\,
	datad => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \Synapse_IN[-8]~combout\);

-- Location: LABCELL_X37_Y1_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \Synapse_IN[-8]~combout\ ) + ( \Membrane[-8]~q\ ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \Synapse_IN[-8]~combout\ ) + ( \Membrane[-8]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Membrane[-8]~q\,
	datad => \ALT_INV_Synapse_IN[-8]~combout\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X37_Y1_N2
\Membrane[-8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Membrane[-8]~q\);

-- Location: LABCELL_X37_Y1_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \Membrane[-7]~q\ ) + ( \Synapse_IN[-7]~combout\ ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \Membrane[-7]~q\ ) + ( \Synapse_IN[-7]~combout\ ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Synapse_IN[-7]~combout\,
	datad => \ALT_INV_Membrane[-7]~q\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X37_Y1_N5
\Membrane[-7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Membrane[-7]~q\);

-- Location: LABCELL_X37_Y1_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \Synapse_IN[-6]~combout\ ) + ( \Membrane[-6]~q\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \Synapse_IN[-6]~combout\ ) + ( \Membrane[-6]~q\ ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Membrane[-6]~q\,
	datad => \ALT_INV_Synapse_IN[-6]~combout\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X37_Y1_N8
\Membrane[-6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Membrane[-6]~q\);

-- Location: LABCELL_X37_Y1_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \Synapse_IN[-5]~combout\ ) + ( \Membrane[-5]~q\ ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \Synapse_IN[-5]~combout\ ) + ( \Membrane[-5]~q\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Synapse_IN[-5]~combout\,
	datac => \ALT_INV_Membrane[-5]~q\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X37_Y1_N11
\Membrane[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Membrane[-5]~q\);

-- Location: LABCELL_X37_Y1_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \Synapse_IN[-4]~combout\ ) + ( \Membrane[-4]~q\ ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \Synapse_IN[-4]~combout\ ) + ( \Membrane[-4]~q\ ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Membrane[-4]~q\,
	datac => \ALT_INV_Synapse_IN[-4]~combout\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X37_Y1_N14
\Membrane[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Membrane[-4]~q\);

-- Location: LABCELL_X37_Y1_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \Synapse_IN[-3]~combout\ ) + ( \Membrane[-3]~q\ ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \Synapse_IN[-3]~combout\ ) + ( \Membrane[-3]~q\ ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Membrane[-3]~q\,
	datad => \ALT_INV_Synapse_IN[-3]~combout\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X37_Y1_N17
\Membrane[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Membrane[-3]~q\);

-- Location: LABCELL_X37_Y1_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \Synapse_IN[-2]~combout\ ) + ( \Membrane[-2]~q\ ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \Synapse_IN[-2]~combout\ ) + ( \Membrane[-2]~q\ ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Membrane[-2]~q\,
	datad => \ALT_INV_Synapse_IN[-2]~combout\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X37_Y1_N20
\Membrane[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Membrane[-2]~q\);

-- Location: LABCELL_X37_Y1_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \Synapse_IN[-1]~combout\ ) + ( \Membrane[-1]~q\ ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \Synapse_IN[-1]~combout\ ) + ( \Membrane[-1]~q\ ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Membrane[-1]~q\,
	datad => \ALT_INV_Synapse_IN[-1]~combout\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X37_Y1_N23
\Membrane[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Membrane[-1]~q\);

-- Location: LABCELL_X37_Y1_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( Synapse_IN(0) ) + ( Membrane(0) ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( Synapse_IN(0) ) + ( Membrane(0) ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Membrane(0),
	datad => ALT_INV_Synapse_IN(0),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X37_Y1_N26
\Membrane[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Membrane(0));

-- Location: LABCELL_X37_Y1_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( Membrane(1) ) + ( Synapse_IN(1) ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( Membrane(1) ) + ( Synapse_IN(1) ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Synapse_IN(1),
	datad => ALT_INV_Membrane(1),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X37_Y1_N29
\Membrane[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Membrane(1));

-- Location: LABCELL_X37_Y1_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( Synapse_IN(2) ) + ( Membrane(2) ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( Synapse_IN(2) ) + ( Membrane(2) ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Membrane(2),
	datad => ALT_INV_Synapse_IN(2),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X37_Y1_N32
\Membrane[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Membrane(2));

-- Location: LABCELL_X37_Y1_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( Synapse_IN(3) ) + ( Membrane(3) ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( Synapse_IN(3) ) + ( Membrane(3) ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Membrane(3),
	datad => ALT_INV_Synapse_IN(3),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X37_Y1_N35
\Membrane[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Membrane(3));

-- Location: LABCELL_X37_Y1_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( Membrane(4) ) + ( Synapse_IN(4) ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( Membrane(4) ) + ( Synapse_IN(4) ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Synapse_IN(4),
	datad => ALT_INV_Membrane(4),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X37_Y1_N38
\Membrane[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Membrane(4));

-- Location: LABCELL_X37_Y1_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( Synapse_IN(5) ) + ( Membrane(5) ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( Synapse_IN(5) ) + ( Membrane(5) ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Membrane(5),
	datad => ALT_INV_Synapse_IN(5),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X37_Y1_N41
\Membrane[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Membrane(5));

-- Location: LABCELL_X37_Y1_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( Synapse_IN(6) ) + ( Membrane(6) ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( Synapse_IN(6) ) + ( Membrane(6) ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Membrane(6),
	datac => ALT_INV_Synapse_IN(6),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X37_Y1_N44
\Membrane[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Membrane(6));

-- Location: IOIBUF_X46_Y0_N52
\avs_pullSynapse_writedata[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(31),
	o => \avs_pullSynapse_writedata[31]~input_o\);

-- Location: LABCELL_X39_Y1_N0
\Synapse_IN[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- Synapse_IN(7) = ( Synapse_IN(7) & ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\) # (\avs_pullSynapse_writedata[31]~input_o\) ) ) ) # ( !Synapse_IN(7) & ( !\rst_soma~input_o\ & ( (\avs_pullSynapse_writedata[31]~input_o\ & 
-- \statePullSynapse.STATE_PATCH~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_pullSynapse_writedata[31]~input_o\,
	datad => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datae => ALT_INV_Synapse_IN(7),
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Synapse_IN(7));

-- Location: LABCELL_X37_Y1_N45
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( Membrane(7) ) + ( Synapse_IN(7) ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Synapse_IN(7),
	datad => ALT_INV_Membrane(7),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\);

-- Location: FF_X37_Y1_N47
\Membrane[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Membrane(7));

-- Location: MLABCELL_X36_Y1_N12
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( Membrane(2) & ( !Membrane(7) ) ) # ( !Membrane(2) & ( (!Membrane(7) & (((Membrane(3)) # (Membrane(5))) # (Membrane(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010101010101010101000101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Membrane(7),
	datab => ALT_INV_Membrane(4),
	datac => ALT_INV_Membrane(5),
	datad => ALT_INV_Membrane(3),
	datae => ALT_INV_Membrane(2),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X37_Y1_N48
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !\Membrane[-4]~q\ & ( !Membrane(0) & ( (!\Membrane[-1]~q\ & (!\Membrane[-5]~q\ & (!\Membrane[-2]~q\ & !\Membrane[-3]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Membrane[-1]~q\,
	datab => \ALT_INV_Membrane[-5]~q\,
	datac => \ALT_INV_Membrane[-2]~q\,
	datad => \ALT_INV_Membrane[-3]~q\,
	datae => \ALT_INV_Membrane[-4]~q\,
	dataf => ALT_INV_Membrane(0),
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X36_Y1_N0
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\Membrane[-8]~q\ & (!\Membrane[-6]~q\ & !\Membrane[-7]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Membrane[-8]~q\,
	datab => \ALT_INV_Membrane[-6]~q\,
	datac => \ALT_INV_Membrane[-7]~q\,
	combout => \LessThan0~1_combout\);

-- Location: MLABCELL_X36_Y1_N21
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( Membrane(1) & ( Membrane(7) & ( \LessThan0~2_combout\ ) ) ) # ( !Membrane(1) & ( Membrane(7) & ( \LessThan0~2_combout\ ) ) ) # ( Membrane(1) & ( !Membrane(7) & ( (((!\LessThan0~0_combout\) # (!\LessThan0~1_combout\)) # 
-- (\LessThan0~2_combout\)) # (Membrane(6)) ) ) ) # ( !Membrane(1) & ( !Membrane(7) & ( (\LessThan0~2_combout\) # (Membrane(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111111111111111011100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Membrane(6),
	datab => \ALT_INV_LessThan0~2_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan0~1_combout\,
	datae => ALT_INV_Membrane(1),
	dataf => ALT_INV_Membrane(7),
	combout => \LessThan0~3_combout\);

-- Location: FF_X36_Y1_N23
spike : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \LessThan0~3_combout\,
	sclr => \ALT_INV_patchMembrane~combout\,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \spike~q\);

-- Location: MLABCELL_X36_Y2_N30
\statePushSPike_next.STATE_IDLE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \statePushSPike_next.STATE_IDLE~0_combout\ = ( \spike~q\ & ( !\statePushSPike.STATE_RST~q\ ) ) # ( !\spike~q\ & ( (\statePushSPike.STATE_IDLE~q\ & !\statePushSPike.STATE_RST~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_statePushSPike.STATE_IDLE~q\,
	datac => \ALT_INV_statePushSPike.STATE_RST~q\,
	dataf => \ALT_INV_spike~q\,
	combout => \statePushSPike_next.STATE_IDLE~0_combout\);

-- Location: FF_X35_Y2_N2
\statePushSPike.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \statePushSPike_next.STATE_IDLE~0_combout\,
	clrn => \ALT_INV_rst_soma~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statePushSPike.STATE_IDLE~q\);

-- Location: MLABCELL_X36_Y2_N45
\statePushSPike_next.STATE_SPIKE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \statePushSPike_next.STATE_SPIKE~0_combout\ = ( \spike~q\ & ( !\statePushSPike.STATE_IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_statePushSPike.STATE_IDLE~q\,
	dataf => \ALT_INV_spike~q\,
	combout => \statePushSPike_next.STATE_SPIKE~0_combout\);

-- Location: FF_X35_Y2_N56
\statePushSPike.STATE_SPIKE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \statePushSPike_next.STATE_SPIKE~0_combout\,
	clrn => \ALT_INV_rst_soma~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statePushSPike.STATE_SPIKE~q\);

-- Location: LABCELL_X35_Y2_N36
\statePushSPike_next.STATE_WAIT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \statePushSPike_next.STATE_WAIT~0_combout\ = ( !\statePushSPike.STATE_RST~q\ & ( (\statePushSPike.STATE_IDLE~q\ & \avm_pushSpike_waitrequest~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_statePushSPike.STATE_IDLE~q\,
	datad => \ALT_INV_avm_pushSpike_waitrequest~input_o\,
	dataf => \ALT_INV_statePushSPike.STATE_RST~q\,
	combout => \statePushSPike_next.STATE_WAIT~0_combout\);

-- Location: FF_X35_Y2_N38
\statePushSPike.STATE_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \statePushSPike_next.STATE_WAIT~0_combout\,
	clrn => \ALT_INV_rst_soma~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statePushSPike.STATE_WAIT~q\);

-- Location: LABCELL_X35_Y2_N51
\spike_rst~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \spike_rst~0_combout\ = ( \rst_soma~input_o\ ) # ( !\rst_soma~input_o\ & ( (\statePushSPike.STATE_WAIT~q\) # (\statePushSPike.STATE_SPIKE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	datad => \ALT_INV_statePushSPike.STATE_WAIT~q\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \spike_rst~0_combout\);

-- Location: MLABCELL_X36_Y1_N30
spike_rst : cyclonev_lcell_comb
-- Equation(s):
-- \spike_rst~combout\ = ( \spike_rst~0_combout\ & ( \statePushSPike.STATE_RST~q\ & ( \spike_rst~combout\ ) ) ) # ( !\spike_rst~0_combout\ & ( \statePushSPike.STATE_RST~q\ ) ) # ( \spike_rst~0_combout\ & ( !\statePushSPike.STATE_RST~q\ & ( 
-- \spike_rst~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_spike_rst~combout\,
	datae => \ALT_INV_spike_rst~0_combout\,
	dataf => \ALT_INV_statePushSPike.STATE_RST~q\,
	combout => \spike_rst~combout\);

-- Location: MLABCELL_X36_Y1_N42
\CALCULATE_MEMBRANE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CALCULATE_MEMBRANE~0_combout\ = ( \spike_rst~combout\ ) # ( !\spike_rst~combout\ & ( \rst_soma~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_soma~input_o\,
	dataf => \ALT_INV_spike_rst~combout\,
	combout => \CALCULATE_MEMBRANE~0_combout\);

-- Location: FF_X37_Y1_N53
patchMembrane_fin : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \patchMembrane~combout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \patchMembrane_fin~q\);

-- Location: LABCELL_X39_Y1_N42
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \statePullSynapse.STATE_WAIT~q\ & ( \statePullSynapse.STATE_PATCH~q\ ) ) # ( !\statePullSynapse.STATE_WAIT~q\ & ( \statePullSynapse.STATE_PATCH~q\ ) ) # ( \statePullSynapse.STATE_WAIT~q\ & ( !\statePullSynapse.STATE_PATCH~q\ & ( 
-- !\patchMembrane_fin~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_patchMembrane_fin~q\,
	datae => \ALT_INV_statePullSynapse.STATE_WAIT~q\,
	dataf => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X39_Y1_N44
\statePullSynapse.STATE_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	clrn => \ALT_INV_rst_soma~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \statePullSynapse.STATE_WAIT~q\);

-- Location: LABCELL_X39_Y1_N12
\Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = ( \patchMembrane_fin~q\ & ( \statePullSynapse.STATE_IDLE~q\ & ( \statePullSynapse.STATE_WAIT~q\ ) ) ) # ( \patchMembrane_fin~q\ & ( !\statePullSynapse.STATE_IDLE~q\ ) ) # ( !\patchMembrane_fin~q\ & ( 
-- !\statePullSynapse.STATE_IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_statePullSynapse.STATE_WAIT~q\,
	datae => \ALT_INV_patchMembrane_fin~q\,
	dataf => \ALT_INV_statePullSynapse.STATE_IDLE~q\,
	combout => \Selector39~0_combout\);

-- Location: LABCELL_X39_Y1_N33
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( !\statePullSynapse.STATE_WAIT~q\ & ( \avs_pullSynapse_write~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_pullSynapse_write~input_o\,
	dataf => \ALT_INV_statePullSynapse.STATE_WAIT~q\,
	combout => \Selector11~0_combout\);

-- Location: LABCELL_X39_Y1_N9
\avs_pullSynapse_waitrequest$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avs_pullSynapse_waitrequest$latch~combout\ = ( \Selector11~0_combout\ & ( (!\rst_soma~input_o\ & ((\avs_pullSynapse_waitrequest$latch~combout\) # (\Selector39~0_combout\))) ) ) # ( !\Selector11~0_combout\ & ( (!\rst_soma~input_o\ & 
-- (!\Selector39~0_combout\ & \avs_pullSynapse_waitrequest$latch~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rst_soma~input_o\,
	datac => \ALT_INV_Selector39~0_combout\,
	datad => \ALT_INV_avs_pullSynapse_waitrequest$latch~combout\,
	dataf => \ALT_INV_Selector11~0_combout\,
	combout => \avs_pullSynapse_waitrequest$latch~combout\);

-- Location: LABCELL_X35_Y2_N6
\avm_pushSpike_address[15]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[15]~2_combout\ = ( \statePushSPike.STATE_RST~q\ ) # ( !\statePushSPike.STATE_RST~q\ & ( (\statePushSPike.STATE_WAIT~q\) # (\rst_soma~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_rst_soma~input_o\,
	datad => \ALT_INV_statePushSPike.STATE_WAIT~q\,
	dataf => \ALT_INV_statePushSPike.STATE_RST~q\,
	combout => \avm_pushSpike_address[15]~2_combout\);

-- Location: IOIBUF_X20_Y0_N52
\avs_fetchSoma_writedata[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_writedata(0),
	o => \avs_fetchSoma_writedata[0]~input_o\);

-- Location: LABCELL_X38_Y2_N27
\Addr_UploadServer[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- Addr_UploadServer(0) = ( !\rst_soma~input_o\ & ( (!\stateFetchSoma.STATE_FETCH~q\ & ((Addr_UploadServer(0)))) # (\stateFetchSoma.STATE_FETCH~q\ & (\avs_fetchSoma_writedata[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	datac => \ALT_INV_avs_fetchSoma_writedata[0]~input_o\,
	datad => ALT_INV_Addr_UploadServer(0),
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Addr_UploadServer(0));

-- Location: LABCELL_X34_Y2_N51
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( Addr_UploadServer(0) & ( \statePushSPike.STATE_SPIKE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Addr_UploadServer(0),
	combout => \Selector14~0_combout\);

-- Location: LABCELL_X34_Y2_N48
\avm_pushSpike_address[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[0]$latch~combout\ = ( \Selector14~0_combout\ & ( (!\avm_pushSpike_address[15]~2_combout\) # (\avm_pushSpike_address[0]$latch~combout\) ) ) # ( !\Selector14~0_combout\ & ( (\avm_pushSpike_address[0]$latch~combout\ & 
-- \avm_pushSpike_address[15]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_pushSpike_address[0]$latch~combout\,
	datad => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_Selector14~0_combout\,
	combout => \avm_pushSpike_address[0]$latch~combout\);

-- Location: IOIBUF_X65_Y0_N58
\avs_fetchSoma_writedata[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_writedata(1),
	o => \avs_fetchSoma_writedata[1]~input_o\);

-- Location: LABCELL_X38_Y2_N57
\Addr_UploadServer[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- Addr_UploadServer(1) = ( !\rst_soma~input_o\ & ( (!\stateFetchSoma.STATE_FETCH~q\ & ((Addr_UploadServer(1)))) # (\stateFetchSoma.STATE_FETCH~q\ & (\avs_fetchSoma_writedata[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	datab => \ALT_INV_avs_fetchSoma_writedata[1]~input_o\,
	datad => ALT_INV_Addr_UploadServer(1),
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Addr_UploadServer(1));

-- Location: MLABCELL_X36_Y2_N48
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( Addr_UploadServer(1) & ( \statePushSPike.STATE_SPIKE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Addr_UploadServer(1),
	combout => \Selector13~0_combout\);

-- Location: MLABCELL_X36_Y2_N51
\avm_pushSpike_address[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[1]$latch~combout\ = ( \Selector13~0_combout\ & ( (!\avm_pushSpike_address[15]~2_combout\) # (\avm_pushSpike_address[1]$latch~combout\) ) ) # ( !\Selector13~0_combout\ & ( (\avm_pushSpike_address[1]$latch~combout\ & 
-- \avm_pushSpike_address[15]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avm_pushSpike_address[1]$latch~combout\,
	datad => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_Selector13~0_combout\,
	combout => \avm_pushSpike_address[1]$latch~combout\);

-- Location: IOIBUF_X71_Y0_N35
\avs_fetchSoma_writedata[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_writedata(2),
	o => \avs_fetchSoma_writedata[2]~input_o\);

-- Location: LABCELL_X38_Y2_N24
\Addr_UploadServer[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- Addr_UploadServer(2) = ( !\rst_soma~input_o\ & ( (!\stateFetchSoma.STATE_FETCH~q\ & (Addr_UploadServer(2))) # (\stateFetchSoma.STATE_FETCH~q\ & ((\avs_fetchSoma_writedata[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	datac => ALT_INV_Addr_UploadServer(2),
	datad => \ALT_INV_avs_fetchSoma_writedata[2]~input_o\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Addr_UploadServer(2));

-- Location: LABCELL_X34_Y2_N21
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( Addr_UploadServer(2) & ( \statePushSPike.STATE_SPIKE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Addr_UploadServer(2),
	combout => \Selector12~0_combout\);

-- Location: LABCELL_X34_Y2_N18
\avm_pushSpike_address[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[2]$latch~combout\ = ( \Selector12~0_combout\ & ( (!\avm_pushSpike_address[15]~2_combout\) # (\avm_pushSpike_address[2]$latch~combout\) ) ) # ( !\Selector12~0_combout\ & ( (\avm_pushSpike_address[2]$latch~combout\ & 
-- \avm_pushSpike_address[15]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avm_pushSpike_address[2]$latch~combout\,
	datad => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_Selector12~0_combout\,
	combout => \avm_pushSpike_address[2]$latch~combout\);

-- Location: IOIBUF_X71_Y0_N1
\avs_fetchSoma_writedata[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_writedata(3),
	o => \avs_fetchSoma_writedata[3]~input_o\);

-- Location: LABCELL_X38_Y2_N18
\Addr_UploadServer[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- Addr_UploadServer(3) = ( !\rst_soma~input_o\ & ( (!\stateFetchSoma.STATE_FETCH~q\ & (Addr_UploadServer(3))) # (\stateFetchSoma.STATE_FETCH~q\ & ((\avs_fetchSoma_writedata[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	datac => ALT_INV_Addr_UploadServer(3),
	datad => \ALT_INV_avs_fetchSoma_writedata[3]~input_o\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Addr_UploadServer(3));

-- Location: MLABCELL_X36_Y2_N6
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( Addr_UploadServer(3) & ( \statePushSPike.STATE_SPIKE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Addr_UploadServer(3),
	combout => \Selector10~0_combout\);

-- Location: MLABCELL_X36_Y2_N9
\avm_pushSpike_address[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[3]$latch~combout\ = ( \Selector10~0_combout\ & ( (!\avm_pushSpike_address[15]~2_combout\) # (\avm_pushSpike_address[3]$latch~combout\) ) ) # ( !\Selector10~0_combout\ & ( (\avm_pushSpike_address[3]$latch~combout\ & 
-- \avm_pushSpike_address[15]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_pushSpike_address[3]$latch~combout\,
	datad => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_Selector10~0_combout\,
	combout => \avm_pushSpike_address[3]$latch~combout\);

-- Location: IOIBUF_X73_Y0_N92
\avs_fetchSoma_writedata[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_writedata(4),
	o => \avs_fetchSoma_writedata[4]~input_o\);

-- Location: LABCELL_X38_Y2_N3
\Addr_UploadServer[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- Addr_UploadServer(4) = ( !\rst_soma~input_o\ & ( (!\stateFetchSoma.STATE_FETCH~q\ & ((Addr_UploadServer(4)))) # (\stateFetchSoma.STATE_FETCH~q\ & (\avs_fetchSoma_writedata[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	datac => \ALT_INV_avs_fetchSoma_writedata[4]~input_o\,
	datad => ALT_INV_Addr_UploadServer(4),
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Addr_UploadServer(4));

-- Location: LABCELL_X34_Y2_N27
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (Addr_UploadServer(4) & \statePushSPike.STATE_SPIKE~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Addr_UploadServer(4),
	datac => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	combout => \Selector9~0_combout\);

-- Location: LABCELL_X34_Y2_N24
\avm_pushSpike_address[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[4]$latch~combout\ = ( \Selector9~0_combout\ & ( (!\avm_pushSpike_address[15]~2_combout\) # (\avm_pushSpike_address[4]$latch~combout\) ) ) # ( !\Selector9~0_combout\ & ( (\avm_pushSpike_address[4]$latch~combout\ & 
-- \avm_pushSpike_address[15]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_pushSpike_address[4]$latch~combout\,
	datad => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_Selector9~0_combout\,
	combout => \avm_pushSpike_address[4]$latch~combout\);

-- Location: IOIBUF_X65_Y0_N75
\avs_fetchSoma_writedata[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_writedata(5),
	o => \avs_fetchSoma_writedata[5]~input_o\);

-- Location: LABCELL_X38_Y2_N48
\Addr_UploadServer[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- Addr_UploadServer(5) = ( !\rst_soma~input_o\ & ( (!\stateFetchSoma.STATE_FETCH~q\ & ((Addr_UploadServer(5)))) # (\stateFetchSoma.STATE_FETCH~q\ & (\avs_fetchSoma_writedata[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_fetchSoma_writedata[5]~input_o\,
	datac => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	datad => ALT_INV_Addr_UploadServer(5),
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Addr_UploadServer(5));

-- Location: MLABCELL_X36_Y2_N15
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \statePushSPike.STATE_SPIKE~q\ & ( Addr_UploadServer(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Addr_UploadServer(5),
	combout => \Selector8~0_combout\);

-- Location: MLABCELL_X36_Y2_N39
\avm_pushSpike_address[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[5]$latch~combout\ = ( \avm_pushSpike_address[15]~2_combout\ & ( \Selector8~0_combout\ & ( \avm_pushSpike_address[5]$latch~combout\ ) ) ) # ( !\avm_pushSpike_address[15]~2_combout\ & ( \Selector8~0_combout\ ) ) # ( 
-- \avm_pushSpike_address[15]~2_combout\ & ( !\Selector8~0_combout\ & ( \avm_pushSpike_address[5]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_pushSpike_address[5]$latch~combout\,
	datae => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_Selector8~0_combout\,
	combout => \avm_pushSpike_address[5]$latch~combout\);

-- Location: IOIBUF_X73_Y0_N58
\avs_fetchSoma_writedata[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_writedata(6),
	o => \avs_fetchSoma_writedata[6]~input_o\);

-- Location: LABCELL_X38_Y2_N21
\Addr_UploadServer[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- Addr_UploadServer(6) = ( !\rst_soma~input_o\ & ( (!\stateFetchSoma.STATE_FETCH~q\ & ((Addr_UploadServer(6)))) # (\stateFetchSoma.STATE_FETCH~q\ & (\avs_fetchSoma_writedata[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	datac => \ALT_INV_avs_fetchSoma_writedata[6]~input_o\,
	datad => ALT_INV_Addr_UploadServer(6),
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Addr_UploadServer(6));

-- Location: MLABCELL_X36_Y2_N42
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (Addr_UploadServer(6) & \statePushSPike.STATE_SPIKE~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Addr_UploadServer(6),
	datad => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	combout => \Selector6~0_combout\);

-- Location: MLABCELL_X36_Y2_N21
\avm_pushSpike_address[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[6]$latch~combout\ = ( \avm_pushSpike_address[15]~2_combout\ & ( \Selector6~0_combout\ & ( \avm_pushSpike_address[6]$latch~combout\ ) ) ) # ( !\avm_pushSpike_address[15]~2_combout\ & ( \Selector6~0_combout\ ) ) # ( 
-- \avm_pushSpike_address[15]~2_combout\ & ( !\Selector6~0_combout\ & ( \avm_pushSpike_address[6]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_avm_pushSpike_address[6]$latch~combout\,
	datae => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_Selector6~0_combout\,
	combout => \avm_pushSpike_address[6]$latch~combout\);

-- Location: IOIBUF_X54_Y0_N52
\avs_fetchSoma_writedata[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_writedata(7),
	o => \avs_fetchSoma_writedata[7]~input_o\);

-- Location: LABCELL_X38_Y2_N39
\Addr_UploadServer[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- Addr_UploadServer(7) = ( !\rst_soma~input_o\ & ( (!\stateFetchSoma.STATE_FETCH~q\ & (Addr_UploadServer(7))) # (\stateFetchSoma.STATE_FETCH~q\ & ((\avs_fetchSoma_writedata[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	datac => ALT_INV_Addr_UploadServer(7),
	datad => \ALT_INV_avs_fetchSoma_writedata[7]~input_o\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Addr_UploadServer(7));

-- Location: MLABCELL_X36_Y2_N27
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \statePushSPike.STATE_SPIKE~q\ & ( Addr_UploadServer(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Addr_UploadServer(7),
	combout => \Selector4~0_combout\);

-- Location: MLABCELL_X36_Y2_N3
\avm_pushSpike_address[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[7]$latch~combout\ = ( \avm_pushSpike_address[15]~2_combout\ & ( \Selector4~0_combout\ & ( \avm_pushSpike_address[7]$latch~combout\ ) ) ) # ( !\avm_pushSpike_address[15]~2_combout\ & ( \Selector4~0_combout\ ) ) # ( 
-- \avm_pushSpike_address[15]~2_combout\ & ( !\Selector4~0_combout\ & ( \avm_pushSpike_address[7]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_avm_pushSpike_address[7]$latch~combout\,
	datae => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_Selector4~0_combout\,
	combout => \avm_pushSpike_address[7]$latch~combout\);

-- Location: IOIBUF_X73_Y0_N41
\avs_fetchSoma_writedata[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_writedata(8),
	o => \avs_fetchSoma_writedata[8]~input_o\);

-- Location: LABCELL_X38_Y2_N6
\Addr_UploadServer[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- Addr_UploadServer(8) = ( !\rst_soma~input_o\ & ( (!\stateFetchSoma.STATE_FETCH~q\ & (Addr_UploadServer(8))) # (\stateFetchSoma.STATE_FETCH~q\ & ((\avs_fetchSoma_writedata[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	datab => ALT_INV_Addr_UploadServer(8),
	datac => \ALT_INV_avs_fetchSoma_writedata[8]~input_o\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Addr_UploadServer(8));

-- Location: MLABCELL_X36_Y2_N33
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( Addr_UploadServer(8) & ( \statePushSPike.STATE_SPIKE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Addr_UploadServer(8),
	combout => \Selector3~0_combout\);

-- Location: MLABCELL_X36_Y2_N54
\avm_pushSpike_address[8]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[8]$latch~combout\ = ( \avm_pushSpike_address[8]$latch~combout\ & ( \Selector3~0_combout\ ) ) # ( !\avm_pushSpike_address[8]$latch~combout\ & ( \Selector3~0_combout\ & ( !\avm_pushSpike_address[15]~2_combout\ ) ) ) # ( 
-- \avm_pushSpike_address[8]$latch~combout\ & ( !\Selector3~0_combout\ & ( \avm_pushSpike_address[15]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	datae => \ALT_INV_avm_pushSpike_address[8]$latch~combout\,
	dataf => \ALT_INV_Selector3~0_combout\,
	combout => \avm_pushSpike_address[8]$latch~combout\);

-- Location: IOIBUF_X54_Y0_N35
\avs_fetchSoma_writedata[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_writedata(9),
	o => \avs_fetchSoma_writedata[9]~input_o\);

-- Location: LABCELL_X38_Y2_N0
\Addr_UploadServer[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- Addr_UploadServer(9) = ( !\rst_soma~input_o\ & ( (!\stateFetchSoma.STATE_FETCH~q\ & ((Addr_UploadServer(9)))) # (\stateFetchSoma.STATE_FETCH~q\ & (\avs_fetchSoma_writedata[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	datac => \ALT_INV_avs_fetchSoma_writedata[9]~input_o\,
	datad => ALT_INV_Addr_UploadServer(9),
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Addr_UploadServer(9));

-- Location: LABCELL_X35_Y2_N0
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( Addr_UploadServer(9) & ( \statePushSPike.STATE_SPIKE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Addr_UploadServer(9),
	combout => \Selector2~0_combout\);

-- Location: LABCELL_X35_Y2_N57
\avm_pushSpike_address[9]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[9]$latch~combout\ = ( \Selector2~0_combout\ & ( (!\avm_pushSpike_address[15]~2_combout\) # (\avm_pushSpike_address[9]$latch~combout\) ) ) # ( !\Selector2~0_combout\ & ( (\avm_pushSpike_address[15]~2_combout\ & 
-- \avm_pushSpike_address[9]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	datad => \ALT_INV_avm_pushSpike_address[9]$latch~combout\,
	dataf => \ALT_INV_Selector2~0_combout\,
	combout => \avm_pushSpike_address[9]$latch~combout\);

-- Location: IOIBUF_X71_Y0_N18
\avs_fetchSoma_writedata[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_writedata(10),
	o => \avs_fetchSoma_writedata[10]~input_o\);

-- Location: LABCELL_X38_Y2_N9
\Addr_UploadServer[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- Addr_UploadServer(10) = ( !\rst_soma~input_o\ & ( (!\stateFetchSoma.STATE_FETCH~q\ & (Addr_UploadServer(10))) # (\stateFetchSoma.STATE_FETCH~q\ & ((\avs_fetchSoma_writedata[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	datac => ALT_INV_Addr_UploadServer(10),
	datad => \ALT_INV_avs_fetchSoma_writedata[10]~input_o\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Addr_UploadServer(10));

-- Location: LABCELL_X34_Y2_N42
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( Addr_UploadServer(10) & ( \statePushSPike.STATE_SPIKE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Addr_UploadServer(10),
	combout => \Selector1~0_combout\);

-- Location: LABCELL_X34_Y2_N45
\avm_pushSpike_address[10]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[10]$latch~combout\ = ( \Selector1~0_combout\ & ( (!\avm_pushSpike_address[15]~2_combout\) # (\avm_pushSpike_address[10]$latch~combout\) ) ) # ( !\Selector1~0_combout\ & ( (\avm_pushSpike_address[10]$latch~combout\ & 
-- \avm_pushSpike_address[15]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_pushSpike_address[10]$latch~combout\,
	datad => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_Selector1~0_combout\,
	combout => \avm_pushSpike_address[10]$latch~combout\);

-- Location: IOIBUF_X75_Y0_N18
\avs_fetchSoma_writedata[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_writedata(11),
	o => \avs_fetchSoma_writedata[11]~input_o\);

-- Location: LABCELL_X38_Y2_N54
\Addr_UploadServer[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- Addr_UploadServer(11) = ( !\rst_soma~input_o\ & ( (!\stateFetchSoma.STATE_FETCH~q\ & (Addr_UploadServer(11))) # (\stateFetchSoma.STATE_FETCH~q\ & ((\avs_fetchSoma_writedata[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	datac => ALT_INV_Addr_UploadServer(11),
	datad => \ALT_INV_avs_fetchSoma_writedata[11]~input_o\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Addr_UploadServer(11));

-- Location: LABCELL_X35_Y2_N3
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( Addr_UploadServer(11) & ( \statePushSPike.STATE_SPIKE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Addr_UploadServer(11),
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X35_Y2_N24
\avm_pushSpike_address[11]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[11]$latch~combout\ = ( \Selector0~0_combout\ & ( (!\avm_pushSpike_address[15]~2_combout\) # (\avm_pushSpike_address[11]$latch~combout\) ) ) # ( !\Selector0~0_combout\ & ( (\avm_pushSpike_address[11]$latch~combout\ & 
-- \avm_pushSpike_address[15]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_pushSpike_address[11]$latch~combout\,
	datad => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \avm_pushSpike_address[11]$latch~combout\);

-- Location: IOIBUF_X79_Y0_N18
\avs_fetchSoma_writedata[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_writedata(12),
	o => \avs_fetchSoma_writedata[12]~input_o\);

-- Location: LABCELL_X38_Y2_N36
\Addr_UploadServer[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- Addr_UploadServer(12) = ( !\rst_soma~input_o\ & ( (!\stateFetchSoma.STATE_FETCH~q\ & ((Addr_UploadServer(12)))) # (\stateFetchSoma.STATE_FETCH~q\ & (\avs_fetchSoma_writedata[12]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	datac => \ALT_INV_avs_fetchSoma_writedata[12]~input_o\,
	datad => ALT_INV_Addr_UploadServer(12),
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Addr_UploadServer(12));

-- Location: LABCELL_X34_Y2_N39
\Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = ( Addr_UploadServer(12) & ( \statePushSPike.STATE_SPIKE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Addr_UploadServer(12),
	combout => \Selector33~0_combout\);

-- Location: LABCELL_X34_Y2_N36
\avm_pushSpike_address[12]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[12]$latch~combout\ = ( \Selector33~0_combout\ & ( (!\avm_pushSpike_address[15]~2_combout\) # (\avm_pushSpike_address[12]$latch~combout\) ) ) # ( !\Selector33~0_combout\ & ( (\avm_pushSpike_address[12]$latch~combout\ & 
-- \avm_pushSpike_address[15]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_pushSpike_address[12]$latch~combout\,
	datad => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_Selector33~0_combout\,
	combout => \avm_pushSpike_address[12]$latch~combout\);

-- Location: IOIBUF_X69_Y0_N35
\avs_fetchSoma_writedata[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_writedata(13),
	o => \avs_fetchSoma_writedata[13]~input_o\);

-- Location: LABCELL_X38_Y2_N12
\Addr_UploadServer[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- Addr_UploadServer(13) = ( !\rst_soma~input_o\ & ( (!\stateFetchSoma.STATE_FETCH~q\ & (Addr_UploadServer(13))) # (\stateFetchSoma.STATE_FETCH~q\ & ((\avs_fetchSoma_writedata[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	datab => ALT_INV_Addr_UploadServer(13),
	datac => \ALT_INV_avs_fetchSoma_writedata[13]~input_o\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Addr_UploadServer(13));

-- Location: LABCELL_X34_Y2_N57
\Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = ( Addr_UploadServer(13) & ( \statePushSPike.STATE_SPIKE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Addr_UploadServer(13),
	combout => \Selector34~0_combout\);

-- Location: LABCELL_X34_Y2_N3
\avm_pushSpike_address[13]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[13]$latch~combout\ = ( \avm_pushSpike_address[15]~2_combout\ & ( \Selector34~0_combout\ & ( \avm_pushSpike_address[13]$latch~combout\ ) ) ) # ( !\avm_pushSpike_address[15]~2_combout\ & ( \Selector34~0_combout\ ) ) # ( 
-- \avm_pushSpike_address[15]~2_combout\ & ( !\Selector34~0_combout\ & ( \avm_pushSpike_address[13]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_avm_pushSpike_address[13]$latch~combout\,
	datae => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_Selector34~0_combout\,
	combout => \avm_pushSpike_address[13]$latch~combout\);

-- Location: IOIBUF_X73_Y0_N75
\avs_fetchSoma_writedata[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_writedata(14),
	o => \avs_fetchSoma_writedata[14]~input_o\);

-- Location: LABCELL_X38_Y2_N30
\Addr_UploadServer[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- Addr_UploadServer(14) = ( !\rst_soma~input_o\ & ( (!\stateFetchSoma.STATE_FETCH~q\ & ((Addr_UploadServer(14)))) # (\stateFetchSoma.STATE_FETCH~q\ & (\avs_fetchSoma_writedata[14]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_fetchSoma_writedata[14]~input_o\,
	datab => ALT_INV_Addr_UploadServer(14),
	datac => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Addr_UploadServer(14));

-- Location: LABCELL_X35_Y2_N54
\Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = ( Addr_UploadServer(14) & ( \statePushSPike.STATE_SPIKE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Addr_UploadServer(14),
	combout => \Selector35~0_combout\);

-- Location: LABCELL_X35_Y2_N12
\avm_pushSpike_address[14]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[14]$latch~combout\ = (!\avm_pushSpike_address[15]~2_combout\ & ((\Selector35~0_combout\))) # (\avm_pushSpike_address[15]~2_combout\ & (\avm_pushSpike_address[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avm_pushSpike_address[14]$latch~combout\,
	datac => \ALT_INV_Selector35~0_combout\,
	datad => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	combout => \avm_pushSpike_address[14]$latch~combout\);

-- Location: IOIBUF_X69_Y0_N18
\avs_fetchSoma_writedata[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_writedata(15),
	o => \avs_fetchSoma_writedata[15]~input_o\);

-- Location: LABCELL_X38_Y2_N15
\Addr_UploadServer[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- Addr_UploadServer(15) = ( !\rst_soma~input_o\ & ( (!\stateFetchSoma.STATE_FETCH~q\ & (Addr_UploadServer(15))) # (\stateFetchSoma.STATE_FETCH~q\ & ((\avs_fetchSoma_writedata[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stateFetchSoma.STATE_FETCH~q\,
	datac => ALT_INV_Addr_UploadServer(15),
	datad => \ALT_INV_avs_fetchSoma_writedata[15]~input_o\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Addr_UploadServer(15));

-- Location: LABCELL_X34_Y2_N12
\Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = ( Addr_UploadServer(15) & ( \statePushSPike.STATE_SPIKE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Addr_UploadServer(15),
	combout => \Selector36~0_combout\);

-- Location: LABCELL_X34_Y2_N15
\avm_pushSpike_address[15]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_address[15]$latch~combout\ = ( \Selector36~0_combout\ & ( (!\avm_pushSpike_address[15]~2_combout\) # (\avm_pushSpike_address[15]$latch~combout\) ) ) # ( !\Selector36~0_combout\ & ( (\avm_pushSpike_address[15]$latch~combout\ & 
-- \avm_pushSpike_address[15]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_pushSpike_address[15]$latch~combout\,
	datad => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_Selector36~0_combout\,
	combout => \avm_pushSpike_address[15]$latch~combout\);

-- Location: LABCELL_X35_Y2_N33
\avm_pushSpike_write~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_write~0_combout\ = ( !\rst_soma~input_o\ & ( (!\statePushSPike.STATE_RST~q\ & ((!\statePushSPike.STATE_WAIT~q\) # (\avm_pushSpike_waitrequest~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110000111100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avm_pushSpike_waitrequest~input_o\,
	datac => \ALT_INV_statePushSPike.STATE_RST~q\,
	datad => \ALT_INV_statePushSPike.STATE_WAIT~q\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \avm_pushSpike_write~0_combout\);

-- Location: LABCELL_X35_Y2_N30
\avm_pushSpike_write$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_write$latch~combout\ = ( \avm_pushSpike_write~0_combout\ & ( \statePushSPike.STATE_IDLE~q\ ) ) # ( !\avm_pushSpike_write~0_combout\ & ( \avm_pushSpike_write$latch~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePushSPike.STATE_IDLE~q\,
	datac => \ALT_INV_avm_pushSpike_write$latch~combout\,
	dataf => \ALT_INV_avm_pushSpike_write~0_combout\,
	combout => \avm_pushSpike_write$latch~combout\);

-- Location: IOIBUF_X48_Y0_N41
\avs_pullSynapse_writedata[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(0),
	o => \avs_pullSynapse_writedata[0]~input_o\);

-- Location: LABCELL_X39_Y1_N39
\Interval_IN[-5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Interval_IN[-5]~combout\ = ( \statePullSynapse.STATE_PATCH~q\ & ( !\rst_soma~input_o\ & ( \avs_pullSynapse_writedata[0]~input_o\ ) ) ) # ( !\statePullSynapse.STATE_PATCH~q\ & ( !\rst_soma~input_o\ & ( \Interval_IN[-5]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avs_pullSynapse_writedata[0]~input_o\,
	datac => \ALT_INV_Interval_IN[-5]~combout\,
	datae => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \Interval_IN[-5]~combout\);

-- Location: LABCELL_X35_Y1_N30
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \Interval_Time[-5]~q\ ) + ( \Interval_IN[-5]~combout\ ) + ( !VCC ))
-- \Add1~2\ = CARRY(( \Interval_Time[-5]~q\ ) + ( \Interval_IN[-5]~combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Interval_IN[-5]~combout\,
	datad => \ALT_INV_Interval_Time[-5]~q\,
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X35_Y1_N32
\Interval_Time[-5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Interval_Time[-5]~q\);

-- Location: LABCELL_X35_Y2_N15
\Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = ( \statePushSPike.STATE_SPIKE~q\ & ( \Interval_Time[-5]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Interval_Time[-5]~q\,
	dataf => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	combout => \Selector27~0_combout\);

-- Location: LABCELL_X35_Y2_N48
\avm_pushSpike_writedata[0]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_writedata[0]$latch~combout\ = ( \avm_pushSpike_address[15]~2_combout\ & ( \avm_pushSpike_writedata[0]$latch~combout\ ) ) # ( !\avm_pushSpike_address[15]~2_combout\ & ( \Selector27~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector27~0_combout\,
	datac => \ALT_INV_avm_pushSpike_writedata[0]$latch~combout\,
	dataf => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	combout => \avm_pushSpike_writedata[0]$latch~combout\);

-- Location: IOIBUF_X75_Y0_N1
\avs_pullSynapse_writedata[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(1),
	o => \avs_pullSynapse_writedata[1]~input_o\);

-- Location: LABCELL_X38_Y1_N6
\Interval_IN[-4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Interval_IN[-4]~combout\ = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & (\Interval_IN[-4]~combout\)) # (\statePullSynapse.STATE_PATCH~q\ & ((\avs_pullSynapse_writedata[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datab => \ALT_INV_Interval_IN[-4]~combout\,
	datac => \ALT_INV_avs_pullSynapse_writedata[1]~input_o\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \Interval_IN[-4]~combout\);

-- Location: LABCELL_X35_Y1_N33
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \Interval_Time[-4]~q\ ) + ( \Interval_IN[-4]~combout\ ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( \Interval_Time[-4]~q\ ) + ( \Interval_IN[-4]~combout\ ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Interval_IN[-4]~combout\,
	datad => \ALT_INV_Interval_Time[-4]~q\,
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X35_Y1_N35
\Interval_Time[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Interval_Time[-4]~q\);

-- Location: LABCELL_X34_Y2_N30
\Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = ( \statePushSPike.STATE_SPIKE~q\ & ( \Interval_Time[-4]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Interval_Time[-4]~q\,
	dataf => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	combout => \Selector26~0_combout\);

-- Location: LABCELL_X34_Y2_N33
\avm_pushSpike_writedata[1]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_writedata[1]$latch~combout\ = ( \avm_pushSpike_writedata[1]$latch~combout\ & ( (\avm_pushSpike_address[15]~2_combout\) # (\Selector26~0_combout\) ) ) # ( !\avm_pushSpike_writedata[1]$latch~combout\ & ( (\Selector26~0_combout\ & 
-- !\avm_pushSpike_address[15]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector26~0_combout\,
	datad => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_avm_pushSpike_writedata[1]$latch~combout\,
	combout => \avm_pushSpike_writedata[1]$latch~combout\);

-- Location: IOIBUF_X8_Y0_N58
\avs_pullSynapse_writedata[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(2),
	o => \avs_pullSynapse_writedata[2]~input_o\);

-- Location: LABCELL_X38_Y1_N51
\Interval_IN[-3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Interval_IN[-3]~combout\ = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & ((\Interval_IN[-3]~combout\))) # (\statePullSynapse.STATE_PATCH~q\ & (\avs_pullSynapse_writedata[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datac => \ALT_INV_avs_pullSynapse_writedata[2]~input_o\,
	datad => \ALT_INV_Interval_IN[-3]~combout\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \Interval_IN[-3]~combout\);

-- Location: LABCELL_X35_Y1_N36
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \Interval_Time[-3]~q\ ) + ( \Interval_IN[-3]~combout\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( \Interval_Time[-3]~q\ ) + ( \Interval_IN[-3]~combout\ ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Interval_IN[-3]~combout\,
	datad => \ALT_INV_Interval_Time[-3]~q\,
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X35_Y1_N38
\Interval_Time[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Interval_Time[-3]~q\);

-- Location: LABCELL_X35_Y1_N6
\Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\statePushSPike.STATE_SPIKE~q\ & \Interval_Time[-3]~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	datac => \ALT_INV_Interval_Time[-3]~q\,
	combout => \Selector25~0_combout\);

-- Location: LABCELL_X35_Y1_N24
\avm_pushSpike_writedata[2]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_writedata[2]$latch~combout\ = ( \avm_pushSpike_address[15]~2_combout\ & ( \avm_pushSpike_writedata[2]$latch~combout\ ) ) # ( !\avm_pushSpike_address[15]~2_combout\ & ( \avm_pushSpike_writedata[2]$latch~combout\ & ( \Selector25~0_combout\ ) 
-- ) ) # ( !\avm_pushSpike_address[15]~2_combout\ & ( !\avm_pushSpike_writedata[2]$latch~combout\ & ( \Selector25~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector25~0_combout\,
	datae => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_avm_pushSpike_writedata[2]$latch~combout\,
	combout => \avm_pushSpike_writedata[2]$latch~combout\);

-- Location: IOIBUF_X69_Y0_N1
\avs_pullSynapse_writedata[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(3),
	o => \avs_pullSynapse_writedata[3]~input_o\);

-- Location: LABCELL_X38_Y1_N18
\Interval_IN[-2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Interval_IN[-2]~combout\ = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & (\Interval_IN[-2]~combout\)) # (\statePullSynapse.STATE_PATCH~q\ & ((\avs_pullSynapse_writedata[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datac => \ALT_INV_Interval_IN[-2]~combout\,
	datad => \ALT_INV_avs_pullSynapse_writedata[3]~input_o\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \Interval_IN[-2]~combout\);

-- Location: LABCELL_X35_Y1_N39
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \Interval_Time[-2]~q\ ) + ( \Interval_IN[-2]~combout\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( \Interval_Time[-2]~q\ ) + ( \Interval_IN[-2]~combout\ ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Interval_IN[-2]~combout\,
	datad => \ALT_INV_Interval_Time[-2]~q\,
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X35_Y1_N41
\Interval_Time[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Interval_Time[-2]~q\);

-- Location: LABCELL_X34_Y1_N27
\Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = ( \Interval_Time[-2]~q\ & ( \statePushSPike.STATE_SPIKE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => \ALT_INV_Interval_Time[-2]~q\,
	combout => \Selector24~0_combout\);

-- Location: LABCELL_X34_Y1_N9
\avm_pushSpike_writedata[3]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_writedata[3]$latch~combout\ = ( \avm_pushSpike_address[15]~2_combout\ & ( \avm_pushSpike_writedata[3]$latch~combout\ ) ) # ( !\avm_pushSpike_address[15]~2_combout\ & ( \avm_pushSpike_writedata[3]$latch~combout\ & ( \Selector24~0_combout\ ) 
-- ) ) # ( !\avm_pushSpike_address[15]~2_combout\ & ( !\avm_pushSpike_writedata[3]$latch~combout\ & ( \Selector24~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector24~0_combout\,
	datae => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_avm_pushSpike_writedata[3]$latch~combout\,
	combout => \avm_pushSpike_writedata[3]$latch~combout\);

-- Location: IOIBUF_X44_Y0_N18
\avs_pullSynapse_writedata[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(4),
	o => \avs_pullSynapse_writedata[4]~input_o\);

-- Location: LABCELL_X38_Y1_N21
\Interval_IN[-1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Interval_IN[-1]~combout\ = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & ((\Interval_IN[-1]~combout\))) # (\statePullSynapse.STATE_PATCH~q\ & (\avs_pullSynapse_writedata[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datac => \ALT_INV_avs_pullSynapse_writedata[4]~input_o\,
	datad => \ALT_INV_Interval_IN[-1]~combout\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => \Interval_IN[-1]~combout\);

-- Location: LABCELL_X35_Y1_N42
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \Interval_Time[-1]~q\ ) + ( \Interval_IN[-1]~combout\ ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( \Interval_Time[-1]~q\ ) + ( \Interval_IN[-1]~combout\ ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Interval_IN[-1]~combout\,
	datad => \ALT_INV_Interval_Time[-1]~q\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X35_Y1_N44
\Interval_Time[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Interval_Time[-1]~q\);

-- Location: LABCELL_X35_Y2_N27
\Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = ( \statePushSPike.STATE_SPIKE~q\ & ( \Interval_Time[-1]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Interval_Time[-1]~q\,
	dataf => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	combout => \Selector23~0_combout\);

-- Location: LABCELL_X35_Y2_N21
\avm_pushSpike_writedata[4]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_writedata[4]$latch~combout\ = ( \Selector23~0_combout\ & ( (!\avm_pushSpike_address[15]~2_combout\) # (\avm_pushSpike_writedata[4]$latch~combout\) ) ) # ( !\Selector23~0_combout\ & ( (\avm_pushSpike_address[15]~2_combout\ & 
-- \avm_pushSpike_writedata[4]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	datad => \ALT_INV_avm_pushSpike_writedata[4]$latch~combout\,
	dataf => \ALT_INV_Selector23~0_combout\,
	combout => \avm_pushSpike_writedata[4]$latch~combout\);

-- Location: IOIBUF_X67_Y0_N52
\avs_pullSynapse_writedata[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(5),
	o => \avs_pullSynapse_writedata[5]~input_o\);

-- Location: LABCELL_X38_Y1_N54
\Interval_IN[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- Interval_IN(0) = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & ((Interval_IN(0)))) # (\statePullSynapse.STATE_PATCH~q\ & (\avs_pullSynapse_writedata[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datac => \ALT_INV_avs_pullSynapse_writedata[5]~input_o\,
	datad => ALT_INV_Interval_IN(0),
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Interval_IN(0));

-- Location: LABCELL_X35_Y1_N45
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( Interval_Time(0) ) + ( Interval_IN(0) ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( Interval_Time(0) ) + ( Interval_IN(0) ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Interval_IN(0),
	datad => ALT_INV_Interval_Time(0),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X35_Y1_N47
\Interval_Time[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Interval_Time(0));

-- Location: LABCELL_X35_Y1_N0
\Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = ( Interval_Time(0) & ( \statePushSPike.STATE_SPIKE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Interval_Time(0),
	combout => \Selector22~0_combout\);

-- Location: LABCELL_X35_Y1_N21
\avm_pushSpike_writedata[5]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_writedata[5]$latch~combout\ = ( \avm_pushSpike_address[15]~2_combout\ & ( \avm_pushSpike_writedata[5]$latch~combout\ ) ) # ( !\avm_pushSpike_address[15]~2_combout\ & ( \Selector22~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avm_pushSpike_writedata[5]$latch~combout\,
	datac => \ALT_INV_Selector22~0_combout\,
	dataf => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	combout => \avm_pushSpike_writedata[5]$latch~combout\);

-- Location: IOIBUF_X48_Y0_N92
\avs_pullSynapse_writedata[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(6),
	o => \avs_pullSynapse_writedata[6]~input_o\);

-- Location: LABCELL_X38_Y1_N57
\Interval_IN[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- Interval_IN(1) = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & ((Interval_IN(1)))) # (\statePullSynapse.STATE_PATCH~q\ & (\avs_pullSynapse_writedata[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datac => \ALT_INV_avs_pullSynapse_writedata[6]~input_o\,
	datad => ALT_INV_Interval_IN(1),
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Interval_IN(1));

-- Location: LABCELL_X35_Y1_N48
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( Interval_Time(1) ) + ( Interval_IN(1) ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( Interval_Time(1) ) + ( Interval_IN(1) ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Interval_IN(1),
	datad => ALT_INV_Interval_Time(1),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X35_Y1_N50
\Interval_Time[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Interval_Time(1));

-- Location: LABCELL_X35_Y2_N18
\Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ( Interval_Time(1) & ( \statePushSPike.STATE_SPIKE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Interval_Time(1),
	combout => \Selector21~0_combout\);

-- Location: LABCELL_X35_Y2_N45
\avm_pushSpike_writedata[6]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_writedata[6]$latch~combout\ = ( \Selector21~0_combout\ & ( (!\avm_pushSpike_address[15]~2_combout\) # (\avm_pushSpike_writedata[6]$latch~combout\) ) ) # ( !\Selector21~0_combout\ & ( (\avm_pushSpike_writedata[6]$latch~combout\ & 
-- \avm_pushSpike_address[15]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_pushSpike_writedata[6]$latch~combout\,
	datad => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_Selector21~0_combout\,
	combout => \avm_pushSpike_writedata[6]$latch~combout\);

-- Location: IOIBUF_X44_Y0_N35
\avs_pullSynapse_writedata[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(7),
	o => \avs_pullSynapse_writedata[7]~input_o\);

-- Location: LABCELL_X38_Y1_N42
\Interval_IN[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- Interval_IN(2) = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & (Interval_IN(2))) # (\statePullSynapse.STATE_PATCH~q\ & ((\avs_pullSynapse_writedata[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datab => ALT_INV_Interval_IN(2),
	datac => \ALT_INV_avs_pullSynapse_writedata[7]~input_o\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Interval_IN(2));

-- Location: LABCELL_X35_Y1_N51
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( Interval_Time(2) ) + ( Interval_IN(2) ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( Interval_Time(2) ) + ( Interval_IN(2) ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Interval_IN(2),
	datad => ALT_INV_Interval_Time(2),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X35_Y1_N53
\Interval_Time[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Interval_Time(2));

-- Location: LABCELL_X35_Y1_N18
\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ( Interval_Time(2) & ( \statePushSPike.STATE_SPIKE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	dataf => ALT_INV_Interval_Time(2),
	combout => \Selector20~0_combout\);

-- Location: LABCELL_X35_Y1_N15
\avm_pushSpike_writedata[7]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_writedata[7]$latch~combout\ = ( \avm_pushSpike_address[15]~2_combout\ & ( \avm_pushSpike_writedata[7]$latch~combout\ ) ) # ( !\avm_pushSpike_address[15]~2_combout\ & ( \Selector20~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector20~0_combout\,
	datac => \ALT_INV_avm_pushSpike_writedata[7]$latch~combout\,
	datae => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	combout => \avm_pushSpike_writedata[7]$latch~combout\);

-- Location: IOIBUF_X48_Y0_N58
\avs_pullSynapse_writedata[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(8),
	o => \avs_pullSynapse_writedata[8]~input_o\);

-- Location: LABCELL_X38_Y1_N45
\Interval_IN[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- Interval_IN(3) = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & (Interval_IN(3))) # (\statePullSynapse.STATE_PATCH~q\ & ((\avs_pullSynapse_writedata[8]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	datac => ALT_INV_Interval_IN(3),
	datad => \ALT_INV_avs_pullSynapse_writedata[8]~input_o\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Interval_IN(3));

-- Location: LABCELL_X35_Y1_N54
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( Interval_Time(3) ) + ( Interval_IN(3) ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( Interval_Time(3) ) + ( Interval_IN(3) ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Interval_IN(3),
	datad => ALT_INV_Interval_Time(3),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X35_Y1_N56
\Interval_Time[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add1~33_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Interval_Time(3));

-- Location: LABCELL_X34_Y2_N54
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( \statePushSPike.STATE_SPIKE~q\ & ( Interval_Time(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Interval_Time(3),
	dataf => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	combout => \Selector19~0_combout\);

-- Location: LABCELL_X34_Y2_N9
\avm_pushSpike_writedata[8]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_writedata[8]$latch~combout\ = ( \avm_pushSpike_address[15]~2_combout\ & ( \Selector19~0_combout\ & ( \avm_pushSpike_writedata[8]$latch~combout\ ) ) ) # ( !\avm_pushSpike_address[15]~2_combout\ & ( \Selector19~0_combout\ ) ) # ( 
-- \avm_pushSpike_address[15]~2_combout\ & ( !\Selector19~0_combout\ & ( \avm_pushSpike_writedata[8]$latch~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_pushSpike_writedata[8]$latch~combout\,
	datae => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	dataf => \ALT_INV_Selector19~0_combout\,
	combout => \avm_pushSpike_writedata[8]$latch~combout\);

-- Location: IOIBUF_X52_Y0_N52
\avs_pullSynapse_writedata[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(9),
	o => \avs_pullSynapse_writedata[9]~input_o\);

-- Location: LABCELL_X39_Y1_N30
\Interval_IN[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- Interval_IN(4) = ( !\rst_soma~input_o\ & ( (!\statePullSynapse.STATE_PATCH~q\ & (Interval_IN(4))) # (\statePullSynapse.STATE_PATCH~q\ & ((\avs_pullSynapse_writedata[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Interval_IN(4),
	datac => \ALT_INV_avs_pullSynapse_writedata[9]~input_o\,
	datad => \ALT_INV_statePullSynapse.STATE_PATCH~q\,
	dataf => \ALT_INV_rst_soma~input_o\,
	combout => Interval_IN(4));

-- Location: LABCELL_X35_Y1_N57
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( Interval_Time(4) ) + ( Interval_IN(4) ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Interval_IN(4),
	datad => ALT_INV_Interval_Time(4),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\);

-- Location: FF_X35_Y1_N59
\Interval_Time[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \Add1~37_sumout\,
	clrn => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	ena => \patchMembrane~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Interval_Time(4));

-- Location: LABCELL_X35_Y2_N9
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \statePushSPike.STATE_SPIKE~q\ & ( Interval_Time(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Interval_Time(4),
	dataf => \ALT_INV_statePushSPike.STATE_SPIKE~q\,
	combout => \Selector18~0_combout\);

-- Location: LABCELL_X35_Y2_N39
\avm_pushSpike_writedata[9]$latch\ : cyclonev_lcell_comb
-- Equation(s):
-- \avm_pushSpike_writedata[9]$latch~combout\ = ( \Selector18~0_combout\ & ( (!\avm_pushSpike_address[15]~2_combout\) # (\avm_pushSpike_writedata[9]$latch~combout\) ) ) # ( !\Selector18~0_combout\ & ( (\avm_pushSpike_address[15]~2_combout\ & 
-- \avm_pushSpike_writedata[9]$latch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avm_pushSpike_address[15]~2_combout\,
	datac => \ALT_INV_avm_pushSpike_writedata[9]$latch~combout\,
	dataf => \ALT_INV_Selector18~0_combout\,
	combout => \avm_pushSpike_writedata[9]$latch~combout\);

-- Location: FF_X35_Y1_N16
\dbg_TIME[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \Interval_Time[-5]~q\,
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_TIME[0]~reg0_q\);

-- Location: FF_X36_Y1_N2
\dbg_TIME[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \Interval_Time[-4]~q\,
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_TIME[1]~reg0_q\);

-- Location: FF_X35_Y1_N19
\dbg_TIME[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \Interval_Time[-3]~q\,
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_TIME[2]~reg0_q\);

-- Location: FF_X36_Y1_N47
\dbg_TIME[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \Interval_Time[-2]~q\,
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_TIME[3]~reg0_q\);

-- Location: FF_X35_Y1_N13
\dbg_TIME[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \Interval_Time[-1]~q\,
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_TIME[4]~reg0_q\);

-- Location: FF_X35_Y1_N28
\dbg_TIME[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => Interval_Time(0),
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_TIME[5]~reg0_q\);

-- Location: FF_X35_Y1_N10
\dbg_TIME[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => Interval_Time(1),
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_TIME[6]~reg0_q\);

-- Location: FF_X35_Y1_N8
\dbg_TIME[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => Interval_Time(2),
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_TIME[7]~reg0_q\);

-- Location: FF_X35_Y1_N22
\dbg_TIME[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => Interval_Time(3),
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_TIME[8]~reg0_q\);

-- Location: MLABCELL_X36_Y1_N57
\dbg_TIME[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dbg_TIME[9]~reg0feeder_combout\ = ( Interval_Time(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Interval_Time(4),
	combout => \dbg_TIME[9]~reg0feeder_combout\);

-- Location: FF_X36_Y1_N59
\dbg_TIME[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \dbg_TIME[9]~reg0feeder_combout\,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_TIME[9]~reg0_q\);

-- Location: FF_X36_Y1_N52
\dbg_Membrane[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \Membrane[-8]~q\,
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_Membrane[0]~reg0_q\);

-- Location: FF_X36_Y1_N7
\dbg_Membrane[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \Membrane[-7]~q\,
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_Membrane[1]~reg0_q\);

-- Location: MLABCELL_X36_Y1_N39
\dbg_Membrane[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dbg_Membrane[2]~reg0feeder_combout\ = ( \Membrane[-6]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Membrane[-6]~q\,
	combout => \dbg_Membrane[2]~reg0feeder_combout\);

-- Location: FF_X36_Y1_N40
\dbg_Membrane[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \dbg_Membrane[2]~reg0feeder_combout\,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_Membrane[2]~reg0_q\);

-- Location: FF_X36_Y1_N43
\dbg_Membrane[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \Membrane[-5]~q\,
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_Membrane[3]~reg0_q\);

-- Location: FF_X36_Y1_N16
\dbg_Membrane[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \Membrane[-4]~q\,
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_Membrane[4]~reg0_q\);

-- Location: FF_X36_Y1_N35
\dbg_Membrane[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \Membrane[-3]~q\,
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_Membrane[5]~reg0_q\);

-- Location: FF_X36_Y1_N31
\dbg_Membrane[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \Membrane[-2]~q\,
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_Membrane[6]~reg0_q\);

-- Location: FF_X36_Y1_N37
\dbg_Membrane[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => \Membrane[-1]~q\,
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_Membrane[7]~reg0_q\);

-- Location: FF_X37_Y1_N55
\dbg_Membrane[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => Membrane(0),
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_Membrane[8]~reg0_q\);

-- Location: FF_X36_Y1_N25
\dbg_Membrane[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => Membrane(1),
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_Membrane[9]~reg0_q\);

-- Location: MLABCELL_X36_Y1_N9
\dbg_Membrane[10]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dbg_Membrane[10]~reg0feeder_combout\ = ( Membrane(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Membrane(2),
	combout => \dbg_Membrane[10]~reg0feeder_combout\);

-- Location: FF_X36_Y1_N10
\dbg_Membrane[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \dbg_Membrane[10]~reg0feeder_combout\,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_Membrane[10]~reg0_q\);

-- Location: FF_X36_Y1_N20
\dbg_Membrane[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => Membrane(3),
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_Membrane[11]~reg0_q\);

-- Location: FF_X36_Y1_N28
\dbg_Membrane[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => Membrane(4),
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_Membrane[12]~reg0_q\);

-- Location: FF_X36_Y1_N4
\dbg_Membrane[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	asdata => Membrane(5),
	sload => VCC,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_Membrane[13]~reg0_q\);

-- Location: MLABCELL_X36_Y1_N48
\dbg_Membrane[14]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dbg_Membrane[14]~reg0feeder_combout\ = ( Membrane(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Membrane(6),
	combout => \dbg_Membrane[14]~reg0feeder_combout\);

-- Location: FF_X36_Y1_N49
\dbg_Membrane[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \dbg_Membrane[14]~reg0feeder_combout\,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_Membrane[14]~reg0_q\);

-- Location: MLABCELL_X36_Y1_N54
\dbg_Membrane[15]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \dbg_Membrane[15]~reg0feeder_combout\ = ( Membrane(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_Membrane(7),
	combout => \dbg_Membrane[15]~reg0feeder_combout\);

-- Location: FF_X36_Y1_N55
\dbg_Membrane[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_soma~inputCLKENA0_outclk\,
	d => \dbg_Membrane[15]~reg0feeder_combout\,
	ena => \ALT_INV_CALCULATE_MEMBRANE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dbg_Membrane[15]~reg0_q\);

-- Location: IOIBUF_X33_Y115_N41
\avs_fetchSoma_address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_address(0),
	o => \avs_fetchSoma_address[0]~input_o\);

-- Location: IOIBUF_X77_Y115_N1
\avs_fetchSoma_address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_fetchSoma_address(1),
	o => \avs_fetchSoma_address[1]~input_o\);

-- Location: IOIBUF_X113_Y115_N1
\avs_pullSynapse_address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(0),
	o => \avs_pullSynapse_address[0]~input_o\);

-- Location: IOIBUF_X121_Y79_N21
\avs_pullSynapse_address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(1),
	o => \avs_pullSynapse_address[1]~input_o\);

-- Location: IOIBUF_X121_Y87_N55
\avs_pullSynapse_address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(2),
	o => \avs_pullSynapse_address[2]~input_o\);

-- Location: IOIBUF_X92_Y115_N52
\avs_pullSynapse_address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(3),
	o => \avs_pullSynapse_address[3]~input_o\);

-- Location: IOIBUF_X48_Y115_N92
\avs_pullSynapse_address[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(4),
	o => \avs_pullSynapse_address[4]~input_o\);

-- Location: IOIBUF_X90_Y0_N41
\avs_pullSynapse_address[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(5),
	o => \avs_pullSynapse_address[5]~input_o\);

-- Location: IOIBUF_X121_Y39_N38
\avs_pullSynapse_address[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(6),
	o => \avs_pullSynapse_address[6]~input_o\);

-- Location: IOIBUF_X71_Y115_N18
\avs_pullSynapse_address[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(7),
	o => \avs_pullSynapse_address[7]~input_o\);

-- Location: IOIBUF_X121_Y41_N4
\avs_pullSynapse_writedata[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(10),
	o => \avs_pullSynapse_writedata[10]~input_o\);

-- Location: IOIBUF_X121_Y13_N78
\avs_pullSynapse_writedata[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(11),
	o => \avs_pullSynapse_writedata[11]~input_o\);

-- Location: IOIBUF_X121_Y72_N4
\avs_pullSynapse_writedata[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(12),
	o => \avs_pullSynapse_writedata[12]~input_o\);

-- Location: IOIBUF_X22_Y115_N1
\avs_pullSynapse_writedata[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(13),
	o => \avs_pullSynapse_writedata[13]~input_o\);

-- Location: IOIBUF_X88_Y115_N35
\avs_pullSynapse_writedata[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(14),
	o => \avs_pullSynapse_writedata[14]~input_o\);

-- Location: IOIBUF_X40_Y115_N58
\avs_pullSynapse_writedata[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(15),
	o => \avs_pullSynapse_writedata[15]~input_o\);

-- Location: LABCELL_X24_Y49_N3
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


