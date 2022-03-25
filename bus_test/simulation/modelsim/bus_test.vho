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

-- DATE "03/25/2022 12:51:46"

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

ENTITY 	shift_reg_post_add IS
    PORT (
	sys_clk : IN std_logic;
	sys_rst : IN std_logic;
	STDP_patchPREneuron : IN std_logic;
	STDP_patchPOSTneuron : IN std_logic;
	STDP_DATAIN_PRE_FIFO : IN std_logic_vector(7 DOWNTO 0);
	STDP_DATAIN_POST_FIFO : IN std_logic_vector(7 DOWNTO 0);
	synapsePush : IN std_logic;
	STDP_OUT : OUT std_logic_vector(7 DOWNTO 0);
	dbg_PRE_0 : OUT std_logic_vector(7 DOWNTO 0);
	dbg_PRE_1 : OUT std_logic_vector(7 DOWNTO 0);
	dbg_PRE_2 : OUT std_logic_vector(7 DOWNTO 0);
	dbg_PRE_3 : OUT std_logic_vector(7 DOWNTO 0);
	dbg_POST_0 : OUT std_logic_vector(7 DOWNTO 0);
	dbg_POST_1 : OUT std_logic_vector(7 DOWNTO 0);
	dbg_POST_2 : OUT std_logic_vector(7 DOWNTO 0);
	dbg_POST_3 : OUT std_logic_vector(7 DOWNTO 0);
	dbg_DATA_CAL_POST : OUT std_logic_vector(7 DOWNTO 0);
	dbg_ADDR : OUT std_logic_vector(2 DOWNTO 0);
	dbg_SUM : OUT std_logic_vector(7 DOWNTO 0);
	dbg_TEMP_SUM : OUT std_logic_vector(7 DOWNTO 0)
	);
END shift_reg_post_add;

-- Design Ports Information
-- STDP_OUT[0]	=>  Location: PIN_AN23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_OUT[1]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_OUT[2]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_OUT[3]	=>  Location: PIN_AP24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_OUT[4]	=>  Location: PIN_AM23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_OUT[5]	=>  Location: PIN_AN26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_OUT[6]	=>  Location: PIN_AP27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_OUT[7]	=>  Location: PIN_AP25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_0[0]	=>  Location: PIN_AP21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_0[1]	=>  Location: PIN_AM14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_0[2]	=>  Location: PIN_AP12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_0[3]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_0[4]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_0[5]	=>  Location: PIN_AP6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_0[6]	=>  Location: PIN_AN12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_0[7]	=>  Location: PIN_AM26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_1[0]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_1[1]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_1[2]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_1[3]	=>  Location: PIN_AN5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_1[4]	=>  Location: PIN_AN7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_1[5]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_1[6]	=>  Location: PIN_AN19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_1[7]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_2[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_2[1]	=>  Location: PIN_AN21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_2[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_2[3]	=>  Location: PIN_AL10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_2[4]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_2[5]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_2[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_2[7]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_3[0]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_3[1]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_3[2]	=>  Location: PIN_AM8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_3[3]	=>  Location: PIN_AM10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_3[4]	=>  Location: PIN_AP15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_3[5]	=>  Location: PIN_AN8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_3[6]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_PRE_3[7]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_0[0]	=>  Location: PIN_AN16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_0[1]	=>  Location: PIN_AP16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_0[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_0[3]	=>  Location: PIN_AM21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_0[4]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_0[5]	=>  Location: PIN_AM18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_0[6]	=>  Location: PIN_AK17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_0[7]	=>  Location: PIN_AL18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_1[0]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_1[1]	=>  Location: PIN_AP7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_1[2]	=>  Location: PIN_AN13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_1[3]	=>  Location: PIN_AP14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_1[4]	=>  Location: PIN_AL16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_1[5]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_1[6]	=>  Location: PIN_AL17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_1[7]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_2[0]	=>  Location: PIN_AN14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_2[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_2[2]	=>  Location: PIN_AM28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_2[3]	=>  Location: PIN_AM9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_2[4]	=>  Location: PIN_AN28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_2[5]	=>  Location: PIN_AN9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_2[6]	=>  Location: PIN_AM13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_2[7]	=>  Location: PIN_AM16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_3[0]	=>  Location: PIN_AP17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_3[1]	=>  Location: PIN_AN17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_3[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_3[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_3[4]	=>  Location: PIN_AN18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_3[5]	=>  Location: PIN_AP20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_3[6]	=>  Location: PIN_AM19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_POST_3[7]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_DATA_CAL_POST[0]	=>  Location: PIN_AL11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_DATA_CAL_POST[1]	=>  Location: PIN_AL15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_DATA_CAL_POST[2]	=>  Location: PIN_AP9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_DATA_CAL_POST[3]	=>  Location: PIN_AM11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_DATA_CAL_POST[4]	=>  Location: PIN_AP10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_DATA_CAL_POST[5]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_DATA_CAL_POST[6]	=>  Location: PIN_AM15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_DATA_CAL_POST[7]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[0]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[1]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_ADDR[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_SUM[0]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_SUM[1]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_SUM[2]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_SUM[3]	=>  Location: PIN_AP26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_SUM[4]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_SUM[5]	=>  Location: PIN_AM24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_SUM[6]	=>  Location: PIN_AN24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_SUM[7]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TEMP_SUM[0]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TEMP_SUM[1]	=>  Location: PIN_AN27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TEMP_SUM[2]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TEMP_SUM[3]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TEMP_SUM[4]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TEMP_SUM[5]	=>  Location: PIN_AP30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TEMP_SUM[6]	=>  Location: PIN_AL22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dbg_TEMP_SUM[7]	=>  Location: PIN_AM20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_clk	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- synapsePush	=>  Location: PIN_AK20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_rst	=>  Location: PIN_AP22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_patchPREneuron	=>  Location: PIN_AP29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_patchPOSTneuron	=>  Location: PIN_AN22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_DATAIN_POST_FIFO[0]	=>  Location: PIN_AJ15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_DATAIN_PRE_FIFO[0]	=>  Location: PIN_AL21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_DATAIN_POST_FIFO[1]	=>  Location: PIN_AN11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_DATAIN_PRE_FIFO[1]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_DATAIN_POST_FIFO[2]	=>  Location: PIN_AK15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_DATAIN_PRE_FIFO[2]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_DATAIN_POST_FIFO[3]	=>  Location: PIN_AL12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_DATAIN_PRE_FIFO[3]	=>  Location: PIN_AK19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_DATAIN_POST_FIFO[4]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_DATAIN_PRE_FIFO[4]	=>  Location: PIN_AP19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_DATAIN_POST_FIFO[5]	=>  Location: PIN_AL13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_DATAIN_PRE_FIFO[5]	=>  Location: PIN_AL20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_DATAIN_POST_FIFO[6]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_DATAIN_PRE_FIFO[6]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_DATAIN_POST_FIFO[7]	=>  Location: PIN_AP11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STDP_DATAIN_PRE_FIFO[7]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF shift_reg_post_add IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sys_clk : std_logic;
SIGNAL ww_sys_rst : std_logic;
SIGNAL ww_STDP_patchPREneuron : std_logic;
SIGNAL ww_STDP_patchPOSTneuron : std_logic;
SIGNAL ww_STDP_DATAIN_PRE_FIFO : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_STDP_DATAIN_POST_FIFO : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_synapsePush : std_logic;
SIGNAL ww_STDP_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dbg_PRE_0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dbg_PRE_1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dbg_PRE_2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dbg_PRE_3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dbg_POST_0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dbg_POST_1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dbg_POST_2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dbg_POST_3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dbg_DATA_CAL_POST : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dbg_ADDR : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dbg_SUM : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dbg_TEMP_SUM : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sys_clk~input_o\ : std_logic;
SIGNAL \sys_clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \STDP_patchPREneuron~input_o\ : std_logic;
SIGNAL \STDP_patchPOSTneuron~input_o\ : std_logic;
SIGNAL \PRE_STDP|top[1]~0_combout\ : std_logic;
SIGNAL \PRE_STDP|top[1]~feeder_combout\ : std_logic;
SIGNAL \sys_rst~input_o\ : std_logic;
SIGNAL \PRE_STDP|top[0]~1_combout\ : std_logic;
SIGNAL \STDP_DATAIN_POST_FIFO[0]~input_o\ : std_logic;
SIGNAL \STDP_DATAIN_PRE_FIFO[0]~input_o\ : std_logic;
SIGNAL \PRE_STDP|Add1~34_cout\ : std_logic;
SIGNAL \PRE_STDP|Add1~1_sumout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \PRE_STDP|REG[0][-4]~q\ : std_logic;
SIGNAL \POST_STDP|Add4~1_sumout\ : std_logic;
SIGNAL \POST_STDP|Add3~1_sumout\ : std_logic;
SIGNAL \POST_STDP|Add1~1_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[0][-4]~q\ : std_logic;
SIGNAL \POST_STDP|top[0]~1_combout\ : std_logic;
SIGNAL \POST_STDP|top[1]~0_combout\ : std_logic;
SIGNAL \POST_STDP|LessThan2~0_combout\ : std_logic;
SIGNAL \POST_STDP|REG[1][-4]~q\ : std_logic;
SIGNAL \POST_STDP|REG[2][-4]~q\ : std_logic;
SIGNAL \POST_STDP|Add5~1_sumout\ : std_logic;
SIGNAL \POST_STDP|LessThan4~0_combout\ : std_logic;
SIGNAL \POST_STDP|REG[3][-4]~q\ : std_logic;
SIGNAL \idx~2_combout\ : std_logic;
SIGNAL \idx~3_combout\ : std_logic;
SIGNAL \idx~1_combout\ : std_logic;
SIGNAL \idx~0_combout\ : std_logic;
SIGNAL \POST_STDP|POP_OUT~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \CAL_ENA~q\ : std_logic;
SIGNAL \POST_STDP|POP_OUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \PRE_STDP|Add6~1_sumout\ : std_logic;
SIGNAL \PRE_STDP|Add3~1_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[1][-4]~feeder_combout\ : std_logic;
SIGNAL \PRE_STDP|REG~0_combout\ : std_logic;
SIGNAL \PRE_STDP|REG[1][-4]~1_combout\ : std_logic;
SIGNAL \PRE_STDP|REG[1][-4]~q\ : std_logic;
SIGNAL \PRE_STDP|Add7~34_cout\ : std_logic;
SIGNAL \PRE_STDP|Add7~35\ : std_logic;
SIGNAL \PRE_STDP|Add7~1_sumout\ : std_logic;
SIGNAL \PRE_STDP|total_SUM~0_combout\ : std_logic;
SIGNAL \PRE_STDP|Add4~1_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[2][-4]~feeder_combout\ : std_logic;
SIGNAL \PRE_STDP|REG~2_combout\ : std_logic;
SIGNAL \PRE_STDP|REG[2][-4]~3_combout\ : std_logic;
SIGNAL \PRE_STDP|REG[2][-4]~q\ : std_logic;
SIGNAL \PRE_STDP|Add9~34_cout\ : std_logic;
SIGNAL \PRE_STDP|Add9~35\ : std_logic;
SIGNAL \PRE_STDP|Add9~1_sumout\ : std_logic;
SIGNAL \PRE_STDP|total_SUM~1_combout\ : std_logic;
SIGNAL \PRE_STDP|Add5~1_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG~4_combout\ : std_logic;
SIGNAL \PRE_STDP|REG[3][3]~5_combout\ : std_logic;
SIGNAL \PRE_STDP|REG[3][-4]~q\ : std_logic;
SIGNAL \PRE_STDP|Add11~34_cout\ : std_logic;
SIGNAL \PRE_STDP|Add11~35\ : std_logic;
SIGNAL \PRE_STDP|Add11~1_sumout\ : std_logic;
SIGNAL \PRE_STDP|DATA_CAL_OUT~0_combout\ : std_logic;
SIGNAL \PRE_SUM[-4]~q\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \synapsePush~input_o\ : std_logic;
SIGNAL \STDP_OUT[0]~reg0_q\ : std_logic;
SIGNAL \STDP_DATAIN_POST_FIFO[1]~input_o\ : std_logic;
SIGNAL \POST_STDP|Add1~2\ : std_logic;
SIGNAL \POST_STDP|Add1~3\ : std_logic;
SIGNAL \POST_STDP|Add1~5_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[0][-3]~q\ : std_logic;
SIGNAL \POST_STDP|Add4~2\ : std_logic;
SIGNAL \POST_STDP|Add4~3\ : std_logic;
SIGNAL \POST_STDP|Add4~5_sumout\ : std_logic;
SIGNAL \POST_STDP|Add3~2\ : std_logic;
SIGNAL \POST_STDP|Add3~3\ : std_logic;
SIGNAL \POST_STDP|Add3~5_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[1][-3]~q\ : std_logic;
SIGNAL \POST_STDP|REG[2][-3]~q\ : std_logic;
SIGNAL \POST_STDP|Add5~2\ : std_logic;
SIGNAL \POST_STDP|Add5~3\ : std_logic;
SIGNAL \POST_STDP|Add5~5_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[3][-3]~q\ : std_logic;
SIGNAL \POST_STDP|POP_OUT~1_combout\ : std_logic;
SIGNAL \STDP_DATAIN_PRE_FIFO[1]~input_o\ : std_logic;
SIGNAL \PRE_STDP|Add1~2\ : std_logic;
SIGNAL \PRE_STDP|Add1~5_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[0][-3]~q\ : std_logic;
SIGNAL \PRE_STDP|Add6~2\ : std_logic;
SIGNAL \PRE_STDP|Add6~3\ : std_logic;
SIGNAL \PRE_STDP|Add6~5_sumout\ : std_logic;
SIGNAL \PRE_STDP|Add3~2\ : std_logic;
SIGNAL \PRE_STDP|Add3~3\ : std_logic;
SIGNAL \PRE_STDP|Add3~5_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[1][-3]~q\ : std_logic;
SIGNAL \PRE_STDP|Add7~2\ : std_logic;
SIGNAL \PRE_STDP|Add7~3\ : std_logic;
SIGNAL \PRE_STDP|Add7~5_sumout\ : std_logic;
SIGNAL \PRE_STDP|total_SUM~2_combout\ : std_logic;
SIGNAL \PRE_STDP|Add4~2\ : std_logic;
SIGNAL \PRE_STDP|Add4~3\ : std_logic;
SIGNAL \PRE_STDP|Add4~5_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[2][-3]~q\ : std_logic;
SIGNAL \PRE_STDP|Add9~2\ : std_logic;
SIGNAL \PRE_STDP|Add9~3\ : std_logic;
SIGNAL \PRE_STDP|Add9~5_sumout\ : std_logic;
SIGNAL \PRE_STDP|total_SUM~3_combout\ : std_logic;
SIGNAL \PRE_STDP|Add5~2\ : std_logic;
SIGNAL \PRE_STDP|Add5~3\ : std_logic;
SIGNAL \PRE_STDP|Add5~5_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[3][-3]~q\ : std_logic;
SIGNAL \PRE_STDP|Add11~2\ : std_logic;
SIGNAL \PRE_STDP|Add11~3\ : std_logic;
SIGNAL \PRE_STDP|Add11~5_sumout\ : std_logic;
SIGNAL \PRE_STDP|DATA_CAL_OUT~1_combout\ : std_logic;
SIGNAL \PRE_SUM[-3]~q\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \STDP_OUT[1]~reg0_q\ : std_logic;
SIGNAL \STDP_DATAIN_POST_FIFO[2]~input_o\ : std_logic;
SIGNAL \POST_STDP|Add1~6\ : std_logic;
SIGNAL \POST_STDP|Add1~7\ : std_logic;
SIGNAL \POST_STDP|Add1~9_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[0][-2]~q\ : std_logic;
SIGNAL \POST_STDP|Add3~6\ : std_logic;
SIGNAL \POST_STDP|Add3~7\ : std_logic;
SIGNAL \POST_STDP|Add3~9_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[1][-2]~q\ : std_logic;
SIGNAL \POST_STDP|Add4~6\ : std_logic;
SIGNAL \POST_STDP|Add4~7\ : std_logic;
SIGNAL \POST_STDP|Add4~9_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[2][-2]~q\ : std_logic;
SIGNAL \POST_STDP|Add5~6\ : std_logic;
SIGNAL \POST_STDP|Add5~7\ : std_logic;
SIGNAL \POST_STDP|Add5~9_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[3][-2]~q\ : std_logic;
SIGNAL \POST_STDP|POP_OUT~2_combout\ : std_logic;
SIGNAL \POST_STDP|POP_OUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \STDP_DATAIN_PRE_FIFO[2]~input_o\ : std_logic;
SIGNAL \PRE_STDP|Add1~6\ : std_logic;
SIGNAL \PRE_STDP|Add1~9_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[0][-2]~q\ : std_logic;
SIGNAL \PRE_STDP|Add6~6\ : std_logic;
SIGNAL \PRE_STDP|Add6~7\ : std_logic;
SIGNAL \PRE_STDP|Add6~9_sumout\ : std_logic;
SIGNAL \PRE_STDP|Add3~6\ : std_logic;
SIGNAL \PRE_STDP|Add3~7\ : std_logic;
SIGNAL \PRE_STDP|Add3~9_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[1][-2]~q\ : std_logic;
SIGNAL \PRE_STDP|Add7~6\ : std_logic;
SIGNAL \PRE_STDP|Add7~7\ : std_logic;
SIGNAL \PRE_STDP|Add7~9_sumout\ : std_logic;
SIGNAL \PRE_STDP|total_SUM~4_combout\ : std_logic;
SIGNAL \PRE_STDP|Add4~6\ : std_logic;
SIGNAL \PRE_STDP|Add4~7\ : std_logic;
SIGNAL \PRE_STDP|Add4~9_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[2][-2]~q\ : std_logic;
SIGNAL \PRE_STDP|Add9~6\ : std_logic;
SIGNAL \PRE_STDP|Add9~7\ : std_logic;
SIGNAL \PRE_STDP|Add9~9_sumout\ : std_logic;
SIGNAL \PRE_STDP|total_SUM~5_combout\ : std_logic;
SIGNAL \PRE_STDP|Add5~6\ : std_logic;
SIGNAL \PRE_STDP|Add5~7\ : std_logic;
SIGNAL \PRE_STDP|Add5~9_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[3][-2]~q\ : std_logic;
SIGNAL \PRE_STDP|Add11~6\ : std_logic;
SIGNAL \PRE_STDP|Add11~7\ : std_logic;
SIGNAL \PRE_STDP|Add11~9_sumout\ : std_logic;
SIGNAL \PRE_STDP|DATA_CAL_OUT~2_combout\ : std_logic;
SIGNAL \PRE_SUM[-2]~q\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \STDP_OUT[2]~reg0feeder_combout\ : std_logic;
SIGNAL \STDP_OUT[2]~reg0_q\ : std_logic;
SIGNAL \STDP_DATAIN_POST_FIFO[3]~input_o\ : std_logic;
SIGNAL \POST_STDP|Add1~10\ : std_logic;
SIGNAL \POST_STDP|Add1~11\ : std_logic;
SIGNAL \POST_STDP|Add1~13_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[0][-1]~q\ : std_logic;
SIGNAL \POST_STDP|Add4~10\ : std_logic;
SIGNAL \POST_STDP|Add4~11\ : std_logic;
SIGNAL \POST_STDP|Add4~13_sumout\ : std_logic;
SIGNAL \POST_STDP|Add3~10\ : std_logic;
SIGNAL \POST_STDP|Add3~11\ : std_logic;
SIGNAL \POST_STDP|Add3~13_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[1][-1]~q\ : std_logic;
SIGNAL \POST_STDP|REG[2][-1]~q\ : std_logic;
SIGNAL \POST_STDP|Add5~10\ : std_logic;
SIGNAL \POST_STDP|Add5~11\ : std_logic;
SIGNAL \POST_STDP|Add5~13_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[3][-1]~q\ : std_logic;
SIGNAL \POST_STDP|POP_OUT~3_combout\ : std_logic;
SIGNAL \POST_STDP|POP_OUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \STDP_DATAIN_PRE_FIFO[3]~input_o\ : std_logic;
SIGNAL \PRE_STDP|Add1~10\ : std_logic;
SIGNAL \PRE_STDP|Add1~13_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[0][-1]~q\ : std_logic;
SIGNAL \PRE_STDP|Add6~10\ : std_logic;
SIGNAL \PRE_STDP|Add6~11\ : std_logic;
SIGNAL \PRE_STDP|Add6~13_sumout\ : std_logic;
SIGNAL \PRE_STDP|Add3~10\ : std_logic;
SIGNAL \PRE_STDP|Add3~11\ : std_logic;
SIGNAL \PRE_STDP|Add3~13_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[1][-1]~q\ : std_logic;
SIGNAL \PRE_STDP|Add7~10\ : std_logic;
SIGNAL \PRE_STDP|Add7~11\ : std_logic;
SIGNAL \PRE_STDP|Add7~13_sumout\ : std_logic;
SIGNAL \PRE_STDP|total_SUM~6_combout\ : std_logic;
SIGNAL \PRE_STDP|Add4~10\ : std_logic;
SIGNAL \PRE_STDP|Add4~11\ : std_logic;
SIGNAL \PRE_STDP|Add4~13_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[2][-1]~q\ : std_logic;
SIGNAL \PRE_STDP|Add9~10\ : std_logic;
SIGNAL \PRE_STDP|Add9~11\ : std_logic;
SIGNAL \PRE_STDP|Add9~13_sumout\ : std_logic;
SIGNAL \PRE_STDP|total_SUM~7_combout\ : std_logic;
SIGNAL \PRE_STDP|Add5~10\ : std_logic;
SIGNAL \PRE_STDP|Add5~11\ : std_logic;
SIGNAL \PRE_STDP|Add5~13_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[3][-1]~q\ : std_logic;
SIGNAL \PRE_STDP|Add11~10\ : std_logic;
SIGNAL \PRE_STDP|Add11~11\ : std_logic;
SIGNAL \PRE_STDP|Add11~13_sumout\ : std_logic;
SIGNAL \PRE_STDP|DATA_CAL_OUT~3_combout\ : std_logic;
SIGNAL \PRE_SUM[-1]~q\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \STDP_OUT[3]~reg0feeder_combout\ : std_logic;
SIGNAL \STDP_OUT[3]~reg0_q\ : std_logic;
SIGNAL \STDP_DATAIN_POST_FIFO[4]~input_o\ : std_logic;
SIGNAL \POST_STDP|Add1~14\ : std_logic;
SIGNAL \POST_STDP|Add1~15\ : std_logic;
SIGNAL \POST_STDP|Add1~17_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[0][0]~q\ : std_logic;
SIGNAL \POST_STDP|Add4~14\ : std_logic;
SIGNAL \POST_STDP|Add4~15\ : std_logic;
SIGNAL \POST_STDP|Add4~17_sumout\ : std_logic;
SIGNAL \POST_STDP|Add3~14\ : std_logic;
SIGNAL \POST_STDP|Add3~15\ : std_logic;
SIGNAL \POST_STDP|Add3~17_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[1][0]~q\ : std_logic;
SIGNAL \POST_STDP|REG[2][0]~q\ : std_logic;
SIGNAL \POST_STDP|Add5~14\ : std_logic;
SIGNAL \POST_STDP|Add5~15\ : std_logic;
SIGNAL \POST_STDP|Add5~17_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[3][0]~q\ : std_logic;
SIGNAL \POST_STDP|POP_OUT~4_combout\ : std_logic;
SIGNAL \STDP_DATAIN_PRE_FIFO[4]~input_o\ : std_logic;
SIGNAL \PRE_STDP|Add1~14\ : std_logic;
SIGNAL \PRE_STDP|Add1~17_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[0][0]~q\ : std_logic;
SIGNAL \PRE_STDP|Add6~14\ : std_logic;
SIGNAL \PRE_STDP|Add6~15\ : std_logic;
SIGNAL \PRE_STDP|Add6~17_sumout\ : std_logic;
SIGNAL \PRE_STDP|Add3~14\ : std_logic;
SIGNAL \PRE_STDP|Add3~15\ : std_logic;
SIGNAL \PRE_STDP|Add3~17_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[1][0]~q\ : std_logic;
SIGNAL \PRE_STDP|Add7~14\ : std_logic;
SIGNAL \PRE_STDP|Add7~15\ : std_logic;
SIGNAL \PRE_STDP|Add7~17_sumout\ : std_logic;
SIGNAL \PRE_STDP|total_SUM~8_combout\ : std_logic;
SIGNAL \PRE_STDP|Add4~14\ : std_logic;
SIGNAL \PRE_STDP|Add4~15\ : std_logic;
SIGNAL \PRE_STDP|Add4~17_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[2][0]~q\ : std_logic;
SIGNAL \PRE_STDP|Add9~14\ : std_logic;
SIGNAL \PRE_STDP|Add9~15\ : std_logic;
SIGNAL \PRE_STDP|Add9~17_sumout\ : std_logic;
SIGNAL \PRE_STDP|total_SUM~9_combout\ : std_logic;
SIGNAL \PRE_STDP|Add5~14\ : std_logic;
SIGNAL \PRE_STDP|Add5~15\ : std_logic;
SIGNAL \PRE_STDP|Add5~17_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[3][0]~q\ : std_logic;
SIGNAL \PRE_STDP|Add11~14\ : std_logic;
SIGNAL \PRE_STDP|Add11~15\ : std_logic;
SIGNAL \PRE_STDP|Add11~17_sumout\ : std_logic;
SIGNAL \PRE_STDP|DATA_CAL_OUT~4_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \STDP_OUT[4]~reg0feeder_combout\ : std_logic;
SIGNAL \STDP_OUT[4]~reg0_q\ : std_logic;
SIGNAL \STDP_DATAIN_POST_FIFO[5]~input_o\ : std_logic;
SIGNAL \STDP_DATAIN_PRE_FIFO[5]~input_o\ : std_logic;
SIGNAL \PRE_STDP|Add1~18\ : std_logic;
SIGNAL \PRE_STDP|Add1~21_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[0][1]~q\ : std_logic;
SIGNAL \POST_STDP|Add1~18\ : std_logic;
SIGNAL \POST_STDP|Add1~19\ : std_logic;
SIGNAL \POST_STDP|Add1~21_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[0][1]~q\ : std_logic;
SIGNAL \POST_STDP|Add3~18\ : std_logic;
SIGNAL \POST_STDP|Add3~19\ : std_logic;
SIGNAL \POST_STDP|Add3~21_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[1][1]~q\ : std_logic;
SIGNAL \POST_STDP|Add4~18\ : std_logic;
SIGNAL \POST_STDP|Add4~19\ : std_logic;
SIGNAL \POST_STDP|Add4~21_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[2][1]~q\ : std_logic;
SIGNAL \POST_STDP|Add5~18\ : std_logic;
SIGNAL \POST_STDP|Add5~19\ : std_logic;
SIGNAL \POST_STDP|Add5~21_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[3][1]~q\ : std_logic;
SIGNAL \POST_STDP|POP_OUT~5_combout\ : std_logic;
SIGNAL \PRE_STDP|Add6~18\ : std_logic;
SIGNAL \PRE_STDP|Add6~19\ : std_logic;
SIGNAL \PRE_STDP|Add6~21_sumout\ : std_logic;
SIGNAL \PRE_STDP|Add3~18\ : std_logic;
SIGNAL \PRE_STDP|Add3~19\ : std_logic;
SIGNAL \PRE_STDP|Add3~21_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[1][1]~q\ : std_logic;
SIGNAL \PRE_STDP|Add7~18\ : std_logic;
SIGNAL \PRE_STDP|Add7~19\ : std_logic;
SIGNAL \PRE_STDP|Add7~21_sumout\ : std_logic;
SIGNAL \PRE_STDP|total_SUM~10_combout\ : std_logic;
SIGNAL \PRE_STDP|Add4~18\ : std_logic;
SIGNAL \PRE_STDP|Add4~19\ : std_logic;
SIGNAL \PRE_STDP|Add4~21_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[2][1]~q\ : std_logic;
SIGNAL \PRE_STDP|Add9~18\ : std_logic;
SIGNAL \PRE_STDP|Add9~19\ : std_logic;
SIGNAL \PRE_STDP|Add9~21_sumout\ : std_logic;
SIGNAL \PRE_STDP|total_SUM~11_combout\ : std_logic;
SIGNAL \PRE_STDP|Add5~18\ : std_logic;
SIGNAL \PRE_STDP|Add5~19\ : std_logic;
SIGNAL \PRE_STDP|Add5~21_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[3][1]~q\ : std_logic;
SIGNAL \PRE_STDP|Add11~18\ : std_logic;
SIGNAL \PRE_STDP|Add11~19\ : std_logic;
SIGNAL \PRE_STDP|Add11~21_sumout\ : std_logic;
SIGNAL \PRE_STDP|DATA_CAL_OUT~5_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \STDP_OUT[5]~reg0feeder_combout\ : std_logic;
SIGNAL \STDP_OUT[5]~reg0_q\ : std_logic;
SIGNAL \STDP_DATAIN_POST_FIFO[6]~input_o\ : std_logic;
SIGNAL \STDP_DATAIN_PRE_FIFO[6]~input_o\ : std_logic;
SIGNAL \PRE_STDP|Add1~22\ : std_logic;
SIGNAL \PRE_STDP|Add1~25_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[0][2]~q\ : std_logic;
SIGNAL \POST_STDP|Add3~22\ : std_logic;
SIGNAL \POST_STDP|Add3~23\ : std_logic;
SIGNAL \POST_STDP|Add3~25_sumout\ : std_logic;
SIGNAL \POST_STDP|Add1~22\ : std_logic;
SIGNAL \POST_STDP|Add1~23\ : std_logic;
SIGNAL \POST_STDP|Add1~25_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[0][2]~q\ : std_logic;
SIGNAL \POST_STDP|REG[1][2]~q\ : std_logic;
SIGNAL \POST_STDP|Add4~22\ : std_logic;
SIGNAL \POST_STDP|Add4~23\ : std_logic;
SIGNAL \POST_STDP|Add4~25_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[2][2]~q\ : std_logic;
SIGNAL \POST_STDP|Add5~22\ : std_logic;
SIGNAL \POST_STDP|Add5~23\ : std_logic;
SIGNAL \POST_STDP|Add5~25_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[3][2]~q\ : std_logic;
SIGNAL \POST_STDP|POP_OUT~6_combout\ : std_logic;
SIGNAL \PRE_STDP|Add6~22\ : std_logic;
SIGNAL \PRE_STDP|Add6~23\ : std_logic;
SIGNAL \PRE_STDP|Add6~25_sumout\ : std_logic;
SIGNAL \PRE_STDP|Add3~22\ : std_logic;
SIGNAL \PRE_STDP|Add3~23\ : std_logic;
SIGNAL \PRE_STDP|Add3~25_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[1][2]~q\ : std_logic;
SIGNAL \PRE_STDP|Add7~22\ : std_logic;
SIGNAL \PRE_STDP|Add7~23\ : std_logic;
SIGNAL \PRE_STDP|Add7~25_sumout\ : std_logic;
SIGNAL \PRE_STDP|total_SUM~12_combout\ : std_logic;
SIGNAL \PRE_STDP|Add4~22\ : std_logic;
SIGNAL \PRE_STDP|Add4~23\ : std_logic;
SIGNAL \PRE_STDP|Add4~25_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[2][2]~q\ : std_logic;
SIGNAL \PRE_STDP|Add9~22\ : std_logic;
SIGNAL \PRE_STDP|Add9~23\ : std_logic;
SIGNAL \PRE_STDP|Add9~25_sumout\ : std_logic;
SIGNAL \PRE_STDP|total_SUM~13_combout\ : std_logic;
SIGNAL \PRE_STDP|Add5~22\ : std_logic;
SIGNAL \PRE_STDP|Add5~23\ : std_logic;
SIGNAL \PRE_STDP|Add5~25_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[3][2]~q\ : std_logic;
SIGNAL \PRE_STDP|Add11~22\ : std_logic;
SIGNAL \PRE_STDP|Add11~23\ : std_logic;
SIGNAL \PRE_STDP|Add11~25_sumout\ : std_logic;
SIGNAL \PRE_STDP|DATA_CAL_OUT~6_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \STDP_OUT[6]~reg0feeder_combout\ : std_logic;
SIGNAL \STDP_OUT[6]~reg0_q\ : std_logic;
SIGNAL \STDP_DATAIN_POST_FIFO[7]~input_o\ : std_logic;
SIGNAL \POST_STDP|Add1~26\ : std_logic;
SIGNAL \POST_STDP|Add1~27\ : std_logic;
SIGNAL \POST_STDP|Add1~29_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[0][3]~q\ : std_logic;
SIGNAL \POST_STDP|Add5~26\ : std_logic;
SIGNAL \POST_STDP|Add5~27\ : std_logic;
SIGNAL \POST_STDP|Add5~29_sumout\ : std_logic;
SIGNAL \POST_STDP|Add4~26\ : std_logic;
SIGNAL \POST_STDP|Add4~27\ : std_logic;
SIGNAL \POST_STDP|Add4~29_sumout\ : std_logic;
SIGNAL \POST_STDP|Add3~26\ : std_logic;
SIGNAL \POST_STDP|Add3~27\ : std_logic;
SIGNAL \POST_STDP|Add3~29_sumout\ : std_logic;
SIGNAL \POST_STDP|REG[1][3]~q\ : std_logic;
SIGNAL \POST_STDP|REG[2][3]~q\ : std_logic;
SIGNAL \POST_STDP|REG[3][3]~q\ : std_logic;
SIGNAL \POST_STDP|POP_OUT~7_combout\ : std_logic;
SIGNAL \STDP_DATAIN_PRE_FIFO[7]~input_o\ : std_logic;
SIGNAL \PRE_STDP|Add1~26\ : std_logic;
SIGNAL \PRE_STDP|Add1~29_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[0][3]~q\ : std_logic;
SIGNAL \PRE_STDP|Add6~26\ : std_logic;
SIGNAL \PRE_STDP|Add6~27\ : std_logic;
SIGNAL \PRE_STDP|Add6~29_sumout\ : std_logic;
SIGNAL \PRE_STDP|Add3~26\ : std_logic;
SIGNAL \PRE_STDP|Add3~27\ : std_logic;
SIGNAL \PRE_STDP|Add3~29_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[1][3]~q\ : std_logic;
SIGNAL \PRE_STDP|Add7~26\ : std_logic;
SIGNAL \PRE_STDP|Add7~27\ : std_logic;
SIGNAL \PRE_STDP|Add7~29_sumout\ : std_logic;
SIGNAL \PRE_STDP|total_SUM~14_combout\ : std_logic;
SIGNAL \PRE_STDP|Add4~26\ : std_logic;
SIGNAL \PRE_STDP|Add4~27\ : std_logic;
SIGNAL \PRE_STDP|Add4~29_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[2][3]~q\ : std_logic;
SIGNAL \PRE_STDP|Add9~26\ : std_logic;
SIGNAL \PRE_STDP|Add9~27\ : std_logic;
SIGNAL \PRE_STDP|Add9~29_sumout\ : std_logic;
SIGNAL \PRE_STDP|total_SUM~15_combout\ : std_logic;
SIGNAL \PRE_STDP|Add5~26\ : std_logic;
SIGNAL \PRE_STDP|Add5~27\ : std_logic;
SIGNAL \PRE_STDP|Add5~29_sumout\ : std_logic;
SIGNAL \PRE_STDP|REG[3][3]~q\ : std_logic;
SIGNAL \PRE_STDP|Add11~26\ : std_logic;
SIGNAL \PRE_STDP|Add11~27\ : std_logic;
SIGNAL \PRE_STDP|Add11~29_sumout\ : std_logic;
SIGNAL \PRE_STDP|DATA_CAL_OUT~7_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \STDP_OUT[7]~reg0_q\ : std_logic;
SIGNAL \POST_STDP|top\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PRE_STDP|top\ : std_logic_vector(2 DOWNTO 0);
SIGNAL idx : std_logic_vector(2 DOWNTO 0);
SIGNAL \POST_STDP|POP_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL CAL_ADDR : std_logic_vector(2 DOWNTO 0);
SIGNAL \PRE_STDP|DATA_CAL_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL PRE_SUM : std_logic_vector(4 DOWNTO 0);
SIGNAL \POST_STDP|ALT_INV_POP_OUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_POP_OUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_POP_OUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sys_clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_STDP_DATAIN_PRE_FIFO[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_DATAIN_POST_FIFO[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_DATAIN_PRE_FIFO[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_DATAIN_POST_FIFO[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_DATAIN_PRE_FIFO[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_DATAIN_POST_FIFO[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_DATAIN_PRE_FIFO[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_DATAIN_POST_FIFO[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_DATAIN_PRE_FIFO[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_DATAIN_POST_FIFO[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_DATAIN_PRE_FIFO[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_DATAIN_POST_FIFO[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_DATAIN_PRE_FIFO[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_DATAIN_POST_FIFO[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_DATAIN_PRE_FIFO[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_DATAIN_POST_FIFO[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_patchPOSTneuron~input_o\ : std_logic;
SIGNAL \ALT_INV_STDP_patchPREneuron~input_o\ : std_logic;
SIGNAL \ALT_INV_sys_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_synapsePush~input_o\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_top[1]~0_combout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_total_SUM~15_combout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_total_SUM~14_combout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_total_SUM~13_combout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_total_SUM~12_combout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_total_SUM~11_combout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_total_SUM~10_combout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_total_SUM~9_combout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_total_SUM~8_combout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_total_SUM~7_combout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_total_SUM~6_combout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_total_SUM~5_combout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_total_SUM~4_combout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_total_SUM~3_combout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_total_SUM~2_combout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_total_SUM~1_combout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_total_SUM~0_combout\ : std_logic;
SIGNAL ALT_INV_idx : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_CAL_ENA~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_top\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PRE_STDP|ALT_INV_top\ : std_logic_vector(1 DOWNTO 0);
SIGNAL ALT_INV_PRE_SUM : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_PRE_SUM[-1]~q\ : std_logic;
SIGNAL \ALT_INV_PRE_SUM[-2]~q\ : std_logic;
SIGNAL \ALT_INV_PRE_SUM[-3]~q\ : std_logic;
SIGNAL \ALT_INV_PRE_SUM[-4]~q\ : std_logic;
SIGNAL ALT_INV_CAL_ADDR : std_logic_vector(1 DOWNTO 0);
SIGNAL \POST_STDP|ALT_INV_REG[0][3]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[0][2]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[0][1]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[0][0]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[0][-1]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[0][-2]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[0][-3]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[0][-4]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[0][3]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[0][2]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[0][1]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[0][0]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[0][-1]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[0][-2]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[0][-3]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[0][-4]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add11~29_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add9~29_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add6~29_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add11~25_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add9~25_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add6~25_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add11~21_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add9~21_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add6~21_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add11~17_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add9~17_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add6~17_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add11~13_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add9~13_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add6~13_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add11~9_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add9~9_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add6~9_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add11~5_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add9~5_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add6~5_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add11~1_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add9~1_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add6~1_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_DATA_CAL_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \POST_STDP|ALT_INV_POP_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \POST_STDP|ALT_INV_REG[3][3]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[3][2]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[3][1]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[3][0]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[3][-1]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[3][-2]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[3][-3]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[3][-4]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[2][3]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[2][2]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[2][1]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[2][0]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[2][-1]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[2][-2]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[2][-3]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[2][-4]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[1][3]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[1][2]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[1][1]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[1][0]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[1][-1]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[1][-2]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[1][-3]~q\ : std_logic;
SIGNAL \POST_STDP|ALT_INV_REG[1][-4]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[3][3]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[3][2]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[3][1]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[3][0]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[3][-1]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[3][-2]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[3][-3]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[3][-4]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[2][3]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[2][2]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[2][1]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[2][0]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[2][-1]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[2][-2]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[2][-3]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[2][-4]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[1][3]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[1][2]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[1][1]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[1][0]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[1][-1]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[1][-2]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[1][-3]~q\ : std_logic;
SIGNAL \PRE_STDP|ALT_INV_REG[1][-4]~q\ : std_logic;

BEGIN

ww_sys_clk <= sys_clk;
ww_sys_rst <= sys_rst;
ww_STDP_patchPREneuron <= STDP_patchPREneuron;
ww_STDP_patchPOSTneuron <= STDP_patchPOSTneuron;
ww_STDP_DATAIN_PRE_FIFO <= STDP_DATAIN_PRE_FIFO;
ww_STDP_DATAIN_POST_FIFO <= STDP_DATAIN_POST_FIFO;
ww_synapsePush <= synapsePush;
STDP_OUT <= ww_STDP_OUT;
dbg_PRE_0 <= ww_dbg_PRE_0;
dbg_PRE_1 <= ww_dbg_PRE_1;
dbg_PRE_2 <= ww_dbg_PRE_2;
dbg_PRE_3 <= ww_dbg_PRE_3;
dbg_POST_0 <= ww_dbg_POST_0;
dbg_POST_1 <= ww_dbg_POST_1;
dbg_POST_2 <= ww_dbg_POST_2;
dbg_POST_3 <= ww_dbg_POST_3;
dbg_DATA_CAL_POST <= ww_dbg_DATA_CAL_POST;
dbg_ADDR <= ww_dbg_ADDR;
dbg_SUM <= ww_dbg_SUM;
dbg_TEMP_SUM <= ww_dbg_TEMP_SUM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\POST_STDP|ALT_INV_POP_OUT[3]~DUPLICATE_q\ <= NOT \POST_STDP|POP_OUT[3]~DUPLICATE_q\;
\POST_STDP|ALT_INV_POP_OUT[2]~DUPLICATE_q\ <= NOT \POST_STDP|POP_OUT[2]~DUPLICATE_q\;
\POST_STDP|ALT_INV_POP_OUT[0]~DUPLICATE_q\ <= NOT \POST_STDP|POP_OUT[0]~DUPLICATE_q\;
\ALT_INV_sys_clk~inputCLKENA0_outclk\ <= NOT \sys_clk~inputCLKENA0_outclk\;
\ALT_INV_STDP_DATAIN_PRE_FIFO[7]~input_o\ <= NOT \STDP_DATAIN_PRE_FIFO[7]~input_o\;
\ALT_INV_STDP_DATAIN_POST_FIFO[7]~input_o\ <= NOT \STDP_DATAIN_POST_FIFO[7]~input_o\;
\ALT_INV_STDP_DATAIN_PRE_FIFO[6]~input_o\ <= NOT \STDP_DATAIN_PRE_FIFO[6]~input_o\;
\ALT_INV_STDP_DATAIN_POST_FIFO[6]~input_o\ <= NOT \STDP_DATAIN_POST_FIFO[6]~input_o\;
\ALT_INV_STDP_DATAIN_PRE_FIFO[5]~input_o\ <= NOT \STDP_DATAIN_PRE_FIFO[5]~input_o\;
\ALT_INV_STDP_DATAIN_POST_FIFO[5]~input_o\ <= NOT \STDP_DATAIN_POST_FIFO[5]~input_o\;
\ALT_INV_STDP_DATAIN_PRE_FIFO[4]~input_o\ <= NOT \STDP_DATAIN_PRE_FIFO[4]~input_o\;
\ALT_INV_STDP_DATAIN_POST_FIFO[4]~input_o\ <= NOT \STDP_DATAIN_POST_FIFO[4]~input_o\;
\ALT_INV_STDP_DATAIN_PRE_FIFO[3]~input_o\ <= NOT \STDP_DATAIN_PRE_FIFO[3]~input_o\;
\ALT_INV_STDP_DATAIN_POST_FIFO[3]~input_o\ <= NOT \STDP_DATAIN_POST_FIFO[3]~input_o\;
\ALT_INV_STDP_DATAIN_PRE_FIFO[2]~input_o\ <= NOT \STDP_DATAIN_PRE_FIFO[2]~input_o\;
\ALT_INV_STDP_DATAIN_POST_FIFO[2]~input_o\ <= NOT \STDP_DATAIN_POST_FIFO[2]~input_o\;
\ALT_INV_STDP_DATAIN_PRE_FIFO[1]~input_o\ <= NOT \STDP_DATAIN_PRE_FIFO[1]~input_o\;
\ALT_INV_STDP_DATAIN_POST_FIFO[1]~input_o\ <= NOT \STDP_DATAIN_POST_FIFO[1]~input_o\;
\ALT_INV_STDP_DATAIN_PRE_FIFO[0]~input_o\ <= NOT \STDP_DATAIN_PRE_FIFO[0]~input_o\;
\ALT_INV_STDP_DATAIN_POST_FIFO[0]~input_o\ <= NOT \STDP_DATAIN_POST_FIFO[0]~input_o\;
\ALT_INV_STDP_patchPOSTneuron~input_o\ <= NOT \STDP_patchPOSTneuron~input_o\;
\ALT_INV_STDP_patchPREneuron~input_o\ <= NOT \STDP_patchPREneuron~input_o\;
\ALT_INV_sys_rst~input_o\ <= NOT \sys_rst~input_o\;
\ALT_INV_synapsePush~input_o\ <= NOT \synapsePush~input_o\;
\PRE_STDP|ALT_INV_top[1]~0_combout\ <= NOT \PRE_STDP|top[1]~0_combout\;
\PRE_STDP|ALT_INV_total_SUM~15_combout\ <= NOT \PRE_STDP|total_SUM~15_combout\;
\PRE_STDP|ALT_INV_total_SUM~14_combout\ <= NOT \PRE_STDP|total_SUM~14_combout\;
\PRE_STDP|ALT_INV_total_SUM~13_combout\ <= NOT \PRE_STDP|total_SUM~13_combout\;
\PRE_STDP|ALT_INV_total_SUM~12_combout\ <= NOT \PRE_STDP|total_SUM~12_combout\;
\PRE_STDP|ALT_INV_total_SUM~11_combout\ <= NOT \PRE_STDP|total_SUM~11_combout\;
\PRE_STDP|ALT_INV_total_SUM~10_combout\ <= NOT \PRE_STDP|total_SUM~10_combout\;
\PRE_STDP|ALT_INV_total_SUM~9_combout\ <= NOT \PRE_STDP|total_SUM~9_combout\;
\PRE_STDP|ALT_INV_total_SUM~8_combout\ <= NOT \PRE_STDP|total_SUM~8_combout\;
\PRE_STDP|ALT_INV_total_SUM~7_combout\ <= NOT \PRE_STDP|total_SUM~7_combout\;
\PRE_STDP|ALT_INV_total_SUM~6_combout\ <= NOT \PRE_STDP|total_SUM~6_combout\;
\PRE_STDP|ALT_INV_total_SUM~5_combout\ <= NOT \PRE_STDP|total_SUM~5_combout\;
\PRE_STDP|ALT_INV_total_SUM~4_combout\ <= NOT \PRE_STDP|total_SUM~4_combout\;
\PRE_STDP|ALT_INV_total_SUM~3_combout\ <= NOT \PRE_STDP|total_SUM~3_combout\;
\PRE_STDP|ALT_INV_total_SUM~2_combout\ <= NOT \PRE_STDP|total_SUM~2_combout\;
\PRE_STDP|ALT_INV_total_SUM~1_combout\ <= NOT \PRE_STDP|total_SUM~1_combout\;
\PRE_STDP|ALT_INV_total_SUM~0_combout\ <= NOT \PRE_STDP|total_SUM~0_combout\;
ALT_INV_idx(1) <= NOT idx(1);
ALT_INV_idx(0) <= NOT idx(0);
\ALT_INV_CAL_ENA~q\ <= NOT \CAL_ENA~q\;
\POST_STDP|ALT_INV_top\(0) <= NOT \POST_STDP|top\(0);
\POST_STDP|ALT_INV_top\(1) <= NOT \POST_STDP|top\(1);
\PRE_STDP|ALT_INV_top\(0) <= NOT \PRE_STDP|top\(0);
\PRE_STDP|ALT_INV_top\(1) <= NOT \PRE_STDP|top\(1);
ALT_INV_PRE_SUM(3) <= NOT PRE_SUM(3);
ALT_INV_PRE_SUM(2) <= NOT PRE_SUM(2);
ALT_INV_PRE_SUM(1) <= NOT PRE_SUM(1);
ALT_INV_PRE_SUM(0) <= NOT PRE_SUM(0);
\ALT_INV_PRE_SUM[-1]~q\ <= NOT \PRE_SUM[-1]~q\;
\ALT_INV_PRE_SUM[-2]~q\ <= NOT \PRE_SUM[-2]~q\;
\ALT_INV_PRE_SUM[-3]~q\ <= NOT \PRE_SUM[-3]~q\;
\ALT_INV_PRE_SUM[-4]~q\ <= NOT \PRE_SUM[-4]~q\;
ALT_INV_CAL_ADDR(1) <= NOT CAL_ADDR(1);
ALT_INV_CAL_ADDR(0) <= NOT CAL_ADDR(0);
\POST_STDP|ALT_INV_REG[0][3]~q\ <= NOT \POST_STDP|REG[0][3]~q\;
\POST_STDP|ALT_INV_REG[0][2]~q\ <= NOT \POST_STDP|REG[0][2]~q\;
\POST_STDP|ALT_INV_REG[0][1]~q\ <= NOT \POST_STDP|REG[0][1]~q\;
\POST_STDP|ALT_INV_REG[0][0]~q\ <= NOT \POST_STDP|REG[0][0]~q\;
\POST_STDP|ALT_INV_REG[0][-1]~q\ <= NOT \POST_STDP|REG[0][-1]~q\;
\POST_STDP|ALT_INV_REG[0][-2]~q\ <= NOT \POST_STDP|REG[0][-2]~q\;
\POST_STDP|ALT_INV_REG[0][-3]~q\ <= NOT \POST_STDP|REG[0][-3]~q\;
\POST_STDP|ALT_INV_REG[0][-4]~q\ <= NOT \POST_STDP|REG[0][-4]~q\;
\PRE_STDP|ALT_INV_REG[0][3]~q\ <= NOT \PRE_STDP|REG[0][3]~q\;
\PRE_STDP|ALT_INV_REG[0][2]~q\ <= NOT \PRE_STDP|REG[0][2]~q\;
\PRE_STDP|ALT_INV_REG[0][1]~q\ <= NOT \PRE_STDP|REG[0][1]~q\;
\PRE_STDP|ALT_INV_REG[0][0]~q\ <= NOT \PRE_STDP|REG[0][0]~q\;
\PRE_STDP|ALT_INV_REG[0][-1]~q\ <= NOT \PRE_STDP|REG[0][-1]~q\;
\PRE_STDP|ALT_INV_REG[0][-2]~q\ <= NOT \PRE_STDP|REG[0][-2]~q\;
\PRE_STDP|ALT_INV_REG[0][-3]~q\ <= NOT \PRE_STDP|REG[0][-3]~q\;
\PRE_STDP|ALT_INV_REG[0][-4]~q\ <= NOT \PRE_STDP|REG[0][-4]~q\;
\PRE_STDP|ALT_INV_Add11~29_sumout\ <= NOT \PRE_STDP|Add11~29_sumout\;
\PRE_STDP|ALT_INV_Add9~29_sumout\ <= NOT \PRE_STDP|Add9~29_sumout\;
\PRE_STDP|ALT_INV_Add7~29_sumout\ <= NOT \PRE_STDP|Add7~29_sumout\;
\PRE_STDP|ALT_INV_Add6~29_sumout\ <= NOT \PRE_STDP|Add6~29_sumout\;
\PRE_STDP|ALT_INV_Add11~25_sumout\ <= NOT \PRE_STDP|Add11~25_sumout\;
\PRE_STDP|ALT_INV_Add9~25_sumout\ <= NOT \PRE_STDP|Add9~25_sumout\;
\PRE_STDP|ALT_INV_Add7~25_sumout\ <= NOT \PRE_STDP|Add7~25_sumout\;
\PRE_STDP|ALT_INV_Add6~25_sumout\ <= NOT \PRE_STDP|Add6~25_sumout\;
\PRE_STDP|ALT_INV_Add11~21_sumout\ <= NOT \PRE_STDP|Add11~21_sumout\;
\PRE_STDP|ALT_INV_Add9~21_sumout\ <= NOT \PRE_STDP|Add9~21_sumout\;
\PRE_STDP|ALT_INV_Add7~21_sumout\ <= NOT \PRE_STDP|Add7~21_sumout\;
\PRE_STDP|ALT_INV_Add6~21_sumout\ <= NOT \PRE_STDP|Add6~21_sumout\;
\PRE_STDP|ALT_INV_Add11~17_sumout\ <= NOT \PRE_STDP|Add11~17_sumout\;
\PRE_STDP|ALT_INV_Add9~17_sumout\ <= NOT \PRE_STDP|Add9~17_sumout\;
\PRE_STDP|ALT_INV_Add7~17_sumout\ <= NOT \PRE_STDP|Add7~17_sumout\;
\PRE_STDP|ALT_INV_Add6~17_sumout\ <= NOT \PRE_STDP|Add6~17_sumout\;
\PRE_STDP|ALT_INV_Add11~13_sumout\ <= NOT \PRE_STDP|Add11~13_sumout\;
\PRE_STDP|ALT_INV_Add9~13_sumout\ <= NOT \PRE_STDP|Add9~13_sumout\;
\PRE_STDP|ALT_INV_Add7~13_sumout\ <= NOT \PRE_STDP|Add7~13_sumout\;
\PRE_STDP|ALT_INV_Add6~13_sumout\ <= NOT \PRE_STDP|Add6~13_sumout\;
\PRE_STDP|ALT_INV_Add11~9_sumout\ <= NOT \PRE_STDP|Add11~9_sumout\;
\PRE_STDP|ALT_INV_Add9~9_sumout\ <= NOT \PRE_STDP|Add9~9_sumout\;
\PRE_STDP|ALT_INV_Add7~9_sumout\ <= NOT \PRE_STDP|Add7~9_sumout\;
\PRE_STDP|ALT_INV_Add6~9_sumout\ <= NOT \PRE_STDP|Add6~9_sumout\;
\PRE_STDP|ALT_INV_Add11~5_sumout\ <= NOT \PRE_STDP|Add11~5_sumout\;
\PRE_STDP|ALT_INV_Add9~5_sumout\ <= NOT \PRE_STDP|Add9~5_sumout\;
\PRE_STDP|ALT_INV_Add7~5_sumout\ <= NOT \PRE_STDP|Add7~5_sumout\;
\PRE_STDP|ALT_INV_Add6~5_sumout\ <= NOT \PRE_STDP|Add6~5_sumout\;
\PRE_STDP|ALT_INV_Add11~1_sumout\ <= NOT \PRE_STDP|Add11~1_sumout\;
\PRE_STDP|ALT_INV_Add9~1_sumout\ <= NOT \PRE_STDP|Add9~1_sumout\;
\PRE_STDP|ALT_INV_Add7~1_sumout\ <= NOT \PRE_STDP|Add7~1_sumout\;
\PRE_STDP|ALT_INV_Add6~1_sumout\ <= NOT \PRE_STDP|Add6~1_sumout\;
\PRE_STDP|ALT_INV_Add4~1_sumout\ <= NOT \PRE_STDP|Add4~1_sumout\;
\PRE_STDP|ALT_INV_Add3~1_sumout\ <= NOT \PRE_STDP|Add3~1_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\PRE_STDP|ALT_INV_DATA_CAL_OUT\(7) <= NOT \PRE_STDP|DATA_CAL_OUT\(7);
\PRE_STDP|ALT_INV_DATA_CAL_OUT\(6) <= NOT \PRE_STDP|DATA_CAL_OUT\(6);
\PRE_STDP|ALT_INV_DATA_CAL_OUT\(5) <= NOT \PRE_STDP|DATA_CAL_OUT\(5);
\PRE_STDP|ALT_INV_DATA_CAL_OUT\(4) <= NOT \PRE_STDP|DATA_CAL_OUT\(4);
\PRE_STDP|ALT_INV_DATA_CAL_OUT\(3) <= NOT \PRE_STDP|DATA_CAL_OUT\(3);
\PRE_STDP|ALT_INV_DATA_CAL_OUT\(2) <= NOT \PRE_STDP|DATA_CAL_OUT\(2);
\PRE_STDP|ALT_INV_DATA_CAL_OUT\(1) <= NOT \PRE_STDP|DATA_CAL_OUT\(1);
\PRE_STDP|ALT_INV_DATA_CAL_OUT\(0) <= NOT \PRE_STDP|DATA_CAL_OUT\(0);
\POST_STDP|ALT_INV_POP_OUT\(7) <= NOT \POST_STDP|POP_OUT\(7);
\POST_STDP|ALT_INV_POP_OUT\(6) <= NOT \POST_STDP|POP_OUT\(6);
\POST_STDP|ALT_INV_POP_OUT\(5) <= NOT \POST_STDP|POP_OUT\(5);
\POST_STDP|ALT_INV_POP_OUT\(4) <= NOT \POST_STDP|POP_OUT\(4);
\POST_STDP|ALT_INV_POP_OUT\(3) <= NOT \POST_STDP|POP_OUT\(3);
\POST_STDP|ALT_INV_POP_OUT\(2) <= NOT \POST_STDP|POP_OUT\(2);
\POST_STDP|ALT_INV_POP_OUT\(1) <= NOT \POST_STDP|POP_OUT\(1);
\POST_STDP|ALT_INV_POP_OUT\(0) <= NOT \POST_STDP|POP_OUT\(0);
\POST_STDP|ALT_INV_REG[3][3]~q\ <= NOT \POST_STDP|REG[3][3]~q\;
\POST_STDP|ALT_INV_REG[3][2]~q\ <= NOT \POST_STDP|REG[3][2]~q\;
\POST_STDP|ALT_INV_REG[3][1]~q\ <= NOT \POST_STDP|REG[3][1]~q\;
\POST_STDP|ALT_INV_REG[3][0]~q\ <= NOT \POST_STDP|REG[3][0]~q\;
\POST_STDP|ALT_INV_REG[3][-1]~q\ <= NOT \POST_STDP|REG[3][-1]~q\;
\POST_STDP|ALT_INV_REG[3][-2]~q\ <= NOT \POST_STDP|REG[3][-2]~q\;
\POST_STDP|ALT_INV_REG[3][-3]~q\ <= NOT \POST_STDP|REG[3][-3]~q\;
\POST_STDP|ALT_INV_REG[3][-4]~q\ <= NOT \POST_STDP|REG[3][-4]~q\;
\POST_STDP|ALT_INV_REG[2][3]~q\ <= NOT \POST_STDP|REG[2][3]~q\;
\POST_STDP|ALT_INV_REG[2][2]~q\ <= NOT \POST_STDP|REG[2][2]~q\;
\POST_STDP|ALT_INV_REG[2][1]~q\ <= NOT \POST_STDP|REG[2][1]~q\;
\POST_STDP|ALT_INV_REG[2][0]~q\ <= NOT \POST_STDP|REG[2][0]~q\;
\POST_STDP|ALT_INV_REG[2][-1]~q\ <= NOT \POST_STDP|REG[2][-1]~q\;
\POST_STDP|ALT_INV_REG[2][-2]~q\ <= NOT \POST_STDP|REG[2][-2]~q\;
\POST_STDP|ALT_INV_REG[2][-3]~q\ <= NOT \POST_STDP|REG[2][-3]~q\;
\POST_STDP|ALT_INV_REG[2][-4]~q\ <= NOT \POST_STDP|REG[2][-4]~q\;
\POST_STDP|ALT_INV_REG[1][3]~q\ <= NOT \POST_STDP|REG[1][3]~q\;
\POST_STDP|ALT_INV_REG[1][2]~q\ <= NOT \POST_STDP|REG[1][2]~q\;
\POST_STDP|ALT_INV_REG[1][1]~q\ <= NOT \POST_STDP|REG[1][1]~q\;
\POST_STDP|ALT_INV_REG[1][0]~q\ <= NOT \POST_STDP|REG[1][0]~q\;
\POST_STDP|ALT_INV_REG[1][-1]~q\ <= NOT \POST_STDP|REG[1][-1]~q\;
\POST_STDP|ALT_INV_REG[1][-2]~q\ <= NOT \POST_STDP|REG[1][-2]~q\;
\POST_STDP|ALT_INV_REG[1][-3]~q\ <= NOT \POST_STDP|REG[1][-3]~q\;
\POST_STDP|ALT_INV_REG[1][-4]~q\ <= NOT \POST_STDP|REG[1][-4]~q\;
\PRE_STDP|ALT_INV_REG[3][3]~q\ <= NOT \PRE_STDP|REG[3][3]~q\;
\PRE_STDP|ALT_INV_REG[3][2]~q\ <= NOT \PRE_STDP|REG[3][2]~q\;
\PRE_STDP|ALT_INV_REG[3][1]~q\ <= NOT \PRE_STDP|REG[3][1]~q\;
\PRE_STDP|ALT_INV_REG[3][0]~q\ <= NOT \PRE_STDP|REG[3][0]~q\;
\PRE_STDP|ALT_INV_REG[3][-1]~q\ <= NOT \PRE_STDP|REG[3][-1]~q\;
\PRE_STDP|ALT_INV_REG[3][-2]~q\ <= NOT \PRE_STDP|REG[3][-2]~q\;
\PRE_STDP|ALT_INV_REG[3][-3]~q\ <= NOT \PRE_STDP|REG[3][-3]~q\;
\PRE_STDP|ALT_INV_REG[3][-4]~q\ <= NOT \PRE_STDP|REG[3][-4]~q\;
\PRE_STDP|ALT_INV_REG[2][3]~q\ <= NOT \PRE_STDP|REG[2][3]~q\;
\PRE_STDP|ALT_INV_REG[2][2]~q\ <= NOT \PRE_STDP|REG[2][2]~q\;
\PRE_STDP|ALT_INV_REG[2][1]~q\ <= NOT \PRE_STDP|REG[2][1]~q\;
\PRE_STDP|ALT_INV_REG[2][0]~q\ <= NOT \PRE_STDP|REG[2][0]~q\;
\PRE_STDP|ALT_INV_REG[2][-1]~q\ <= NOT \PRE_STDP|REG[2][-1]~q\;
\PRE_STDP|ALT_INV_REG[2][-2]~q\ <= NOT \PRE_STDP|REG[2][-2]~q\;
\PRE_STDP|ALT_INV_REG[2][-3]~q\ <= NOT \PRE_STDP|REG[2][-3]~q\;
\PRE_STDP|ALT_INV_REG[2][-4]~q\ <= NOT \PRE_STDP|REG[2][-4]~q\;
\PRE_STDP|ALT_INV_REG[1][3]~q\ <= NOT \PRE_STDP|REG[1][3]~q\;
\PRE_STDP|ALT_INV_REG[1][2]~q\ <= NOT \PRE_STDP|REG[1][2]~q\;
\PRE_STDP|ALT_INV_REG[1][1]~q\ <= NOT \PRE_STDP|REG[1][1]~q\;
\PRE_STDP|ALT_INV_REG[1][0]~q\ <= NOT \PRE_STDP|REG[1][0]~q\;
\PRE_STDP|ALT_INV_REG[1][-1]~q\ <= NOT \PRE_STDP|REG[1][-1]~q\;
\PRE_STDP|ALT_INV_REG[1][-2]~q\ <= NOT \PRE_STDP|REG[1][-2]~q\;
\PRE_STDP|ALT_INV_REG[1][-3]~q\ <= NOT \PRE_STDP|REG[1][-3]~q\;
\PRE_STDP|ALT_INV_REG[1][-4]~q\ <= NOT \PRE_STDP|REG[1][-4]~q\;

-- Location: IOOBUF_X75_Y0_N53
\STDP_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STDP_OUT[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_STDP_OUT(0));

-- Location: IOOBUF_X84_Y0_N53
\STDP_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STDP_OUT[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_STDP_OUT(1));

-- Location: IOOBUF_X84_Y0_N2
\STDP_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STDP_OUT[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_STDP_OUT(2));

-- Location: IOOBUF_X77_Y0_N19
\STDP_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STDP_OUT[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_STDP_OUT(3));

-- Location: IOOBUF_X75_Y0_N36
\STDP_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STDP_OUT[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_STDP_OUT(4));

-- Location: IOOBUF_X77_Y0_N36
\STDP_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STDP_OUT[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_STDP_OUT(5));

-- Location: IOOBUF_X82_Y0_N59
\STDP_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STDP_OUT[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_STDP_OUT(6));

-- Location: IOOBUF_X77_Y0_N2
\STDP_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STDP_OUT[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_STDP_OUT(7));

-- Location: IOOBUF_X67_Y0_N53
\dbg_PRE_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[0][-4]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_0(0));

-- Location: IOOBUF_X40_Y0_N42
\dbg_PRE_0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[0][-3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_0(1));

-- Location: IOOBUF_X40_Y0_N93
\dbg_PRE_0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[0][-2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_0(2));

-- Location: IOOBUF_X67_Y0_N19
\dbg_PRE_0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[0][-1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_0(3));

-- Location: IOOBUF_X94_Y0_N19
\dbg_PRE_0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[0][0]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_0(4));

-- Location: IOOBUF_X20_Y0_N36
\dbg_PRE_0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[0][1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_0(5));

-- Location: IOOBUF_X40_Y0_N76
\dbg_PRE_0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[0][2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_0(6));

-- Location: IOOBUF_X92_Y0_N53
\dbg_PRE_0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[0][3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_0(7));

-- Location: IOOBUF_X25_Y0_N42
\dbg_PRE_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[1][-4]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_1(0));

-- Location: IOOBUF_X54_Y0_N36
\dbg_PRE_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[1][-3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_1(1));

-- Location: IOOBUF_X54_Y0_N2
\dbg_PRE_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[1][-2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_1(2));

-- Location: IOOBUF_X18_Y0_N36
\dbg_PRE_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[1][-1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_1(3));

-- Location: IOOBUF_X22_Y0_N36
\dbg_PRE_1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[1][0]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_1(4));

-- Location: IOOBUF_X22_Y0_N2
\dbg_PRE_1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[1][1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_1(5));

-- Location: IOOBUF_X65_Y0_N59
\dbg_PRE_1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[1][2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_1(6));

-- Location: IOOBUF_X22_Y0_N19
\dbg_PRE_1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[1][3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_1(7));

-- Location: IOOBUF_X67_Y0_N2
\dbg_PRE_2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[2][-4]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_2(0));

-- Location: IOOBUF_X67_Y0_N36
\dbg_PRE_2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[2][-3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_2(1));

-- Location: IOOBUF_X30_Y0_N19
\dbg_PRE_2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[2][-2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_2(2));

-- Location: IOOBUF_X27_Y0_N36
\dbg_PRE_2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[2][-1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_2(3));

-- Location: IOOBUF_X30_Y0_N36
\dbg_PRE_2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[2][0]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_2(4));

-- Location: IOOBUF_X27_Y0_N19
\dbg_PRE_2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[2][1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_2(5));

-- Location: IOOBUF_X30_Y0_N2
\dbg_PRE_2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[2][2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_2(6));

-- Location: IOOBUF_X30_Y0_N53
\dbg_PRE_2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[2][3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_2(7));

-- Location: IOOBUF_X26_Y0_N2
\dbg_PRE_3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[3][-4]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_3(0));

-- Location: IOOBUF_X26_Y0_N19
\dbg_PRE_3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[3][-3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_3(1));

-- Location: IOOBUF_X25_Y0_N76
\dbg_PRE_3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[3][-2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_3(2));

-- Location: IOOBUF_X27_Y0_N53
\dbg_PRE_3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[3][-1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_3(3));

-- Location: IOOBUF_X46_Y0_N36
\dbg_PRE_3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[3][0]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_3(4));

-- Location: IOOBUF_X25_Y0_N93
\dbg_PRE_3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[3][1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_3(5));

-- Location: IOOBUF_X25_Y0_N59
\dbg_PRE_3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[3][2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_3(6));

-- Location: IOOBUF_X27_Y0_N2
\dbg_PRE_3[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|REG[3][3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_PRE_3(7));

-- Location: IOOBUF_X48_Y0_N76
\dbg_POST_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[0][-4]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_0(0));

-- Location: IOOBUF_X48_Y0_N93
\dbg_POST_0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[0][-3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_0(1));

-- Location: IOOBUF_X54_Y0_N19
\dbg_POST_0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[0][-2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_0(2));

-- Location: IOOBUF_X71_Y0_N53
\dbg_POST_0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[0][-1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_0(3));

-- Location: IOOBUF_X52_Y0_N19
\dbg_POST_0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[0][0]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_0(4));

-- Location: IOOBUF_X52_Y0_N36
\dbg_POST_0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[0][1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_0(5));

-- Location: IOOBUF_X50_Y0_N36
\dbg_POST_0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[0][2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_0(6));

-- Location: IOOBUF_X54_Y0_N53
\dbg_POST_0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[0][3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_0(7));

-- Location: IOOBUF_X20_Y0_N2
\dbg_POST_1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[1][-4]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_1(0));

-- Location: IOOBUF_X22_Y0_N53
\dbg_POST_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[1][-3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_1(1));

-- Location: IOOBUF_X42_Y0_N53
\dbg_POST_1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[1][-2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_1(2));

-- Location: IOOBUF_X46_Y0_N53
\dbg_POST_1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[1][-1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_1(3));

-- Location: IOOBUF_X44_Y0_N36
\dbg_POST_1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[1][0]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_1(4));

-- Location: IOOBUF_X42_Y0_N19
\dbg_POST_1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[1][1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_1(5));

-- Location: IOOBUF_X50_Y0_N53
\dbg_POST_1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[1][2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_1(6));

-- Location: IOOBUF_X44_Y0_N2
\dbg_POST_1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[1][3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_1(7));

-- Location: IOOBUF_X40_Y0_N59
\dbg_POST_2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[2][-4]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_2(0));

-- Location: IOOBUF_X42_Y0_N2
\dbg_POST_2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[2][-3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_2(1));

-- Location: IOOBUF_X88_Y0_N36
\dbg_POST_2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[2][-2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_2(2));

-- Location: IOOBUF_X26_Y0_N36
\dbg_POST_2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[2][-1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_2(3));

-- Location: IOOBUF_X88_Y0_N53
\dbg_POST_2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[2][0]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_2(4));

-- Location: IOOBUF_X26_Y0_N53
\dbg_POST_2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[2][1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_2(5));

-- Location: IOOBUF_X42_Y0_N36
\dbg_POST_2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[2][2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_2(6));

-- Location: IOOBUF_X44_Y0_N53
\dbg_POST_2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[2][3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_2(7));

-- Location: IOOBUF_X48_Y0_N59
\dbg_POST_3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[3][-4]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_3(0));

-- Location: IOOBUF_X48_Y0_N42
\dbg_POST_3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[3][-3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_3(1));

-- Location: IOOBUF_X50_Y0_N2
\dbg_POST_3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[3][-2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_3(2));

-- Location: IOOBUF_X52_Y0_N2
\dbg_POST_3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[3][-1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_3(3));

-- Location: IOOBUF_X52_Y0_N53
\dbg_POST_3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[3][0]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_3(4));

-- Location: IOOBUF_X65_Y0_N76
\dbg_POST_3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[3][1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_3(5));

-- Location: IOOBUF_X65_Y0_N42
\dbg_POST_3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[3][2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_3(6));

-- Location: IOOBUF_X50_Y0_N19
\dbg_POST_3[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|REG[3][3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_POST_3(7));

-- Location: IOOBUF_X33_Y0_N76
\dbg_DATA_CAL_POST[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|POP_OUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_dbg_DATA_CAL_POST(0));

-- Location: IOOBUF_X33_Y0_N42
\dbg_DATA_CAL_POST[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|POP_OUT\(1),
	devoe => ww_devoe,
	o => ww_dbg_DATA_CAL_POST(1));

-- Location: IOOBUF_X35_Y0_N53
\dbg_DATA_CAL_POST[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|POP_OUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_dbg_DATA_CAL_POST(2));

-- Location: IOOBUF_X33_Y0_N93
\dbg_DATA_CAL_POST[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|POP_OUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_dbg_DATA_CAL_POST(3));

-- Location: IOOBUF_X35_Y0_N36
\dbg_DATA_CAL_POST[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|POP_OUT\(4),
	devoe => ww_devoe,
	o => ww_dbg_DATA_CAL_POST(4));

-- Location: IOOBUF_X35_Y0_N19
\dbg_DATA_CAL_POST[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|POP_OUT\(5),
	devoe => ww_devoe,
	o => ww_dbg_DATA_CAL_POST(5));

-- Location: IOOBUF_X33_Y0_N59
\dbg_DATA_CAL_POST[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|POP_OUT\(6),
	devoe => ww_devoe,
	o => ww_dbg_DATA_CAL_POST(6));

-- Location: IOOBUF_X35_Y0_N2
\dbg_DATA_CAL_POST[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \POST_STDP|POP_OUT\(7),
	devoe => ww_devoe,
	o => ww_dbg_DATA_CAL_POST(7));

-- Location: IOOBUF_X44_Y0_N19
\dbg_ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => CAL_ADDR(0),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(0));

-- Location: IOOBUF_X46_Y0_N2
\dbg_ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => CAL_ADDR(1),
	devoe => ww_devoe,
	o => ww_dbg_ADDR(1));

-- Location: IOOBUF_X94_Y115_N19
\dbg_ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_dbg_ADDR(2));

-- Location: IOOBUF_X84_Y0_N36
\dbg_SUM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_SUM[-4]~q\,
	devoe => ww_devoe,
	o => ww_dbg_SUM(0));

-- Location: IOOBUF_X75_Y0_N2
\dbg_SUM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_SUM[-3]~q\,
	devoe => ww_devoe,
	o => ww_dbg_SUM(1));

-- Location: IOOBUF_X79_Y0_N2
\dbg_SUM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_SUM[-2]~q\,
	devoe => ww_devoe,
	o => ww_dbg_SUM(2));

-- Location: IOOBUF_X77_Y0_N53
\dbg_SUM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_SUM[-1]~q\,
	devoe => ww_devoe,
	o => ww_dbg_SUM(3));

-- Location: IOOBUF_X79_Y0_N19
\dbg_SUM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PRE_SUM(0),
	devoe => ww_devoe,
	o => ww_dbg_SUM(4));

-- Location: IOOBUF_X79_Y0_N36
\dbg_SUM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PRE_SUM(1),
	devoe => ww_devoe,
	o => ww_dbg_SUM(5));

-- Location: IOOBUF_X79_Y0_N53
\dbg_SUM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PRE_SUM(2),
	devoe => ww_devoe,
	o => ww_dbg_SUM(6));

-- Location: IOOBUF_X75_Y0_N19
\dbg_SUM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => PRE_SUM(3),
	devoe => ww_devoe,
	o => ww_dbg_SUM(7));

-- Location: IOOBUF_X86_Y0_N2
\dbg_TEMP_SUM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|DATA_CAL_OUT\(0),
	devoe => ww_devoe,
	o => ww_dbg_TEMP_SUM(0));

-- Location: IOOBUF_X82_Y0_N42
\dbg_TEMP_SUM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|DATA_CAL_OUT\(1),
	devoe => ww_devoe,
	o => ww_dbg_TEMP_SUM(1));

-- Location: IOOBUF_X71_Y0_N2
\dbg_TEMP_SUM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|DATA_CAL_OUT\(2),
	devoe => ww_devoe,
	o => ww_dbg_TEMP_SUM(2));

-- Location: IOOBUF_X82_Y0_N76
\dbg_TEMP_SUM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|DATA_CAL_OUT\(3),
	devoe => ww_devoe,
	o => ww_dbg_TEMP_SUM(3));

-- Location: IOOBUF_X86_Y0_N19
\dbg_TEMP_SUM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|DATA_CAL_OUT\(4),
	devoe => ww_devoe,
	o => ww_dbg_TEMP_SUM(4));

-- Location: IOOBUF_X86_Y0_N36
\dbg_TEMP_SUM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|DATA_CAL_OUT\(5),
	devoe => ww_devoe,
	o => ww_dbg_TEMP_SUM(5));

-- Location: IOOBUF_X82_Y0_N93
\dbg_TEMP_SUM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|DATA_CAL_OUT\(6),
	devoe => ww_devoe,
	o => ww_dbg_TEMP_SUM(6));

-- Location: IOOBUF_X73_Y0_N59
\dbg_TEMP_SUM[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PRE_STDP|DATA_CAL_OUT\(7),
	devoe => ww_devoe,
	o => ww_dbg_TEMP_SUM(7));

-- Location: IOIBUF_X46_Y0_N18
\sys_clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_clk,
	o => \sys_clk~input_o\);

-- Location: CLKCTRL_G6
\sys_clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \sys_clk~input_o\,
	outclk => \sys_clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X86_Y0_N52
\STDP_patchPREneuron~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_patchPREneuron,
	o => \STDP_patchPREneuron~input_o\);

-- Location: IOIBUF_X73_Y0_N75
\STDP_patchPOSTneuron~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_patchPOSTneuron,
	o => \STDP_patchPOSTneuron~input_o\);

-- Location: LABCELL_X37_Y3_N39
\PRE_STDP|top[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|top[1]~0_combout\ = ( \PRE_STDP|top\(0) & ( (\STDP_patchPREneuron~input_o\) # (\PRE_STDP|top\(1)) ) ) # ( !\PRE_STDP|top\(0) & ( \PRE_STDP|top\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PRE_STDP|ALT_INV_top\(1),
	datad => \ALT_INV_STDP_patchPREneuron~input_o\,
	dataf => \PRE_STDP|ALT_INV_top\(0),
	combout => \PRE_STDP|top[1]~0_combout\);

-- Location: MLABCELL_X36_Y3_N24
\PRE_STDP|top[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|top[1]~feeder_combout\ = ( \PRE_STDP|top[1]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \PRE_STDP|ALT_INV_top[1]~0_combout\,
	combout => \PRE_STDP|top[1]~feeder_combout\);

-- Location: IOIBUF_X73_Y0_N92
\sys_rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_rst,
	o => \sys_rst~input_o\);

-- Location: FF_X36_Y3_N26
\PRE_STDP|top[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|top[1]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|top\(1));

-- Location: LABCELL_X37_Y3_N45
\PRE_STDP|top[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|top[0]~1_combout\ = ( \PRE_STDP|top\(0) & ( (!\STDP_patchPREneuron~input_o\) # (\PRE_STDP|top\(1)) ) ) # ( !\PRE_STDP|top\(0) & ( \STDP_patchPREneuron~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PRE_STDP|ALT_INV_top\(1),
	datad => \ALT_INV_STDP_patchPREneuron~input_o\,
	dataf => \PRE_STDP|ALT_INV_top\(0),
	combout => \PRE_STDP|top[0]~1_combout\);

-- Location: FF_X35_Y3_N32
\PRE_STDP|top[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	asdata => \PRE_STDP|top[0]~1_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|top\(0));

-- Location: IOIBUF_X37_Y0_N1
\STDP_DATAIN_POST_FIFO[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_DATAIN_POST_FIFO(0),
	o => \STDP_DATAIN_POST_FIFO[0]~input_o\);

-- Location: IOIBUF_X71_Y0_N35
\STDP_DATAIN_PRE_FIFO[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_DATAIN_PRE_FIFO(0),
	o => \STDP_DATAIN_PRE_FIFO[0]~input_o\);

-- Location: LABCELL_X37_Y4_N30
\PRE_STDP|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add1~34_cout\ = CARRY(( \STDP_patchPOSTneuron~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	cin => GND,
	cout => \PRE_STDP|Add1~34_cout\);

-- Location: LABCELL_X37_Y4_N33
\PRE_STDP|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add1~1_sumout\ = SUM(( \PRE_STDP|REG[0][-4]~q\ ) + ( (!\STDP_patchPOSTneuron~input_o\ & ((\STDP_DATAIN_PRE_FIFO[0]~input_o\))) # (\STDP_patchPOSTneuron~input_o\ & (!\STDP_DATAIN_POST_FIFO[0]~input_o\)) ) + ( \PRE_STDP|Add1~34_cout\ ))
-- \PRE_STDP|Add1~2\ = CARRY(( \PRE_STDP|REG[0][-4]~q\ ) + ( (!\STDP_patchPOSTneuron~input_o\ & ((\STDP_DATAIN_PRE_FIFO[0]~input_o\))) # (\STDP_patchPOSTneuron~input_o\ & (!\STDP_DATAIN_POST_FIFO[0]~input_o\)) ) + ( \PRE_STDP|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[0]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[0][-4]~q\,
	dataf => \ALT_INV_STDP_DATAIN_PRE_FIFO[0]~input_o\,
	cin => \PRE_STDP|Add1~34_cout\,
	sumout => \PRE_STDP|Add1~1_sumout\,
	cout => \PRE_STDP|Add1~2\);

-- Location: LABCELL_X37_Y4_N12
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \STDP_patchPOSTneuron~input_o\ ) # ( !\STDP_patchPOSTneuron~input_o\ & ( \STDP_patchPREneuron~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_patchPREneuron~input_o\,
	datae => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	combout => \process_0~0_combout\);

-- Location: FF_X36_Y4_N53
\PRE_STDP|REG[0][-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	asdata => \PRE_STDP|Add1~1_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[0][-4]~q\);

-- Location: MLABCELL_X36_Y2_N0
\POST_STDP|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add4~1_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[0]~input_o\ $ (!\POST_STDP|REG[2][-4]~q\) ) + ( !VCC ) + ( !VCC ))
-- \POST_STDP|Add4~2\ = CARRY(( !\STDP_DATAIN_POST_FIFO[0]~input_o\ $ (!\POST_STDP|REG[2][-4]~q\) ) + ( !VCC ) + ( !VCC ))
-- \POST_STDP|Add4~3\ = SHARE((!\STDP_DATAIN_POST_FIFO[0]~input_o\) # (\POST_STDP|REG[2][-4]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001111111100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STDP_DATAIN_POST_FIFO[0]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[2][-4]~q\,
	cin => GND,
	sharein => GND,
	sumout => \POST_STDP|Add4~1_sumout\,
	cout => \POST_STDP|Add4~2\,
	shareout => \POST_STDP|Add4~3\);

-- Location: LABCELL_X37_Y2_N30
\POST_STDP|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add3~1_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[0]~input_o\ $ (!\POST_STDP|REG[1][-4]~q\) ) + ( !VCC ) + ( !VCC ))
-- \POST_STDP|Add3~2\ = CARRY(( !\STDP_DATAIN_POST_FIFO[0]~input_o\ $ (!\POST_STDP|REG[1][-4]~q\) ) + ( !VCC ) + ( !VCC ))
-- \POST_STDP|Add3~3\ = SHARE((!\STDP_DATAIN_POST_FIFO[0]~input_o\) # (\POST_STDP|REG[1][-4]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[0]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[1][-4]~q\,
	cin => GND,
	sharein => GND,
	sumout => \POST_STDP|Add3~1_sumout\,
	cout => \POST_STDP|Add3~2\,
	shareout => \POST_STDP|Add3~3\);

-- Location: LABCELL_X37_Y2_N0
\POST_STDP|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add1~1_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[0]~input_o\ $ (!\POST_STDP|REG[0][-4]~q\) ) + ( !VCC ) + ( !VCC ))
-- \POST_STDP|Add1~2\ = CARRY(( !\STDP_DATAIN_POST_FIFO[0]~input_o\ $ (!\POST_STDP|REG[0][-4]~q\) ) + ( !VCC ) + ( !VCC ))
-- \POST_STDP|Add1~3\ = SHARE((!\STDP_DATAIN_POST_FIFO[0]~input_o\) # (\POST_STDP|REG[0][-4]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[0]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[0][-4]~q\,
	cin => GND,
	sharein => GND,
	sumout => \POST_STDP|Add1~1_sumout\,
	cout => \POST_STDP|Add1~2\,
	shareout => \POST_STDP|Add1~3\);

-- Location: FF_X37_Y2_N2
\POST_STDP|REG[0][-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add1~1_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[0][-4]~q\);

-- Location: LABCELL_X37_Y3_N36
\POST_STDP|top[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|top[0]~1_combout\ = ( \STDP_patchPOSTneuron~input_o\ & ( (!\POST_STDP|top\(0)) # (\POST_STDP|top\(1)) ) ) # ( !\STDP_patchPOSTneuron~input_o\ & ( \POST_STDP|top\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \POST_STDP|ALT_INV_top\(1),
	datad => \POST_STDP|ALT_INV_top\(0),
	dataf => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	combout => \POST_STDP|top[0]~1_combout\);

-- Location: FF_X37_Y3_N38
\POST_STDP|top[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|top[0]~1_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|top\(0));

-- Location: LABCELL_X37_Y3_N30
\POST_STDP|top[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|top[1]~0_combout\ = ((\STDP_patchPOSTneuron~input_o\ & \POST_STDP|top\(0))) # (\POST_STDP|top\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \POST_STDP|ALT_INV_top\(0),
	datad => \POST_STDP|ALT_INV_top\(1),
	combout => \POST_STDP|top[1]~0_combout\);

-- Location: FF_X36_Y3_N23
\POST_STDP|top[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	asdata => \POST_STDP|top[1]~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|top\(1));

-- Location: LABCELL_X38_Y2_N12
\POST_STDP|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|LessThan2~0_combout\ = ( !\POST_STDP|top\(1) & ( !\POST_STDP|top\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \POST_STDP|ALT_INV_top\(1),
	dataf => \POST_STDP|ALT_INV_top\(0),
	combout => \POST_STDP|LessThan2~0_combout\);

-- Location: FF_X37_Y2_N32
\POST_STDP|REG[1][-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add3~1_sumout\,
	asdata => \POST_STDP|REG[0][-4]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|LessThan2~0_combout\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[1][-4]~q\);

-- Location: FF_X36_Y2_N2
\POST_STDP|REG[2][-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add4~1_sumout\,
	asdata => \POST_STDP|REG[1][-4]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|ALT_INV_top\(1),
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[2][-4]~q\);

-- Location: LABCELL_X37_Y3_N0
\POST_STDP|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add5~1_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[0]~input_o\ $ (!\POST_STDP|REG[3][-4]~q\) ) + ( !VCC ) + ( !VCC ))
-- \POST_STDP|Add5~2\ = CARRY(( !\STDP_DATAIN_POST_FIFO[0]~input_o\ $ (!\POST_STDP|REG[3][-4]~q\) ) + ( !VCC ) + ( !VCC ))
-- \POST_STDP|Add5~3\ = SHARE((!\STDP_DATAIN_POST_FIFO[0]~input_o\) # (\POST_STDP|REG[3][-4]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001111111100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STDP_DATAIN_POST_FIFO[0]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[3][-4]~q\,
	cin => GND,
	sharein => GND,
	sumout => \POST_STDP|Add5~1_sumout\,
	cout => \POST_STDP|Add5~2\,
	shareout => \POST_STDP|Add5~3\);

-- Location: LABCELL_X37_Y3_N42
\POST_STDP|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|LessThan4~0_combout\ = (!\POST_STDP|top\(1)) # (!\POST_STDP|top\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POST_STDP|ALT_INV_top\(1),
	datac => \POST_STDP|ALT_INV_top\(0),
	combout => \POST_STDP|LessThan4~0_combout\);

-- Location: FF_X37_Y3_N2
\POST_STDP|REG[3][-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add5~1_sumout\,
	asdata => \POST_STDP|REG[2][-4]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|LessThan4~0_combout\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[3][-4]~q\);

-- Location: LABCELL_X37_Y3_N54
\idx~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \idx~2_combout\ = ( !idx(0) & ( \POST_STDP|top\(0) & ( (idx(1) & (!\STDP_patchPREneuron~input_o\ & !\STDP_patchPOSTneuron~input_o\)) ) ) ) # ( idx(0) & ( !\POST_STDP|top\(0) & ( (\POST_STDP|top\(1) & ((\STDP_patchPOSTneuron~input_o\) # 
-- (\STDP_patchPREneuron~input_o\))) ) ) ) # ( !idx(0) & ( !\POST_STDP|top\(0) & ( (!\STDP_patchPREneuron~input_o\ & ((!\STDP_patchPOSTneuron~input_o\ & ((idx(1)))) # (\STDP_patchPOSTneuron~input_o\ & (\POST_STDP|top\(1))))) # (\STDP_patchPREneuron~input_o\ 
-- & (\POST_STDP|top\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010101010101000001010101010100110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POST_STDP|ALT_INV_top\(1),
	datab => ALT_INV_idx(1),
	datac => \ALT_INV_STDP_patchPREneuron~input_o\,
	datad => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datae => ALT_INV_idx(0),
	dataf => \POST_STDP|ALT_INV_top\(0),
	combout => \idx~2_combout\);

-- Location: FF_X37_Y3_N56
\idx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \idx~2_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => idx(0));

-- Location: LABCELL_X37_Y4_N21
\idx~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \idx~3_combout\ = ( idx(1) & ( \POST_STDP|top\(0) & ( (!\STDP_patchPREneuron~input_o\ & ((!\STDP_patchPOSTneuron~input_o\ & (idx(0))) # (\STDP_patchPOSTneuron~input_o\ & ((\POST_STDP|top\(1)))))) # (\STDP_patchPREneuron~input_o\ & 
-- (((\POST_STDP|top\(1))))) ) ) ) # ( !idx(1) & ( \POST_STDP|top\(0) & ( (\POST_STDP|top\(1) & ((\STDP_patchPOSTneuron~input_o\) # (\STDP_patchPREneuron~input_o\))) ) ) ) # ( idx(1) & ( !\POST_STDP|top\(0) & ( (!\STDP_patchPREneuron~input_o\ & (idx(0) & 
-- !\STDP_patchPOSTneuron~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100000000000000101000011110010011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_patchPREneuron~input_o\,
	datab => ALT_INV_idx(0),
	datac => \POST_STDP|ALT_INV_top\(1),
	datad => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datae => ALT_INV_idx(1),
	dataf => \POST_STDP|ALT_INV_top\(0),
	combout => \idx~3_combout\);

-- Location: FF_X37_Y4_N23
\idx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \idx~3_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => idx(1));

-- Location: LABCELL_X37_Y4_N27
\idx~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \idx~1_combout\ = ( \STDP_patchPOSTneuron~input_o\ & ( \POST_STDP|top\(1) ) ) # ( !\STDP_patchPOSTneuron~input_o\ & ( (!\STDP_patchPREneuron~input_o\ & (idx(1))) # (\STDP_patchPREneuron~input_o\ & ((\POST_STDP|top\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_idx(1),
	datac => \POST_STDP|ALT_INV_top\(1),
	datad => \ALT_INV_STDP_patchPREneuron~input_o\,
	dataf => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	combout => \idx~1_combout\);

-- Location: FF_X37_Y4_N29
\CAL_ADDR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \idx~1_combout\,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CAL_ADDR(1));

-- Location: LABCELL_X37_Y4_N3
\idx~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \idx~0_combout\ = ( idx(0) & ( ((!\STDP_patchPREneuron~input_o\ & !\STDP_patchPOSTneuron~input_o\)) # (\POST_STDP|top\(0)) ) ) # ( !idx(0) & ( (\POST_STDP|top\(0) & ((\STDP_patchPOSTneuron~input_o\) # (\STDP_patchPREneuron~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111100011111000111100000111000001111000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_patchPREneuron~input_o\,
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \POST_STDP|ALT_INV_top\(0),
	datae => ALT_INV_idx(0),
	combout => \idx~0_combout\);

-- Location: FF_X37_Y4_N5
\CAL_ADDR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \idx~0_combout\,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CAL_ADDR(0));

-- Location: LABCELL_X37_Y2_N24
\POST_STDP|POP_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|POP_OUT~0_combout\ = ( CAL_ADDR(1) & ( CAL_ADDR(0) & ( \POST_STDP|REG[3][-4]~q\ ) ) ) # ( !CAL_ADDR(1) & ( CAL_ADDR(0) & ( \POST_STDP|REG[1][-4]~q\ ) ) ) # ( CAL_ADDR(1) & ( !CAL_ADDR(0) & ( \POST_STDP|REG[2][-4]~q\ ) ) ) # ( !CAL_ADDR(1) & ( 
-- !CAL_ADDR(0) & ( \POST_STDP|REG[0][-4]~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POST_STDP|ALT_INV_REG[2][-4]~q\,
	datab => \POST_STDP|ALT_INV_REG[1][-4]~q\,
	datac => \POST_STDP|ALT_INV_REG[0][-4]~q\,
	datad => \POST_STDP|ALT_INV_REG[3][-4]~q\,
	datae => ALT_INV_CAL_ADDR(1),
	dataf => ALT_INV_CAL_ADDR(0),
	combout => \POST_STDP|POP_OUT~0_combout\);

-- Location: LABCELL_X37_Y3_N24
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \POST_STDP|top\(1) & ( \POST_STDP|top\(0) & ( (((\STDP_patchPOSTneuron~input_o\) # (\STDP_patchPREneuron~input_o\)) # (idx(1))) # (idx(0)) ) ) ) # ( !\POST_STDP|top\(1) & ( \POST_STDP|top\(0) & ( (((\STDP_patchPOSTneuron~input_o\) # 
-- (\STDP_patchPREneuron~input_o\)) # (idx(1))) # (idx(0)) ) ) ) # ( \POST_STDP|top\(1) & ( !\POST_STDP|top\(0) & ( (((\STDP_patchPOSTneuron~input_o\) # (\STDP_patchPREneuron~input_o\)) # (idx(1))) # (idx(0)) ) ) ) # ( !\POST_STDP|top\(1) & ( 
-- !\POST_STDP|top\(0) & ( (!\STDP_patchPREneuron~input_o\ & (!\STDP_patchPOSTneuron~input_o\ & ((idx(1)) # (idx(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_idx(0),
	datab => ALT_INV_idx(1),
	datac => \ALT_INV_STDP_patchPREneuron~input_o\,
	datad => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datae => \POST_STDP|ALT_INV_top\(1),
	dataf => \POST_STDP|ALT_INV_top\(0),
	combout => \Equal0~0_combout\);

-- Location: FF_X37_Y3_N26
CAL_ENA : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \Equal0~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CAL_ENA~q\);

-- Location: FF_X36_Y4_N59
\POST_STDP|POP_OUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	asdata => \POST_STDP|POP_OUT~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|POP_OUT[0]~DUPLICATE_q\);

-- Location: MLABCELL_X36_Y4_N30
\PRE_STDP|Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add6~1_sumout\ = SUM(( !\PRE_STDP|REG[0][-4]~q\ $ (!\POST_STDP|POP_OUT[0]~DUPLICATE_q\) ) + ( !VCC ) + ( !VCC ))
-- \PRE_STDP|Add6~2\ = CARRY(( !\PRE_STDP|REG[0][-4]~q\ $ (!\POST_STDP|POP_OUT[0]~DUPLICATE_q\) ) + ( !VCC ) + ( !VCC ))
-- \PRE_STDP|Add6~3\ = SHARE((!\POST_STDP|POP_OUT[0]~DUPLICATE_q\) # (\PRE_STDP|REG[0][-4]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \PRE_STDP|ALT_INV_REG[0][-4]~q\,
	datad => \POST_STDP|ALT_INV_POP_OUT[0]~DUPLICATE_q\,
	cin => GND,
	sharein => GND,
	sumout => \PRE_STDP|Add6~1_sumout\,
	cout => \PRE_STDP|Add6~2\,
	shareout => \PRE_STDP|Add6~3\);

-- Location: LABCELL_X35_Y4_N30
\PRE_STDP|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add3~1_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[0]~input_o\ $ (!\PRE_STDP|REG[1][-4]~q\) ) + ( !VCC ) + ( !VCC ))
-- \PRE_STDP|Add3~2\ = CARRY(( !\STDP_DATAIN_POST_FIFO[0]~input_o\ $ (!\PRE_STDP|REG[1][-4]~q\) ) + ( !VCC ) + ( !VCC ))
-- \PRE_STDP|Add3~3\ = SHARE((!\STDP_DATAIN_POST_FIFO[0]~input_o\) # (\PRE_STDP|REG[1][-4]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[0]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[1][-4]~q\,
	cin => GND,
	sharein => GND,
	sumout => \PRE_STDP|Add3~1_sumout\,
	cout => \PRE_STDP|Add3~2\,
	shareout => \PRE_STDP|Add3~3\);

-- Location: LABCELL_X35_Y4_N54
\PRE_STDP|REG[1][-4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|REG[1][-4]~feeder_combout\ = ( \PRE_STDP|Add3~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \PRE_STDP|ALT_INV_Add3~1_sumout\,
	combout => \PRE_STDP|REG[1][-4]~feeder_combout\);

-- Location: LABCELL_X37_Y4_N24
\PRE_STDP|REG~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|REG~0_combout\ = ( \PRE_STDP|top\(1) & ( !\STDP_patchPOSTneuron~input_o\ ) ) # ( !\PRE_STDP|top\(1) & ( (!\PRE_STDP|top\(0)) # (!\STDP_patchPOSTneuron~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111100110011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PRE_STDP|ALT_INV_top\(0),
	datad => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	dataf => \PRE_STDP|ALT_INV_top\(1),
	combout => \PRE_STDP|REG~0_combout\);

-- Location: LABCELL_X37_Y4_N9
\PRE_STDP|REG[1][-4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|REG[1][-4]~1_combout\ = ( \STDP_patchPREneuron~input_o\ & ( \PRE_STDP|top\(1) ) ) # ( !\STDP_patchPREneuron~input_o\ & ( \PRE_STDP|top\(1) & ( \STDP_patchPOSTneuron~input_o\ ) ) ) # ( \STDP_patchPREneuron~input_o\ & ( !\PRE_STDP|top\(1) ) ) # ( 
-- !\STDP_patchPREneuron~input_o\ & ( !\PRE_STDP|top\(1) & ( (\PRE_STDP|top\(0) & \STDP_patchPOSTneuron~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PRE_STDP|ALT_INV_top\(0),
	datac => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datae => \ALT_INV_STDP_patchPREneuron~input_o\,
	dataf => \PRE_STDP|ALT_INV_top\(1),
	combout => \PRE_STDP|REG[1][-4]~1_combout\);

-- Location: FF_X35_Y4_N56
\PRE_STDP|REG[1][-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|REG[1][-4]~feeder_combout\,
	asdata => \PRE_STDP|REG[0][-4]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~0_combout\,
	ena => \PRE_STDP|REG[1][-4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[1][-4]~q\);

-- Location: LABCELL_X35_Y4_N0
\PRE_STDP|Add7~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add7~34_cout\ = CARRY(( GND ) + ( !VCC ) + ( !VCC ))
-- \PRE_STDP|Add7~35\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => GND,
	sharein => GND,
	cout => \PRE_STDP|Add7~34_cout\,
	shareout => \PRE_STDP|Add7~35\);

-- Location: LABCELL_X35_Y4_N3
\PRE_STDP|Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add7~1_sumout\ = SUM(( !\PRE_STDP|REG[1][-4]~q\ $ (!\POST_STDP|POP_OUT[0]~DUPLICATE_q\ $ (!\PRE_STDP|Add6~1_sumout\)) ) + ( \PRE_STDP|Add7~35\ ) + ( \PRE_STDP|Add7~34_cout\ ))
-- \PRE_STDP|Add7~2\ = CARRY(( !\PRE_STDP|REG[1][-4]~q\ $ (!\POST_STDP|POP_OUT[0]~DUPLICATE_q\ $ (!\PRE_STDP|Add6~1_sumout\)) ) + ( \PRE_STDP|Add7~35\ ) + ( \PRE_STDP|Add7~34_cout\ ))
-- \PRE_STDP|Add7~3\ = SHARE((!\PRE_STDP|REG[1][-4]~q\ & (!\POST_STDP|POP_OUT[0]~DUPLICATE_q\ & \PRE_STDP|Add6~1_sumout\)) # (\PRE_STDP|REG[1][-4]~q\ & ((!\POST_STDP|POP_OUT[0]~DUPLICATE_q\) # (\PRE_STDP|Add6~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001111010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_REG[1][-4]~q\,
	datac => \POST_STDP|ALT_INV_POP_OUT[0]~DUPLICATE_q\,
	datad => \PRE_STDP|ALT_INV_Add6~1_sumout\,
	cin => \PRE_STDP|Add7~34_cout\,
	sharein => \PRE_STDP|Add7~35\,
	sumout => \PRE_STDP|Add7~1_sumout\,
	cout => \PRE_STDP|Add7~2\,
	shareout => \PRE_STDP|Add7~3\);

-- Location: LABCELL_X35_Y3_N54
\PRE_STDP|total_SUM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|total_SUM~0_combout\ = ( \PRE_STDP|Add7~1_sumout\ & ( ((\PRE_STDP|Add6~1_sumout\) # (\PRE_STDP|top\(1))) # (\PRE_STDP|top\(0)) ) ) # ( !\PRE_STDP|Add7~1_sumout\ & ( (!\PRE_STDP|top\(0) & (!\PRE_STDP|top\(1) & \PRE_STDP|Add6~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(0),
	datac => \PRE_STDP|ALT_INV_top\(1),
	datad => \PRE_STDP|ALT_INV_Add6~1_sumout\,
	dataf => \PRE_STDP|ALT_INV_Add7~1_sumout\,
	combout => \PRE_STDP|total_SUM~0_combout\);

-- Location: FF_X36_Y4_N58
\POST_STDP|POP_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	asdata => \POST_STDP|POP_OUT~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|POP_OUT\(0));

-- Location: MLABCELL_X36_Y3_N30
\PRE_STDP|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add4~1_sumout\ = SUM(( !\PRE_STDP|REG[2][-4]~q\ $ (!\STDP_DATAIN_POST_FIFO[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \PRE_STDP|Add4~2\ = CARRY(( !\PRE_STDP|REG[2][-4]~q\ $ (!\STDP_DATAIN_POST_FIFO[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \PRE_STDP|Add4~3\ = SHARE((!\STDP_DATAIN_POST_FIFO[0]~input_o\) # (\PRE_STDP|REG[2][-4]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \PRE_STDP|ALT_INV_REG[2][-4]~q\,
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \PRE_STDP|Add4~1_sumout\,
	cout => \PRE_STDP|Add4~2\,
	shareout => \PRE_STDP|Add4~3\);

-- Location: MLABCELL_X36_Y3_N12
\PRE_STDP|REG[2][-4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|REG[2][-4]~feeder_combout\ = ( \PRE_STDP|Add4~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \PRE_STDP|ALT_INV_Add4~1_sumout\,
	combout => \PRE_STDP|REG[2][-4]~feeder_combout\);

-- Location: LABCELL_X37_Y3_N51
\PRE_STDP|REG~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|REG~2_combout\ = ( \PRE_STDP|top\(1) & ( !\STDP_patchPOSTneuron~input_o\ ) ) # ( !\PRE_STDP|top\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	dataf => \PRE_STDP|ALT_INV_top\(1),
	combout => \PRE_STDP|REG~2_combout\);

-- Location: LABCELL_X37_Y3_N48
\PRE_STDP|REG[2][-4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|REG[2][-4]~3_combout\ = ( \PRE_STDP|top\(1) & ( (\STDP_patchPREneuron~input_o\) # (\STDP_patchPOSTneuron~input_o\) ) ) # ( !\PRE_STDP|top\(1) & ( \STDP_patchPREneuron~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \ALT_INV_STDP_patchPREneuron~input_o\,
	dataf => \PRE_STDP|ALT_INV_top\(1),
	combout => \PRE_STDP|REG[2][-4]~3_combout\);

-- Location: FF_X36_Y3_N14
\PRE_STDP|REG[2][-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|REG[2][-4]~feeder_combout\,
	asdata => \PRE_STDP|REG[1][-4]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~2_combout\,
	ena => \PRE_STDP|REG[2][-4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[2][-4]~q\);

-- Location: LABCELL_X35_Y3_N0
\PRE_STDP|Add9~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add9~34_cout\ = CARRY(( GND ) + ( !VCC ) + ( !VCC ))
-- \PRE_STDP|Add9~35\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => GND,
	sharein => GND,
	cout => \PRE_STDP|Add9~34_cout\,
	shareout => \PRE_STDP|Add9~35\);

-- Location: LABCELL_X35_Y3_N3
\PRE_STDP|Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add9~1_sumout\ = SUM(( !\POST_STDP|POP_OUT\(0) $ (!\PRE_STDP|REG[2][-4]~q\ $ (!\PRE_STDP|total_SUM~0_combout\)) ) + ( \PRE_STDP|Add9~35\ ) + ( \PRE_STDP|Add9~34_cout\ ))
-- \PRE_STDP|Add9~2\ = CARRY(( !\POST_STDP|POP_OUT\(0) $ (!\PRE_STDP|REG[2][-4]~q\ $ (!\PRE_STDP|total_SUM~0_combout\)) ) + ( \PRE_STDP|Add9~35\ ) + ( \PRE_STDP|Add9~34_cout\ ))
-- \PRE_STDP|Add9~3\ = SHARE((!\POST_STDP|POP_OUT\(0) & ((\PRE_STDP|total_SUM~0_combout\) # (\PRE_STDP|REG[2][-4]~q\))) # (\POST_STDP|POP_OUT\(0) & (\PRE_STDP|REG[2][-4]~q\ & \PRE_STDP|total_SUM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001100111100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \POST_STDP|ALT_INV_POP_OUT\(0),
	datac => \PRE_STDP|ALT_INV_REG[2][-4]~q\,
	datad => \PRE_STDP|ALT_INV_total_SUM~0_combout\,
	cin => \PRE_STDP|Add9~34_cout\,
	sharein => \PRE_STDP|Add9~35\,
	sumout => \PRE_STDP|Add9~1_sumout\,
	cout => \PRE_STDP|Add9~2\,
	shareout => \PRE_STDP|Add9~3\);

-- Location: LABCELL_X34_Y3_N9
\PRE_STDP|total_SUM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|total_SUM~1_combout\ = ( \PRE_STDP|total_SUM~0_combout\ & ( \PRE_STDP|Add9~1_sumout\ ) ) # ( !\PRE_STDP|total_SUM~0_combout\ & ( \PRE_STDP|Add9~1_sumout\ & ( \PRE_STDP|top\(1) ) ) ) # ( \PRE_STDP|total_SUM~0_combout\ & ( 
-- !\PRE_STDP|Add9~1_sumout\ & ( !\PRE_STDP|top\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PRE_STDP|ALT_INV_top\(1),
	datae => \PRE_STDP|ALT_INV_total_SUM~0_combout\,
	dataf => \PRE_STDP|ALT_INV_Add9~1_sumout\,
	combout => \PRE_STDP|total_SUM~1_combout\);

-- Location: LABCELL_X35_Y1_N30
\PRE_STDP|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add5~1_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[0]~input_o\ $ (!\PRE_STDP|REG[3][-4]~q\) ) + ( !VCC ) + ( !VCC ))
-- \PRE_STDP|Add5~2\ = CARRY(( !\STDP_DATAIN_POST_FIFO[0]~input_o\ $ (!\PRE_STDP|REG[3][-4]~q\) ) + ( !VCC ) + ( !VCC ))
-- \PRE_STDP|Add5~3\ = SHARE((!\STDP_DATAIN_POST_FIFO[0]~input_o\) # (\PRE_STDP|REG[3][-4]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001111111100000000000000000011001111001100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STDP_DATAIN_POST_FIFO[0]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[3][-4]~q\,
	cin => GND,
	sharein => GND,
	sumout => \PRE_STDP|Add5~1_sumout\,
	cout => \PRE_STDP|Add5~2\,
	shareout => \PRE_STDP|Add5~3\);

-- Location: MLABCELL_X36_Y2_N24
\PRE_STDP|REG~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|REG~4_combout\ = ( \PRE_STDP|top\(1) & ( (!\PRE_STDP|top\(0)) # (!\STDP_patchPOSTneuron~input_o\) ) ) # ( !\PRE_STDP|top\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111001111110011111111111111111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \PRE_STDP|ALT_INV_top\(0),
	datac => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datae => \PRE_STDP|ALT_INV_top\(1),
	combout => \PRE_STDP|REG~4_combout\);

-- Location: LABCELL_X37_Y3_N33
\PRE_STDP|REG[3][3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|REG[3][3]~5_combout\ = ( \PRE_STDP|top\(0) & ( ((\STDP_patchPOSTneuron~input_o\ & \PRE_STDP|top\(1))) # (\STDP_patchPREneuron~input_o\) ) ) # ( !\PRE_STDP|top\(0) & ( \STDP_patchPREneuron~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111110000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \PRE_STDP|ALT_INV_top\(1),
	datad => \ALT_INV_STDP_patchPREneuron~input_o\,
	dataf => \PRE_STDP|ALT_INV_top\(0),
	combout => \PRE_STDP|REG[3][3]~5_combout\);

-- Location: FF_X35_Y1_N32
\PRE_STDP|REG[3][-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add5~1_sumout\,
	asdata => \PRE_STDP|REG[2][-4]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~4_combout\,
	ena => \PRE_STDP|REG[3][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[3][-4]~q\);

-- Location: LABCELL_X35_Y2_N30
\PRE_STDP|Add11~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add11~34_cout\ = CARRY(( GND ) + ( !VCC ) + ( !VCC ))
-- \PRE_STDP|Add11~35\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => GND,
	sharein => GND,
	cout => \PRE_STDP|Add11~34_cout\,
	shareout => \PRE_STDP|Add11~35\);

-- Location: LABCELL_X35_Y2_N33
\PRE_STDP|Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add11~1_sumout\ = SUM(( !\POST_STDP|POP_OUT\(0) $ (!\PRE_STDP|REG[3][-4]~q\ $ (!\PRE_STDP|total_SUM~1_combout\)) ) + ( \PRE_STDP|Add11~35\ ) + ( \PRE_STDP|Add11~34_cout\ ))
-- \PRE_STDP|Add11~2\ = CARRY(( !\POST_STDP|POP_OUT\(0) $ (!\PRE_STDP|REG[3][-4]~q\ $ (!\PRE_STDP|total_SUM~1_combout\)) ) + ( \PRE_STDP|Add11~35\ ) + ( \PRE_STDP|Add11~34_cout\ ))
-- \PRE_STDP|Add11~3\ = SHARE((!\POST_STDP|POP_OUT\(0) & ((\PRE_STDP|total_SUM~1_combout\) # (\PRE_STDP|REG[3][-4]~q\))) # (\POST_STDP|POP_OUT\(0) & (\PRE_STDP|REG[3][-4]~q\ & \PRE_STDP|total_SUM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010111100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \POST_STDP|ALT_INV_POP_OUT\(0),
	datac => \PRE_STDP|ALT_INV_REG[3][-4]~q\,
	datad => \PRE_STDP|ALT_INV_total_SUM~1_combout\,
	cin => \PRE_STDP|Add11~34_cout\,
	sharein => \PRE_STDP|Add11~35\,
	sumout => \PRE_STDP|Add11~1_sumout\,
	cout => \PRE_STDP|Add11~2\,
	shareout => \PRE_STDP|Add11~3\);

-- Location: LABCELL_X35_Y2_N6
\PRE_STDP|DATA_CAL_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|DATA_CAL_OUT~0_combout\ = ( \PRE_STDP|Add11~1_sumout\ & ( ((\PRE_STDP|top\(0) & \PRE_STDP|top\(1))) # (\PRE_STDP|total_SUM~1_combout\) ) ) # ( !\PRE_STDP|Add11~1_sumout\ & ( (\PRE_STDP|total_SUM~1_combout\ & ((!\PRE_STDP|top\(0)) # 
-- (!\PRE_STDP|top\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(0),
	datab => \PRE_STDP|ALT_INV_top\(1),
	datad => \PRE_STDP|ALT_INV_total_SUM~1_combout\,
	dataf => \PRE_STDP|ALT_INV_Add11~1_sumout\,
	combout => \PRE_STDP|DATA_CAL_OUT~0_combout\);

-- Location: FF_X35_Y2_N8
\PRE_STDP|DATA_CAL_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|DATA_CAL_OUT~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|DATA_CAL_OUT\(0));

-- Location: FF_X73_Y2_N1
\PRE_SUM[-4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \Add1~1_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_SUM[-4]~q\);

-- Location: MLABCELL_X73_Y2_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( (!\STDP_patchPREneuron~input_o\ & (!\STDP_patchPOSTneuron~input_o\ & \PRE_SUM[-4]~q\)) ) + ( \PRE_STDP|DATA_CAL_OUT\(0) ) + ( !VCC ))
-- \Add1~2\ = CARRY(( (!\STDP_patchPREneuron~input_o\ & (!\STDP_patchPOSTneuron~input_o\ & \PRE_SUM[-4]~q\)) ) + ( \PRE_STDP|DATA_CAL_OUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_patchPREneuron~input_o\,
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \PRE_STDP|ALT_INV_DATA_CAL_OUT\(0),
	datad => \ALT_INV_PRE_SUM[-4]~q\,
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: IOIBUF_X84_Y0_N18
\synapsePush~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_synapsePush,
	o => \synapsePush~input_o\);

-- Location: FF_X73_Y2_N41
\STDP_OUT[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	asdata => \Add1~1_sumout\,
	sclr => \ALT_INV_synapsePush~input_o\,
	sload => VCC,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STDP_OUT[0]~reg0_q\);

-- Location: IOIBUF_X37_Y0_N35
\STDP_DATAIN_POST_FIFO[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_DATAIN_POST_FIFO(1),
	o => \STDP_DATAIN_POST_FIFO[1]~input_o\);

-- Location: LABCELL_X37_Y2_N3
\POST_STDP|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add1~5_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[1]~input_o\ $ (\POST_STDP|REG[0][-3]~q\) ) + ( \POST_STDP|Add1~3\ ) + ( \POST_STDP|Add1~2\ ))
-- \POST_STDP|Add1~6\ = CARRY(( !\STDP_DATAIN_POST_FIFO[1]~input_o\ $ (\POST_STDP|REG[0][-3]~q\) ) + ( \POST_STDP|Add1~3\ ) + ( \POST_STDP|Add1~2\ ))
-- \POST_STDP|Add1~7\ = SHARE((!\STDP_DATAIN_POST_FIFO[1]~input_o\ & \POST_STDP|REG[0][-3]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_DATAIN_POST_FIFO[1]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[0][-3]~q\,
	cin => \POST_STDP|Add1~2\,
	sharein => \POST_STDP|Add1~3\,
	sumout => \POST_STDP|Add1~5_sumout\,
	cout => \POST_STDP|Add1~6\,
	shareout => \POST_STDP|Add1~7\);

-- Location: FF_X37_Y2_N5
\POST_STDP|REG[0][-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add1~5_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[0][-3]~q\);

-- Location: MLABCELL_X36_Y2_N3
\POST_STDP|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add4~5_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[1]~input_o\ $ (\POST_STDP|REG[2][-3]~q\) ) + ( \POST_STDP|Add4~3\ ) + ( \POST_STDP|Add4~2\ ))
-- \POST_STDP|Add4~6\ = CARRY(( !\STDP_DATAIN_POST_FIFO[1]~input_o\ $ (\POST_STDP|REG[2][-3]~q\) ) + ( \POST_STDP|Add4~3\ ) + ( \POST_STDP|Add4~2\ ))
-- \POST_STDP|Add4~7\ = SHARE((!\STDP_DATAIN_POST_FIFO[1]~input_o\ & \POST_STDP|REG[2][-3]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[1]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[2][-3]~q\,
	cin => \POST_STDP|Add4~2\,
	sharein => \POST_STDP|Add4~3\,
	sumout => \POST_STDP|Add4~5_sumout\,
	cout => \POST_STDP|Add4~6\,
	shareout => \POST_STDP|Add4~7\);

-- Location: LABCELL_X37_Y2_N33
\POST_STDP|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add3~5_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[1]~input_o\ $ (\POST_STDP|REG[1][-3]~q\) ) + ( \POST_STDP|Add3~3\ ) + ( \POST_STDP|Add3~2\ ))
-- \POST_STDP|Add3~6\ = CARRY(( !\STDP_DATAIN_POST_FIFO[1]~input_o\ $ (\POST_STDP|REG[1][-3]~q\) ) + ( \POST_STDP|Add3~3\ ) + ( \POST_STDP|Add3~2\ ))
-- \POST_STDP|Add3~7\ = SHARE((!\STDP_DATAIN_POST_FIFO[1]~input_o\ & \POST_STDP|REG[1][-3]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_DATAIN_POST_FIFO[1]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[1][-3]~q\,
	cin => \POST_STDP|Add3~2\,
	sharein => \POST_STDP|Add3~3\,
	sumout => \POST_STDP|Add3~5_sumout\,
	cout => \POST_STDP|Add3~6\,
	shareout => \POST_STDP|Add3~7\);

-- Location: FF_X37_Y2_N35
\POST_STDP|REG[1][-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add3~5_sumout\,
	asdata => \POST_STDP|REG[0][-3]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|LessThan2~0_combout\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[1][-3]~q\);

-- Location: FF_X36_Y2_N5
\POST_STDP|REG[2][-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add4~5_sumout\,
	asdata => \POST_STDP|REG[1][-3]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|ALT_INV_top\(1),
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[2][-3]~q\);

-- Location: LABCELL_X37_Y3_N3
\POST_STDP|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add5~5_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[1]~input_o\ $ (\POST_STDP|REG[3][-3]~q\) ) + ( \POST_STDP|Add5~3\ ) + ( \POST_STDP|Add5~2\ ))
-- \POST_STDP|Add5~6\ = CARRY(( !\STDP_DATAIN_POST_FIFO[1]~input_o\ $ (\POST_STDP|REG[3][-3]~q\) ) + ( \POST_STDP|Add5~3\ ) + ( \POST_STDP|Add5~2\ ))
-- \POST_STDP|Add5~7\ = SHARE((!\STDP_DATAIN_POST_FIFO[1]~input_o\ & \POST_STDP|REG[3][-3]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[1]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[3][-3]~q\,
	cin => \POST_STDP|Add5~2\,
	sharein => \POST_STDP|Add5~3\,
	sumout => \POST_STDP|Add5~5_sumout\,
	cout => \POST_STDP|Add5~6\,
	shareout => \POST_STDP|Add5~7\);

-- Location: FF_X37_Y3_N5
\POST_STDP|REG[3][-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add5~5_sumout\,
	asdata => \POST_STDP|REG[2][-3]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|LessThan4~0_combout\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[3][-3]~q\);

-- Location: LABCELL_X37_Y2_N54
\POST_STDP|POP_OUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|POP_OUT~1_combout\ = ( \POST_STDP|REG[3][-3]~q\ & ( CAL_ADDR(0) & ( (\POST_STDP|REG[1][-3]~q\) # (CAL_ADDR(1)) ) ) ) # ( !\POST_STDP|REG[3][-3]~q\ & ( CAL_ADDR(0) & ( (!CAL_ADDR(1) & \POST_STDP|REG[1][-3]~q\) ) ) ) # ( \POST_STDP|REG[3][-3]~q\ 
-- & ( !CAL_ADDR(0) & ( (!CAL_ADDR(1) & (\POST_STDP|REG[0][-3]~q\)) # (CAL_ADDR(1) & ((\POST_STDP|REG[2][-3]~q\))) ) ) ) # ( !\POST_STDP|REG[3][-3]~q\ & ( !CAL_ADDR(0) & ( (!CAL_ADDR(1) & (\POST_STDP|REG[0][-3]~q\)) # (CAL_ADDR(1) & 
-- ((\POST_STDP|REG[2][-3]~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \POST_STDP|ALT_INV_REG[0][-3]~q\,
	datab => \POST_STDP|ALT_INV_REG[2][-3]~q\,
	datac => ALT_INV_CAL_ADDR(1),
	datad => \POST_STDP|ALT_INV_REG[1][-3]~q\,
	datae => \POST_STDP|ALT_INV_REG[3][-3]~q\,
	dataf => ALT_INV_CAL_ADDR(0),
	combout => \POST_STDP|POP_OUT~1_combout\);

-- Location: FF_X36_Y4_N17
\POST_STDP|POP_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	asdata => \POST_STDP|POP_OUT~1_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|POP_OUT\(1));

-- Location: IOIBUF_X69_Y0_N18
\STDP_DATAIN_PRE_FIFO[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_DATAIN_PRE_FIFO(1),
	o => \STDP_DATAIN_PRE_FIFO[1]~input_o\);

-- Location: LABCELL_X37_Y4_N36
\PRE_STDP|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add1~5_sumout\ = SUM(( \PRE_STDP|REG[0][-3]~q\ ) + ( (!\STDP_patchPOSTneuron~input_o\ & ((\STDP_DATAIN_PRE_FIFO[1]~input_o\))) # (\STDP_patchPOSTneuron~input_o\ & (!\STDP_DATAIN_POST_FIFO[1]~input_o\)) ) + ( \PRE_STDP|Add1~2\ ))
-- \PRE_STDP|Add1~6\ = CARRY(( \PRE_STDP|REG[0][-3]~q\ ) + ( (!\STDP_patchPOSTneuron~input_o\ & ((\STDP_DATAIN_PRE_FIFO[1]~input_o\))) # (\STDP_patchPOSTneuron~input_o\ & (!\STDP_DATAIN_POST_FIFO[1]~input_o\)) ) + ( \PRE_STDP|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[1]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[0][-3]~q\,
	dataf => \ALT_INV_STDP_DATAIN_PRE_FIFO[1]~input_o\,
	cin => \PRE_STDP|Add1~2\,
	sumout => \PRE_STDP|Add1~5_sumout\,
	cout => \PRE_STDP|Add1~6\);

-- Location: FF_X37_Y4_N38
\PRE_STDP|REG[0][-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add1~5_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[0][-3]~q\);

-- Location: MLABCELL_X36_Y4_N33
\PRE_STDP|Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add6~5_sumout\ = SUM(( !\POST_STDP|POP_OUT\(1) $ (\PRE_STDP|REG[0][-3]~q\) ) + ( \PRE_STDP|Add6~3\ ) + ( \PRE_STDP|Add6~2\ ))
-- \PRE_STDP|Add6~6\ = CARRY(( !\POST_STDP|POP_OUT\(1) $ (\PRE_STDP|REG[0][-3]~q\) ) + ( \PRE_STDP|Add6~3\ ) + ( \PRE_STDP|Add6~2\ ))
-- \PRE_STDP|Add6~7\ = SHARE((!\POST_STDP|POP_OUT\(1) & \PRE_STDP|REG[0][-3]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \POST_STDP|ALT_INV_POP_OUT\(1),
	datad => \PRE_STDP|ALT_INV_REG[0][-3]~q\,
	cin => \PRE_STDP|Add6~2\,
	sharein => \PRE_STDP|Add6~3\,
	sumout => \PRE_STDP|Add6~5_sumout\,
	cout => \PRE_STDP|Add6~6\,
	shareout => \PRE_STDP|Add6~7\);

-- Location: LABCELL_X35_Y4_N33
\PRE_STDP|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add3~5_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[1]~input_o\ $ (\PRE_STDP|REG[1][-3]~q\) ) + ( \PRE_STDP|Add3~3\ ) + ( \PRE_STDP|Add3~2\ ))
-- \PRE_STDP|Add3~6\ = CARRY(( !\STDP_DATAIN_POST_FIFO[1]~input_o\ $ (\PRE_STDP|REG[1][-3]~q\) ) + ( \PRE_STDP|Add3~3\ ) + ( \PRE_STDP|Add3~2\ ))
-- \PRE_STDP|Add3~7\ = SHARE((!\STDP_DATAIN_POST_FIFO[1]~input_o\ & \PRE_STDP|REG[1][-3]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_DATAIN_POST_FIFO[1]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[1][-3]~q\,
	cin => \PRE_STDP|Add3~2\,
	sharein => \PRE_STDP|Add3~3\,
	sumout => \PRE_STDP|Add3~5_sumout\,
	cout => \PRE_STDP|Add3~6\,
	shareout => \PRE_STDP|Add3~7\);

-- Location: FF_X35_Y4_N35
\PRE_STDP|REG[1][-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add3~5_sumout\,
	asdata => \PRE_STDP|REG[0][-3]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~0_combout\,
	ena => \PRE_STDP|REG[1][-4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[1][-3]~q\);

-- Location: LABCELL_X35_Y4_N6
\PRE_STDP|Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add7~5_sumout\ = SUM(( !\PRE_STDP|REG[1][-3]~q\ $ (!\PRE_STDP|Add6~5_sumout\ $ (!\POST_STDP|POP_OUT\(1))) ) + ( \PRE_STDP|Add7~3\ ) + ( \PRE_STDP|Add7~2\ ))
-- \PRE_STDP|Add7~6\ = CARRY(( !\PRE_STDP|REG[1][-3]~q\ $ (!\PRE_STDP|Add6~5_sumout\ $ (!\POST_STDP|POP_OUT\(1))) ) + ( \PRE_STDP|Add7~3\ ) + ( \PRE_STDP|Add7~2\ ))
-- \PRE_STDP|Add7~7\ = SHARE((!\PRE_STDP|REG[1][-3]~q\ & (\PRE_STDP|Add6~5_sumout\ & !\POST_STDP|POP_OUT\(1))) # (\PRE_STDP|REG[1][-3]~q\ & ((!\POST_STDP|POP_OUT\(1)) # (\PRE_STDP|Add6~5_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110000010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_REG[1][-3]~q\,
	datac => \PRE_STDP|ALT_INV_Add6~5_sumout\,
	datad => \POST_STDP|ALT_INV_POP_OUT\(1),
	cin => \PRE_STDP|Add7~2\,
	sharein => \PRE_STDP|Add7~3\,
	sumout => \PRE_STDP|Add7~5_sumout\,
	cout => \PRE_STDP|Add7~6\,
	shareout => \PRE_STDP|Add7~7\);

-- Location: MLABCELL_X36_Y3_N15
\PRE_STDP|total_SUM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|total_SUM~2_combout\ = ( \PRE_STDP|Add7~5_sumout\ & ( ((\PRE_STDP|top\(1)) # (\PRE_STDP|Add6~5_sumout\)) # (\PRE_STDP|top\(0)) ) ) # ( !\PRE_STDP|Add7~5_sumout\ & ( (!\PRE_STDP|top\(0) & (\PRE_STDP|Add6~5_sumout\ & !\PRE_STDP|top\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(0),
	datac => \PRE_STDP|ALT_INV_Add6~5_sumout\,
	datad => \PRE_STDP|ALT_INV_top\(1),
	dataf => \PRE_STDP|ALT_INV_Add7~5_sumout\,
	combout => \PRE_STDP|total_SUM~2_combout\);

-- Location: MLABCELL_X36_Y3_N33
\PRE_STDP|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add4~5_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[1]~input_o\ $ (\PRE_STDP|REG[2][-3]~q\) ) + ( \PRE_STDP|Add4~3\ ) + ( \PRE_STDP|Add4~2\ ))
-- \PRE_STDP|Add4~6\ = CARRY(( !\STDP_DATAIN_POST_FIFO[1]~input_o\ $ (\PRE_STDP|REG[2][-3]~q\) ) + ( \PRE_STDP|Add4~3\ ) + ( \PRE_STDP|Add4~2\ ))
-- \PRE_STDP|Add4~7\ = SHARE((!\STDP_DATAIN_POST_FIFO[1]~input_o\ & \PRE_STDP|REG[2][-3]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[1]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[2][-3]~q\,
	cin => \PRE_STDP|Add4~2\,
	sharein => \PRE_STDP|Add4~3\,
	sumout => \PRE_STDP|Add4~5_sumout\,
	cout => \PRE_STDP|Add4~6\,
	shareout => \PRE_STDP|Add4~7\);

-- Location: FF_X36_Y3_N35
\PRE_STDP|REG[2][-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add4~5_sumout\,
	asdata => \PRE_STDP|REG[1][-3]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~2_combout\,
	ena => \PRE_STDP|REG[2][-4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[2][-3]~q\);

-- Location: LABCELL_X35_Y3_N6
\PRE_STDP|Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add9~5_sumout\ = SUM(( !\POST_STDP|POP_OUT\(1) $ (!\PRE_STDP|REG[2][-3]~q\ $ (!\PRE_STDP|total_SUM~2_combout\)) ) + ( \PRE_STDP|Add9~3\ ) + ( \PRE_STDP|Add9~2\ ))
-- \PRE_STDP|Add9~6\ = CARRY(( !\POST_STDP|POP_OUT\(1) $ (!\PRE_STDP|REG[2][-3]~q\ $ (!\PRE_STDP|total_SUM~2_combout\)) ) + ( \PRE_STDP|Add9~3\ ) + ( \PRE_STDP|Add9~2\ ))
-- \PRE_STDP|Add9~7\ = SHARE((!\POST_STDP|POP_OUT\(1) & ((\PRE_STDP|total_SUM~2_combout\) # (\PRE_STDP|REG[2][-3]~q\))) # (\POST_STDP|POP_OUT\(1) & (\PRE_STDP|REG[2][-3]~q\ & \PRE_STDP|total_SUM~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010111100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \POST_STDP|ALT_INV_POP_OUT\(1),
	datac => \PRE_STDP|ALT_INV_REG[2][-3]~q\,
	datad => \PRE_STDP|ALT_INV_total_SUM~2_combout\,
	cin => \PRE_STDP|Add9~2\,
	sharein => \PRE_STDP|Add9~3\,
	sumout => \PRE_STDP|Add9~5_sumout\,
	cout => \PRE_STDP|Add9~6\,
	shareout => \PRE_STDP|Add9~7\);

-- Location: MLABCELL_X36_Y3_N3
\PRE_STDP|total_SUM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|total_SUM~3_combout\ = ( \PRE_STDP|Add9~5_sumout\ & ( (\PRE_STDP|total_SUM~2_combout\) # (\PRE_STDP|top\(1)) ) ) # ( !\PRE_STDP|Add9~5_sumout\ & ( (!\PRE_STDP|top\(1) & \PRE_STDP|total_SUM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(1),
	datac => \PRE_STDP|ALT_INV_total_SUM~2_combout\,
	dataf => \PRE_STDP|ALT_INV_Add9~5_sumout\,
	combout => \PRE_STDP|total_SUM~3_combout\);

-- Location: LABCELL_X35_Y1_N33
\PRE_STDP|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add5~5_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[1]~input_o\ $ (\PRE_STDP|REG[3][-3]~q\) ) + ( \PRE_STDP|Add5~3\ ) + ( \PRE_STDP|Add5~2\ ))
-- \PRE_STDP|Add5~6\ = CARRY(( !\STDP_DATAIN_POST_FIFO[1]~input_o\ $ (\PRE_STDP|REG[3][-3]~q\) ) + ( \PRE_STDP|Add5~3\ ) + ( \PRE_STDP|Add5~2\ ))
-- \PRE_STDP|Add5~7\ = SHARE((!\STDP_DATAIN_POST_FIFO[1]~input_o\ & \PRE_STDP|REG[3][-3]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[1]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[3][-3]~q\,
	cin => \PRE_STDP|Add5~2\,
	sharein => \PRE_STDP|Add5~3\,
	sumout => \PRE_STDP|Add5~5_sumout\,
	cout => \PRE_STDP|Add5~6\,
	shareout => \PRE_STDP|Add5~7\);

-- Location: FF_X35_Y1_N35
\PRE_STDP|REG[3][-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add5~5_sumout\,
	asdata => \PRE_STDP|REG[2][-3]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~4_combout\,
	ena => \PRE_STDP|REG[3][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[3][-3]~q\);

-- Location: LABCELL_X35_Y2_N36
\PRE_STDP|Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add11~5_sumout\ = SUM(( !\PRE_STDP|REG[3][-3]~q\ $ (!\POST_STDP|POP_OUT\(1) $ (!\PRE_STDP|total_SUM~3_combout\)) ) + ( \PRE_STDP|Add11~3\ ) + ( \PRE_STDP|Add11~2\ ))
-- \PRE_STDP|Add11~6\ = CARRY(( !\PRE_STDP|REG[3][-3]~q\ $ (!\POST_STDP|POP_OUT\(1) $ (!\PRE_STDP|total_SUM~3_combout\)) ) + ( \PRE_STDP|Add11~3\ ) + ( \PRE_STDP|Add11~2\ ))
-- \PRE_STDP|Add11~7\ = SHARE((!\PRE_STDP|REG[3][-3]~q\ & (!\POST_STDP|POP_OUT\(1) & \PRE_STDP|total_SUM~3_combout\)) # (\PRE_STDP|REG[3][-3]~q\ & ((!\POST_STDP|POP_OUT\(1)) # (\PRE_STDP|total_SUM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001111001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \PRE_STDP|ALT_INV_REG[3][-3]~q\,
	datac => \POST_STDP|ALT_INV_POP_OUT\(1),
	datad => \PRE_STDP|ALT_INV_total_SUM~3_combout\,
	cin => \PRE_STDP|Add11~2\,
	sharein => \PRE_STDP|Add11~3\,
	sumout => \PRE_STDP|Add11~5_sumout\,
	cout => \PRE_STDP|Add11~6\,
	shareout => \PRE_STDP|Add11~7\);

-- Location: LABCELL_X35_Y2_N12
\PRE_STDP|DATA_CAL_OUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|DATA_CAL_OUT~1_combout\ = (!\PRE_STDP|top\(0) & (((\PRE_STDP|total_SUM~3_combout\)))) # (\PRE_STDP|top\(0) & ((!\PRE_STDP|top\(1) & (\PRE_STDP|total_SUM~3_combout\)) # (\PRE_STDP|top\(1) & ((\PRE_STDP|Add11~5_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(0),
	datab => \PRE_STDP|ALT_INV_top\(1),
	datac => \PRE_STDP|ALT_INV_total_SUM~3_combout\,
	datad => \PRE_STDP|ALT_INV_Add11~5_sumout\,
	combout => \PRE_STDP|DATA_CAL_OUT~1_combout\);

-- Location: FF_X35_Y2_N13
\PRE_STDP|DATA_CAL_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|DATA_CAL_OUT~1_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|DATA_CAL_OUT\(1));

-- Location: FF_X73_Y2_N5
\PRE_SUM[-3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_SUM[-3]~q\);

-- Location: MLABCELL_X73_Y2_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( (!\STDP_patchPREneuron~input_o\ & (!\STDP_patchPOSTneuron~input_o\ & \PRE_SUM[-3]~q\)) ) + ( \PRE_STDP|DATA_CAL_OUT\(1) ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( (!\STDP_patchPREneuron~input_o\ & (!\STDP_patchPOSTneuron~input_o\ & \PRE_SUM[-3]~q\)) ) + ( \PRE_STDP|DATA_CAL_OUT\(1) ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_patchPREneuron~input_o\,
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \PRE_STDP|ALT_INV_DATA_CAL_OUT\(1),
	datad => \ALT_INV_PRE_SUM[-3]~q\,
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X73_Y2_N37
\STDP_OUT[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	asdata => \Add1~5_sumout\,
	sclr => \ALT_INV_synapsePush~input_o\,
	sload => VCC,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STDP_OUT[1]~reg0_q\);

-- Location: IOIBUF_X37_Y0_N18
\STDP_DATAIN_POST_FIFO[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_DATAIN_POST_FIFO(2),
	o => \STDP_DATAIN_POST_FIFO[2]~input_o\);

-- Location: LABCELL_X37_Y2_N6
\POST_STDP|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add1~9_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[2]~input_o\ $ (\POST_STDP|REG[0][-2]~q\) ) + ( \POST_STDP|Add1~7\ ) + ( \POST_STDP|Add1~6\ ))
-- \POST_STDP|Add1~10\ = CARRY(( !\STDP_DATAIN_POST_FIFO[2]~input_o\ $ (\POST_STDP|REG[0][-2]~q\) ) + ( \POST_STDP|Add1~7\ ) + ( \POST_STDP|Add1~6\ ))
-- \POST_STDP|Add1~11\ = SHARE((!\STDP_DATAIN_POST_FIFO[2]~input_o\ & \POST_STDP|REG[0][-2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[2]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[0][-2]~q\,
	cin => \POST_STDP|Add1~6\,
	sharein => \POST_STDP|Add1~7\,
	sumout => \POST_STDP|Add1~9_sumout\,
	cout => \POST_STDP|Add1~10\,
	shareout => \POST_STDP|Add1~11\);

-- Location: FF_X37_Y2_N8
\POST_STDP|REG[0][-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add1~9_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[0][-2]~q\);

-- Location: LABCELL_X37_Y2_N36
\POST_STDP|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add3~9_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[2]~input_o\ $ (\POST_STDP|REG[1][-2]~q\) ) + ( \POST_STDP|Add3~7\ ) + ( \POST_STDP|Add3~6\ ))
-- \POST_STDP|Add3~10\ = CARRY(( !\STDP_DATAIN_POST_FIFO[2]~input_o\ $ (\POST_STDP|REG[1][-2]~q\) ) + ( \POST_STDP|Add3~7\ ) + ( \POST_STDP|Add3~6\ ))
-- \POST_STDP|Add3~11\ = SHARE((!\STDP_DATAIN_POST_FIFO[2]~input_o\ & \POST_STDP|REG[1][-2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[2]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[1][-2]~q\,
	cin => \POST_STDP|Add3~6\,
	sharein => \POST_STDP|Add3~7\,
	sumout => \POST_STDP|Add3~9_sumout\,
	cout => \POST_STDP|Add3~10\,
	shareout => \POST_STDP|Add3~11\);

-- Location: FF_X37_Y2_N38
\POST_STDP|REG[1][-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add3~9_sumout\,
	asdata => \POST_STDP|REG[0][-2]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|LessThan2~0_combout\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[1][-2]~q\);

-- Location: MLABCELL_X36_Y2_N6
\POST_STDP|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add4~9_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[2]~input_o\ $ (\POST_STDP|REG[2][-2]~q\) ) + ( \POST_STDP|Add4~7\ ) + ( \POST_STDP|Add4~6\ ))
-- \POST_STDP|Add4~10\ = CARRY(( !\STDP_DATAIN_POST_FIFO[2]~input_o\ $ (\POST_STDP|REG[2][-2]~q\) ) + ( \POST_STDP|Add4~7\ ) + ( \POST_STDP|Add4~6\ ))
-- \POST_STDP|Add4~11\ = SHARE((!\STDP_DATAIN_POST_FIFO[2]~input_o\ & \POST_STDP|REG[2][-2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[2]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[2][-2]~q\,
	cin => \POST_STDP|Add4~6\,
	sharein => \POST_STDP|Add4~7\,
	sumout => \POST_STDP|Add4~9_sumout\,
	cout => \POST_STDP|Add4~10\,
	shareout => \POST_STDP|Add4~11\);

-- Location: FF_X36_Y2_N8
\POST_STDP|REG[2][-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add4~9_sumout\,
	asdata => \POST_STDP|REG[1][-2]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|ALT_INV_top\(1),
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[2][-2]~q\);

-- Location: LABCELL_X37_Y3_N6
\POST_STDP|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add5~9_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[2]~input_o\ $ (\POST_STDP|REG[3][-2]~q\) ) + ( \POST_STDP|Add5~7\ ) + ( \POST_STDP|Add5~6\ ))
-- \POST_STDP|Add5~10\ = CARRY(( !\STDP_DATAIN_POST_FIFO[2]~input_o\ $ (\POST_STDP|REG[3][-2]~q\) ) + ( \POST_STDP|Add5~7\ ) + ( \POST_STDP|Add5~6\ ))
-- \POST_STDP|Add5~11\ = SHARE((!\STDP_DATAIN_POST_FIFO[2]~input_o\ & \POST_STDP|REG[3][-2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[2]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[3][-2]~q\,
	cin => \POST_STDP|Add5~6\,
	sharein => \POST_STDP|Add5~7\,
	sumout => \POST_STDP|Add5~9_sumout\,
	cout => \POST_STDP|Add5~10\,
	shareout => \POST_STDP|Add5~11\);

-- Location: FF_X37_Y3_N8
\POST_STDP|REG[3][-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add5~9_sumout\,
	asdata => \POST_STDP|REG[2][-2]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|LessThan4~0_combout\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[3][-2]~q\);

-- Location: MLABCELL_X36_Y4_N24
\POST_STDP|POP_OUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|POP_OUT~2_combout\ = ( \POST_STDP|REG[2][-2]~q\ & ( \POST_STDP|REG[3][-2]~q\ & ( ((!CAL_ADDR(0) & (\POST_STDP|REG[0][-2]~q\)) # (CAL_ADDR(0) & ((\POST_STDP|REG[1][-2]~q\)))) # (CAL_ADDR(1)) ) ) ) # ( !\POST_STDP|REG[2][-2]~q\ & ( 
-- \POST_STDP|REG[3][-2]~q\ & ( (!CAL_ADDR(1) & ((!CAL_ADDR(0) & (\POST_STDP|REG[0][-2]~q\)) # (CAL_ADDR(0) & ((\POST_STDP|REG[1][-2]~q\))))) # (CAL_ADDR(1) & (((CAL_ADDR(0))))) ) ) ) # ( \POST_STDP|REG[2][-2]~q\ & ( !\POST_STDP|REG[3][-2]~q\ & ( 
-- (!CAL_ADDR(1) & ((!CAL_ADDR(0) & (\POST_STDP|REG[0][-2]~q\)) # (CAL_ADDR(0) & ((\POST_STDP|REG[1][-2]~q\))))) # (CAL_ADDR(1) & (((!CAL_ADDR(0))))) ) ) ) # ( !\POST_STDP|REG[2][-2]~q\ & ( !\POST_STDP|REG[3][-2]~q\ & ( (!CAL_ADDR(1) & ((!CAL_ADDR(0) & 
-- (\POST_STDP|REG[0][-2]~q\)) # (CAL_ADDR(0) & ((\POST_STDP|REG[1][-2]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CAL_ADDR(1),
	datab => \POST_STDP|ALT_INV_REG[0][-2]~q\,
	datac => ALT_INV_CAL_ADDR(0),
	datad => \POST_STDP|ALT_INV_REG[1][-2]~q\,
	datae => \POST_STDP|ALT_INV_REG[2][-2]~q\,
	dataf => \POST_STDP|ALT_INV_REG[3][-2]~q\,
	combout => \POST_STDP|POP_OUT~2_combout\);

-- Location: FF_X36_Y4_N26
\POST_STDP|POP_OUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|POP_OUT~2_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|POP_OUT[2]~DUPLICATE_q\);

-- Location: IOIBUF_X69_Y0_N35
\STDP_DATAIN_PRE_FIFO[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_DATAIN_PRE_FIFO(2),
	o => \STDP_DATAIN_PRE_FIFO[2]~input_o\);

-- Location: LABCELL_X37_Y4_N39
\PRE_STDP|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add1~9_sumout\ = SUM(( (!\STDP_patchPOSTneuron~input_o\ & ((\STDP_DATAIN_PRE_FIFO[2]~input_o\))) # (\STDP_patchPOSTneuron~input_o\ & (!\STDP_DATAIN_POST_FIFO[2]~input_o\)) ) + ( \PRE_STDP|REG[0][-2]~q\ ) + ( \PRE_STDP|Add1~6\ ))
-- \PRE_STDP|Add1~10\ = CARRY(( (!\STDP_patchPOSTneuron~input_o\ & ((\STDP_DATAIN_PRE_FIFO[2]~input_o\))) # (\STDP_patchPOSTneuron~input_o\ & (!\STDP_DATAIN_POST_FIFO[2]~input_o\)) ) + ( \PRE_STDP|REG[0][-2]~q\ ) + ( \PRE_STDP|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000010001011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_DATAIN_POST_FIFO[2]~input_o\,
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \PRE_STDP|ALT_INV_REG[0][-2]~q\,
	datad => \ALT_INV_STDP_DATAIN_PRE_FIFO[2]~input_o\,
	cin => \PRE_STDP|Add1~6\,
	sumout => \PRE_STDP|Add1~9_sumout\,
	cout => \PRE_STDP|Add1~10\);

-- Location: FF_X36_Y4_N38
\PRE_STDP|REG[0][-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	asdata => \PRE_STDP|Add1~9_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[0][-2]~q\);

-- Location: MLABCELL_X36_Y4_N36
\PRE_STDP|Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add6~9_sumout\ = SUM(( !\POST_STDP|POP_OUT[2]~DUPLICATE_q\ $ (\PRE_STDP|REG[0][-2]~q\) ) + ( \PRE_STDP|Add6~7\ ) + ( \PRE_STDP|Add6~6\ ))
-- \PRE_STDP|Add6~10\ = CARRY(( !\POST_STDP|POP_OUT[2]~DUPLICATE_q\ $ (\PRE_STDP|REG[0][-2]~q\) ) + ( \PRE_STDP|Add6~7\ ) + ( \PRE_STDP|Add6~6\ ))
-- \PRE_STDP|Add6~11\ = SHARE((!\POST_STDP|POP_OUT[2]~DUPLICATE_q\ & \PRE_STDP|REG[0][-2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \POST_STDP|ALT_INV_POP_OUT[2]~DUPLICATE_q\,
	datad => \PRE_STDP|ALT_INV_REG[0][-2]~q\,
	cin => \PRE_STDP|Add6~6\,
	sharein => \PRE_STDP|Add6~7\,
	sumout => \PRE_STDP|Add6~9_sumout\,
	cout => \PRE_STDP|Add6~10\,
	shareout => \PRE_STDP|Add6~11\);

-- Location: LABCELL_X35_Y4_N36
\PRE_STDP|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add3~9_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[2]~input_o\ $ (\PRE_STDP|REG[1][-2]~q\) ) + ( \PRE_STDP|Add3~7\ ) + ( \PRE_STDP|Add3~6\ ))
-- \PRE_STDP|Add3~10\ = CARRY(( !\STDP_DATAIN_POST_FIFO[2]~input_o\ $ (\PRE_STDP|REG[1][-2]~q\) ) + ( \PRE_STDP|Add3~7\ ) + ( \PRE_STDP|Add3~6\ ))
-- \PRE_STDP|Add3~11\ = SHARE((!\STDP_DATAIN_POST_FIFO[2]~input_o\ & \PRE_STDP|REG[1][-2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[2]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[1][-2]~q\,
	cin => \PRE_STDP|Add3~6\,
	sharein => \PRE_STDP|Add3~7\,
	sumout => \PRE_STDP|Add3~9_sumout\,
	cout => \PRE_STDP|Add3~10\,
	shareout => \PRE_STDP|Add3~11\);

-- Location: FF_X35_Y4_N38
\PRE_STDP|REG[1][-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add3~9_sumout\,
	asdata => \PRE_STDP|REG[0][-2]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~0_combout\,
	ena => \PRE_STDP|REG[1][-4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[1][-2]~q\);

-- Location: LABCELL_X35_Y4_N9
\PRE_STDP|Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add7~9_sumout\ = SUM(( !\PRE_STDP|REG[1][-2]~q\ $ (!\POST_STDP|POP_OUT[2]~DUPLICATE_q\ $ (!\PRE_STDP|Add6~9_sumout\)) ) + ( \PRE_STDP|Add7~7\ ) + ( \PRE_STDP|Add7~6\ ))
-- \PRE_STDP|Add7~10\ = CARRY(( !\PRE_STDP|REG[1][-2]~q\ $ (!\POST_STDP|POP_OUT[2]~DUPLICATE_q\ $ (!\PRE_STDP|Add6~9_sumout\)) ) + ( \PRE_STDP|Add7~7\ ) + ( \PRE_STDP|Add7~6\ ))
-- \PRE_STDP|Add7~11\ = SHARE((!\PRE_STDP|REG[1][-2]~q\ & (!\POST_STDP|POP_OUT[2]~DUPLICATE_q\ & \PRE_STDP|Add6~9_sumout\)) # (\PRE_STDP|REG[1][-2]~q\ & ((!\POST_STDP|POP_OUT[2]~DUPLICATE_q\) # (\PRE_STDP|Add6~9_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001111001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \PRE_STDP|ALT_INV_REG[1][-2]~q\,
	datac => \POST_STDP|ALT_INV_POP_OUT[2]~DUPLICATE_q\,
	datad => \PRE_STDP|ALT_INV_Add6~9_sumout\,
	cin => \PRE_STDP|Add7~6\,
	sharein => \PRE_STDP|Add7~7\,
	sumout => \PRE_STDP|Add7~9_sumout\,
	cout => \PRE_STDP|Add7~10\,
	shareout => \PRE_STDP|Add7~11\);

-- Location: LABCELL_X35_Y3_N30
\PRE_STDP|total_SUM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|total_SUM~4_combout\ = ( \PRE_STDP|Add7~9_sumout\ & ( ((\PRE_STDP|top\(0)) # (\PRE_STDP|Add6~9_sumout\)) # (\PRE_STDP|top\(1)) ) ) # ( !\PRE_STDP|Add7~9_sumout\ & ( (!\PRE_STDP|top\(1) & (\PRE_STDP|Add6~9_sumout\ & !\PRE_STDP|top\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(1),
	datac => \PRE_STDP|ALT_INV_Add6~9_sumout\,
	datad => \PRE_STDP|ALT_INV_top\(0),
	dataf => \PRE_STDP|ALT_INV_Add7~9_sumout\,
	combout => \PRE_STDP|total_SUM~4_combout\);

-- Location: MLABCELL_X36_Y3_N36
\PRE_STDP|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add4~9_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[2]~input_o\ $ (\PRE_STDP|REG[2][-2]~q\) ) + ( \PRE_STDP|Add4~7\ ) + ( \PRE_STDP|Add4~6\ ))
-- \PRE_STDP|Add4~10\ = CARRY(( !\STDP_DATAIN_POST_FIFO[2]~input_o\ $ (\PRE_STDP|REG[2][-2]~q\) ) + ( \PRE_STDP|Add4~7\ ) + ( \PRE_STDP|Add4~6\ ))
-- \PRE_STDP|Add4~11\ = SHARE((!\STDP_DATAIN_POST_FIFO[2]~input_o\ & \PRE_STDP|REG[2][-2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STDP_DATAIN_POST_FIFO[2]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[2][-2]~q\,
	cin => \PRE_STDP|Add4~6\,
	sharein => \PRE_STDP|Add4~7\,
	sumout => \PRE_STDP|Add4~9_sumout\,
	cout => \PRE_STDP|Add4~10\,
	shareout => \PRE_STDP|Add4~11\);

-- Location: FF_X36_Y3_N38
\PRE_STDP|REG[2][-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add4~9_sumout\,
	asdata => \PRE_STDP|REG[1][-2]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~2_combout\,
	ena => \PRE_STDP|REG[2][-4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[2][-2]~q\);

-- Location: FF_X36_Y4_N25
\POST_STDP|POP_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|POP_OUT~2_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|POP_OUT\(2));

-- Location: LABCELL_X35_Y3_N9
\PRE_STDP|Add9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add9~9_sumout\ = SUM(( !\PRE_STDP|REG[2][-2]~q\ $ (!\PRE_STDP|total_SUM~4_combout\ $ (!\POST_STDP|POP_OUT\(2))) ) + ( \PRE_STDP|Add9~7\ ) + ( \PRE_STDP|Add9~6\ ))
-- \PRE_STDP|Add9~10\ = CARRY(( !\PRE_STDP|REG[2][-2]~q\ $ (!\PRE_STDP|total_SUM~4_combout\ $ (!\POST_STDP|POP_OUT\(2))) ) + ( \PRE_STDP|Add9~7\ ) + ( \PRE_STDP|Add9~6\ ))
-- \PRE_STDP|Add9~11\ = SHARE((!\PRE_STDP|REG[2][-2]~q\ & (\PRE_STDP|total_SUM~4_combout\ & !\POST_STDP|POP_OUT\(2))) # (\PRE_STDP|REG[2][-2]~q\ & ((!\POST_STDP|POP_OUT\(2)) # (\PRE_STDP|total_SUM~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110000001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \PRE_STDP|ALT_INV_REG[2][-2]~q\,
	datac => \PRE_STDP|ALT_INV_total_SUM~4_combout\,
	datad => \POST_STDP|ALT_INV_POP_OUT\(2),
	cin => \PRE_STDP|Add9~6\,
	sharein => \PRE_STDP|Add9~7\,
	sumout => \PRE_STDP|Add9~9_sumout\,
	cout => \PRE_STDP|Add9~10\,
	shareout => \PRE_STDP|Add9~11\);

-- Location: LABCELL_X34_Y3_N3
\PRE_STDP|total_SUM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|total_SUM~5_combout\ = ( \PRE_STDP|total_SUM~4_combout\ & ( \PRE_STDP|Add9~9_sumout\ ) ) # ( !\PRE_STDP|total_SUM~4_combout\ & ( \PRE_STDP|Add9~9_sumout\ & ( \PRE_STDP|top\(1) ) ) ) # ( \PRE_STDP|total_SUM~4_combout\ & ( 
-- !\PRE_STDP|Add9~9_sumout\ & ( !\PRE_STDP|top\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \PRE_STDP|ALT_INV_top\(1),
	datae => \PRE_STDP|ALT_INV_total_SUM~4_combout\,
	dataf => \PRE_STDP|ALT_INV_Add9~9_sumout\,
	combout => \PRE_STDP|total_SUM~5_combout\);

-- Location: LABCELL_X35_Y1_N36
\PRE_STDP|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add5~9_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[2]~input_o\ $ (\PRE_STDP|REG[3][-2]~q\) ) + ( \PRE_STDP|Add5~7\ ) + ( \PRE_STDP|Add5~6\ ))
-- \PRE_STDP|Add5~10\ = CARRY(( !\STDP_DATAIN_POST_FIFO[2]~input_o\ $ (\PRE_STDP|REG[3][-2]~q\) ) + ( \PRE_STDP|Add5~7\ ) + ( \PRE_STDP|Add5~6\ ))
-- \PRE_STDP|Add5~11\ = SHARE((!\STDP_DATAIN_POST_FIFO[2]~input_o\ & \PRE_STDP|REG[3][-2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[2]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[3][-2]~q\,
	cin => \PRE_STDP|Add5~6\,
	sharein => \PRE_STDP|Add5~7\,
	sumout => \PRE_STDP|Add5~9_sumout\,
	cout => \PRE_STDP|Add5~10\,
	shareout => \PRE_STDP|Add5~11\);

-- Location: FF_X35_Y1_N38
\PRE_STDP|REG[3][-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add5~9_sumout\,
	asdata => \PRE_STDP|REG[2][-2]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~4_combout\,
	ena => \PRE_STDP|REG[3][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[3][-2]~q\);

-- Location: LABCELL_X35_Y2_N39
\PRE_STDP|Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add11~9_sumout\ = SUM(( !\PRE_STDP|REG[3][-2]~q\ $ (!\POST_STDP|POP_OUT\(2) $ (!\PRE_STDP|total_SUM~5_combout\)) ) + ( \PRE_STDP|Add11~7\ ) + ( \PRE_STDP|Add11~6\ ))
-- \PRE_STDP|Add11~10\ = CARRY(( !\PRE_STDP|REG[3][-2]~q\ $ (!\POST_STDP|POP_OUT\(2) $ (!\PRE_STDP|total_SUM~5_combout\)) ) + ( \PRE_STDP|Add11~7\ ) + ( \PRE_STDP|Add11~6\ ))
-- \PRE_STDP|Add11~11\ = SHARE((!\PRE_STDP|REG[3][-2]~q\ & (!\POST_STDP|POP_OUT\(2) & \PRE_STDP|total_SUM~5_combout\)) # (\PRE_STDP|REG[3][-2]~q\ & ((!\POST_STDP|POP_OUT\(2)) # (\PRE_STDP|total_SUM~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001111010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_REG[3][-2]~q\,
	datac => \POST_STDP|ALT_INV_POP_OUT\(2),
	datad => \PRE_STDP|ALT_INV_total_SUM~5_combout\,
	cin => \PRE_STDP|Add11~6\,
	sharein => \PRE_STDP|Add11~7\,
	sumout => \PRE_STDP|Add11~9_sumout\,
	cout => \PRE_STDP|Add11~10\,
	shareout => \PRE_STDP|Add11~11\);

-- Location: LABCELL_X35_Y2_N9
\PRE_STDP|DATA_CAL_OUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|DATA_CAL_OUT~2_combout\ = ( \PRE_STDP|Add11~9_sumout\ & ( ((\PRE_STDP|top\(0) & \PRE_STDP|top\(1))) # (\PRE_STDP|total_SUM~5_combout\) ) ) # ( !\PRE_STDP|Add11~9_sumout\ & ( (\PRE_STDP|total_SUM~5_combout\ & ((!\PRE_STDP|top\(0)) # 
-- (!\PRE_STDP|top\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(0),
	datab => \PRE_STDP|ALT_INV_top\(1),
	datad => \PRE_STDP|ALT_INV_total_SUM~5_combout\,
	dataf => \PRE_STDP|ALT_INV_Add11~9_sumout\,
	combout => \PRE_STDP|DATA_CAL_OUT~2_combout\);

-- Location: FF_X35_Y2_N10
\PRE_STDP|DATA_CAL_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|DATA_CAL_OUT~2_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|DATA_CAL_OUT\(2));

-- Location: FF_X73_Y2_N8
\PRE_SUM[-2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \Add1~9_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_SUM[-2]~q\);

-- Location: MLABCELL_X73_Y2_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( (!\STDP_patchPREneuron~input_o\ & (!\STDP_patchPOSTneuron~input_o\ & \PRE_SUM[-2]~q\)) ) + ( \PRE_STDP|DATA_CAL_OUT\(2) ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( (!\STDP_patchPREneuron~input_o\ & (!\STDP_patchPOSTneuron~input_o\ & \PRE_SUM[-2]~q\)) ) + ( \PRE_STDP|DATA_CAL_OUT\(2) ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_patchPREneuron~input_o\,
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \PRE_STDP|ALT_INV_DATA_CAL_OUT\(2),
	datad => \ALT_INV_PRE_SUM[-2]~q\,
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: MLABCELL_X73_Y2_N57
\STDP_OUT[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \STDP_OUT[2]~reg0feeder_combout\ = ( \Add1~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~9_sumout\,
	combout => \STDP_OUT[2]~reg0feeder_combout\);

-- Location: FF_X73_Y2_N58
\STDP_OUT[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \STDP_OUT[2]~reg0feeder_combout\,
	sclr => \ALT_INV_synapsePush~input_o\,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STDP_OUT[2]~reg0_q\);

-- Location: IOIBUF_X39_Y0_N35
\STDP_DATAIN_POST_FIFO[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_DATAIN_POST_FIFO(3),
	o => \STDP_DATAIN_POST_FIFO[3]~input_o\);

-- Location: LABCELL_X37_Y2_N9
\POST_STDP|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add1~13_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[3]~input_o\ $ (\POST_STDP|REG[0][-1]~q\) ) + ( \POST_STDP|Add1~11\ ) + ( \POST_STDP|Add1~10\ ))
-- \POST_STDP|Add1~14\ = CARRY(( !\STDP_DATAIN_POST_FIFO[3]~input_o\ $ (\POST_STDP|REG[0][-1]~q\) ) + ( \POST_STDP|Add1~11\ ) + ( \POST_STDP|Add1~10\ ))
-- \POST_STDP|Add1~15\ = SHARE((!\STDP_DATAIN_POST_FIFO[3]~input_o\ & \POST_STDP|REG[0][-1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[3]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[0][-1]~q\,
	cin => \POST_STDP|Add1~10\,
	sharein => \POST_STDP|Add1~11\,
	sumout => \POST_STDP|Add1~13_sumout\,
	cout => \POST_STDP|Add1~14\,
	shareout => \POST_STDP|Add1~15\);

-- Location: FF_X37_Y2_N11
\POST_STDP|REG[0][-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add1~13_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[0][-1]~q\);

-- Location: MLABCELL_X36_Y2_N9
\POST_STDP|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add4~13_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[3]~input_o\ $ (\POST_STDP|REG[2][-1]~q\) ) + ( \POST_STDP|Add4~11\ ) + ( \POST_STDP|Add4~10\ ))
-- \POST_STDP|Add4~14\ = CARRY(( !\STDP_DATAIN_POST_FIFO[3]~input_o\ $ (\POST_STDP|REG[2][-1]~q\) ) + ( \POST_STDP|Add4~11\ ) + ( \POST_STDP|Add4~10\ ))
-- \POST_STDP|Add4~15\ = SHARE((!\STDP_DATAIN_POST_FIFO[3]~input_o\ & \POST_STDP|REG[2][-1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[3]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[2][-1]~q\,
	cin => \POST_STDP|Add4~10\,
	sharein => \POST_STDP|Add4~11\,
	sumout => \POST_STDP|Add4~13_sumout\,
	cout => \POST_STDP|Add4~14\,
	shareout => \POST_STDP|Add4~15\);

-- Location: LABCELL_X37_Y2_N39
\POST_STDP|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add3~13_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[3]~input_o\ $ (\POST_STDP|REG[1][-1]~q\) ) + ( \POST_STDP|Add3~11\ ) + ( \POST_STDP|Add3~10\ ))
-- \POST_STDP|Add3~14\ = CARRY(( !\STDP_DATAIN_POST_FIFO[3]~input_o\ $ (\POST_STDP|REG[1][-1]~q\) ) + ( \POST_STDP|Add3~11\ ) + ( \POST_STDP|Add3~10\ ))
-- \POST_STDP|Add3~15\ = SHARE((!\STDP_DATAIN_POST_FIFO[3]~input_o\ & \POST_STDP|REG[1][-1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[3]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[1][-1]~q\,
	cin => \POST_STDP|Add3~10\,
	sharein => \POST_STDP|Add3~11\,
	sumout => \POST_STDP|Add3~13_sumout\,
	cout => \POST_STDP|Add3~14\,
	shareout => \POST_STDP|Add3~15\);

-- Location: FF_X37_Y2_N41
\POST_STDP|REG[1][-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add3~13_sumout\,
	asdata => \POST_STDP|REG[0][-1]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|LessThan2~0_combout\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[1][-1]~q\);

-- Location: FF_X36_Y2_N11
\POST_STDP|REG[2][-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add4~13_sumout\,
	asdata => \POST_STDP|REG[1][-1]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|ALT_INV_top\(1),
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[2][-1]~q\);

-- Location: LABCELL_X37_Y3_N9
\POST_STDP|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add5~13_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[3]~input_o\ $ (\POST_STDP|REG[3][-1]~q\) ) + ( \POST_STDP|Add5~11\ ) + ( \POST_STDP|Add5~10\ ))
-- \POST_STDP|Add5~14\ = CARRY(( !\STDP_DATAIN_POST_FIFO[3]~input_o\ $ (\POST_STDP|REG[3][-1]~q\) ) + ( \POST_STDP|Add5~11\ ) + ( \POST_STDP|Add5~10\ ))
-- \POST_STDP|Add5~15\ = SHARE((!\STDP_DATAIN_POST_FIFO[3]~input_o\ & \POST_STDP|REG[3][-1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_DATAIN_POST_FIFO[3]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[3][-1]~q\,
	cin => \POST_STDP|Add5~10\,
	sharein => \POST_STDP|Add5~11\,
	sumout => \POST_STDP|Add5~13_sumout\,
	cout => \POST_STDP|Add5~14\,
	shareout => \POST_STDP|Add5~15\);

-- Location: FF_X37_Y3_N11
\POST_STDP|REG[3][-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add5~13_sumout\,
	asdata => \POST_STDP|REG[2][-1]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|LessThan4~0_combout\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[3][-1]~q\);

-- Location: MLABCELL_X36_Y4_N6
\POST_STDP|POP_OUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|POP_OUT~3_combout\ = ( \POST_STDP|REG[1][-1]~q\ & ( \POST_STDP|REG[3][-1]~q\ & ( ((!CAL_ADDR(1) & (\POST_STDP|REG[0][-1]~q\)) # (CAL_ADDR(1) & ((\POST_STDP|REG[2][-1]~q\)))) # (CAL_ADDR(0)) ) ) ) # ( !\POST_STDP|REG[1][-1]~q\ & ( 
-- \POST_STDP|REG[3][-1]~q\ & ( (!CAL_ADDR(1) & (\POST_STDP|REG[0][-1]~q\ & (!CAL_ADDR(0)))) # (CAL_ADDR(1) & (((\POST_STDP|REG[2][-1]~q\) # (CAL_ADDR(0))))) ) ) ) # ( \POST_STDP|REG[1][-1]~q\ & ( !\POST_STDP|REG[3][-1]~q\ & ( (!CAL_ADDR(1) & 
-- (((CAL_ADDR(0))) # (\POST_STDP|REG[0][-1]~q\))) # (CAL_ADDR(1) & (((!CAL_ADDR(0) & \POST_STDP|REG[2][-1]~q\)))) ) ) ) # ( !\POST_STDP|REG[1][-1]~q\ & ( !\POST_STDP|REG[3][-1]~q\ & ( (!CAL_ADDR(0) & ((!CAL_ADDR(1) & (\POST_STDP|REG[0][-1]~q\)) # 
-- (CAL_ADDR(1) & ((\POST_STDP|REG[2][-1]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CAL_ADDR(1),
	datab => \POST_STDP|ALT_INV_REG[0][-1]~q\,
	datac => ALT_INV_CAL_ADDR(0),
	datad => \POST_STDP|ALT_INV_REG[2][-1]~q\,
	datae => \POST_STDP|ALT_INV_REG[1][-1]~q\,
	dataf => \POST_STDP|ALT_INV_REG[3][-1]~q\,
	combout => \POST_STDP|POP_OUT~3_combout\);

-- Location: FF_X36_Y4_N8
\POST_STDP|POP_OUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|POP_OUT~3_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|POP_OUT[3]~DUPLICATE_q\);

-- Location: IOIBUF_X69_Y0_N52
\STDP_DATAIN_PRE_FIFO[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_DATAIN_PRE_FIFO(3),
	o => \STDP_DATAIN_PRE_FIFO[3]~input_o\);

-- Location: LABCELL_X37_Y4_N42
\PRE_STDP|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add1~13_sumout\ = SUM(( \PRE_STDP|REG[0][-1]~q\ ) + ( (!\STDP_patchPOSTneuron~input_o\ & ((\STDP_DATAIN_PRE_FIFO[3]~input_o\))) # (\STDP_patchPOSTneuron~input_o\ & (!\STDP_DATAIN_POST_FIFO[3]~input_o\)) ) + ( \PRE_STDP|Add1~10\ ))
-- \PRE_STDP|Add1~14\ = CARRY(( \PRE_STDP|REG[0][-1]~q\ ) + ( (!\STDP_patchPOSTneuron~input_o\ & ((\STDP_DATAIN_PRE_FIFO[3]~input_o\))) # (\STDP_patchPOSTneuron~input_o\ & (!\STDP_DATAIN_POST_FIFO[3]~input_o\)) ) + ( \PRE_STDP|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[3]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[0][-1]~q\,
	dataf => \ALT_INV_STDP_DATAIN_PRE_FIFO[3]~input_o\,
	cin => \PRE_STDP|Add1~10\,
	sumout => \PRE_STDP|Add1~13_sumout\,
	cout => \PRE_STDP|Add1~14\);

-- Location: FF_X37_Y4_N44
\PRE_STDP|REG[0][-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add1~13_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[0][-1]~q\);

-- Location: MLABCELL_X36_Y4_N39
\PRE_STDP|Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add6~13_sumout\ = SUM(( !\POST_STDP|POP_OUT[3]~DUPLICATE_q\ $ (\PRE_STDP|REG[0][-1]~q\) ) + ( \PRE_STDP|Add6~11\ ) + ( \PRE_STDP|Add6~10\ ))
-- \PRE_STDP|Add6~14\ = CARRY(( !\POST_STDP|POP_OUT[3]~DUPLICATE_q\ $ (\PRE_STDP|REG[0][-1]~q\) ) + ( \PRE_STDP|Add6~11\ ) + ( \PRE_STDP|Add6~10\ ))
-- \PRE_STDP|Add6~15\ = SHARE((!\POST_STDP|POP_OUT[3]~DUPLICATE_q\ & \PRE_STDP|REG[0][-1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \POST_STDP|ALT_INV_POP_OUT[3]~DUPLICATE_q\,
	datad => \PRE_STDP|ALT_INV_REG[0][-1]~q\,
	cin => \PRE_STDP|Add6~10\,
	sharein => \PRE_STDP|Add6~11\,
	sumout => \PRE_STDP|Add6~13_sumout\,
	cout => \PRE_STDP|Add6~14\,
	shareout => \PRE_STDP|Add6~15\);

-- Location: LABCELL_X35_Y4_N39
\PRE_STDP|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add3~13_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[3]~input_o\ $ (\PRE_STDP|REG[1][-1]~q\) ) + ( \PRE_STDP|Add3~11\ ) + ( \PRE_STDP|Add3~10\ ))
-- \PRE_STDP|Add3~14\ = CARRY(( !\STDP_DATAIN_POST_FIFO[3]~input_o\ $ (\PRE_STDP|REG[1][-1]~q\) ) + ( \PRE_STDP|Add3~11\ ) + ( \PRE_STDP|Add3~10\ ))
-- \PRE_STDP|Add3~15\ = SHARE((!\STDP_DATAIN_POST_FIFO[3]~input_o\ & \PRE_STDP|REG[1][-1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_DATAIN_POST_FIFO[3]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[1][-1]~q\,
	cin => \PRE_STDP|Add3~10\,
	sharein => \PRE_STDP|Add3~11\,
	sumout => \PRE_STDP|Add3~13_sumout\,
	cout => \PRE_STDP|Add3~14\,
	shareout => \PRE_STDP|Add3~15\);

-- Location: FF_X35_Y4_N41
\PRE_STDP|REG[1][-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add3~13_sumout\,
	asdata => \PRE_STDP|REG[0][-1]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~0_combout\,
	ena => \PRE_STDP|REG[1][-4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[1][-1]~q\);

-- Location: LABCELL_X35_Y4_N12
\PRE_STDP|Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add7~13_sumout\ = SUM(( !\PRE_STDP|REG[1][-1]~q\ $ (!\PRE_STDP|Add6~13_sumout\ $ (!\POST_STDP|POP_OUT[3]~DUPLICATE_q\)) ) + ( \PRE_STDP|Add7~11\ ) + ( \PRE_STDP|Add7~10\ ))
-- \PRE_STDP|Add7~14\ = CARRY(( !\PRE_STDP|REG[1][-1]~q\ $ (!\PRE_STDP|Add6~13_sumout\ $ (!\POST_STDP|POP_OUT[3]~DUPLICATE_q\)) ) + ( \PRE_STDP|Add7~11\ ) + ( \PRE_STDP|Add7~10\ ))
-- \PRE_STDP|Add7~15\ = SHARE((!\PRE_STDP|REG[1][-1]~q\ & (\PRE_STDP|Add6~13_sumout\ & !\POST_STDP|POP_OUT[3]~DUPLICATE_q\)) # (\PRE_STDP|REG[1][-1]~q\ & ((!\POST_STDP|POP_OUT[3]~DUPLICATE_q\) # (\PRE_STDP|Add6~13_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110000001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \PRE_STDP|ALT_INV_REG[1][-1]~q\,
	datac => \PRE_STDP|ALT_INV_Add6~13_sumout\,
	datad => \POST_STDP|ALT_INV_POP_OUT[3]~DUPLICATE_q\,
	cin => \PRE_STDP|Add7~10\,
	sharein => \PRE_STDP|Add7~11\,
	sumout => \PRE_STDP|Add7~13_sumout\,
	cout => \PRE_STDP|Add7~14\,
	shareout => \PRE_STDP|Add7~15\);

-- Location: LABCELL_X35_Y3_N57
\PRE_STDP|total_SUM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|total_SUM~6_combout\ = ( \PRE_STDP|Add7~13_sumout\ & ( ((\PRE_STDP|top\(1)) # (\PRE_STDP|Add6~13_sumout\)) # (\PRE_STDP|top\(0)) ) ) # ( !\PRE_STDP|Add7~13_sumout\ & ( (!\PRE_STDP|top\(0) & (\PRE_STDP|Add6~13_sumout\ & !\PRE_STDP|top\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(0),
	datac => \PRE_STDP|ALT_INV_Add6~13_sumout\,
	datad => \PRE_STDP|ALT_INV_top\(1),
	dataf => \PRE_STDP|ALT_INV_Add7~13_sumout\,
	combout => \PRE_STDP|total_SUM~6_combout\);

-- Location: MLABCELL_X36_Y3_N39
\PRE_STDP|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add4~13_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[3]~input_o\ $ (\PRE_STDP|REG[2][-1]~q\) ) + ( \PRE_STDP|Add4~11\ ) + ( \PRE_STDP|Add4~10\ ))
-- \PRE_STDP|Add4~14\ = CARRY(( !\STDP_DATAIN_POST_FIFO[3]~input_o\ $ (\PRE_STDP|REG[2][-1]~q\) ) + ( \PRE_STDP|Add4~11\ ) + ( \PRE_STDP|Add4~10\ ))
-- \PRE_STDP|Add4~15\ = SHARE((!\STDP_DATAIN_POST_FIFO[3]~input_o\ & \PRE_STDP|REG[2][-1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[3]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[2][-1]~q\,
	cin => \PRE_STDP|Add4~10\,
	sharein => \PRE_STDP|Add4~11\,
	sumout => \PRE_STDP|Add4~13_sumout\,
	cout => \PRE_STDP|Add4~14\,
	shareout => \PRE_STDP|Add4~15\);

-- Location: FF_X36_Y3_N41
\PRE_STDP|REG[2][-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add4~13_sumout\,
	asdata => \PRE_STDP|REG[1][-1]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~2_combout\,
	ena => \PRE_STDP|REG[2][-4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[2][-1]~q\);

-- Location: FF_X36_Y4_N7
\POST_STDP|POP_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|POP_OUT~3_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|POP_OUT\(3));

-- Location: LABCELL_X35_Y3_N12
\PRE_STDP|Add9~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add9~13_sumout\ = SUM(( !\PRE_STDP|REG[2][-1]~q\ $ (!\POST_STDP|POP_OUT\(3) $ (!\PRE_STDP|total_SUM~6_combout\)) ) + ( \PRE_STDP|Add9~11\ ) + ( \PRE_STDP|Add9~10\ ))
-- \PRE_STDP|Add9~14\ = CARRY(( !\PRE_STDP|REG[2][-1]~q\ $ (!\POST_STDP|POP_OUT\(3) $ (!\PRE_STDP|total_SUM~6_combout\)) ) + ( \PRE_STDP|Add9~11\ ) + ( \PRE_STDP|Add9~10\ ))
-- \PRE_STDP|Add9~15\ = SHARE((!\PRE_STDP|REG[2][-1]~q\ & (!\POST_STDP|POP_OUT\(3) & \PRE_STDP|total_SUM~6_combout\)) # (\PRE_STDP|REG[2][-1]~q\ & ((!\POST_STDP|POP_OUT\(3)) # (\PRE_STDP|total_SUM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001111010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_REG[2][-1]~q\,
	datac => \POST_STDP|ALT_INV_POP_OUT\(3),
	datad => \PRE_STDP|ALT_INV_total_SUM~6_combout\,
	cin => \PRE_STDP|Add9~10\,
	sharein => \PRE_STDP|Add9~11\,
	sumout => \PRE_STDP|Add9~13_sumout\,
	cout => \PRE_STDP|Add9~14\,
	shareout => \PRE_STDP|Add9~15\);

-- Location: LABCELL_X35_Y3_N51
\PRE_STDP|total_SUM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|total_SUM~7_combout\ = ( \PRE_STDP|Add9~13_sumout\ & ( (\PRE_STDP|total_SUM~6_combout\) # (\PRE_STDP|top\(1)) ) ) # ( !\PRE_STDP|Add9~13_sumout\ & ( (!\PRE_STDP|top\(1) & \PRE_STDP|total_SUM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(1),
	datad => \PRE_STDP|ALT_INV_total_SUM~6_combout\,
	dataf => \PRE_STDP|ALT_INV_Add9~13_sumout\,
	combout => \PRE_STDP|total_SUM~7_combout\);

-- Location: LABCELL_X35_Y1_N39
\PRE_STDP|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add5~13_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[3]~input_o\ $ (\PRE_STDP|REG[3][-1]~q\) ) + ( \PRE_STDP|Add5~11\ ) + ( \PRE_STDP|Add5~10\ ))
-- \PRE_STDP|Add5~14\ = CARRY(( !\STDP_DATAIN_POST_FIFO[3]~input_o\ $ (\PRE_STDP|REG[3][-1]~q\) ) + ( \PRE_STDP|Add5~11\ ) + ( \PRE_STDP|Add5~10\ ))
-- \PRE_STDP|Add5~15\ = SHARE((!\STDP_DATAIN_POST_FIFO[3]~input_o\ & \PRE_STDP|REG[3][-1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[3]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[3][-1]~q\,
	cin => \PRE_STDP|Add5~10\,
	sharein => \PRE_STDP|Add5~11\,
	sumout => \PRE_STDP|Add5~13_sumout\,
	cout => \PRE_STDP|Add5~14\,
	shareout => \PRE_STDP|Add5~15\);

-- Location: FF_X35_Y1_N41
\PRE_STDP|REG[3][-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add5~13_sumout\,
	asdata => \PRE_STDP|REG[2][-1]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~4_combout\,
	ena => \PRE_STDP|REG[3][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[3][-1]~q\);

-- Location: LABCELL_X35_Y2_N42
\PRE_STDP|Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add11~13_sumout\ = SUM(( !\POST_STDP|POP_OUT[3]~DUPLICATE_q\ $ (!\PRE_STDP|REG[3][-1]~q\ $ (!\PRE_STDP|total_SUM~7_combout\)) ) + ( \PRE_STDP|Add11~11\ ) + ( \PRE_STDP|Add11~10\ ))
-- \PRE_STDP|Add11~14\ = CARRY(( !\POST_STDP|POP_OUT[3]~DUPLICATE_q\ $ (!\PRE_STDP|REG[3][-1]~q\ $ (!\PRE_STDP|total_SUM~7_combout\)) ) + ( \PRE_STDP|Add11~11\ ) + ( \PRE_STDP|Add11~10\ ))
-- \PRE_STDP|Add11~15\ = SHARE((!\POST_STDP|POP_OUT[3]~DUPLICATE_q\ & ((\PRE_STDP|total_SUM~7_combout\) # (\PRE_STDP|REG[3][-1]~q\))) # (\POST_STDP|POP_OUT[3]~DUPLICATE_q\ & (\PRE_STDP|REG[3][-1]~q\ & \PRE_STDP|total_SUM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001100111100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \POST_STDP|ALT_INV_POP_OUT[3]~DUPLICATE_q\,
	datac => \PRE_STDP|ALT_INV_REG[3][-1]~q\,
	datad => \PRE_STDP|ALT_INV_total_SUM~7_combout\,
	cin => \PRE_STDP|Add11~10\,
	sharein => \PRE_STDP|Add11~11\,
	sumout => \PRE_STDP|Add11~13_sumout\,
	cout => \PRE_STDP|Add11~14\,
	shareout => \PRE_STDP|Add11~15\);

-- Location: LABCELL_X35_Y2_N24
\PRE_STDP|DATA_CAL_OUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|DATA_CAL_OUT~3_combout\ = ( \PRE_STDP|Add11~13_sumout\ & ( ((\PRE_STDP|top\(0) & \PRE_STDP|top\(1))) # (\PRE_STDP|total_SUM~7_combout\) ) ) # ( !\PRE_STDP|Add11~13_sumout\ & ( (\PRE_STDP|total_SUM~7_combout\ & ((!\PRE_STDP|top\(0)) # 
-- (!\PRE_STDP|top\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(0),
	datab => \PRE_STDP|ALT_INV_top\(1),
	datad => \PRE_STDP|ALT_INV_total_SUM~7_combout\,
	dataf => \PRE_STDP|ALT_INV_Add11~13_sumout\,
	combout => \PRE_STDP|DATA_CAL_OUT~3_combout\);

-- Location: FF_X35_Y2_N25
\PRE_STDP|DATA_CAL_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|DATA_CAL_OUT~3_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|DATA_CAL_OUT\(3));

-- Location: FF_X73_Y2_N10
\PRE_SUM[-1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_SUM[-1]~q\);

-- Location: MLABCELL_X73_Y2_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( (!\STDP_patchPREneuron~input_o\ & (!\STDP_patchPOSTneuron~input_o\ & \PRE_SUM[-1]~q\)) ) + ( \PRE_STDP|DATA_CAL_OUT\(3) ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( (!\STDP_patchPREneuron~input_o\ & (!\STDP_patchPOSTneuron~input_o\ & \PRE_SUM[-1]~q\)) ) + ( \PRE_STDP|DATA_CAL_OUT\(3) ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_patchPREneuron~input_o\,
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \PRE_STDP|ALT_INV_DATA_CAL_OUT\(3),
	datad => \ALT_INV_PRE_SUM[-1]~q\,
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: MLABCELL_X73_Y2_N24
\STDP_OUT[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \STDP_OUT[3]~reg0feeder_combout\ = ( \Add1~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \STDP_OUT[3]~reg0feeder_combout\);

-- Location: FF_X73_Y2_N25
\STDP_OUT[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \STDP_OUT[3]~reg0feeder_combout\,
	sclr => \ALT_INV_synapsePush~input_o\,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STDP_OUT[3]~reg0_q\);

-- Location: IOIBUF_X39_Y0_N1
\STDP_DATAIN_POST_FIFO[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_DATAIN_POST_FIFO(4),
	o => \STDP_DATAIN_POST_FIFO[4]~input_o\);

-- Location: LABCELL_X37_Y2_N12
\POST_STDP|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add1~17_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[4]~input_o\ $ (\POST_STDP|REG[0][0]~q\) ) + ( \POST_STDP|Add1~15\ ) + ( \POST_STDP|Add1~14\ ))
-- \POST_STDP|Add1~18\ = CARRY(( !\STDP_DATAIN_POST_FIFO[4]~input_o\ $ (\POST_STDP|REG[0][0]~q\) ) + ( \POST_STDP|Add1~15\ ) + ( \POST_STDP|Add1~14\ ))
-- \POST_STDP|Add1~19\ = SHARE((!\STDP_DATAIN_POST_FIFO[4]~input_o\ & \POST_STDP|REG[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[4]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[0][0]~q\,
	cin => \POST_STDP|Add1~14\,
	sharein => \POST_STDP|Add1~15\,
	sumout => \POST_STDP|Add1~17_sumout\,
	cout => \POST_STDP|Add1~18\,
	shareout => \POST_STDP|Add1~19\);

-- Location: FF_X37_Y2_N14
\POST_STDP|REG[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add1~17_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[0][0]~q\);

-- Location: MLABCELL_X36_Y2_N12
\POST_STDP|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add4~17_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[4]~input_o\ $ (\POST_STDP|REG[2][0]~q\) ) + ( \POST_STDP|Add4~15\ ) + ( \POST_STDP|Add4~14\ ))
-- \POST_STDP|Add4~18\ = CARRY(( !\STDP_DATAIN_POST_FIFO[4]~input_o\ $ (\POST_STDP|REG[2][0]~q\) ) + ( \POST_STDP|Add4~15\ ) + ( \POST_STDP|Add4~14\ ))
-- \POST_STDP|Add4~19\ = SHARE((!\STDP_DATAIN_POST_FIFO[4]~input_o\ & \POST_STDP|REG[2][0]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STDP_DATAIN_POST_FIFO[4]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[2][0]~q\,
	cin => \POST_STDP|Add4~14\,
	sharein => \POST_STDP|Add4~15\,
	sumout => \POST_STDP|Add4~17_sumout\,
	cout => \POST_STDP|Add4~18\,
	shareout => \POST_STDP|Add4~19\);

-- Location: LABCELL_X37_Y2_N42
\POST_STDP|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add3~17_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[4]~input_o\ $ (\POST_STDP|REG[1][0]~q\) ) + ( \POST_STDP|Add3~15\ ) + ( \POST_STDP|Add3~14\ ))
-- \POST_STDP|Add3~18\ = CARRY(( !\STDP_DATAIN_POST_FIFO[4]~input_o\ $ (\POST_STDP|REG[1][0]~q\) ) + ( \POST_STDP|Add3~15\ ) + ( \POST_STDP|Add3~14\ ))
-- \POST_STDP|Add3~19\ = SHARE((!\STDP_DATAIN_POST_FIFO[4]~input_o\ & \POST_STDP|REG[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[4]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[1][0]~q\,
	cin => \POST_STDP|Add3~14\,
	sharein => \POST_STDP|Add3~15\,
	sumout => \POST_STDP|Add3~17_sumout\,
	cout => \POST_STDP|Add3~18\,
	shareout => \POST_STDP|Add3~19\);

-- Location: FF_X37_Y2_N44
\POST_STDP|REG[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add3~17_sumout\,
	asdata => \POST_STDP|REG[0][0]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|LessThan2~0_combout\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[1][0]~q\);

-- Location: FF_X36_Y2_N14
\POST_STDP|REG[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add4~17_sumout\,
	asdata => \POST_STDP|REG[1][0]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|ALT_INV_top\(1),
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[2][0]~q\);

-- Location: LABCELL_X37_Y3_N12
\POST_STDP|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add5~17_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[4]~input_o\ $ (\POST_STDP|REG[3][0]~q\) ) + ( \POST_STDP|Add5~15\ ) + ( \POST_STDP|Add5~14\ ))
-- \POST_STDP|Add5~18\ = CARRY(( !\STDP_DATAIN_POST_FIFO[4]~input_o\ $ (\POST_STDP|REG[3][0]~q\) ) + ( \POST_STDP|Add5~15\ ) + ( \POST_STDP|Add5~14\ ))
-- \POST_STDP|Add5~19\ = SHARE((!\STDP_DATAIN_POST_FIFO[4]~input_o\ & \POST_STDP|REG[3][0]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[4]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[3][0]~q\,
	cin => \POST_STDP|Add5~14\,
	sharein => \POST_STDP|Add5~15\,
	sumout => \POST_STDP|Add5~17_sumout\,
	cout => \POST_STDP|Add5~18\,
	shareout => \POST_STDP|Add5~19\);

-- Location: FF_X37_Y3_N14
\POST_STDP|REG[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add5~17_sumout\,
	asdata => \POST_STDP|REG[2][0]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|LessThan4~0_combout\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[3][0]~q\);

-- Location: MLABCELL_X36_Y4_N18
\POST_STDP|POP_OUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|POP_OUT~4_combout\ = ( \POST_STDP|REG[1][0]~q\ & ( \POST_STDP|REG[3][0]~q\ & ( ((!CAL_ADDR(1) & (\POST_STDP|REG[0][0]~q\)) # (CAL_ADDR(1) & ((\POST_STDP|REG[2][0]~q\)))) # (CAL_ADDR(0)) ) ) ) # ( !\POST_STDP|REG[1][0]~q\ & ( 
-- \POST_STDP|REG[3][0]~q\ & ( (!CAL_ADDR(1) & (\POST_STDP|REG[0][0]~q\ & (!CAL_ADDR(0)))) # (CAL_ADDR(1) & (((\POST_STDP|REG[2][0]~q\) # (CAL_ADDR(0))))) ) ) ) # ( \POST_STDP|REG[1][0]~q\ & ( !\POST_STDP|REG[3][0]~q\ & ( (!CAL_ADDR(1) & (((CAL_ADDR(0))) # 
-- (\POST_STDP|REG[0][0]~q\))) # (CAL_ADDR(1) & (((!CAL_ADDR(0) & \POST_STDP|REG[2][0]~q\)))) ) ) ) # ( !\POST_STDP|REG[1][0]~q\ & ( !\POST_STDP|REG[3][0]~q\ & ( (!CAL_ADDR(0) & ((!CAL_ADDR(1) & (\POST_STDP|REG[0][0]~q\)) # (CAL_ADDR(1) & 
-- ((\POST_STDP|REG[2][0]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CAL_ADDR(1),
	datab => \POST_STDP|ALT_INV_REG[0][0]~q\,
	datac => ALT_INV_CAL_ADDR(0),
	datad => \POST_STDP|ALT_INV_REG[2][0]~q\,
	datae => \POST_STDP|ALT_INV_REG[1][0]~q\,
	dataf => \POST_STDP|ALT_INV_REG[3][0]~q\,
	combout => \POST_STDP|POP_OUT~4_combout\);

-- Location: FF_X36_Y4_N20
\POST_STDP|POP_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|POP_OUT~4_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|POP_OUT\(4));

-- Location: IOIBUF_X65_Y0_N92
\STDP_DATAIN_PRE_FIFO[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_DATAIN_PRE_FIFO(4),
	o => \STDP_DATAIN_PRE_FIFO[4]~input_o\);

-- Location: LABCELL_X37_Y4_N45
\PRE_STDP|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add1~17_sumout\ = SUM(( (!\STDP_patchPOSTneuron~input_o\ & ((\STDP_DATAIN_PRE_FIFO[4]~input_o\))) # (\STDP_patchPOSTneuron~input_o\ & (!\STDP_DATAIN_POST_FIFO[4]~input_o\)) ) + ( \PRE_STDP|REG[0][0]~q\ ) + ( \PRE_STDP|Add1~14\ ))
-- \PRE_STDP|Add1~18\ = CARRY(( (!\STDP_patchPOSTneuron~input_o\ & ((\STDP_DATAIN_PRE_FIFO[4]~input_o\))) # (\STDP_patchPOSTneuron~input_o\ & (!\STDP_DATAIN_POST_FIFO[4]~input_o\)) ) + ( \PRE_STDP|REG[0][0]~q\ ) + ( \PRE_STDP|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[4]~input_o\,
	datad => \ALT_INV_STDP_DATAIN_PRE_FIFO[4]~input_o\,
	dataf => \PRE_STDP|ALT_INV_REG[0][0]~q\,
	cin => \PRE_STDP|Add1~14\,
	sumout => \PRE_STDP|Add1~17_sumout\,
	cout => \PRE_STDP|Add1~18\);

-- Location: FF_X37_Y4_N8
\PRE_STDP|REG[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	asdata => \PRE_STDP|Add1~17_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[0][0]~q\);

-- Location: MLABCELL_X36_Y4_N42
\PRE_STDP|Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add6~17_sumout\ = SUM(( !\POST_STDP|POP_OUT\(4) $ (\PRE_STDP|REG[0][0]~q\) ) + ( \PRE_STDP|Add6~15\ ) + ( \PRE_STDP|Add6~14\ ))
-- \PRE_STDP|Add6~18\ = CARRY(( !\POST_STDP|POP_OUT\(4) $ (\PRE_STDP|REG[0][0]~q\) ) + ( \PRE_STDP|Add6~15\ ) + ( \PRE_STDP|Add6~14\ ))
-- \PRE_STDP|Add6~19\ = SHARE((!\POST_STDP|POP_OUT\(4) & \PRE_STDP|REG[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \POST_STDP|ALT_INV_POP_OUT\(4),
	datad => \PRE_STDP|ALT_INV_REG[0][0]~q\,
	cin => \PRE_STDP|Add6~14\,
	sharein => \PRE_STDP|Add6~15\,
	sumout => \PRE_STDP|Add6~17_sumout\,
	cout => \PRE_STDP|Add6~18\,
	shareout => \PRE_STDP|Add6~19\);

-- Location: LABCELL_X35_Y4_N42
\PRE_STDP|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add3~17_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[4]~input_o\ $ (\PRE_STDP|REG[1][0]~q\) ) + ( \PRE_STDP|Add3~15\ ) + ( \PRE_STDP|Add3~14\ ))
-- \PRE_STDP|Add3~18\ = CARRY(( !\STDP_DATAIN_POST_FIFO[4]~input_o\ $ (\PRE_STDP|REG[1][0]~q\) ) + ( \PRE_STDP|Add3~15\ ) + ( \PRE_STDP|Add3~14\ ))
-- \PRE_STDP|Add3~19\ = SHARE((!\STDP_DATAIN_POST_FIFO[4]~input_o\ & \PRE_STDP|REG[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[4]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[1][0]~q\,
	cin => \PRE_STDP|Add3~14\,
	sharein => \PRE_STDP|Add3~15\,
	sumout => \PRE_STDP|Add3~17_sumout\,
	cout => \PRE_STDP|Add3~18\,
	shareout => \PRE_STDP|Add3~19\);

-- Location: FF_X35_Y4_N44
\PRE_STDP|REG[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add3~17_sumout\,
	asdata => \PRE_STDP|REG[0][0]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~0_combout\,
	ena => \PRE_STDP|REG[1][-4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[1][0]~q\);

-- Location: LABCELL_X35_Y4_N15
\PRE_STDP|Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add7~17_sumout\ = SUM(( !\POST_STDP|POP_OUT\(4) $ (!\PRE_STDP|REG[1][0]~q\ $ (!\PRE_STDP|Add6~17_sumout\)) ) + ( \PRE_STDP|Add7~15\ ) + ( \PRE_STDP|Add7~14\ ))
-- \PRE_STDP|Add7~18\ = CARRY(( !\POST_STDP|POP_OUT\(4) $ (!\PRE_STDP|REG[1][0]~q\ $ (!\PRE_STDP|Add6~17_sumout\)) ) + ( \PRE_STDP|Add7~15\ ) + ( \PRE_STDP|Add7~14\ ))
-- \PRE_STDP|Add7~19\ = SHARE((!\POST_STDP|POP_OUT\(4) & ((\PRE_STDP|Add6~17_sumout\) # (\PRE_STDP|REG[1][0]~q\))) # (\POST_STDP|POP_OUT\(4) & (\PRE_STDP|REG[1][0]~q\ & \PRE_STDP|Add6~17_sumout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010111100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \POST_STDP|ALT_INV_POP_OUT\(4),
	datac => \PRE_STDP|ALT_INV_REG[1][0]~q\,
	datad => \PRE_STDP|ALT_INV_Add6~17_sumout\,
	cin => \PRE_STDP|Add7~14\,
	sharein => \PRE_STDP|Add7~15\,
	sumout => \PRE_STDP|Add7~17_sumout\,
	cout => \PRE_STDP|Add7~18\,
	shareout => \PRE_STDP|Add7~19\);

-- Location: LABCELL_X35_Y3_N39
\PRE_STDP|total_SUM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|total_SUM~8_combout\ = ( \PRE_STDP|Add7~17_sumout\ & ( ((\PRE_STDP|top\(1)) # (\PRE_STDP|Add6~17_sumout\)) # (\PRE_STDP|top\(0)) ) ) # ( !\PRE_STDP|Add7~17_sumout\ & ( (!\PRE_STDP|top\(0) & (\PRE_STDP|Add6~17_sumout\ & !\PRE_STDP|top\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(0),
	datac => \PRE_STDP|ALT_INV_Add6~17_sumout\,
	datad => \PRE_STDP|ALT_INV_top\(1),
	dataf => \PRE_STDP|ALT_INV_Add7~17_sumout\,
	combout => \PRE_STDP|total_SUM~8_combout\);

-- Location: MLABCELL_X36_Y3_N42
\PRE_STDP|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add4~17_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[4]~input_o\ $ (\PRE_STDP|REG[2][0]~q\) ) + ( \PRE_STDP|Add4~15\ ) + ( \PRE_STDP|Add4~14\ ))
-- \PRE_STDP|Add4~18\ = CARRY(( !\STDP_DATAIN_POST_FIFO[4]~input_o\ $ (\PRE_STDP|REG[2][0]~q\) ) + ( \PRE_STDP|Add4~15\ ) + ( \PRE_STDP|Add4~14\ ))
-- \PRE_STDP|Add4~19\ = SHARE((!\STDP_DATAIN_POST_FIFO[4]~input_o\ & \PRE_STDP|REG[2][0]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[4]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[2][0]~q\,
	cin => \PRE_STDP|Add4~14\,
	sharein => \PRE_STDP|Add4~15\,
	sumout => \PRE_STDP|Add4~17_sumout\,
	cout => \PRE_STDP|Add4~18\,
	shareout => \PRE_STDP|Add4~19\);

-- Location: FF_X36_Y3_N44
\PRE_STDP|REG[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add4~17_sumout\,
	asdata => \PRE_STDP|REG[1][0]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~2_combout\,
	ena => \PRE_STDP|REG[2][-4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[2][0]~q\);

-- Location: LABCELL_X35_Y3_N15
\PRE_STDP|Add9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add9~17_sumout\ = SUM(( !\POST_STDP|POP_OUT\(4) $ (!\PRE_STDP|total_SUM~8_combout\ $ (!\PRE_STDP|REG[2][0]~q\)) ) + ( \PRE_STDP|Add9~15\ ) + ( \PRE_STDP|Add9~14\ ))
-- \PRE_STDP|Add9~18\ = CARRY(( !\POST_STDP|POP_OUT\(4) $ (!\PRE_STDP|total_SUM~8_combout\ $ (!\PRE_STDP|REG[2][0]~q\)) ) + ( \PRE_STDP|Add9~15\ ) + ( \PRE_STDP|Add9~14\ ))
-- \PRE_STDP|Add9~19\ = SHARE((!\POST_STDP|POP_OUT\(4) & ((\PRE_STDP|REG[2][0]~q\) # (\PRE_STDP|total_SUM~8_combout\))) # (\POST_STDP|POP_OUT\(4) & (\PRE_STDP|total_SUM~8_combout\ & \PRE_STDP|REG[2][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001100111100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \POST_STDP|ALT_INV_POP_OUT\(4),
	datac => \PRE_STDP|ALT_INV_total_SUM~8_combout\,
	datad => \PRE_STDP|ALT_INV_REG[2][0]~q\,
	cin => \PRE_STDP|Add9~14\,
	sharein => \PRE_STDP|Add9~15\,
	sumout => \PRE_STDP|Add9~17_sumout\,
	cout => \PRE_STDP|Add9~18\,
	shareout => \PRE_STDP|Add9~19\);

-- Location: LABCELL_X35_Y3_N33
\PRE_STDP|total_SUM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|total_SUM~9_combout\ = ( \PRE_STDP|Add9~17_sumout\ & ( (\PRE_STDP|total_SUM~8_combout\) # (\PRE_STDP|top\(1)) ) ) # ( !\PRE_STDP|Add9~17_sumout\ & ( (!\PRE_STDP|top\(1) & \PRE_STDP|total_SUM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(1),
	datac => \PRE_STDP|ALT_INV_total_SUM~8_combout\,
	dataf => \PRE_STDP|ALT_INV_Add9~17_sumout\,
	combout => \PRE_STDP|total_SUM~9_combout\);

-- Location: LABCELL_X35_Y1_N42
\PRE_STDP|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add5~17_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[4]~input_o\ $ (\PRE_STDP|REG[3][0]~q\) ) + ( \PRE_STDP|Add5~15\ ) + ( \PRE_STDP|Add5~14\ ))
-- \PRE_STDP|Add5~18\ = CARRY(( !\STDP_DATAIN_POST_FIFO[4]~input_o\ $ (\PRE_STDP|REG[3][0]~q\) ) + ( \PRE_STDP|Add5~15\ ) + ( \PRE_STDP|Add5~14\ ))
-- \PRE_STDP|Add5~19\ = SHARE((!\STDP_DATAIN_POST_FIFO[4]~input_o\ & \PRE_STDP|REG[3][0]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[4]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[3][0]~q\,
	cin => \PRE_STDP|Add5~14\,
	sharein => \PRE_STDP|Add5~15\,
	sumout => \PRE_STDP|Add5~17_sumout\,
	cout => \PRE_STDP|Add5~18\,
	shareout => \PRE_STDP|Add5~19\);

-- Location: FF_X35_Y1_N44
\PRE_STDP|REG[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add5~17_sumout\,
	asdata => \PRE_STDP|REG[2][0]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~4_combout\,
	ena => \PRE_STDP|REG[3][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[3][0]~q\);

-- Location: LABCELL_X35_Y2_N45
\PRE_STDP|Add11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add11~17_sumout\ = SUM(( !\PRE_STDP|REG[3][0]~q\ $ (!\POST_STDP|POP_OUT\(4) $ (!\PRE_STDP|total_SUM~9_combout\)) ) + ( \PRE_STDP|Add11~15\ ) + ( \PRE_STDP|Add11~14\ ))
-- \PRE_STDP|Add11~18\ = CARRY(( !\PRE_STDP|REG[3][0]~q\ $ (!\POST_STDP|POP_OUT\(4) $ (!\PRE_STDP|total_SUM~9_combout\)) ) + ( \PRE_STDP|Add11~15\ ) + ( \PRE_STDP|Add11~14\ ))
-- \PRE_STDP|Add11~19\ = SHARE((!\PRE_STDP|REG[3][0]~q\ & (!\POST_STDP|POP_OUT\(4) & \PRE_STDP|total_SUM~9_combout\)) # (\PRE_STDP|REG[3][0]~q\ & ((!\POST_STDP|POP_OUT\(4)) # (\PRE_STDP|total_SUM~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001111010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_REG[3][0]~q\,
	datac => \POST_STDP|ALT_INV_POP_OUT\(4),
	datad => \PRE_STDP|ALT_INV_total_SUM~9_combout\,
	cin => \PRE_STDP|Add11~14\,
	sharein => \PRE_STDP|Add11~15\,
	sumout => \PRE_STDP|Add11~17_sumout\,
	cout => \PRE_STDP|Add11~18\,
	shareout => \PRE_STDP|Add11~19\);

-- Location: LABCELL_X35_Y2_N15
\PRE_STDP|DATA_CAL_OUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|DATA_CAL_OUT~4_combout\ = (!\PRE_STDP|top\(0) & (((\PRE_STDP|total_SUM~9_combout\)))) # (\PRE_STDP|top\(0) & ((!\PRE_STDP|top\(1) & (\PRE_STDP|total_SUM~9_combout\)) # (\PRE_STDP|top\(1) & ((\PRE_STDP|Add11~17_sumout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000011111000011100001111100001110000111110000111000011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(0),
	datab => \PRE_STDP|ALT_INV_top\(1),
	datac => \PRE_STDP|ALT_INV_total_SUM~9_combout\,
	datad => \PRE_STDP|ALT_INV_Add11~17_sumout\,
	combout => \PRE_STDP|DATA_CAL_OUT~4_combout\);

-- Location: FF_X35_Y2_N16
\PRE_STDP|DATA_CAL_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|DATA_CAL_OUT~4_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|DATA_CAL_OUT\(4));

-- Location: FF_X73_Y2_N13
\PRE_SUM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \Add1~17_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRE_SUM(0));

-- Location: MLABCELL_X73_Y2_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( (!\STDP_patchPREneuron~input_o\ & (!\STDP_patchPOSTneuron~input_o\ & PRE_SUM(0))) ) + ( \PRE_STDP|DATA_CAL_OUT\(4) ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( (!\STDP_patchPREneuron~input_o\ & (!\STDP_patchPOSTneuron~input_o\ & PRE_SUM(0))) ) + ( \PRE_STDP|DATA_CAL_OUT\(4) ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_patchPREneuron~input_o\,
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \PRE_STDP|ALT_INV_DATA_CAL_OUT\(4),
	datad => ALT_INV_PRE_SUM(0),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: MLABCELL_X73_Y2_N33
\STDP_OUT[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \STDP_OUT[4]~reg0feeder_combout\ = ( \Add1~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~17_sumout\,
	combout => \STDP_OUT[4]~reg0feeder_combout\);

-- Location: FF_X73_Y2_N34
\STDP_OUT[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \STDP_OUT[4]~reg0feeder_combout\,
	sclr => \ALT_INV_synapsePush~input_o\,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STDP_OUT[4]~reg0_q\);

-- Location: IOIBUF_X39_Y0_N52
\STDP_DATAIN_POST_FIFO[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_DATAIN_POST_FIFO(5),
	o => \STDP_DATAIN_POST_FIFO[5]~input_o\);

-- Location: IOIBUF_X73_Y0_N41
\STDP_DATAIN_PRE_FIFO[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_DATAIN_PRE_FIFO(5),
	o => \STDP_DATAIN_PRE_FIFO[5]~input_o\);

-- Location: LABCELL_X37_Y4_N48
\PRE_STDP|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add1~21_sumout\ = SUM(( \PRE_STDP|REG[0][1]~q\ ) + ( (!\STDP_patchPOSTneuron~input_o\ & ((\STDP_DATAIN_PRE_FIFO[5]~input_o\))) # (\STDP_patchPOSTneuron~input_o\ & (!\STDP_DATAIN_POST_FIFO[5]~input_o\)) ) + ( \PRE_STDP|Add1~18\ ))
-- \PRE_STDP|Add1~22\ = CARRY(( \PRE_STDP|REG[0][1]~q\ ) + ( (!\STDP_patchPOSTneuron~input_o\ & ((\STDP_DATAIN_PRE_FIFO[5]~input_o\))) # (\STDP_patchPOSTneuron~input_o\ & (!\STDP_DATAIN_POST_FIFO[5]~input_o\)) ) + ( \PRE_STDP|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100011101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_DATAIN_POST_FIFO[5]~input_o\,
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \ALT_INV_STDP_DATAIN_PRE_FIFO[5]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[0][1]~q\,
	cin => \PRE_STDP|Add1~18\,
	sumout => \PRE_STDP|Add1~21_sumout\,
	cout => \PRE_STDP|Add1~22\);

-- Location: FF_X37_Y4_N50
\PRE_STDP|REG[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add1~21_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[0][1]~q\);

-- Location: LABCELL_X37_Y2_N15
\POST_STDP|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add1~21_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[5]~input_o\ $ (\POST_STDP|REG[0][1]~q\) ) + ( \POST_STDP|Add1~19\ ) + ( \POST_STDP|Add1~18\ ))
-- \POST_STDP|Add1~22\ = CARRY(( !\STDP_DATAIN_POST_FIFO[5]~input_o\ $ (\POST_STDP|REG[0][1]~q\) ) + ( \POST_STDP|Add1~19\ ) + ( \POST_STDP|Add1~18\ ))
-- \POST_STDP|Add1~23\ = SHARE((!\STDP_DATAIN_POST_FIFO[5]~input_o\ & \POST_STDP|REG[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[5]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[0][1]~q\,
	cin => \POST_STDP|Add1~18\,
	sharein => \POST_STDP|Add1~19\,
	sumout => \POST_STDP|Add1~21_sumout\,
	cout => \POST_STDP|Add1~22\,
	shareout => \POST_STDP|Add1~23\);

-- Location: FF_X37_Y2_N17
\POST_STDP|REG[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add1~21_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[0][1]~q\);

-- Location: LABCELL_X37_Y2_N45
\POST_STDP|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add3~21_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[5]~input_o\ $ (\POST_STDP|REG[1][1]~q\) ) + ( \POST_STDP|Add3~19\ ) + ( \POST_STDP|Add3~18\ ))
-- \POST_STDP|Add3~22\ = CARRY(( !\STDP_DATAIN_POST_FIFO[5]~input_o\ $ (\POST_STDP|REG[1][1]~q\) ) + ( \POST_STDP|Add3~19\ ) + ( \POST_STDP|Add3~18\ ))
-- \POST_STDP|Add3~23\ = SHARE((!\STDP_DATAIN_POST_FIFO[5]~input_o\ & \POST_STDP|REG[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[5]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[1][1]~q\,
	cin => \POST_STDP|Add3~18\,
	sharein => \POST_STDP|Add3~19\,
	sumout => \POST_STDP|Add3~21_sumout\,
	cout => \POST_STDP|Add3~22\,
	shareout => \POST_STDP|Add3~23\);

-- Location: FF_X37_Y2_N47
\POST_STDP|REG[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add3~21_sumout\,
	asdata => \POST_STDP|REG[0][1]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|LessThan2~0_combout\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[1][1]~q\);

-- Location: MLABCELL_X36_Y2_N15
\POST_STDP|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add4~21_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[5]~input_o\ $ (\POST_STDP|REG[2][1]~q\) ) + ( \POST_STDP|Add4~19\ ) + ( \POST_STDP|Add4~18\ ))
-- \POST_STDP|Add4~22\ = CARRY(( !\STDP_DATAIN_POST_FIFO[5]~input_o\ $ (\POST_STDP|REG[2][1]~q\) ) + ( \POST_STDP|Add4~19\ ) + ( \POST_STDP|Add4~18\ ))
-- \POST_STDP|Add4~23\ = SHARE((!\STDP_DATAIN_POST_FIFO[5]~input_o\ & \POST_STDP|REG[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_DATAIN_POST_FIFO[5]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[2][1]~q\,
	cin => \POST_STDP|Add4~18\,
	sharein => \POST_STDP|Add4~19\,
	sumout => \POST_STDP|Add4~21_sumout\,
	cout => \POST_STDP|Add4~22\,
	shareout => \POST_STDP|Add4~23\);

-- Location: FF_X36_Y2_N17
\POST_STDP|REG[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add4~21_sumout\,
	asdata => \POST_STDP|REG[1][1]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|ALT_INV_top\(1),
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[2][1]~q\);

-- Location: LABCELL_X37_Y3_N15
\POST_STDP|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add5~21_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[5]~input_o\ $ (\POST_STDP|REG[3][1]~q\) ) + ( \POST_STDP|Add5~19\ ) + ( \POST_STDP|Add5~18\ ))
-- \POST_STDP|Add5~22\ = CARRY(( !\STDP_DATAIN_POST_FIFO[5]~input_o\ $ (\POST_STDP|REG[3][1]~q\) ) + ( \POST_STDP|Add5~19\ ) + ( \POST_STDP|Add5~18\ ))
-- \POST_STDP|Add5~23\ = SHARE((!\STDP_DATAIN_POST_FIFO[5]~input_o\ & \POST_STDP|REG[3][1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[5]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[3][1]~q\,
	cin => \POST_STDP|Add5~18\,
	sharein => \POST_STDP|Add5~19\,
	sumout => \POST_STDP|Add5~21_sumout\,
	cout => \POST_STDP|Add5~22\,
	shareout => \POST_STDP|Add5~23\);

-- Location: FF_X37_Y3_N17
\POST_STDP|REG[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add5~21_sumout\,
	asdata => \POST_STDP|REG[2][1]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|LessThan4~0_combout\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[3][1]~q\);

-- Location: MLABCELL_X36_Y4_N0
\POST_STDP|POP_OUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|POP_OUT~5_combout\ = ( \POST_STDP|REG[2][1]~q\ & ( \POST_STDP|REG[3][1]~q\ & ( ((!CAL_ADDR(0) & (\POST_STDP|REG[0][1]~q\)) # (CAL_ADDR(0) & ((\POST_STDP|REG[1][1]~q\)))) # (CAL_ADDR(1)) ) ) ) # ( !\POST_STDP|REG[2][1]~q\ & ( 
-- \POST_STDP|REG[3][1]~q\ & ( (!CAL_ADDR(0) & (\POST_STDP|REG[0][1]~q\ & (!CAL_ADDR(1)))) # (CAL_ADDR(0) & (((\POST_STDP|REG[1][1]~q\) # (CAL_ADDR(1))))) ) ) ) # ( \POST_STDP|REG[2][1]~q\ & ( !\POST_STDP|REG[3][1]~q\ & ( (!CAL_ADDR(0) & (((CAL_ADDR(1))) # 
-- (\POST_STDP|REG[0][1]~q\))) # (CAL_ADDR(0) & (((!CAL_ADDR(1) & \POST_STDP|REG[1][1]~q\)))) ) ) ) # ( !\POST_STDP|REG[2][1]~q\ & ( !\POST_STDP|REG[3][1]~q\ & ( (!CAL_ADDR(1) & ((!CAL_ADDR(0) & (\POST_STDP|REG[0][1]~q\)) # (CAL_ADDR(0) & 
-- ((\POST_STDP|REG[1][1]~q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CAL_ADDR(0),
	datab => \POST_STDP|ALT_INV_REG[0][1]~q\,
	datac => ALT_INV_CAL_ADDR(1),
	datad => \POST_STDP|ALT_INV_REG[1][1]~q\,
	datae => \POST_STDP|ALT_INV_REG[2][1]~q\,
	dataf => \POST_STDP|ALT_INV_REG[3][1]~q\,
	combout => \POST_STDP|POP_OUT~5_combout\);

-- Location: FF_X36_Y4_N2
\POST_STDP|POP_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|POP_OUT~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|POP_OUT\(5));

-- Location: MLABCELL_X36_Y4_N45
\PRE_STDP|Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add6~21_sumout\ = SUM(( !\PRE_STDP|REG[0][1]~q\ $ (\POST_STDP|POP_OUT\(5)) ) + ( \PRE_STDP|Add6~19\ ) + ( \PRE_STDP|Add6~18\ ))
-- \PRE_STDP|Add6~22\ = CARRY(( !\PRE_STDP|REG[0][1]~q\ $ (\POST_STDP|POP_OUT\(5)) ) + ( \PRE_STDP|Add6~19\ ) + ( \PRE_STDP|Add6~18\ ))
-- \PRE_STDP|Add6~23\ = SHARE((\PRE_STDP|REG[0][1]~q\ & !\POST_STDP|POP_OUT\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \PRE_STDP|ALT_INV_REG[0][1]~q\,
	datad => \POST_STDP|ALT_INV_POP_OUT\(5),
	cin => \PRE_STDP|Add6~18\,
	sharein => \PRE_STDP|Add6~19\,
	sumout => \PRE_STDP|Add6~21_sumout\,
	cout => \PRE_STDP|Add6~22\,
	shareout => \PRE_STDP|Add6~23\);

-- Location: LABCELL_X35_Y4_N45
\PRE_STDP|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add3~21_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[5]~input_o\ $ (\PRE_STDP|REG[1][1]~q\) ) + ( \PRE_STDP|Add3~19\ ) + ( \PRE_STDP|Add3~18\ ))
-- \PRE_STDP|Add3~22\ = CARRY(( !\STDP_DATAIN_POST_FIFO[5]~input_o\ $ (\PRE_STDP|REG[1][1]~q\) ) + ( \PRE_STDP|Add3~19\ ) + ( \PRE_STDP|Add3~18\ ))
-- \PRE_STDP|Add3~23\ = SHARE((!\STDP_DATAIN_POST_FIFO[5]~input_o\ & \PRE_STDP|REG[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[5]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[1][1]~q\,
	cin => \PRE_STDP|Add3~18\,
	sharein => \PRE_STDP|Add3~19\,
	sumout => \PRE_STDP|Add3~21_sumout\,
	cout => \PRE_STDP|Add3~22\,
	shareout => \PRE_STDP|Add3~23\);

-- Location: FF_X35_Y4_N47
\PRE_STDP|REG[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add3~21_sumout\,
	asdata => \PRE_STDP|REG[0][1]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~0_combout\,
	ena => \PRE_STDP|REG[1][-4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[1][1]~q\);

-- Location: LABCELL_X35_Y4_N18
\PRE_STDP|Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add7~21_sumout\ = SUM(( !\PRE_STDP|REG[1][1]~q\ $ (!\PRE_STDP|Add6~21_sumout\ $ (!\POST_STDP|POP_OUT\(5))) ) + ( \PRE_STDP|Add7~19\ ) + ( \PRE_STDP|Add7~18\ ))
-- \PRE_STDP|Add7~22\ = CARRY(( !\PRE_STDP|REG[1][1]~q\ $ (!\PRE_STDP|Add6~21_sumout\ $ (!\POST_STDP|POP_OUT\(5))) ) + ( \PRE_STDP|Add7~19\ ) + ( \PRE_STDP|Add7~18\ ))
-- \PRE_STDP|Add7~23\ = SHARE((!\PRE_STDP|REG[1][1]~q\ & (\PRE_STDP|Add6~21_sumout\ & !\POST_STDP|POP_OUT\(5))) # (\PRE_STDP|REG[1][1]~q\ & ((!\POST_STDP|POP_OUT\(5)) # (\PRE_STDP|Add6~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110000001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \PRE_STDP|ALT_INV_REG[1][1]~q\,
	datac => \PRE_STDP|ALT_INV_Add6~21_sumout\,
	datad => \POST_STDP|ALT_INV_POP_OUT\(5),
	cin => \PRE_STDP|Add7~18\,
	sharein => \PRE_STDP|Add7~19\,
	sumout => \PRE_STDP|Add7~21_sumout\,
	cout => \PRE_STDP|Add7~22\,
	shareout => \PRE_STDP|Add7~23\);

-- Location: LABCELL_X35_Y3_N45
\PRE_STDP|total_SUM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|total_SUM~10_combout\ = ( \PRE_STDP|Add7~21_sumout\ & ( ((\PRE_STDP|Add6~21_sumout\) # (\PRE_STDP|top\(0))) # (\PRE_STDP|top\(1)) ) ) # ( !\PRE_STDP|Add7~21_sumout\ & ( (!\PRE_STDP|top\(1) & (!\PRE_STDP|top\(0) & \PRE_STDP|Add6~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(1),
	datac => \PRE_STDP|ALT_INV_top\(0),
	datad => \PRE_STDP|ALT_INV_Add6~21_sumout\,
	dataf => \PRE_STDP|ALT_INV_Add7~21_sumout\,
	combout => \PRE_STDP|total_SUM~10_combout\);

-- Location: MLABCELL_X36_Y3_N45
\PRE_STDP|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add4~21_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[5]~input_o\ $ (\PRE_STDP|REG[2][1]~q\) ) + ( \PRE_STDP|Add4~19\ ) + ( \PRE_STDP|Add4~18\ ))
-- \PRE_STDP|Add4~22\ = CARRY(( !\STDP_DATAIN_POST_FIFO[5]~input_o\ $ (\PRE_STDP|REG[2][1]~q\) ) + ( \PRE_STDP|Add4~19\ ) + ( \PRE_STDP|Add4~18\ ))
-- \PRE_STDP|Add4~23\ = SHARE((!\STDP_DATAIN_POST_FIFO[5]~input_o\ & \PRE_STDP|REG[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_DATAIN_POST_FIFO[5]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[2][1]~q\,
	cin => \PRE_STDP|Add4~18\,
	sharein => \PRE_STDP|Add4~19\,
	sumout => \PRE_STDP|Add4~21_sumout\,
	cout => \PRE_STDP|Add4~22\,
	shareout => \PRE_STDP|Add4~23\);

-- Location: FF_X36_Y3_N47
\PRE_STDP|REG[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add4~21_sumout\,
	asdata => \PRE_STDP|REG[1][1]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~2_combout\,
	ena => \PRE_STDP|REG[2][-4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[2][1]~q\);

-- Location: LABCELL_X35_Y3_N18
\PRE_STDP|Add9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add9~21_sumout\ = SUM(( !\PRE_STDP|REG[2][1]~q\ $ (!\POST_STDP|POP_OUT\(5) $ (!\PRE_STDP|total_SUM~10_combout\)) ) + ( \PRE_STDP|Add9~19\ ) + ( \PRE_STDP|Add9~18\ ))
-- \PRE_STDP|Add9~22\ = CARRY(( !\PRE_STDP|REG[2][1]~q\ $ (!\POST_STDP|POP_OUT\(5) $ (!\PRE_STDP|total_SUM~10_combout\)) ) + ( \PRE_STDP|Add9~19\ ) + ( \PRE_STDP|Add9~18\ ))
-- \PRE_STDP|Add9~23\ = SHARE((!\PRE_STDP|REG[2][1]~q\ & (!\POST_STDP|POP_OUT\(5) & \PRE_STDP|total_SUM~10_combout\)) # (\PRE_STDP|REG[2][1]~q\ & ((!\POST_STDP|POP_OUT\(5)) # (\PRE_STDP|total_SUM~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001111010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_REG[2][1]~q\,
	datac => \POST_STDP|ALT_INV_POP_OUT\(5),
	datad => \PRE_STDP|ALT_INV_total_SUM~10_combout\,
	cin => \PRE_STDP|Add9~18\,
	sharein => \PRE_STDP|Add9~19\,
	sumout => \PRE_STDP|Add9~21_sumout\,
	cout => \PRE_STDP|Add9~22\,
	shareout => \PRE_STDP|Add9~23\);

-- Location: LABCELL_X35_Y3_N42
\PRE_STDP|total_SUM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|total_SUM~11_combout\ = ( \PRE_STDP|Add9~21_sumout\ & ( (\PRE_STDP|total_SUM~10_combout\) # (\PRE_STDP|top\(1)) ) ) # ( !\PRE_STDP|Add9~21_sumout\ & ( (!\PRE_STDP|top\(1) & \PRE_STDP|total_SUM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(1),
	datad => \PRE_STDP|ALT_INV_total_SUM~10_combout\,
	dataf => \PRE_STDP|ALT_INV_Add9~21_sumout\,
	combout => \PRE_STDP|total_SUM~11_combout\);

-- Location: LABCELL_X35_Y1_N45
\PRE_STDP|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add5~21_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[5]~input_o\ $ (\PRE_STDP|REG[3][1]~q\) ) + ( \PRE_STDP|Add5~19\ ) + ( \PRE_STDP|Add5~18\ ))
-- \PRE_STDP|Add5~22\ = CARRY(( !\STDP_DATAIN_POST_FIFO[5]~input_o\ $ (\PRE_STDP|REG[3][1]~q\) ) + ( \PRE_STDP|Add5~19\ ) + ( \PRE_STDP|Add5~18\ ))
-- \PRE_STDP|Add5~23\ = SHARE((!\STDP_DATAIN_POST_FIFO[5]~input_o\ & \PRE_STDP|REG[3][1]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_DATAIN_POST_FIFO[5]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[3][1]~q\,
	cin => \PRE_STDP|Add5~18\,
	sharein => \PRE_STDP|Add5~19\,
	sumout => \PRE_STDP|Add5~21_sumout\,
	cout => \PRE_STDP|Add5~22\,
	shareout => \PRE_STDP|Add5~23\);

-- Location: FF_X35_Y1_N47
\PRE_STDP|REG[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add5~21_sumout\,
	asdata => \PRE_STDP|REG[2][1]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~4_combout\,
	ena => \PRE_STDP|REG[3][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[3][1]~q\);

-- Location: LABCELL_X35_Y2_N48
\PRE_STDP|Add11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add11~21_sumout\ = SUM(( !\POST_STDP|POP_OUT\(5) $ (!\PRE_STDP|REG[3][1]~q\ $ (!\PRE_STDP|total_SUM~11_combout\)) ) + ( \PRE_STDP|Add11~19\ ) + ( \PRE_STDP|Add11~18\ ))
-- \PRE_STDP|Add11~22\ = CARRY(( !\POST_STDP|POP_OUT\(5) $ (!\PRE_STDP|REG[3][1]~q\ $ (!\PRE_STDP|total_SUM~11_combout\)) ) + ( \PRE_STDP|Add11~19\ ) + ( \PRE_STDP|Add11~18\ ))
-- \PRE_STDP|Add11~23\ = SHARE((!\POST_STDP|POP_OUT\(5) & ((\PRE_STDP|total_SUM~11_combout\) # (\PRE_STDP|REG[3][1]~q\))) # (\POST_STDP|POP_OUT\(5) & (\PRE_STDP|REG[3][1]~q\ & \PRE_STDP|total_SUM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011001100111100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \POST_STDP|ALT_INV_POP_OUT\(5),
	datac => \PRE_STDP|ALT_INV_REG[3][1]~q\,
	datad => \PRE_STDP|ALT_INV_total_SUM~11_combout\,
	cin => \PRE_STDP|Add11~18\,
	sharein => \PRE_STDP|Add11~19\,
	sumout => \PRE_STDP|Add11~21_sumout\,
	cout => \PRE_STDP|Add11~22\,
	shareout => \PRE_STDP|Add11~23\);

-- Location: LABCELL_X35_Y2_N27
\PRE_STDP|DATA_CAL_OUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|DATA_CAL_OUT~5_combout\ = ( \PRE_STDP|Add11~21_sumout\ & ( ((\PRE_STDP|top\(0) & \PRE_STDP|top\(1))) # (\PRE_STDP|total_SUM~11_combout\) ) ) # ( !\PRE_STDP|Add11~21_sumout\ & ( (\PRE_STDP|total_SUM~11_combout\ & ((!\PRE_STDP|top\(0)) # 
-- (!\PRE_STDP|top\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111000010001111111110001000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(0),
	datab => \PRE_STDP|ALT_INV_top\(1),
	datad => \PRE_STDP|ALT_INV_total_SUM~11_combout\,
	dataf => \PRE_STDP|ALT_INV_Add11~21_sumout\,
	combout => \PRE_STDP|DATA_CAL_OUT~5_combout\);

-- Location: FF_X35_Y2_N28
\PRE_STDP|DATA_CAL_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|DATA_CAL_OUT~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|DATA_CAL_OUT\(5));

-- Location: FF_X73_Y2_N16
\PRE_SUM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRE_SUM(1));

-- Location: MLABCELL_X73_Y2_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( (!\STDP_patchPREneuron~input_o\ & (!\STDP_patchPOSTneuron~input_o\ & PRE_SUM(1))) ) + ( \PRE_STDP|DATA_CAL_OUT\(5) ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( (!\STDP_patchPREneuron~input_o\ & (!\STDP_patchPOSTneuron~input_o\ & PRE_SUM(1))) ) + ( \PRE_STDP|DATA_CAL_OUT\(5) ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_patchPREneuron~input_o\,
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \PRE_STDP|ALT_INV_DATA_CAL_OUT\(5),
	datad => ALT_INV_PRE_SUM(1),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: MLABCELL_X73_Y2_N27
\STDP_OUT[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \STDP_OUT[5]~reg0feeder_combout\ = ( \Add1~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~21_sumout\,
	combout => \STDP_OUT[5]~reg0feeder_combout\);

-- Location: FF_X73_Y2_N28
\STDP_OUT[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \STDP_OUT[5]~reg0feeder_combout\,
	sclr => \ALT_INV_synapsePush~input_o\,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STDP_OUT[5]~reg0_q\);

-- Location: IOIBUF_X39_Y0_N18
\STDP_DATAIN_POST_FIFO[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_DATAIN_POST_FIFO(6),
	o => \STDP_DATAIN_POST_FIFO[6]~input_o\);

-- Location: IOIBUF_X71_Y0_N18
\STDP_DATAIN_PRE_FIFO[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_DATAIN_PRE_FIFO(6),
	o => \STDP_DATAIN_PRE_FIFO[6]~input_o\);

-- Location: LABCELL_X37_Y4_N51
\PRE_STDP|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add1~25_sumout\ = SUM(( \PRE_STDP|REG[0][2]~q\ ) + ( (!\STDP_patchPOSTneuron~input_o\ & ((\STDP_DATAIN_PRE_FIFO[6]~input_o\))) # (\STDP_patchPOSTneuron~input_o\ & (!\STDP_DATAIN_POST_FIFO[6]~input_o\)) ) + ( \PRE_STDP|Add1~22\ ))
-- \PRE_STDP|Add1~26\ = CARRY(( \PRE_STDP|REG[0][2]~q\ ) + ( (!\STDP_patchPOSTneuron~input_o\ & ((\STDP_DATAIN_PRE_FIFO[6]~input_o\))) # (\STDP_patchPOSTneuron~input_o\ & (!\STDP_DATAIN_POST_FIFO[6]~input_o\)) ) + ( \PRE_STDP|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011110000001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[6]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[0][2]~q\,
	dataf => \ALT_INV_STDP_DATAIN_PRE_FIFO[6]~input_o\,
	cin => \PRE_STDP|Add1~22\,
	sumout => \PRE_STDP|Add1~25_sumout\,
	cout => \PRE_STDP|Add1~26\);

-- Location: FF_X37_Y4_N53
\PRE_STDP|REG[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add1~25_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[0][2]~q\);

-- Location: LABCELL_X37_Y2_N48
\POST_STDP|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add3~25_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[6]~input_o\ $ (\POST_STDP|REG[1][2]~q\) ) + ( \POST_STDP|Add3~23\ ) + ( \POST_STDP|Add3~22\ ))
-- \POST_STDP|Add3~26\ = CARRY(( !\STDP_DATAIN_POST_FIFO[6]~input_o\ $ (\POST_STDP|REG[1][2]~q\) ) + ( \POST_STDP|Add3~23\ ) + ( \POST_STDP|Add3~22\ ))
-- \POST_STDP|Add3~27\ = SHARE((!\STDP_DATAIN_POST_FIFO[6]~input_o\ & \POST_STDP|REG[1][2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[6]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[1][2]~q\,
	cin => \POST_STDP|Add3~22\,
	sharein => \POST_STDP|Add3~23\,
	sumout => \POST_STDP|Add3~25_sumout\,
	cout => \POST_STDP|Add3~26\,
	shareout => \POST_STDP|Add3~27\);

-- Location: LABCELL_X37_Y2_N18
\POST_STDP|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add1~25_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[6]~input_o\ $ (\POST_STDP|REG[0][2]~q\) ) + ( \POST_STDP|Add1~23\ ) + ( \POST_STDP|Add1~22\ ))
-- \POST_STDP|Add1~26\ = CARRY(( !\STDP_DATAIN_POST_FIFO[6]~input_o\ $ (\POST_STDP|REG[0][2]~q\) ) + ( \POST_STDP|Add1~23\ ) + ( \POST_STDP|Add1~22\ ))
-- \POST_STDP|Add1~27\ = SHARE((!\STDP_DATAIN_POST_FIFO[6]~input_o\ & \POST_STDP|REG[0][2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[6]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[0][2]~q\,
	cin => \POST_STDP|Add1~22\,
	sharein => \POST_STDP|Add1~23\,
	sumout => \POST_STDP|Add1~25_sumout\,
	cout => \POST_STDP|Add1~26\,
	shareout => \POST_STDP|Add1~27\);

-- Location: FF_X37_Y2_N20
\POST_STDP|REG[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add1~25_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[0][2]~q\);

-- Location: FF_X37_Y2_N50
\POST_STDP|REG[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add3~25_sumout\,
	asdata => \POST_STDP|REG[0][2]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|LessThan2~0_combout\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[1][2]~q\);

-- Location: MLABCELL_X36_Y2_N18
\POST_STDP|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add4~25_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[6]~input_o\ $ (\POST_STDP|REG[2][2]~q\) ) + ( \POST_STDP|Add4~23\ ) + ( \POST_STDP|Add4~22\ ))
-- \POST_STDP|Add4~26\ = CARRY(( !\STDP_DATAIN_POST_FIFO[6]~input_o\ $ (\POST_STDP|REG[2][2]~q\) ) + ( \POST_STDP|Add4~23\ ) + ( \POST_STDP|Add4~22\ ))
-- \POST_STDP|Add4~27\ = SHARE((!\STDP_DATAIN_POST_FIFO[6]~input_o\ & \POST_STDP|REG[2][2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[6]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[2][2]~q\,
	cin => \POST_STDP|Add4~22\,
	sharein => \POST_STDP|Add4~23\,
	sumout => \POST_STDP|Add4~25_sumout\,
	cout => \POST_STDP|Add4~26\,
	shareout => \POST_STDP|Add4~27\);

-- Location: FF_X36_Y2_N20
\POST_STDP|REG[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add4~25_sumout\,
	asdata => \POST_STDP|REG[1][2]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|ALT_INV_top\(1),
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[2][2]~q\);

-- Location: LABCELL_X37_Y3_N18
\POST_STDP|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add5~25_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[6]~input_o\ $ (\POST_STDP|REG[3][2]~q\) ) + ( \POST_STDP|Add5~23\ ) + ( \POST_STDP|Add5~22\ ))
-- \POST_STDP|Add5~26\ = CARRY(( !\STDP_DATAIN_POST_FIFO[6]~input_o\ $ (\POST_STDP|REG[3][2]~q\) ) + ( \POST_STDP|Add5~23\ ) + ( \POST_STDP|Add5~22\ ))
-- \POST_STDP|Add5~27\ = SHARE((!\STDP_DATAIN_POST_FIFO[6]~input_o\ & \POST_STDP|REG[3][2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[6]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[3][2]~q\,
	cin => \POST_STDP|Add5~22\,
	sharein => \POST_STDP|Add5~23\,
	sumout => \POST_STDP|Add5~25_sumout\,
	cout => \POST_STDP|Add5~26\,
	shareout => \POST_STDP|Add5~27\);

-- Location: FF_X37_Y3_N20
\POST_STDP|REG[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add5~25_sumout\,
	asdata => \POST_STDP|REG[2][2]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|LessThan4~0_combout\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[3][2]~q\);

-- Location: MLABCELL_X36_Y4_N54
\POST_STDP|POP_OUT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|POP_OUT~6_combout\ = ( \POST_STDP|REG[3][2]~q\ & ( \POST_STDP|REG[0][2]~q\ & ( (!CAL_ADDR(1) & (((!CAL_ADDR(0))) # (\POST_STDP|REG[1][2]~q\))) # (CAL_ADDR(1) & (((\POST_STDP|REG[2][2]~q\) # (CAL_ADDR(0))))) ) ) ) # ( !\POST_STDP|REG[3][2]~q\ & 
-- ( \POST_STDP|REG[0][2]~q\ & ( (!CAL_ADDR(1) & (((!CAL_ADDR(0))) # (\POST_STDP|REG[1][2]~q\))) # (CAL_ADDR(1) & (((!CAL_ADDR(0) & \POST_STDP|REG[2][2]~q\)))) ) ) ) # ( \POST_STDP|REG[3][2]~q\ & ( !\POST_STDP|REG[0][2]~q\ & ( (!CAL_ADDR(1) & 
-- (\POST_STDP|REG[1][2]~q\ & (CAL_ADDR(0)))) # (CAL_ADDR(1) & (((\POST_STDP|REG[2][2]~q\) # (CAL_ADDR(0))))) ) ) ) # ( !\POST_STDP|REG[3][2]~q\ & ( !\POST_STDP|REG[0][2]~q\ & ( (!CAL_ADDR(1) & (\POST_STDP|REG[1][2]~q\ & (CAL_ADDR(0)))) # (CAL_ADDR(1) & 
-- (((!CAL_ADDR(0) & \POST_STDP|REG[2][2]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CAL_ADDR(1),
	datab => \POST_STDP|ALT_INV_REG[1][2]~q\,
	datac => ALT_INV_CAL_ADDR(0),
	datad => \POST_STDP|ALT_INV_REG[2][2]~q\,
	datae => \POST_STDP|ALT_INV_REG[3][2]~q\,
	dataf => \POST_STDP|ALT_INV_REG[0][2]~q\,
	combout => \POST_STDP|POP_OUT~6_combout\);

-- Location: FF_X36_Y4_N56
\POST_STDP|POP_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|POP_OUT~6_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|POP_OUT\(6));

-- Location: MLABCELL_X36_Y4_N48
\PRE_STDP|Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add6~25_sumout\ = SUM(( !\PRE_STDP|REG[0][2]~q\ $ (\POST_STDP|POP_OUT\(6)) ) + ( \PRE_STDP|Add6~23\ ) + ( \PRE_STDP|Add6~22\ ))
-- \PRE_STDP|Add6~26\ = CARRY(( !\PRE_STDP|REG[0][2]~q\ $ (\POST_STDP|POP_OUT\(6)) ) + ( \PRE_STDP|Add6~23\ ) + ( \PRE_STDP|Add6~22\ ))
-- \PRE_STDP|Add6~27\ = SHARE((\PRE_STDP|REG[0][2]~q\ & !\POST_STDP|POP_OUT\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \PRE_STDP|ALT_INV_REG[0][2]~q\,
	datad => \POST_STDP|ALT_INV_POP_OUT\(6),
	cin => \PRE_STDP|Add6~22\,
	sharein => \PRE_STDP|Add6~23\,
	sumout => \PRE_STDP|Add6~25_sumout\,
	cout => \PRE_STDP|Add6~26\,
	shareout => \PRE_STDP|Add6~27\);

-- Location: LABCELL_X35_Y4_N48
\PRE_STDP|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add3~25_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[6]~input_o\ $ (\PRE_STDP|REG[1][2]~q\) ) + ( \PRE_STDP|Add3~23\ ) + ( \PRE_STDP|Add3~22\ ))
-- \PRE_STDP|Add3~26\ = CARRY(( !\STDP_DATAIN_POST_FIFO[6]~input_o\ $ (\PRE_STDP|REG[1][2]~q\) ) + ( \PRE_STDP|Add3~23\ ) + ( \PRE_STDP|Add3~22\ ))
-- \PRE_STDP|Add3~27\ = SHARE((!\STDP_DATAIN_POST_FIFO[6]~input_o\ & \PRE_STDP|REG[1][2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[6]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[1][2]~q\,
	cin => \PRE_STDP|Add3~22\,
	sharein => \PRE_STDP|Add3~23\,
	sumout => \PRE_STDP|Add3~25_sumout\,
	cout => \PRE_STDP|Add3~26\,
	shareout => \PRE_STDP|Add3~27\);

-- Location: FF_X35_Y4_N50
\PRE_STDP|REG[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add3~25_sumout\,
	asdata => \PRE_STDP|REG[0][2]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~0_combout\,
	ena => \PRE_STDP|REG[1][-4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[1][2]~q\);

-- Location: LABCELL_X35_Y4_N21
\PRE_STDP|Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add7~25_sumout\ = SUM(( !\PRE_STDP|REG[1][2]~q\ $ (!\POST_STDP|POP_OUT\(6) $ (!\PRE_STDP|Add6~25_sumout\)) ) + ( \PRE_STDP|Add7~23\ ) + ( \PRE_STDP|Add7~22\ ))
-- \PRE_STDP|Add7~26\ = CARRY(( !\PRE_STDP|REG[1][2]~q\ $ (!\POST_STDP|POP_OUT\(6) $ (!\PRE_STDP|Add6~25_sumout\)) ) + ( \PRE_STDP|Add7~23\ ) + ( \PRE_STDP|Add7~22\ ))
-- \PRE_STDP|Add7~27\ = SHARE((!\PRE_STDP|REG[1][2]~q\ & (!\POST_STDP|POP_OUT\(6) & \PRE_STDP|Add6~25_sumout\)) # (\PRE_STDP|REG[1][2]~q\ & ((!\POST_STDP|POP_OUT\(6)) # (\PRE_STDP|Add6~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100001111010100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_REG[1][2]~q\,
	datac => \POST_STDP|ALT_INV_POP_OUT\(6),
	datad => \PRE_STDP|ALT_INV_Add6~25_sumout\,
	cin => \PRE_STDP|Add7~22\,
	sharein => \PRE_STDP|Add7~23\,
	sumout => \PRE_STDP|Add7~25_sumout\,
	cout => \PRE_STDP|Add7~26\,
	shareout => \PRE_STDP|Add7~27\);

-- Location: LABCELL_X35_Y3_N36
\PRE_STDP|total_SUM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|total_SUM~12_combout\ = ( \PRE_STDP|Add7~25_sumout\ & ( ((\PRE_STDP|Add6~25_sumout\) # (\PRE_STDP|top\(1))) # (\PRE_STDP|top\(0)) ) ) # ( !\PRE_STDP|Add7~25_sumout\ & ( (!\PRE_STDP|top\(0) & (!\PRE_STDP|top\(1) & \PRE_STDP|Add6~25_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(0),
	datac => \PRE_STDP|ALT_INV_top\(1),
	datad => \PRE_STDP|ALT_INV_Add6~25_sumout\,
	dataf => \PRE_STDP|ALT_INV_Add7~25_sumout\,
	combout => \PRE_STDP|total_SUM~12_combout\);

-- Location: MLABCELL_X36_Y3_N48
\PRE_STDP|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add4~25_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[6]~input_o\ $ (\PRE_STDP|REG[2][2]~q\) ) + ( \PRE_STDP|Add4~23\ ) + ( \PRE_STDP|Add4~22\ ))
-- \PRE_STDP|Add4~26\ = CARRY(( !\STDP_DATAIN_POST_FIFO[6]~input_o\ $ (\PRE_STDP|REG[2][2]~q\) ) + ( \PRE_STDP|Add4~23\ ) + ( \PRE_STDP|Add4~22\ ))
-- \PRE_STDP|Add4~27\ = SHARE((!\STDP_DATAIN_POST_FIFO[6]~input_o\ & \PRE_STDP|REG[2][2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[6]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[2][2]~q\,
	cin => \PRE_STDP|Add4~22\,
	sharein => \PRE_STDP|Add4~23\,
	sumout => \PRE_STDP|Add4~25_sumout\,
	cout => \PRE_STDP|Add4~26\,
	shareout => \PRE_STDP|Add4~27\);

-- Location: FF_X36_Y3_N50
\PRE_STDP|REG[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add4~25_sumout\,
	asdata => \PRE_STDP|REG[1][2]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~2_combout\,
	ena => \PRE_STDP|REG[2][-4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[2][2]~q\);

-- Location: LABCELL_X35_Y3_N21
\PRE_STDP|Add9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add9~25_sumout\ = SUM(( !\PRE_STDP|REG[2][2]~q\ $ (!\POST_STDP|POP_OUT\(6) $ (!\PRE_STDP|total_SUM~12_combout\)) ) + ( \PRE_STDP|Add9~23\ ) + ( \PRE_STDP|Add9~22\ ))
-- \PRE_STDP|Add9~26\ = CARRY(( !\PRE_STDP|REG[2][2]~q\ $ (!\POST_STDP|POP_OUT\(6) $ (!\PRE_STDP|total_SUM~12_combout\)) ) + ( \PRE_STDP|Add9~23\ ) + ( \PRE_STDP|Add9~22\ ))
-- \PRE_STDP|Add9~27\ = SHARE((!\PRE_STDP|REG[2][2]~q\ & (!\POST_STDP|POP_OUT\(6) & \PRE_STDP|total_SUM~12_combout\)) # (\PRE_STDP|REG[2][2]~q\ & ((!\POST_STDP|POP_OUT\(6)) # (\PRE_STDP|total_SUM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001111001100000000000000001100001100111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \PRE_STDP|ALT_INV_REG[2][2]~q\,
	datac => \POST_STDP|ALT_INV_POP_OUT\(6),
	datad => \PRE_STDP|ALT_INV_total_SUM~12_combout\,
	cin => \PRE_STDP|Add9~22\,
	sharein => \PRE_STDP|Add9~23\,
	sumout => \PRE_STDP|Add9~25_sumout\,
	cout => \PRE_STDP|Add9~26\,
	shareout => \PRE_STDP|Add9~27\);

-- Location: LABCELL_X35_Y2_N3
\PRE_STDP|total_SUM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|total_SUM~13_combout\ = ( \PRE_STDP|Add9~25_sumout\ & ( (\PRE_STDP|total_SUM~12_combout\) # (\PRE_STDP|top\(1)) ) ) # ( !\PRE_STDP|Add9~25_sumout\ & ( (!\PRE_STDP|top\(1) & \PRE_STDP|total_SUM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(1),
	datad => \PRE_STDP|ALT_INV_total_SUM~12_combout\,
	dataf => \PRE_STDP|ALT_INV_Add9~25_sumout\,
	combout => \PRE_STDP|total_SUM~13_combout\);

-- Location: LABCELL_X35_Y1_N48
\PRE_STDP|Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add5~25_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[6]~input_o\ $ (\PRE_STDP|REG[3][2]~q\) ) + ( \PRE_STDP|Add5~23\ ) + ( \PRE_STDP|Add5~22\ ))
-- \PRE_STDP|Add5~26\ = CARRY(( !\STDP_DATAIN_POST_FIFO[6]~input_o\ $ (\PRE_STDP|REG[3][2]~q\) ) + ( \PRE_STDP|Add5~23\ ) + ( \PRE_STDP|Add5~22\ ))
-- \PRE_STDP|Add5~27\ = SHARE((!\STDP_DATAIN_POST_FIFO[6]~input_o\ & \PRE_STDP|REG[3][2]~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[6]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[3][2]~q\,
	cin => \PRE_STDP|Add5~22\,
	sharein => \PRE_STDP|Add5~23\,
	sumout => \PRE_STDP|Add5~25_sumout\,
	cout => \PRE_STDP|Add5~26\,
	shareout => \PRE_STDP|Add5~27\);

-- Location: FF_X35_Y1_N50
\PRE_STDP|REG[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add5~25_sumout\,
	asdata => \PRE_STDP|REG[2][2]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~4_combout\,
	ena => \PRE_STDP|REG[3][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[3][2]~q\);

-- Location: LABCELL_X35_Y2_N51
\PRE_STDP|Add11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add11~25_sumout\ = SUM(( !\POST_STDP|POP_OUT\(6) $ (!\PRE_STDP|REG[3][2]~q\ $ (!\PRE_STDP|total_SUM~13_combout\)) ) + ( \PRE_STDP|Add11~23\ ) + ( \PRE_STDP|Add11~22\ ))
-- \PRE_STDP|Add11~26\ = CARRY(( !\POST_STDP|POP_OUT\(6) $ (!\PRE_STDP|REG[3][2]~q\ $ (!\PRE_STDP|total_SUM~13_combout\)) ) + ( \PRE_STDP|Add11~23\ ) + ( \PRE_STDP|Add11~22\ ))
-- \PRE_STDP|Add11~27\ = SHARE((!\POST_STDP|POP_OUT\(6) & ((\PRE_STDP|total_SUM~13_combout\) # (\PRE_STDP|REG[3][2]~q\))) # (\POST_STDP|POP_OUT\(6) & (\PRE_STDP|REG[3][2]~q\ & \PRE_STDP|total_SUM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010101010111100000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \POST_STDP|ALT_INV_POP_OUT\(6),
	datac => \PRE_STDP|ALT_INV_REG[3][2]~q\,
	datad => \PRE_STDP|ALT_INV_total_SUM~13_combout\,
	cin => \PRE_STDP|Add11~22\,
	sharein => \PRE_STDP|Add11~23\,
	sumout => \PRE_STDP|Add11~25_sumout\,
	cout => \PRE_STDP|Add11~26\,
	shareout => \PRE_STDP|Add11~27\);

-- Location: LABCELL_X35_Y2_N0
\PRE_STDP|DATA_CAL_OUT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|DATA_CAL_OUT~6_combout\ = ( \PRE_STDP|Add11~25_sumout\ & ( ((\PRE_STDP|top\(1) & \PRE_STDP|top\(0))) # (\PRE_STDP|total_SUM~13_combout\) ) ) # ( !\PRE_STDP|Add11~25_sumout\ & ( (\PRE_STDP|total_SUM~13_combout\ & ((!\PRE_STDP|top\(1)) # 
-- (!\PRE_STDP|top\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101000000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(1),
	datac => \PRE_STDP|ALT_INV_top\(0),
	datad => \PRE_STDP|ALT_INV_total_SUM~13_combout\,
	dataf => \PRE_STDP|ALT_INV_Add11~25_sumout\,
	combout => \PRE_STDP|DATA_CAL_OUT~6_combout\);

-- Location: FF_X35_Y2_N2
\PRE_STDP|DATA_CAL_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|DATA_CAL_OUT~6_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|DATA_CAL_OUT\(6));

-- Location: FF_X73_Y2_N19
\PRE_SUM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \Add1~25_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRE_SUM(2));

-- Location: MLABCELL_X73_Y2_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( (!\STDP_patchPREneuron~input_o\ & (!\STDP_patchPOSTneuron~input_o\ & PRE_SUM(2))) ) + ( \PRE_STDP|DATA_CAL_OUT\(6) ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( (!\STDP_patchPREneuron~input_o\ & (!\STDP_patchPOSTneuron~input_o\ & PRE_SUM(2))) ) + ( \PRE_STDP|DATA_CAL_OUT\(6) ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_patchPREneuron~input_o\,
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \PRE_STDP|ALT_INV_DATA_CAL_OUT\(6),
	datad => ALT_INV_PRE_SUM(2),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: MLABCELL_X73_Y2_N54
\STDP_OUT[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \STDP_OUT[6]~reg0feeder_combout\ = ( \Add1~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add1~25_sumout\,
	combout => \STDP_OUT[6]~reg0feeder_combout\);

-- Location: FF_X73_Y2_N55
\STDP_OUT[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \STDP_OUT[6]~reg0feeder_combout\,
	sclr => \ALT_INV_synapsePush~input_o\,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STDP_OUT[6]~reg0_q\);

-- Location: IOIBUF_X37_Y0_N52
\STDP_DATAIN_POST_FIFO[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_DATAIN_POST_FIFO(7),
	o => \STDP_DATAIN_POST_FIFO[7]~input_o\);

-- Location: LABCELL_X37_Y2_N21
\POST_STDP|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add1~29_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[7]~input_o\ $ (\POST_STDP|REG[0][3]~q\) ) + ( \POST_STDP|Add1~27\ ) + ( \POST_STDP|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[7]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[0][3]~q\,
	cin => \POST_STDP|Add1~26\,
	sharein => \POST_STDP|Add1~27\,
	sumout => \POST_STDP|Add1~29_sumout\);

-- Location: FF_X37_Y2_N23
\POST_STDP|REG[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add1~29_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[0][3]~q\);

-- Location: LABCELL_X37_Y3_N21
\POST_STDP|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add5~29_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[7]~input_o\ $ (\POST_STDP|REG[3][3]~q\) ) + ( \POST_STDP|Add5~27\ ) + ( \POST_STDP|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[7]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[3][3]~q\,
	cin => \POST_STDP|Add5~26\,
	sharein => \POST_STDP|Add5~27\,
	sumout => \POST_STDP|Add5~29_sumout\);

-- Location: MLABCELL_X36_Y2_N21
\POST_STDP|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add4~29_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[7]~input_o\ $ (\POST_STDP|REG[2][3]~q\) ) + ( \POST_STDP|Add4~27\ ) + ( \POST_STDP|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_DATAIN_POST_FIFO[7]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[2][3]~q\,
	cin => \POST_STDP|Add4~26\,
	sharein => \POST_STDP|Add4~27\,
	sumout => \POST_STDP|Add4~29_sumout\);

-- Location: LABCELL_X37_Y2_N51
\POST_STDP|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|Add3~29_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[7]~input_o\ $ (\POST_STDP|REG[1][3]~q\) ) + ( \POST_STDP|Add3~27\ ) + ( \POST_STDP|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[7]~input_o\,
	datad => \POST_STDP|ALT_INV_REG[1][3]~q\,
	cin => \POST_STDP|Add3~26\,
	sharein => \POST_STDP|Add3~27\,
	sumout => \POST_STDP|Add3~29_sumout\);

-- Location: FF_X37_Y2_N53
\POST_STDP|REG[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add3~29_sumout\,
	asdata => \POST_STDP|REG[0][3]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|LessThan2~0_combout\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[1][3]~q\);

-- Location: FF_X36_Y2_N23
\POST_STDP|REG[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add4~29_sumout\,
	asdata => \POST_STDP|REG[1][3]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|ALT_INV_top\(1),
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[2][3]~q\);

-- Location: FF_X37_Y3_N23
\POST_STDP|REG[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|Add5~29_sumout\,
	asdata => \POST_STDP|REG[2][3]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \POST_STDP|LessThan4~0_combout\,
	ena => \STDP_patchPOSTneuron~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|REG[3][3]~q\);

-- Location: MLABCELL_X36_Y4_N12
\POST_STDP|POP_OUT~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \POST_STDP|POP_OUT~7_combout\ = ( \POST_STDP|REG[2][3]~q\ & ( \POST_STDP|REG[1][3]~q\ & ( (!CAL_ADDR(0) & (((CAL_ADDR(1))) # (\POST_STDP|REG[0][3]~q\))) # (CAL_ADDR(0) & (((!CAL_ADDR(1)) # (\POST_STDP|REG[3][3]~q\)))) ) ) ) # ( !\POST_STDP|REG[2][3]~q\ & 
-- ( \POST_STDP|REG[1][3]~q\ & ( (!CAL_ADDR(0) & (\POST_STDP|REG[0][3]~q\ & (!CAL_ADDR(1)))) # (CAL_ADDR(0) & (((!CAL_ADDR(1)) # (\POST_STDP|REG[3][3]~q\)))) ) ) ) # ( \POST_STDP|REG[2][3]~q\ & ( !\POST_STDP|REG[1][3]~q\ & ( (!CAL_ADDR(0) & (((CAL_ADDR(1))) 
-- # (\POST_STDP|REG[0][3]~q\))) # (CAL_ADDR(0) & (((CAL_ADDR(1) & \POST_STDP|REG[3][3]~q\)))) ) ) ) # ( !\POST_STDP|REG[2][3]~q\ & ( !\POST_STDP|REG[1][3]~q\ & ( (!CAL_ADDR(0) & (\POST_STDP|REG[0][3]~q\ & (!CAL_ADDR(1)))) # (CAL_ADDR(0) & (((CAL_ADDR(1) & 
-- \POST_STDP|REG[3][3]~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_CAL_ADDR(0),
	datab => \POST_STDP|ALT_INV_REG[0][3]~q\,
	datac => ALT_INV_CAL_ADDR(1),
	datad => \POST_STDP|ALT_INV_REG[3][3]~q\,
	datae => \POST_STDP|ALT_INV_REG[2][3]~q\,
	dataf => \POST_STDP|ALT_INV_REG[1][3]~q\,
	combout => \POST_STDP|POP_OUT~7_combout\);

-- Location: FF_X36_Y4_N14
\POST_STDP|POP_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \POST_STDP|POP_OUT~7_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \POST_STDP|POP_OUT\(7));

-- Location: IOIBUF_X69_Y0_N1
\STDP_DATAIN_PRE_FIFO[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STDP_DATAIN_PRE_FIFO(7),
	o => \STDP_DATAIN_PRE_FIFO[7]~input_o\);

-- Location: LABCELL_X37_Y4_N54
\PRE_STDP|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add1~29_sumout\ = SUM(( \PRE_STDP|REG[0][3]~q\ ) + ( (!\STDP_patchPOSTneuron~input_o\ & ((\STDP_DATAIN_PRE_FIFO[7]~input_o\))) # (\STDP_patchPOSTneuron~input_o\ & (!\STDP_DATAIN_POST_FIFO[7]~input_o\)) ) + ( \PRE_STDP|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110100011101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_DATAIN_POST_FIFO[7]~input_o\,
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \ALT_INV_STDP_DATAIN_PRE_FIFO[7]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[0][3]~q\,
	cin => \PRE_STDP|Add1~26\,
	sumout => \PRE_STDP|Add1~29_sumout\);

-- Location: FF_X37_Y4_N56
\PRE_STDP|REG[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add1~29_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[0][3]~q\);

-- Location: MLABCELL_X36_Y4_N51
\PRE_STDP|Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add6~29_sumout\ = SUM(( !\POST_STDP|POP_OUT\(7) $ (\PRE_STDP|REG[0][3]~q\) ) + ( \PRE_STDP|Add6~27\ ) + ( \PRE_STDP|Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \POST_STDP|ALT_INV_POP_OUT\(7),
	datad => \PRE_STDP|ALT_INV_REG[0][3]~q\,
	cin => \PRE_STDP|Add6~26\,
	sharein => \PRE_STDP|Add6~27\,
	sumout => \PRE_STDP|Add6~29_sumout\);

-- Location: LABCELL_X35_Y4_N51
\PRE_STDP|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add3~29_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[7]~input_o\ $ (\PRE_STDP|REG[1][3]~q\) ) + ( \PRE_STDP|Add3~27\ ) + ( \PRE_STDP|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_STDP_DATAIN_POST_FIFO[7]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[1][3]~q\,
	cin => \PRE_STDP|Add3~26\,
	sharein => \PRE_STDP|Add3~27\,
	sumout => \PRE_STDP|Add3~29_sumout\);

-- Location: FF_X35_Y4_N53
\PRE_STDP|REG[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add3~29_sumout\,
	asdata => \PRE_STDP|REG[0][3]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~0_combout\,
	ena => \PRE_STDP|REG[1][-4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[1][3]~q\);

-- Location: LABCELL_X35_Y4_N24
\PRE_STDP|Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add7~29_sumout\ = SUM(( !\PRE_STDP|REG[1][3]~q\ $ (!\POST_STDP|POP_OUT\(7) $ (!\PRE_STDP|Add6~29_sumout\)) ) + ( \PRE_STDP|Add7~27\ ) + ( \PRE_STDP|Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001001100101100110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_REG[1][3]~q\,
	datab => \POST_STDP|ALT_INV_POP_OUT\(7),
	datad => \PRE_STDP|ALT_INV_Add6~29_sumout\,
	cin => \PRE_STDP|Add7~26\,
	sharein => \PRE_STDP|Add7~27\,
	sumout => \PRE_STDP|Add7~29_sumout\);

-- Location: LABCELL_X35_Y3_N48
\PRE_STDP|total_SUM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|total_SUM~14_combout\ = ( \PRE_STDP|Add7~29_sumout\ & ( ((\PRE_STDP|Add6~29_sumout\) # (\PRE_STDP|top\(0))) # (\PRE_STDP|top\(1)) ) ) # ( !\PRE_STDP|Add7~29_sumout\ & ( (!\PRE_STDP|top\(1) & (!\PRE_STDP|top\(0) & \PRE_STDP|Add6~29_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(1),
	datac => \PRE_STDP|ALT_INV_top\(0),
	datad => \PRE_STDP|ALT_INV_Add6~29_sumout\,
	dataf => \PRE_STDP|ALT_INV_Add7~29_sumout\,
	combout => \PRE_STDP|total_SUM~14_combout\);

-- Location: MLABCELL_X36_Y3_N51
\PRE_STDP|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add4~29_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[7]~input_o\ $ (\PRE_STDP|REG[2][3]~q\) ) + ( \PRE_STDP|Add4~27\ ) + ( \PRE_STDP|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_DATAIN_POST_FIFO[7]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[2][3]~q\,
	cin => \PRE_STDP|Add4~26\,
	sharein => \PRE_STDP|Add4~27\,
	sumout => \PRE_STDP|Add4~29_sumout\);

-- Location: FF_X36_Y3_N53
\PRE_STDP|REG[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add4~29_sumout\,
	asdata => \PRE_STDP|REG[1][3]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~2_combout\,
	ena => \PRE_STDP|REG[2][-4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[2][3]~q\);

-- Location: LABCELL_X35_Y3_N24
\PRE_STDP|Add9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add9~29_sumout\ = SUM(( !\PRE_STDP|REG[2][3]~q\ $ (!\PRE_STDP|total_SUM~14_combout\ $ (!\POST_STDP|POP_OUT\(7))) ) + ( \PRE_STDP|Add9~27\ ) + ( \PRE_STDP|Add9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_REG[2][3]~q\,
	datac => \PRE_STDP|ALT_INV_total_SUM~14_combout\,
	datad => \POST_STDP|ALT_INV_POP_OUT\(7),
	cin => \PRE_STDP|Add9~26\,
	sharein => \PRE_STDP|Add9~27\,
	sumout => \PRE_STDP|Add9~29_sumout\);

-- Location: LABCELL_X35_Y2_N21
\PRE_STDP|total_SUM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|total_SUM~15_combout\ = ( \PRE_STDP|Add9~29_sumout\ & ( (\PRE_STDP|total_SUM~14_combout\) # (\PRE_STDP|top\(1)) ) ) # ( !\PRE_STDP|Add9~29_sumout\ & ( (!\PRE_STDP|top\(1) & \PRE_STDP|total_SUM~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(1),
	datad => \PRE_STDP|ALT_INV_total_SUM~14_combout\,
	dataf => \PRE_STDP|ALT_INV_Add9~29_sumout\,
	combout => \PRE_STDP|total_SUM~15_combout\);

-- Location: LABCELL_X35_Y1_N51
\PRE_STDP|Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add5~29_sumout\ = SUM(( !\STDP_DATAIN_POST_FIFO[7]~input_o\ $ (\PRE_STDP|REG[3][3]~q\) ) + ( \PRE_STDP|Add5~27\ ) + ( \PRE_STDP|Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101001010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_DATAIN_POST_FIFO[7]~input_o\,
	datad => \PRE_STDP|ALT_INV_REG[3][3]~q\,
	cin => \PRE_STDP|Add5~26\,
	sharein => \PRE_STDP|Add5~27\,
	sumout => \PRE_STDP|Add5~29_sumout\);

-- Location: FF_X35_Y1_N53
\PRE_STDP|REG[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|Add5~29_sumout\,
	asdata => \PRE_STDP|REG[2][3]~q\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PRE_STDP|REG~4_combout\,
	ena => \PRE_STDP|REG[3][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|REG[3][3]~q\);

-- Location: LABCELL_X35_Y2_N54
\PRE_STDP|Add11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|Add11~29_sumout\ = SUM(( !\POST_STDP|POP_OUT\(7) $ (!\PRE_STDP|REG[3][3]~q\ $ (!\PRE_STDP|total_SUM~15_combout\)) ) + ( \PRE_STDP|Add11~27\ ) + ( \PRE_STDP|Add11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010010101011010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \POST_STDP|ALT_INV_POP_OUT\(7),
	datac => \PRE_STDP|ALT_INV_REG[3][3]~q\,
	datad => \PRE_STDP|ALT_INV_total_SUM~15_combout\,
	cin => \PRE_STDP|Add11~26\,
	sharein => \PRE_STDP|Add11~27\,
	sumout => \PRE_STDP|Add11~29_sumout\);

-- Location: LABCELL_X35_Y2_N18
\PRE_STDP|DATA_CAL_OUT~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \PRE_STDP|DATA_CAL_OUT~7_combout\ = ( \PRE_STDP|Add11~29_sumout\ & ( ((\PRE_STDP|top\(1) & \PRE_STDP|top\(0))) # (\PRE_STDP|total_SUM~15_combout\) ) ) # ( !\PRE_STDP|Add11~29_sumout\ & ( (\PRE_STDP|total_SUM~15_combout\ & ((!\PRE_STDP|top\(1)) # 
-- (!\PRE_STDP|top\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101000000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PRE_STDP|ALT_INV_top\(1),
	datac => \PRE_STDP|ALT_INV_top\(0),
	datad => \PRE_STDP|ALT_INV_total_SUM~15_combout\,
	dataf => \PRE_STDP|ALT_INV_Add11~29_sumout\,
	combout => \PRE_STDP|DATA_CAL_OUT~7_combout\);

-- Location: FF_X35_Y2_N19
\PRE_STDP|DATA_CAL_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \PRE_STDP|DATA_CAL_OUT~7_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \ALT_INV_CAL_ENA~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRE_STDP|DATA_CAL_OUT\(7));

-- Location: FF_X73_Y2_N22
\PRE_SUM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PRE_SUM(3));

-- Location: MLABCELL_X73_Y2_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( (!\STDP_patchPREneuron~input_o\ & (!\STDP_patchPOSTneuron~input_o\ & PRE_SUM(3))) ) + ( \PRE_STDP|DATA_CAL_OUT\(7) ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STDP_patchPREneuron~input_o\,
	datab => \ALT_INV_STDP_patchPOSTneuron~input_o\,
	datac => \PRE_STDP|ALT_INV_DATA_CAL_OUT\(7),
	datad => ALT_INV_PRE_SUM(3),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\);

-- Location: FF_X73_Y2_N31
\STDP_OUT[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_sys_clk~inputCLKENA0_outclk\,
	asdata => \Add1~29_sumout\,
	sclr => \ALT_INV_synapsePush~input_o\,
	sload => VCC,
	ena => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STDP_OUT[7]~reg0_q\);

-- Location: LABCELL_X56_Y100_N0
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


