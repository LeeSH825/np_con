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

-- DATE "04/03/2022 16:40:06"

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

ENTITY 	server_unit IS
    PORT (
	clk_server_unit : IN std_logic;
	rst_server_unit : IN std_logic;
	avs_pullSynapse_address : IN std_logic_vector(31 DOWNTO 0);
	avs_pullSynapse_waitrequest : BUFFER std_logic;
	avs_pullSynapse_write : IN std_logic;
	avs_pullSynapse_writedata : IN std_logic_vector(31 DOWNTO 0);
	avm_pushSynapse_address : BUFFER std_logic_vector(31 DOWNTO 0);
	avm_pushSynapse_waitrequest : IN std_logic;
	avm_pushSynapse_write : BUFFER std_logic;
	avm_pushSynapse_writedata : BUFFER std_logic_vector(31 DOWNTO 0);
	avm_initSynapse_address : BUFFER std_logic_vector(31 DOWNTO 0);
	avm_initSynapse_write : BUFFER std_logic;
	avm_initSynapse_byteenable : BUFFER std_logic_vector(1 DOWNTO 0);
	avm_initSynapse_waitrequest : IN std_logic;
	avm_initSynapsee_writedata : BUFFER std_logic_vector(31 DOWNTO 0);
	avs_pullSoma_address : IN std_logic_vector(31 DOWNTO 0);
	avs_pullSoma_waitrequest : BUFFER std_logic;
	avs_pullSoma_write : IN std_logic;
	avs_pullSoma_writedata : IN std_logic_vector(31 DOWNTO 0);
	avm_pushSoma_address : BUFFER std_logic_vector(31 DOWNTO 0);
	avm_pushSoma_waitrequest : IN std_logic;
	avm_pushSoma_write : BUFFER std_logic;
	avm_pushSoma_writedata : BUFFER std_logic_vector(31 DOWNTO 0);
	avm_initSoma_address : BUFFER std_logic_vector(31 DOWNTO 0);
	avm_initSoma_write : BUFFER std_logic;
	avm_initSoma_byteenable : BUFFER std_logic_vector(1 DOWNTO 0);
	avm_initSoma_waitrequest : IN std_logic;
	avm_initSoma_writedata : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END server_unit;

-- Design Ports Information
-- avs_pullSynapse_address[0]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[1]	=>  Location: PIN_AB29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[2]	=>  Location: PIN_AN34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[3]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[4]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[6]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[7]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[8]	=>  Location: PIN_B29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[9]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[10]	=>  Location: PIN_B31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[11]	=>  Location: PIN_AM28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[12]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[13]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[15]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[16]	=>  Location: PIN_AJ20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[17]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[18]	=>  Location: PIN_AH34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[19]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[20]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[21]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[22]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[23]	=>  Location: PIN_AL12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[24]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[25]	=>  Location: PIN_A28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[26]	=>  Location: PIN_AL31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[27]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[28]	=>  Location: PIN_R29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[29]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[30]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_address[31]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_waitrequest	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[0]	=>  Location: PIN_E29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[1]	=>  Location: PIN_N34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[2]	=>  Location: PIN_AL18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[3]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[4]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[5]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[6]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[7]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[8]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[9]	=>  Location: PIN_AN18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[10]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[11]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[12]	=>  Location: PIN_AP32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[13]	=>  Location: PIN_R32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[14]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[15]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[16]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[17]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[18]	=>  Location: PIN_H29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[19]	=>  Location: PIN_AL13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[20]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[21]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[22]	=>  Location: PIN_W34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[23]	=>  Location: PIN_AG31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[24]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[25]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[26]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[27]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[28]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[29]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[30]	=>  Location: PIN_AA33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_writedata[31]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[0]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[2]	=>  Location: PIN_Y34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[3]	=>  Location: PIN_AL27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[4]	=>  Location: PIN_AL33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[5]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[6]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[7]	=>  Location: PIN_AP16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[8]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[9]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[10]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[11]	=>  Location: PIN_W30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[12]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[13]	=>  Location: PIN_AM34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[14]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[15]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[16]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[17]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[18]	=>  Location: PIN_AK22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[19]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[20]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[21]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[22]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[23]	=>  Location: PIN_P32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[24]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[25]	=>  Location: PIN_Y33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[26]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[27]	=>  Location: PIN_G33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[28]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[29]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[30]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_address[31]	=>  Location: PIN_A27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_write	=>  Location: PIN_AP14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[0]	=>  Location: PIN_AP20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[2]	=>  Location: PIN_G30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[3]	=>  Location: PIN_AK30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[5]	=>  Location: PIN_N32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[6]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[7]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[8]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[10]	=>  Location: PIN_W32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[11]	=>  Location: PIN_N31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[12]	=>  Location: PIN_AK33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[13]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[14]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[15]	=>  Location: PIN_K29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[16]	=>  Location: PIN_H33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[17]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[18]	=>  Location: PIN_AM26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[19]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[20]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[21]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[22]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[23]	=>  Location: PIN_AH32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[24]	=>  Location: PIN_AM23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[25]	=>  Location: PIN_AP29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[26]	=>  Location: PIN_K23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[27]	=>  Location: PIN_G31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[28]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[29]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[30]	=>  Location: PIN_AL26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_writedata[31]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[0]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[2]	=>  Location: PIN_J29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[3]	=>  Location: PIN_C28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[4]	=>  Location: PIN_H28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[5]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[6]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[8]	=>  Location: PIN_AP7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[9]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[10]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[11]	=>  Location: PIN_P31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[12]	=>  Location: PIN_AG34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[13]	=>  Location: PIN_AK17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[14]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[15]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[16]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[17]	=>  Location: PIN_AM8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[18]	=>  Location: PIN_AM6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[19]	=>  Location: PIN_H27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[20]	=>  Location: PIN_AL25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[21]	=>  Location: PIN_AN32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[22]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[23]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[24]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[25]	=>  Location: PIN_L33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[26]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[27]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[28]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[29]	=>  Location: PIN_C29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[30]	=>  Location: PIN_AM25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_address[31]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_write	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_byteenable[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_byteenable[1]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[0]	=>  Location: PIN_N27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[1]	=>  Location: PIN_Y32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[3]	=>  Location: PIN_AH33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[4]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[5]	=>  Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[6]	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[7]	=>  Location: PIN_M29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[8]	=>  Location: PIN_AK18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[9]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[10]	=>  Location: PIN_J30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[11]	=>  Location: PIN_AN28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[12]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[13]	=>  Location: PIN_AN24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[14]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[15]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[16]	=>  Location: PIN_AK32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[17]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[18]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[19]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[20]	=>  Location: PIN_H31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[21]	=>  Location: PIN_AL6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[22]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[23]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[24]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[25]	=>  Location: PIN_AM13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[26]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[27]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[28]	=>  Location: PIN_AE33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[29]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[30]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapsee_writedata[31]	=>  Location: PIN_AJ15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[0]	=>  Location: PIN_AP5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[1]	=>  Location: PIN_AP9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[2]	=>  Location: PIN_AJ19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[4]	=>  Location: PIN_AM24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[5]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[6]	=>  Location: PIN_AP24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[8]	=>  Location: PIN_Y29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[9]	=>  Location: PIN_AP27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[10]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[11]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[12]	=>  Location: PIN_AM9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[13]	=>  Location: PIN_AL10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[14]	=>  Location: PIN_AA31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[15]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[16]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[17]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[18]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[19]	=>  Location: PIN_AN21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[20]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[21]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[22]	=>  Location: PIN_G29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[23]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[24]	=>  Location: PIN_AE34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[25]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[26]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[27]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[28]	=>  Location: PIN_M31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[29]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[30]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_address[31]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_waitrequest	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[1]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[3]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[4]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[5]	=>  Location: PIN_AN9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[6]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[7]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[8]	=>  Location: PIN_N29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[9]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[10]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[11]	=>  Location: PIN_AM20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[12]	=>  Location: PIN_AN8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[13]	=>  Location: PIN_AC34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[14]	=>  Location: PIN_AN13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[15]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[16]	=>  Location: PIN_AM14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[17]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[18]	=>  Location: PIN_L32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[19]	=>  Location: PIN_AL7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[20]	=>  Location: PIN_AM4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[21]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[22]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[23]	=>  Location: PIN_AL15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[24]	=>  Location: PIN_K33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[25]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[26]	=>  Location: PIN_AA27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[27]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[28]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[29]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[30]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_writedata[31]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[0]	=>  Location: PIN_J31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[1]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[2]	=>  Location: PIN_D29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[3]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[4]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[5]	=>  Location: PIN_AK15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[6]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[7]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[8]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[9]	=>  Location: PIN_AH31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[10]	=>  Location: PIN_AM21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[11]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[12]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[13]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[14]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[15]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[16]	=>  Location: PIN_AC33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[17]	=>  Location: PIN_AN4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[18]	=>  Location: PIN_AN27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[19]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[20]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[21]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[22]	=>  Location: PIN_AB34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[23]	=>  Location: PIN_AL30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[24]	=>  Location: PIN_AN5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[25]	=>  Location: PIN_Y30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[26]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[27]	=>  Location: PIN_T30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[28]	=>  Location: PIN_AP19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[29]	=>  Location: PIN_AK10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[30]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_address[31]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_write	=>  Location: PIN_AM33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[0]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[1]	=>  Location: PIN_AC31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[3]	=>  Location: PIN_V32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[5]	=>  Location: PIN_F30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[6]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[7]	=>  Location: PIN_AM31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[8]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[9]	=>  Location: PIN_M33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[10]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[11]	=>  Location: PIN_AP6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[12]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[13]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[14]	=>  Location: PIN_N33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[15]	=>  Location: PIN_AN7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[16]	=>  Location: PIN_AM11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[17]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[18]	=>  Location: PIN_AD31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[19]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[20]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[21]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[22]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[23]	=>  Location: PIN_AL17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[24]	=>  Location: PIN_U31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[25]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[26]	=>  Location: PIN_R33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[27]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[28]	=>  Location: PIN_AJ32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[29]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[30]	=>  Location: PIN_AL20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_writedata[31]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[1]	=>  Location: PIN_AD32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[2]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[3]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[4]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[5]	=>  Location: PIN_AJ31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[6]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[7]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[8]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[9]	=>  Location: PIN_AM10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[10]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[11]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[12]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[13]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[14]	=>  Location: PIN_AB31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[15]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[16]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[17]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[18]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[19]	=>  Location: PIN_D30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[20]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[21]	=>  Location: PIN_E23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[22]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[23]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[24]	=>  Location: PIN_AF32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[25]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[26]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[27]	=>  Location: PIN_AN17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[28]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[29]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[30]	=>  Location: PIN_AM16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_address[31]	=>  Location: PIN_M34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_write	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_byteenable[0]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_byteenable[1]	=>  Location: PIN_AL32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[0]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[1]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[3]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[4]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[5]	=>  Location: PIN_T31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[6]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[7]	=>  Location: PIN_P24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[8]	=>  Location: PIN_AP30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[9]	=>  Location: PIN_AL28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[10]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[11]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[12]	=>  Location: PIN_P34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[13]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[14]	=>  Location: PIN_AL16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[15]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[16]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[17]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[18]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[19]	=>  Location: PIN_AP22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[20]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[21]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[22]	=>  Location: PIN_J34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[23]	=>  Location: PIN_AP15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[24]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[25]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[26]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[27]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[28]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[29]	=>  Location: PIN_AD34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[30]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_writedata[31]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSynapse_waitrequest	=>  Location: PIN_K34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_pushSoma_waitrequest	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSynapse_write	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_server_unit	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_server_unit	=>  Location: PIN_AL8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSynapse_waitrequest	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_pullSoma_write	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avm_initSoma_waitrequest	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF server_unit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_server_unit : std_logic;
SIGNAL ww_rst_server_unit : std_logic;
SIGNAL ww_avs_pullSynapse_address : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_avs_pullSynapse_waitrequest : std_logic;
SIGNAL ww_avs_pullSynapse_write : std_logic;
SIGNAL ww_avs_pullSynapse_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_avm_pushSynapse_address : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_avm_pushSynapse_waitrequest : std_logic;
SIGNAL ww_avm_pushSynapse_write : std_logic;
SIGNAL ww_avm_pushSynapse_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_avm_initSynapse_address : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_avm_initSynapse_write : std_logic;
SIGNAL ww_avm_initSynapse_byteenable : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_avm_initSynapse_waitrequest : std_logic;
SIGNAL ww_avm_initSynapsee_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_avs_pullSoma_address : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_avs_pullSoma_waitrequest : std_logic;
SIGNAL ww_avs_pullSoma_write : std_logic;
SIGNAL ww_avs_pullSoma_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_avm_pushSoma_address : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_avm_pushSoma_waitrequest : std_logic;
SIGNAL ww_avm_pushSoma_write : std_logic;
SIGNAL ww_avm_pushSoma_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_avm_initSoma_address : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_avm_initSoma_write : std_logic;
SIGNAL ww_avm_initSoma_byteenable : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_avm_initSoma_waitrequest : std_logic;
SIGNAL ww_avm_initSoma_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL \avs_pullSynapse_address[0]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[1]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[2]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[3]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[4]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[5]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[6]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[7]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[8]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[9]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[10]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[11]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[12]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[13]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[14]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[15]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[16]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[17]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[18]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[19]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[20]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[21]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[22]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[23]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[24]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[25]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[26]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[27]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[28]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[29]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[30]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_address[31]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[0]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[1]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[2]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[3]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[4]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[5]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[6]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[7]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[8]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[9]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[10]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[11]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[12]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[13]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[14]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[15]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[16]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[17]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[18]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[19]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[20]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[21]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[22]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[23]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[24]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[25]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[26]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[27]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[28]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[29]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[30]~input_o\ : std_logic;
SIGNAL \avs_pullSynapse_writedata[31]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[0]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[1]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[2]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[3]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[4]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[5]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[6]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[7]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[8]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[9]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[10]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[11]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[12]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[13]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[14]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[15]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[16]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[17]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[18]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[19]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[20]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[21]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[22]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[23]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[24]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[25]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[26]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[27]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[28]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[29]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[30]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_address[31]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[0]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[1]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[2]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[3]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[4]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[5]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[6]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[7]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[8]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[9]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[10]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[11]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[12]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[13]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[14]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[15]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[16]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[17]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[18]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[19]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[20]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[21]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[22]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[23]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[24]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[25]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[26]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[27]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[28]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[29]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[30]~input_o\ : std_logic;
SIGNAL \avs_pullSoma_writedata[31]~input_o\ : std_logic;
SIGNAL \avm_pushSynapse_waitrequest~input_o\ : std_logic;
SIGNAL \avm_pushSoma_waitrequest~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk_server_unit~input_o\ : std_logic;
SIGNAL \clk_server_unit~inputCLKENA0_outclk\ : std_logic;
SIGNAL \avs_pullSynapse_write~input_o\ : std_logic;
SIGNAL \SYNAPSE_SERVER|Selector65~0_combout\ : std_logic;
SIGNAL \rst_server_unit~input_o\ : std_logic;
SIGNAL \SYNAPSE_SERVER|statePullData_next.STATE_IDLE~q\ : std_logic;
SIGNAL \SYNAPSE_SERVER|statePullData.STATE_IDLE~q\ : std_logic;
SIGNAL \SYNAPSE_SERVER|avs_pullData_waitrequest~0_combout\ : std_logic;
SIGNAL \SYNAPSE_SERVER|avs_pullData_waitrequest~q\ : std_logic;
SIGNAL \avm_initSynapse_waitrequest~input_o\ : std_logic;
SIGNAL \SYNAPSE_SERVER|Selector375~0_combout\ : std_logic;
SIGNAL \SYNAPSE_SERVER|stateInitModule_next.STATE_WAIT~q\ : std_logic;
SIGNAL \SYNAPSE_SERVER|stateInitModule.STATE_WAIT~q\ : std_logic;
SIGNAL \SYNAPSE_SERVER|Selector374~0_combout\ : std_logic;
SIGNAL \SYNAPSE_SERVER|stateInitModule_next.STATE_IDLE~q\ : std_logic;
SIGNAL \SYNAPSE_SERVER|stateInitModule.STATE_IDLE~q\ : std_logic;
SIGNAL \SYNAPSE_SERVER|Selector408~0_combout\ : std_logic;
SIGNAL \SYNAPSE_SERVER|avm_initModule_write~q\ : std_logic;
SIGNAL \avs_pullSoma_write~input_o\ : std_logic;
SIGNAL \SOMA_SERVER|Selector65~0_combout\ : std_logic;
SIGNAL \SOMA_SERVER|statePullData_next.STATE_IDLE~q\ : std_logic;
SIGNAL \SOMA_SERVER|statePullData.STATE_IDLE~q\ : std_logic;
SIGNAL \SOMA_SERVER|avs_pullData_waitrequest~0_combout\ : std_logic;
SIGNAL \SOMA_SERVER|avs_pullData_waitrequest~q\ : std_logic;
SIGNAL \avm_initSoma_waitrequest~input_o\ : std_logic;
SIGNAL \SOMA_SERVER|Selector375~0_combout\ : std_logic;
SIGNAL \SOMA_SERVER|stateInitModule_next.STATE_WAIT~q\ : std_logic;
SIGNAL \SOMA_SERVER|stateInitModule.STATE_WAIT~q\ : std_logic;
SIGNAL \SOMA_SERVER|Selector374~0_combout\ : std_logic;
SIGNAL \SOMA_SERVER|stateInitModule_next.STATE_IDLE~q\ : std_logic;
SIGNAL \SOMA_SERVER|stateInitModule.STATE_IDLE~q\ : std_logic;
SIGNAL \SOMA_SERVER|Selector408~0_combout\ : std_logic;
SIGNAL \SOMA_SERVER|avm_initModule_write~q\ : std_logic;
SIGNAL \ALT_INV_avm_initSoma_waitrequest~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSoma_write~input_o\ : std_logic;
SIGNAL \ALT_INV_avm_initSynapse_waitrequest~input_o\ : std_logic;
SIGNAL \ALT_INV_rst_server_unit~input_o\ : std_logic;
SIGNAL \ALT_INV_avs_pullSynapse_write~input_o\ : std_logic;
SIGNAL \SOMA_SERVER|ALT_INV_stateInitModule.STATE_WAIT~q\ : std_logic;
SIGNAL \SOMA_SERVER|ALT_INV_stateInitModule.STATE_IDLE~q\ : std_logic;
SIGNAL \SOMA_SERVER|ALT_INV_statePullData.STATE_IDLE~q\ : std_logic;
SIGNAL \SYNAPSE_SERVER|ALT_INV_stateInitModule.STATE_WAIT~q\ : std_logic;
SIGNAL \SYNAPSE_SERVER|ALT_INV_stateInitModule.STATE_IDLE~q\ : std_logic;
SIGNAL \SYNAPSE_SERVER|ALT_INV_statePullData.STATE_IDLE~q\ : std_logic;
SIGNAL \SOMA_SERVER|ALT_INV_avm_initModule_write~q\ : std_logic;
SIGNAL \SOMA_SERVER|ALT_INV_avs_pullData_waitrequest~q\ : std_logic;
SIGNAL \SYNAPSE_SERVER|ALT_INV_avm_initModule_write~q\ : std_logic;
SIGNAL \SYNAPSE_SERVER|ALT_INV_avs_pullData_waitrequest~q\ : std_logic;

BEGIN

ww_clk_server_unit <= clk_server_unit;
ww_rst_server_unit <= rst_server_unit;
ww_avs_pullSynapse_address <= avs_pullSynapse_address;
avs_pullSynapse_waitrequest <= ww_avs_pullSynapse_waitrequest;
ww_avs_pullSynapse_write <= avs_pullSynapse_write;
ww_avs_pullSynapse_writedata <= avs_pullSynapse_writedata;
avm_pushSynapse_address <= ww_avm_pushSynapse_address;
ww_avm_pushSynapse_waitrequest <= avm_pushSynapse_waitrequest;
avm_pushSynapse_write <= ww_avm_pushSynapse_write;
avm_pushSynapse_writedata <= ww_avm_pushSynapse_writedata;
avm_initSynapse_address <= ww_avm_initSynapse_address;
avm_initSynapse_write <= ww_avm_initSynapse_write;
avm_initSynapse_byteenable <= ww_avm_initSynapse_byteenable;
ww_avm_initSynapse_waitrequest <= avm_initSynapse_waitrequest;
avm_initSynapsee_writedata <= ww_avm_initSynapsee_writedata;
ww_avs_pullSoma_address <= avs_pullSoma_address;
avs_pullSoma_waitrequest <= ww_avs_pullSoma_waitrequest;
ww_avs_pullSoma_write <= avs_pullSoma_write;
ww_avs_pullSoma_writedata <= avs_pullSoma_writedata;
avm_pushSoma_address <= ww_avm_pushSoma_address;
ww_avm_pushSoma_waitrequest <= avm_pushSoma_waitrequest;
avm_pushSoma_write <= ww_avm_pushSoma_write;
avm_pushSoma_writedata <= ww_avm_pushSoma_writedata;
avm_initSoma_address <= ww_avm_initSoma_address;
avm_initSoma_write <= ww_avm_initSoma_write;
avm_initSoma_byteenable <= ww_avm_initSoma_byteenable;
ww_avm_initSoma_waitrequest <= avm_initSoma_waitrequest;
avm_initSoma_writedata <= ww_avm_initSoma_writedata;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_avm_initSoma_waitrequest~input_o\ <= NOT \avm_initSoma_waitrequest~input_o\;
\ALT_INV_avs_pullSoma_write~input_o\ <= NOT \avs_pullSoma_write~input_o\;
\ALT_INV_avm_initSynapse_waitrequest~input_o\ <= NOT \avm_initSynapse_waitrequest~input_o\;
\ALT_INV_rst_server_unit~input_o\ <= NOT \rst_server_unit~input_o\;
\ALT_INV_avs_pullSynapse_write~input_o\ <= NOT \avs_pullSynapse_write~input_o\;
\SOMA_SERVER|ALT_INV_stateInitModule.STATE_WAIT~q\ <= NOT \SOMA_SERVER|stateInitModule.STATE_WAIT~q\;
\SOMA_SERVER|ALT_INV_stateInitModule.STATE_IDLE~q\ <= NOT \SOMA_SERVER|stateInitModule.STATE_IDLE~q\;
\SOMA_SERVER|ALT_INV_statePullData.STATE_IDLE~q\ <= NOT \SOMA_SERVER|statePullData.STATE_IDLE~q\;
\SYNAPSE_SERVER|ALT_INV_stateInitModule.STATE_WAIT~q\ <= NOT \SYNAPSE_SERVER|stateInitModule.STATE_WAIT~q\;
\SYNAPSE_SERVER|ALT_INV_stateInitModule.STATE_IDLE~q\ <= NOT \SYNAPSE_SERVER|stateInitModule.STATE_IDLE~q\;
\SYNAPSE_SERVER|ALT_INV_statePullData.STATE_IDLE~q\ <= NOT \SYNAPSE_SERVER|statePullData.STATE_IDLE~q\;
\SOMA_SERVER|ALT_INV_avm_initModule_write~q\ <= NOT \SOMA_SERVER|avm_initModule_write~q\;
\SOMA_SERVER|ALT_INV_avs_pullData_waitrequest~q\ <= NOT \SOMA_SERVER|avs_pullData_waitrequest~q\;
\SYNAPSE_SERVER|ALT_INV_avm_initModule_write~q\ <= NOT \SYNAPSE_SERVER|avm_initModule_write~q\;
\SYNAPSE_SERVER|ALT_INV_avs_pullData_waitrequest~q\ <= NOT \SYNAPSE_SERVER|avs_pullData_waitrequest~q\;

-- Location: IOOBUF_X14_Y0_N19
\avs_pullSynapse_waitrequest~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SYNAPSE_SERVER|avs_pullData_waitrequest~q\,
	devoe => ww_devoe,
	o => ww_avs_pullSynapse_waitrequest);

-- Location: IOOBUF_X69_Y115_N19
\avm_pushSynapse_address[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(0));

-- Location: IOOBUF_X25_Y115_N76
\avm_pushSynapse_address[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(1));

-- Location: IOOBUF_X121_Y61_N39
\avm_pushSynapse_address[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(2));

-- Location: IOOBUF_X96_Y0_N36
\avm_pushSynapse_address[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(3));

-- Location: IOOBUF_X121_Y33_N39
\avm_pushSynapse_address[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(4));

-- Location: IOOBUF_X30_Y115_N19
\avm_pushSynapse_address[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(5));

-- Location: IOOBUF_X65_Y115_N42
\avm_pushSynapse_address[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(6));

-- Location: IOOBUF_X48_Y0_N93
\avm_pushSynapse_address[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(7));

-- Location: IOOBUF_X33_Y115_N93
\avm_pushSynapse_address[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(8));

-- Location: IOOBUF_X121_Y87_N22
\avm_pushSynapse_address[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(9));

-- Location: IOOBUF_X121_Y16_N39
\avm_pushSynapse_address[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(10));

-- Location: IOOBUF_X121_Y46_N22
\avm_pushSynapse_address[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(11));

-- Location: IOOBUF_X96_Y115_N53
\avm_pushSynapse_address[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(12));

-- Location: IOOBUF_X121_Y41_N56
\avm_pushSynapse_address[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(13));

-- Location: IOOBUF_X121_Y13_N96
\avm_pushSynapse_address[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(14));

-- Location: IOOBUF_X46_Y0_N2
\avm_pushSynapse_address[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(15));

-- Location: IOOBUF_X111_Y115_N36
\avm_pushSynapse_address[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(16));

-- Location: IOOBUF_X65_Y115_N76
\avm_pushSynapse_address[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(17));

-- Location: IOOBUF_X82_Y0_N76
\avm_pushSynapse_address[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(18));

-- Location: IOOBUF_X88_Y115_N36
\avm_pushSynapse_address[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(19));

-- Location: IOOBUF_X121_Y93_N22
\avm_pushSynapse_address[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(20));

-- Location: IOOBUF_X113_Y0_N2
\avm_pushSynapse_address[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(21));

-- Location: IOOBUF_X50_Y115_N19
\avm_pushSynapse_address[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(22));

-- Location: IOOBUF_X121_Y79_N5
\avm_pushSynapse_address[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(23));

-- Location: IOOBUF_X65_Y115_N93
\avm_pushSynapse_address[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(24));

-- Location: IOOBUF_X121_Y60_N79
\avm_pushSynapse_address[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(25));

-- Location: IOOBUF_X121_Y60_N62
\avm_pushSynapse_address[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(26));

-- Location: IOOBUF_X121_Y79_N56
\avm_pushSynapse_address[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(27));

-- Location: IOOBUF_X121_Y43_N62
\avm_pushSynapse_address[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(28));

-- Location: IOOBUF_X67_Y0_N19
\avm_pushSynapse_address[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(29));

-- Location: IOOBUF_X50_Y115_N53
\avm_pushSynapse_address[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(30));

-- Location: IOOBUF_X79_Y115_N53
\avm_pushSynapse_address[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_address(31));

-- Location: IOOBUF_X46_Y0_N53
\avm_pushSynapse_write~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_write);

-- Location: IOOBUF_X65_Y0_N76
\avm_pushSynapse_writedata[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(0));

-- Location: IOOBUF_X33_Y115_N59
\avm_pushSynapse_writedata[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(1));

-- Location: IOOBUF_X121_Y89_N96
\avm_pushSynapse_writedata[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(2));

-- Location: IOOBUF_X121_Y28_N79
\avm_pushSynapse_writedata[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(3));

-- Location: IOOBUF_X39_Y115_N2
\avm_pushSynapse_writedata[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(4));

-- Location: IOOBUF_X121_Y77_N39
\avm_pushSynapse_writedata[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(5));

-- Location: IOOBUF_X18_Y115_N2
\avm_pushSynapse_writedata[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(6));

-- Location: IOOBUF_X98_Y0_N59
\avm_pushSynapse_writedata[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(7));

-- Location: IOOBUF_X71_Y0_N2
\avm_pushSynapse_writedata[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(8));

-- Location: IOOBUF_X37_Y115_N36
\avm_pushSynapse_writedata[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(9));

-- Location: IOOBUF_X121_Y57_N5
\avm_pushSynapse_writedata[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(10));

-- Location: IOOBUF_X121_Y77_N56
\avm_pushSynapse_writedata[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(11));

-- Location: IOOBUF_X121_Y33_N56
\avm_pushSynapse_writedata[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(12));

-- Location: IOOBUF_X35_Y115_N19
\avm_pushSynapse_writedata[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(13));

-- Location: IOOBUF_X54_Y0_N19
\avm_pushSynapse_writedata[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(14));

-- Location: IOOBUF_X121_Y94_N39
\avm_pushSynapse_writedata[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(15));

-- Location: IOOBUF_X121_Y76_N56
\avm_pushSynapse_writedata[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(16));

-- Location: IOOBUF_X52_Y0_N2
\avm_pushSynapse_writedata[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(17));

-- Location: IOOBUF_X92_Y0_N53
\avm_pushSynapse_writedata[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(18));

-- Location: IOOBUF_X96_Y0_N19
\avm_pushSynapse_writedata[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(19));

-- Location: IOOBUF_X102_Y0_N53
\avm_pushSynapse_writedata[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(20));

-- Location: IOOBUF_X54_Y0_N2
\avm_pushSynapse_writedata[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(21));

-- Location: IOOBUF_X10_Y0_N36
\avm_pushSynapse_writedata[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(22));

-- Location: IOOBUF_X121_Y38_N39
\avm_pushSynapse_writedata[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(23));

-- Location: IOOBUF_X75_Y0_N36
\avm_pushSynapse_writedata[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(24));

-- Location: IOOBUF_X86_Y0_N53
\avm_pushSynapse_writedata[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(25));

-- Location: IOOBUF_X100_Y115_N19
\avm_pushSynapse_writedata[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(26));

-- Location: IOOBUF_X121_Y89_N79
\avm_pushSynapse_writedata[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(27));

-- Location: IOOBUF_X92_Y115_N2
\avm_pushSynapse_writedata[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(28));

-- Location: IOOBUF_X110_Y115_N53
\avm_pushSynapse_writedata[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(29));

-- Location: IOOBUF_X92_Y0_N36
\avm_pushSynapse_writedata[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(30));

-- Location: IOOBUF_X75_Y115_N53
\avm_pushSynapse_writedata[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSynapse_writedata(31));

-- Location: IOOBUF_X121_Y63_N22
\avm_initSynapse_address[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(0));

-- Location: IOOBUF_X39_Y115_N36
\avm_initSynapse_address[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(1));

-- Location: IOOBUF_X121_Y91_N56
\avm_initSynapse_address[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(2));

-- Location: IOOBUF_X94_Y115_N53
\avm_initSynapse_address[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(3));

-- Location: IOOBUF_X121_Y93_N56
\avm_initSynapse_address[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(4));

-- Location: IOOBUF_X102_Y0_N2
\avm_initSynapse_address[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(5));

-- Location: IOOBUF_X121_Y17_N5
\avm_initSynapse_address[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(6));

-- Location: IOOBUF_X121_Y36_N96
\avm_initSynapse_address[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(7));

-- Location: IOOBUF_X22_Y0_N53
\avm_initSynapse_address[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(8));

-- Location: IOOBUF_X121_Y21_N96
\avm_initSynapse_address[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(9));

-- Location: IOOBUF_X86_Y115_N2
\avm_initSynapse_address[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(10));

-- Location: IOOBUF_X121_Y79_N22
\avm_initSynapse_address[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(11));

-- Location: IOOBUF_X121_Y51_N79
\avm_initSynapse_address[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(12));

-- Location: IOOBUF_X50_Y0_N36
\avm_initSynapse_address[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(13));

-- Location: IOOBUF_X82_Y115_N42
\avm_initSynapse_address[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(14));

-- Location: IOOBUF_X26_Y115_N19
\avm_initSynapse_address[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(15));

-- Location: IOOBUF_X20_Y0_N19
\avm_initSynapse_address[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(16));

-- Location: IOOBUF_X25_Y0_N76
\avm_initSynapse_address[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(17));

-- Location: IOOBUF_X17_Y0_N93
\avm_initSynapse_address[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(18));

-- Location: IOOBUF_X113_Y115_N36
\avm_initSynapse_address[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(19));

-- Location: IOOBUF_X90_Y0_N76
\avm_initSynapse_address[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(20));

-- Location: IOOBUF_X98_Y0_N76
\avm_initSynapse_address[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(21));

-- Location: IOOBUF_X10_Y115_N36
\avm_initSynapse_address[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(22));

-- Location: IOOBUF_X121_Y13_N79
\avm_initSynapse_address[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(23));

-- Location: IOOBUF_X121_Y69_N22
\avm_initSynapse_address[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(24));

-- Location: IOOBUF_X121_Y72_N39
\avm_initSynapse_address[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(25));

-- Location: IOOBUF_X121_Y94_N5
\avm_initSynapse_address[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(26));

-- Location: IOOBUF_X110_Y0_N19
\avm_initSynapse_address[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(27));

-- Location: IOOBUF_X26_Y115_N36
\avm_initSynapse_address[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(28));

-- Location: IOOBUF_X94_Y115_N36
\avm_initSynapse_address[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(29));

-- Location: IOOBUF_X90_Y0_N93
\avm_initSynapse_address[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(30));

-- Location: IOOBUF_X121_Y38_N22
\avm_initSynapse_address[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_address(31));

-- Location: IOOBUF_X17_Y0_N42
\avm_initSynapse_write~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SYNAPSE_SERVER|avm_initModule_write~q\,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_write);

-- Location: IOOBUF_X54_Y115_N2
\avm_initSynapse_byteenable[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_byteenable(0));

-- Location: IOOBUF_X100_Y115_N2
\avm_initSynapse_byteenable[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapse_byteenable(1));

-- Location: IOOBUF_X121_Y89_N62
\avm_initSynapsee_writedata[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(0));

-- Location: IOOBUF_X121_Y36_N62
\avm_initSynapsee_writedata[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(1));

-- Location: IOOBUF_X121_Y17_N22
\avm_initSynapsee_writedata[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(2));

-- Location: IOOBUF_X121_Y45_N39
\avm_initSynapsee_writedata[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(3));

-- Location: IOOBUF_X20_Y0_N2
\avm_initSynapsee_writedata[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(4));

-- Location: IOOBUF_X92_Y115_N19
\avm_initSynapsee_writedata[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(5));

-- Location: IOOBUF_X44_Y0_N19
\avm_initSynapsee_writedata[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(6));

-- Location: IOOBUF_X121_Y91_N5
\avm_initSynapsee_writedata[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(7));

-- Location: IOOBUF_X54_Y0_N36
\avm_initSynapsee_writedata[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(8));

-- Location: IOOBUF_X96_Y115_N19
\avm_initSynapsee_writedata[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(9));

-- Location: IOOBUF_X121_Y91_N39
\avm_initSynapsee_writedata[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(10));

-- Location: IOOBUF_X88_Y0_N53
\avm_initSynapsee_writedata[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(11));

-- Location: IOOBUF_X8_Y115_N59
\avm_initSynapsee_writedata[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(12));

-- Location: IOOBUF_X79_Y0_N53
\avm_initSynapsee_writedata[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(13));

-- Location: IOOBUF_X84_Y115_N36
\avm_initSynapsee_writedata[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(14));

-- Location: IOOBUF_X30_Y115_N2
\avm_initSynapsee_writedata[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(15));

-- Location: IOOBUF_X121_Y31_N56
\avm_initSynapsee_writedata[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(16));

-- Location: IOOBUF_X92_Y0_N19
\avm_initSynapsee_writedata[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(17));

-- Location: IOOBUF_X113_Y0_N36
\avm_initSynapsee_writedata[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(18));

-- Location: IOOBUF_X27_Y115_N53
\avm_initSynapsee_writedata[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(19));

-- Location: IOOBUF_X121_Y85_N56
\avm_initSynapsee_writedata[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(20));

-- Location: IOOBUF_X17_Y0_N76
\avm_initSynapsee_writedata[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(21));

-- Location: IOOBUF_X121_Y51_N45
\avm_initSynapsee_writedata[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(22));

-- Location: IOOBUF_X111_Y0_N2
\avm_initSynapsee_writedata[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(23));

-- Location: IOOBUF_X71_Y0_N19
\avm_initSynapsee_writedata[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(24));

-- Location: IOOBUF_X42_Y0_N36
\avm_initSynapsee_writedata[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(25));

-- Location: IOOBUF_X54_Y115_N36
\avm_initSynapsee_writedata[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(26));

-- Location: IOOBUF_X48_Y115_N93
\avm_initSynapsee_writedata[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(27));

-- Location: IOOBUF_X121_Y53_N56
\avm_initSynapsee_writedata[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(28));

-- Location: IOOBUF_X100_Y0_N19
\avm_initSynapsee_writedata[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(29));

-- Location: IOOBUF_X121_Y14_N39
\avm_initSynapsee_writedata[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(30));

-- Location: IOOBUF_X37_Y0_N2
\avm_initSynapsee_writedata[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSynapsee_writedata(31));

-- Location: IOOBUF_X14_Y0_N36
\avs_pullSoma_waitrequest~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA_SERVER|avs_pullData_waitrequest~q\,
	devoe => ww_devoe,
	o => ww_avs_pullSoma_waitrequest);

-- Location: IOOBUF_X121_Y85_N39
\avm_pushSoma_address[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(0));

-- Location: IOOBUF_X67_Y0_N2
\avm_pushSoma_address[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(1));

-- Location: IOOBUF_X102_Y115_N19
\avm_pushSoma_address[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(2));

-- Location: IOOBUF_X75_Y115_N19
\avm_pushSoma_address[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(3));

-- Location: IOOBUF_X92_Y115_N36
\avm_pushSoma_address[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(4));

-- Location: IOOBUF_X37_Y0_N19
\avm_pushSoma_address[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(5));

-- Location: IOOBUF_X22_Y115_N19
\avm_pushSoma_address[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(6));

-- Location: IOOBUF_X37_Y115_N19
\avm_pushSoma_address[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(7));

-- Location: IOOBUF_X121_Y22_N5
\avm_pushSoma_address[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(8));

-- Location: IOOBUF_X121_Y33_N5
\avm_pushSoma_address[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(9));

-- Location: IOOBUF_X71_Y0_N53
\avm_pushSoma_address[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(10));

-- Location: IOOBUF_X121_Y16_N22
\avm_pushSoma_address[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(11));

-- Location: IOOBUF_X12_Y115_N2
\avm_pushSoma_address[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(12));

-- Location: IOOBUF_X26_Y0_N19
\avm_pushSoma_address[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(13));

-- Location: IOOBUF_X69_Y115_N2
\avm_pushSoma_address[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(14));

-- Location: IOOBUF_X121_Y76_N5
\avm_pushSoma_address[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(15));

-- Location: IOOBUF_X121_Y53_N5
\avm_pushSoma_address[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(16));

-- Location: IOOBUF_X18_Y0_N53
\avm_pushSoma_address[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(17));

-- Location: IOOBUF_X82_Y0_N42
\avm_pushSoma_address[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(18));

-- Location: IOOBUF_X107_Y115_N59
\avm_pushSoma_address[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(19));

-- Location: IOOBUF_X121_Y21_N45
\avm_pushSoma_address[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(20));

-- Location: IOOBUF_X27_Y115_N2
\avm_pushSoma_address[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(21));

-- Location: IOOBUF_X121_Y57_N56
\avm_pushSoma_address[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(22));

-- Location: IOOBUF_X104_Y0_N36
\avm_pushSoma_address[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(23));

-- Location: IOOBUF_X18_Y0_N36
\avm_pushSoma_address[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(24));

-- Location: IOOBUF_X121_Y39_N22
\avm_pushSoma_address[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(25));

-- Location: IOOBUF_X46_Y115_N53
\avm_pushSoma_address[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(26));

-- Location: IOOBUF_X121_Y67_N62
\avm_pushSoma_address[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(27));

-- Location: IOOBUF_X65_Y0_N93
\avm_pushSoma_address[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(28));

-- Location: IOOBUF_X17_Y0_N59
\avm_pushSoma_address[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(29));

-- Location: IOOBUF_X46_Y115_N2
\avm_pushSoma_address[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(30));

-- Location: IOOBUF_X44_Y0_N2
\avm_pushSoma_address[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_address(31));

-- Location: IOOBUF_X121_Y30_N56
\avm_pushSoma_write~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_write);

-- Location: IOOBUF_X79_Y0_N19
\avm_pushSoma_writedata[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(0));

-- Location: IOOBUF_X121_Y41_N5
\avm_pushSoma_writedata[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(1));

-- Location: IOOBUF_X8_Y115_N76
\avm_pushSoma_writedata[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(2));

-- Location: IOOBUF_X121_Y57_N22
\avm_pushSoma_writedata[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(3));

-- Location: IOOBUF_X46_Y115_N19
\avm_pushSoma_writedata[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(4));

-- Location: IOOBUF_X107_Y115_N76
\avm_pushSoma_writedata[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(5));

-- Location: IOOBUF_X121_Y30_N5
\avm_pushSoma_writedata[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(6));

-- Location: IOOBUF_X110_Y0_N53
\avm_pushSoma_writedata[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(7));

-- Location: IOOBUF_X121_Y87_N39
\avm_pushSoma_writedata[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(8));

-- Location: IOOBUF_X121_Y69_N56
\avm_pushSoma_writedata[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(9));

-- Location: IOOBUF_X14_Y115_N19
\avm_pushSoma_writedata[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(10));

-- Location: IOOBUF_X20_Y0_N36
\avm_pushSoma_writedata[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(11));

-- Location: IOOBUF_X121_Y13_N45
\avm_pushSoma_writedata[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(12));

-- Location: IOOBUF_X104_Y115_N53
\avm_pushSoma_writedata[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(13));

-- Location: IOOBUF_X121_Y72_N5
\avm_pushSoma_writedata[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(14));

-- Location: IOOBUF_X22_Y0_N36
\avm_pushSoma_writedata[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(15));

-- Location: IOOBUF_X33_Y0_N93
\avm_pushSoma_writedata[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(16));

-- Location: IOOBUF_X25_Y115_N42
\avm_pushSoma_writedata[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(17));

-- Location: IOOBUF_X121_Y46_N39
\avm_pushSoma_writedata[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(18));

-- Location: IOOBUF_X121_Y17_N56
\avm_pushSoma_writedata[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(19));

-- Location: IOOBUF_X121_Y13_N62
\avm_pushSoma_writedata[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(20));

-- Location: IOOBUF_X121_Y24_N56
\avm_pushSoma_writedata[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(21));

-- Location: IOOBUF_X48_Y115_N59
\avm_pushSoma_writedata[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(22));

-- Location: IOOBUF_X50_Y0_N53
\avm_pushSoma_writedata[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(23));

-- Location: IOOBUF_X121_Y60_N45
\avm_pushSoma_writedata[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(24));

-- Location: IOOBUF_X94_Y0_N19
\avm_pushSoma_writedata[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(25));

-- Location: IOOBUF_X121_Y74_N62
\avm_pushSoma_writedata[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(26));

-- Location: IOOBUF_X121_Y26_N56
\avm_pushSoma_writedata[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(27));

-- Location: IOOBUF_X121_Y38_N56
\avm_pushSoma_writedata[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(28));

-- Location: IOOBUF_X73_Y115_N42
\avm_pushSoma_writedata[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(29));

-- Location: IOOBUF_X73_Y0_N42
\avm_pushSoma_writedata[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(30));

-- Location: IOOBUF_X90_Y115_N42
\avm_pushSoma_writedata[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_pushSoma_writedata(31));

-- Location: IOOBUF_X121_Y21_N62
\avm_initSoma_address[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(0));

-- Location: IOOBUF_X121_Y46_N56
\avm_initSoma_address[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(1));

-- Location: IOOBUF_X42_Y115_N19
\avm_initSoma_address[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(2));

-- Location: IOOBUF_X69_Y115_N36
\avm_initSoma_address[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(3));

-- Location: IOOBUF_X77_Y115_N2
\avm_initSoma_address[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(4));

-- Location: IOOBUF_X121_Y33_N22
\avm_initSoma_address[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(5));

-- Location: IOOBUF_X52_Y115_N2
\avm_initSoma_address[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(6));

-- Location: IOOBUF_X79_Y0_N2
\avm_initSoma_address[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(7));

-- Location: IOOBUF_X75_Y115_N2
\avm_initSoma_address[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(8));

-- Location: IOOBUF_X27_Y0_N53
\avm_initSoma_address[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(9));

-- Location: IOOBUF_X75_Y0_N19
\avm_initSoma_address[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(10));

-- Location: IOOBUF_X121_Y30_N22
\avm_initSoma_address[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(11));

-- Location: IOOBUF_X14_Y115_N2
\avm_initSoma_address[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(12));

-- Location: IOOBUF_X121_Y24_N22
\avm_initSoma_address[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(13));

-- Location: IOOBUF_X121_Y43_N96
\avm_initSoma_address[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(14));

-- Location: IOOBUF_X104_Y0_N19
\avm_initSoma_address[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(15));

-- Location: IOOBUF_X82_Y115_N93
\avm_initSoma_address[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(16));

-- Location: IOOBUF_X107_Y115_N42
\avm_initSoma_address[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(17));

-- Location: IOOBUF_X113_Y115_N19
\avm_initSoma_address[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(18));

-- Location: IOOBUF_X102_Y115_N2
\avm_initSoma_address[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(19));

-- Location: IOOBUF_X50_Y0_N2
\avm_initSoma_address[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(20));

-- Location: IOOBUF_X88_Y115_N53
\avm_initSoma_address[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(21));

-- Location: IOOBUF_X90_Y115_N59
\avm_initSoma_address[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(22));

-- Location: IOOBUF_X121_Y17_N39
\avm_initSoma_address[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(23));

-- Location: IOOBUF_X121_Y48_N56
\avm_initSoma_address[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(24));

-- Location: IOOBUF_X25_Y115_N93
\avm_initSoma_address[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(25));

-- Location: IOOBUF_X27_Y115_N36
\avm_initSoma_address[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(26));

-- Location: IOOBUF_X48_Y0_N42
\avm_initSoma_address[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(27));

-- Location: IOOBUF_X44_Y115_N53
\avm_initSoma_address[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(28));

-- Location: IOOBUF_X12_Y115_N53
\avm_initSoma_address[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(29));

-- Location: IOOBUF_X44_Y0_N53
\avm_initSoma_address[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(30));

-- Location: IOOBUF_X121_Y69_N39
\avm_initSoma_address[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_address(31));

-- Location: IOOBUF_X14_Y0_N53
\avm_initSoma_write~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SOMA_SERVER|avm_initModule_write~q\,
	devoe => ww_devoe,
	o => ww_avm_initSoma_write);

-- Location: IOOBUF_X121_Y51_N62
\avm_initSoma_byteenable[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_byteenable(0));

-- Location: IOOBUF_X121_Y31_N39
\avm_initSoma_byteenable[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_byteenable(1));

-- Location: IOOBUF_X121_Y82_N45
\avm_initSoma_writedata[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(0));

-- Location: IOOBUF_X100_Y115_N53
\avm_initSoma_writedata[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(1));

-- Location: IOOBUF_X14_Y115_N53
\avm_initSoma_writedata[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(2));

-- Location: IOOBUF_X110_Y115_N19
\avm_initSoma_writedata[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(3));

-- Location: IOOBUF_X84_Y115_N2
\avm_initSoma_writedata[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(4));

-- Location: IOOBUF_X121_Y67_N45
\avm_initSoma_writedata[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(5));

-- Location: IOOBUF_X65_Y115_N59
\avm_initSoma_writedata[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(6));

-- Location: IOOBUF_X121_Y93_N5
\avm_initSoma_writedata[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(7));

-- Location: IOOBUF_X86_Y0_N36
\avm_initSoma_writedata[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(8));

-- Location: IOOBUF_X96_Y0_N53
\avm_initSoma_writedata[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(9));

-- Location: IOOBUF_X25_Y0_N42
\avm_initSoma_writedata[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(10));

-- Location: IOOBUF_X104_Y115_N2
\avm_initSoma_writedata[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(11));

-- Location: IOOBUF_X121_Y64_N22
\avm_initSoma_writedata[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(12));

-- Location: IOOBUF_X88_Y115_N19
\avm_initSoma_writedata[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(13));

-- Location: IOOBUF_X44_Y0_N36
\avm_initSoma_writedata[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(14));

-- Location: IOOBUF_X67_Y115_N2
\avm_initSoma_writedata[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(15));

-- Location: IOOBUF_X35_Y0_N2
\avm_initSoma_writedata[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(16));

-- Location: IOOBUF_X30_Y115_N53
\avm_initSoma_writedata[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(17));

-- Location: IOOBUF_X17_Y115_N76
\avm_initSoma_writedata[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(18));

-- Location: IOOBUF_X73_Y0_N93
\avm_initSoma_writedata[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(19));

-- Location: IOOBUF_X92_Y115_N53
\avm_initSoma_writedata[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(20));

-- Location: IOOBUF_X88_Y115_N2
\avm_initSoma_writedata[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(21));

-- Location: IOOBUF_X121_Y70_N56
\avm_initSoma_writedata[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(22));

-- Location: IOOBUF_X46_Y0_N36
\avm_initSoma_writedata[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(23));

-- Location: IOOBUF_X67_Y115_N36
\avm_initSoma_writedata[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(24));

-- Location: IOOBUF_X77_Y115_N53
\avm_initSoma_writedata[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(25));

-- Location: IOOBUF_X35_Y0_N19
\avm_initSoma_writedata[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(26));

-- Location: IOOBUF_X37_Y115_N53
\avm_initSoma_writedata[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(27));

-- Location: IOOBUF_X121_Y31_N5
\avm_initSoma_writedata[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(28));

-- Location: IOOBUF_X121_Y55_N56
\avm_initSoma_writedata[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(29));

-- Location: IOOBUF_X86_Y0_N19
\avm_initSoma_writedata[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(30));

-- Location: IOOBUF_X22_Y115_N2
\avm_initSoma_writedata[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_avm_initSoma_writedata(31));

-- Location: IOIBUF_X46_Y0_N18
\clk_server_unit~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_server_unit,
	o => \clk_server_unit~input_o\);

-- Location: CLKCTRL_G6
\clk_server_unit~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk_server_unit~input_o\,
	outclk => \clk_server_unit~inputCLKENA0_outclk\);

-- Location: IOIBUF_X12_Y0_N18
\avs_pullSynapse_write~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_write,
	o => \avs_pullSynapse_write~input_o\);

-- Location: LABCELL_X14_Y2_N12
\SYNAPSE_SERVER|Selector65~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SYNAPSE_SERVER|Selector65~0_combout\ = ( \SYNAPSE_SERVER|statePullData.STATE_IDLE~q\ ) # ( !\SYNAPSE_SERVER|statePullData.STATE_IDLE~q\ & ( \avs_pullSynapse_write~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avs_pullSynapse_write~input_o\,
	dataf => \SYNAPSE_SERVER|ALT_INV_statePullData.STATE_IDLE~q\,
	combout => \SYNAPSE_SERVER|Selector65~0_combout\);

-- Location: IOIBUF_X12_Y0_N52
\rst_server_unit~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_server_unit,
	o => \rst_server_unit~input_o\);

-- Location: FF_X14_Y2_N14
\SYNAPSE_SERVER|statePullData_next.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_server_unit~inputCLKENA0_outclk\,
	d => \SYNAPSE_SERVER|Selector65~0_combout\,
	clrn => \ALT_INV_rst_server_unit~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNAPSE_SERVER|statePullData_next.STATE_IDLE~q\);

-- Location: FF_X14_Y2_N29
\SYNAPSE_SERVER|statePullData.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_server_unit~inputCLKENA0_outclk\,
	asdata => \SYNAPSE_SERVER|statePullData_next.STATE_IDLE~q\,
	clrn => \ALT_INV_rst_server_unit~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNAPSE_SERVER|statePullData.STATE_IDLE~q\);

-- Location: LABCELL_X14_Y2_N24
\SYNAPSE_SERVER|avs_pullData_waitrequest~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SYNAPSE_SERVER|avs_pullData_waitrequest~0_combout\ = ( \SYNAPSE_SERVER|avs_pullData_waitrequest~q\ ) # ( !\SYNAPSE_SERVER|avs_pullData_waitrequest~q\ & ( (\avs_pullSynapse_write~input_o\ & !\SYNAPSE_SERVER|statePullData.STATE_IDLE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111111111111111101010000010100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avs_pullSynapse_write~input_o\,
	datac => \SYNAPSE_SERVER|ALT_INV_statePullData.STATE_IDLE~q\,
	datae => \SYNAPSE_SERVER|ALT_INV_avs_pullData_waitrequest~q\,
	combout => \SYNAPSE_SERVER|avs_pullData_waitrequest~0_combout\);

-- Location: FF_X14_Y2_N25
\SYNAPSE_SERVER|avs_pullData_waitrequest\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_server_unit~inputCLKENA0_outclk\,
	d => \SYNAPSE_SERVER|avs_pullData_waitrequest~0_combout\,
	clrn => \ALT_INV_rst_server_unit~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNAPSE_SERVER|avs_pullData_waitrequest~q\);

-- Location: IOIBUF_X12_Y0_N1
\avm_initSynapse_waitrequest~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avm_initSynapse_waitrequest,
	o => \avm_initSynapse_waitrequest~input_o\);

-- Location: LABCELL_X14_Y2_N57
\SYNAPSE_SERVER|Selector375~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SYNAPSE_SERVER|Selector375~0_combout\ = ( \SYNAPSE_SERVER|stateInitModule.STATE_WAIT~q\ & ( \avm_initSynapse_waitrequest~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avm_initSynapse_waitrequest~input_o\,
	dataf => \SYNAPSE_SERVER|ALT_INV_stateInitModule.STATE_WAIT~q\,
	combout => \SYNAPSE_SERVER|Selector375~0_combout\);

-- Location: FF_X14_Y2_N59
\SYNAPSE_SERVER|stateInitModule_next.STATE_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_server_unit~inputCLKENA0_outclk\,
	d => \SYNAPSE_SERVER|Selector375~0_combout\,
	ena => \ALT_INV_rst_server_unit~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNAPSE_SERVER|stateInitModule_next.STATE_WAIT~q\);

-- Location: FF_X14_Y2_N11
\SYNAPSE_SERVER|stateInitModule.STATE_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_server_unit~inputCLKENA0_outclk\,
	asdata => \SYNAPSE_SERVER|stateInitModule_next.STATE_WAIT~q\,
	clrn => \ALT_INV_rst_server_unit~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNAPSE_SERVER|stateInitModule.STATE_WAIT~q\);

-- Location: LABCELL_X14_Y2_N54
\SYNAPSE_SERVER|Selector374~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SYNAPSE_SERVER|Selector374~0_combout\ = ( \SYNAPSE_SERVER|stateInitModule.STATE_WAIT~q\ & ( (\avm_initSynapse_waitrequest~input_o\ & \SYNAPSE_SERVER|stateInitModule.STATE_IDLE~q\) ) ) # ( !\SYNAPSE_SERVER|stateInitModule.STATE_WAIT~q\ & ( 
-- \SYNAPSE_SERVER|stateInitModule.STATE_IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avm_initSynapse_waitrequest~input_o\,
	datac => \SYNAPSE_SERVER|ALT_INV_stateInitModule.STATE_IDLE~q\,
	dataf => \SYNAPSE_SERVER|ALT_INV_stateInitModule.STATE_WAIT~q\,
	combout => \SYNAPSE_SERVER|Selector374~0_combout\);

-- Location: FF_X14_Y2_N56
\SYNAPSE_SERVER|stateInitModule_next.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_server_unit~inputCLKENA0_outclk\,
	d => \SYNAPSE_SERVER|Selector374~0_combout\,
	ena => \ALT_INV_rst_server_unit~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNAPSE_SERVER|stateInitModule_next.STATE_IDLE~q\);

-- Location: FF_X14_Y2_N23
\SYNAPSE_SERVER|stateInitModule.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_server_unit~inputCLKENA0_outclk\,
	asdata => \SYNAPSE_SERVER|stateInitModule_next.STATE_IDLE~q\,
	clrn => \ALT_INV_rst_server_unit~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNAPSE_SERVER|stateInitModule.STATE_IDLE~q\);

-- Location: LABCELL_X14_Y2_N48
\SYNAPSE_SERVER|Selector408~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SYNAPSE_SERVER|Selector408~0_combout\ = ( \SYNAPSE_SERVER|avm_initModule_write~q\ & ( \SYNAPSE_SERVER|stateInitModule.STATE_IDLE~q\ & ( (!\SYNAPSE_SERVER|stateInitModule.STATE_WAIT~q\) # (\avm_initSynapse_waitrequest~input_o\) ) ) ) # ( 
-- !\SYNAPSE_SERVER|avm_initModule_write~q\ & ( \SYNAPSE_SERVER|stateInitModule.STATE_IDLE~q\ & ( !\SYNAPSE_SERVER|stateInitModule.STATE_WAIT~q\ ) ) ) # ( \SYNAPSE_SERVER|avm_initModule_write~q\ & ( !\SYNAPSE_SERVER|stateInitModule.STATE_IDLE~q\ & ( 
-- (!\SYNAPSE_SERVER|stateInitModule.STATE_WAIT~q\) # (\avm_initSynapse_waitrequest~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111111111111000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_initSynapse_waitrequest~input_o\,
	datad => \SYNAPSE_SERVER|ALT_INV_stateInitModule.STATE_WAIT~q\,
	datae => \SYNAPSE_SERVER|ALT_INV_avm_initModule_write~q\,
	dataf => \SYNAPSE_SERVER|ALT_INV_stateInitModule.STATE_IDLE~q\,
	combout => \SYNAPSE_SERVER|Selector408~0_combout\);

-- Location: FF_X14_Y2_N49
\SYNAPSE_SERVER|avm_initModule_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_server_unit~inputCLKENA0_outclk\,
	d => \SYNAPSE_SERVER|Selector408~0_combout\,
	clrn => \ALT_INV_rst_server_unit~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SYNAPSE_SERVER|avm_initModule_write~q\);

-- Location: IOIBUF_X14_Y0_N1
\avs_pullSoma_write~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_write,
	o => \avs_pullSoma_write~input_o\);

-- Location: LABCELL_X14_Y2_N36
\SOMA_SERVER|Selector65~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_SERVER|Selector65~0_combout\ = ( \SOMA_SERVER|statePullData.STATE_IDLE~q\ ) # ( !\SOMA_SERVER|statePullData.STATE_IDLE~q\ & ( \avs_pullSoma_write~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avs_pullSoma_write~input_o\,
	dataf => \SOMA_SERVER|ALT_INV_statePullData.STATE_IDLE~q\,
	combout => \SOMA_SERVER|Selector65~0_combout\);

-- Location: FF_X14_Y2_N38
\SOMA_SERVER|statePullData_next.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_server_unit~inputCLKENA0_outclk\,
	d => \SOMA_SERVER|Selector65~0_combout\,
	clrn => \ALT_INV_rst_server_unit~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOMA_SERVER|statePullData_next.STATE_IDLE~q\);

-- Location: FF_X14_Y2_N35
\SOMA_SERVER|statePullData.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_server_unit~inputCLKENA0_outclk\,
	asdata => \SOMA_SERVER|statePullData_next.STATE_IDLE~q\,
	clrn => \ALT_INV_rst_server_unit~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOMA_SERVER|statePullData.STATE_IDLE~q\);

-- Location: LABCELL_X14_Y2_N30
\SOMA_SERVER|avs_pullData_waitrequest~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_SERVER|avs_pullData_waitrequest~0_combout\ = ( \SOMA_SERVER|avs_pullData_waitrequest~q\ & ( \SOMA_SERVER|statePullData.STATE_IDLE~q\ ) ) # ( \SOMA_SERVER|avs_pullData_waitrequest~q\ & ( !\SOMA_SERVER|statePullData.STATE_IDLE~q\ ) ) # ( 
-- !\SOMA_SERVER|avs_pullData_waitrequest~q\ & ( !\SOMA_SERVER|statePullData.STATE_IDLE~q\ & ( \avs_pullSoma_write~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avs_pullSoma_write~input_o\,
	datae => \SOMA_SERVER|ALT_INV_avs_pullData_waitrequest~q\,
	dataf => \SOMA_SERVER|ALT_INV_statePullData.STATE_IDLE~q\,
	combout => \SOMA_SERVER|avs_pullData_waitrequest~0_combout\);

-- Location: FF_X14_Y2_N31
\SOMA_SERVER|avs_pullData_waitrequest\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_server_unit~inputCLKENA0_outclk\,
	d => \SOMA_SERVER|avs_pullData_waitrequest~0_combout\,
	clrn => \ALT_INV_rst_server_unit~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOMA_SERVER|avs_pullData_waitrequest~q\);

-- Location: IOIBUF_X12_Y0_N35
\avm_initSoma_waitrequest~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avm_initSoma_waitrequest,
	o => \avm_initSoma_waitrequest~input_o\);

-- Location: LABCELL_X14_Y2_N3
\SOMA_SERVER|Selector375~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_SERVER|Selector375~0_combout\ = (\avm_initSoma_waitrequest~input_o\ & \SOMA_SERVER|stateInitModule.STATE_WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avm_initSoma_waitrequest~input_o\,
	datac => \SOMA_SERVER|ALT_INV_stateInitModule.STATE_WAIT~q\,
	combout => \SOMA_SERVER|Selector375~0_combout\);

-- Location: FF_X14_Y2_N5
\SOMA_SERVER|stateInitModule_next.STATE_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_server_unit~inputCLKENA0_outclk\,
	d => \SOMA_SERVER|Selector375~0_combout\,
	ena => \ALT_INV_rst_server_unit~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOMA_SERVER|stateInitModule_next.STATE_WAIT~q\);

-- Location: FF_X14_Y2_N47
\SOMA_SERVER|stateInitModule.STATE_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_server_unit~inputCLKENA0_outclk\,
	asdata => \SOMA_SERVER|stateInitModule_next.STATE_WAIT~q\,
	clrn => \ALT_INV_rst_server_unit~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOMA_SERVER|stateInitModule.STATE_WAIT~q\);

-- Location: LABCELL_X14_Y2_N0
\SOMA_SERVER|Selector374~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_SERVER|Selector374~0_combout\ = ( \SOMA_SERVER|stateInitModule.STATE_IDLE~q\ & ( (!\SOMA_SERVER|stateInitModule.STATE_WAIT~q\) # (\avm_initSoma_waitrequest~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avm_initSoma_waitrequest~input_o\,
	datab => \SOMA_SERVER|ALT_INV_stateInitModule.STATE_WAIT~q\,
	dataf => \SOMA_SERVER|ALT_INV_stateInitModule.STATE_IDLE~q\,
	combout => \SOMA_SERVER|Selector374~0_combout\);

-- Location: FF_X14_Y2_N2
\SOMA_SERVER|stateInitModule_next.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_server_unit~inputCLKENA0_outclk\,
	d => \SOMA_SERVER|Selector374~0_combout\,
	ena => \ALT_INV_rst_server_unit~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOMA_SERVER|stateInitModule_next.STATE_IDLE~q\);

-- Location: FF_X14_Y2_N53
\SOMA_SERVER|stateInitModule.STATE_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_server_unit~inputCLKENA0_outclk\,
	asdata => \SOMA_SERVER|stateInitModule_next.STATE_IDLE~q\,
	clrn => \ALT_INV_rst_server_unit~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOMA_SERVER|stateInitModule.STATE_IDLE~q\);

-- Location: LABCELL_X14_Y2_N18
\SOMA_SERVER|Selector408~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SOMA_SERVER|Selector408~0_combout\ = ( \SOMA_SERVER|avm_initModule_write~q\ & ( \SOMA_SERVER|stateInitModule.STATE_IDLE~q\ & ( (!\SOMA_SERVER|stateInitModule.STATE_WAIT~q\) # (\avm_initSoma_waitrequest~input_o\) ) ) ) # ( 
-- !\SOMA_SERVER|avm_initModule_write~q\ & ( \SOMA_SERVER|stateInitModule.STATE_IDLE~q\ & ( !\SOMA_SERVER|stateInitModule.STATE_WAIT~q\ ) ) ) # ( \SOMA_SERVER|avm_initModule_write~q\ & ( !\SOMA_SERVER|stateInitModule.STATE_IDLE~q\ & ( 
-- (!\SOMA_SERVER|stateInitModule.STATE_WAIT~q\) # (\avm_initSoma_waitrequest~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111111111111000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avm_initSoma_waitrequest~input_o\,
	datad => \SOMA_SERVER|ALT_INV_stateInitModule.STATE_WAIT~q\,
	datae => \SOMA_SERVER|ALT_INV_avm_initModule_write~q\,
	dataf => \SOMA_SERVER|ALT_INV_stateInitModule.STATE_IDLE~q\,
	combout => \SOMA_SERVER|Selector408~0_combout\);

-- Location: FF_X14_Y2_N20
\SOMA_SERVER|avm_initModule_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_server_unit~inputCLKENA0_outclk\,
	d => \SOMA_SERVER|Selector408~0_combout\,
	clrn => \ALT_INV_rst_server_unit~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SOMA_SERVER|avm_initModule_write~q\);

-- Location: IOIBUF_X30_Y0_N18
\avs_pullSynapse_address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(0),
	o => \avs_pullSynapse_address[0]~input_o\);

-- Location: IOIBUF_X121_Y22_N21
\avs_pullSynapse_address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(1),
	o => \avs_pullSynapse_address[1]~input_o\);

-- Location: IOIBUF_X121_Y41_N38
\avs_pullSynapse_address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(2),
	o => \avs_pullSynapse_address[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\avs_pullSynapse_address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(3),
	o => \avs_pullSynapse_address[3]~input_o\);

-- Location: IOIBUF_X69_Y115_N52
\avs_pullSynapse_address[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(4),
	o => \avs_pullSynapse_address[4]~input_o\);

-- Location: IOIBUF_X8_Y115_N41
\avs_pullSynapse_address[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(5),
	o => \avs_pullSynapse_address[5]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\avs_pullSynapse_address[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(6),
	o => \avs_pullSynapse_address[6]~input_o\);

-- Location: IOIBUF_X90_Y0_N41
\avs_pullSynapse_address[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(7),
	o => \avs_pullSynapse_address[7]~input_o\);

-- Location: IOIBUF_X90_Y115_N92
\avs_pullSynapse_address[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(8),
	o => \avs_pullSynapse_address[8]~input_o\);

-- Location: IOIBUF_X17_Y115_N41
\avs_pullSynapse_address[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(9),
	o => \avs_pullSynapse_address[9]~input_o\);

-- Location: IOIBUF_X98_Y115_N75
\avs_pullSynapse_address[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(10),
	o => \avs_pullSynapse_address[10]~input_o\);

-- Location: IOIBUF_X88_Y0_N35
\avs_pullSynapse_address[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(11),
	o => \avs_pullSynapse_address[11]~input_o\);

-- Location: IOIBUF_X121_Y77_N21
\avs_pullSynapse_address[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(12),
	o => \avs_pullSynapse_address[12]~input_o\);

-- Location: IOIBUF_X88_Y0_N1
\avs_pullSynapse_address[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(13),
	o => \avs_pullSynapse_address[13]~input_o\);

-- Location: IOIBUF_X121_Y24_N4
\avs_pullSynapse_address[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(14),
	o => \avs_pullSynapse_address[14]~input_o\);

-- Location: IOIBUF_X121_Y38_N4
\avs_pullSynapse_address[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(15),
	o => \avs_pullSynapse_address[15]~input_o\);

-- Location: IOIBUF_X84_Y0_N1
\avs_pullSynapse_address[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(16),
	o => \avs_pullSynapse_address[16]~input_o\);

-- Location: IOIBUF_X111_Y0_N35
\avs_pullSynapse_address[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(17),
	o => \avs_pullSynapse_address[17]~input_o\);

-- Location: IOIBUF_X121_Y51_N95
\avs_pullSynapse_address[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(18),
	o => \avs_pullSynapse_address[18]~input_o\);

-- Location: IOIBUF_X33_Y115_N41
\avs_pullSynapse_address[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(19),
	o => \avs_pullSynapse_address[19]~input_o\);

-- Location: IOIBUF_X104_Y115_N35
\avs_pullSynapse_address[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(20),
	o => \avs_pullSynapse_address[20]~input_o\);

-- Location: IOIBUF_X121_Y85_N21
\avs_pullSynapse_address[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(21),
	o => \avs_pullSynapse_address[21]~input_o\);

-- Location: IOIBUF_X110_Y115_N35
\avs_pullSynapse_address[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(22),
	o => \avs_pullSynapse_address[22]~input_o\);

-- Location: IOIBUF_X39_Y0_N35
\avs_pullSynapse_address[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(23),
	o => \avs_pullSynapse_address[23]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\avs_pullSynapse_address[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(24),
	o => \avs_pullSynapse_address[24]~input_o\);

-- Location: IOIBUF_X79_Y115_N35
\avs_pullSynapse_address[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(25),
	o => \avs_pullSynapse_address[25]~input_o\);

-- Location: IOIBUF_X110_Y0_N35
\avs_pullSynapse_address[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(26),
	o => \avs_pullSynapse_address[26]~input_o\);

-- Location: IOIBUF_X40_Y115_N75
\avs_pullSynapse_address[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(27),
	o => \avs_pullSynapse_address[27]~input_o\);

-- Location: IOIBUF_X121_Y82_N61
\avs_pullSynapse_address[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(28),
	o => \avs_pullSynapse_address[28]~input_o\);

-- Location: IOIBUF_X102_Y0_N35
\avs_pullSynapse_address[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(29),
	o => \avs_pullSynapse_address[29]~input_o\);

-- Location: IOIBUF_X22_Y115_N35
\avs_pullSynapse_address[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(30),
	o => \avs_pullSynapse_address[30]~input_o\);

-- Location: IOIBUF_X39_Y115_N18
\avs_pullSynapse_address[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_address(31),
	o => \avs_pullSynapse_address[31]~input_o\);

-- Location: IOIBUF_X100_Y115_N35
\avs_pullSynapse_writedata[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(0),
	o => \avs_pullSynapse_writedata[0]~input_o\);

-- Location: IOIBUF_X121_Y72_N21
\avs_pullSynapse_writedata[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(1),
	o => \avs_pullSynapse_writedata[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\avs_pullSynapse_writedata[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(2),
	o => \avs_pullSynapse_writedata[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\avs_pullSynapse_writedata[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(3),
	o => \avs_pullSynapse_writedata[3]~input_o\);

-- Location: IOIBUF_X113_Y115_N52
\avs_pullSynapse_writedata[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(4),
	o => \avs_pullSynapse_writedata[4]~input_o\);

-- Location: IOIBUF_X77_Y115_N18
\avs_pullSynapse_writedata[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(5),
	o => \avs_pullSynapse_writedata[5]~input_o\);

-- Location: IOIBUF_X10_Y115_N1
\avs_pullSynapse_writedata[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(6),
	o => \avs_pullSynapse_writedata[6]~input_o\);

-- Location: IOIBUF_X121_Y94_N21
\avs_pullSynapse_writedata[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(7),
	o => \avs_pullSynapse_writedata[7]~input_o\);

-- Location: IOIBUF_X111_Y0_N18
\avs_pullSynapse_writedata[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(8),
	o => \avs_pullSynapse_writedata[8]~input_o\);

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

-- Location: IOIBUF_X100_Y0_N1
\avs_pullSynapse_writedata[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(10),
	o => \avs_pullSynapse_writedata[10]~input_o\);

-- Location: IOIBUF_X113_Y115_N1
\avs_pullSynapse_writedata[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(11),
	o => \avs_pullSynapse_writedata[11]~input_o\);

-- Location: IOIBUF_X98_Y0_N92
\avs_pullSynapse_writedata[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(12),
	o => \avs_pullSynapse_writedata[12]~input_o\);

-- Location: IOIBUF_X121_Y74_N44
\avs_pullSynapse_writedata[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(13),
	o => \avs_pullSynapse_writedata[13]~input_o\);

-- Location: IOIBUF_X121_Y16_N55
\avs_pullSynapse_writedata[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(14),
	o => \avs_pullSynapse_writedata[14]~input_o\);

-- Location: IOIBUF_X44_Y115_N18
\avs_pullSynapse_writedata[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(15),
	o => \avs_pullSynapse_writedata[15]~input_o\);

-- Location: IOIBUF_X88_Y0_N18
\avs_pullSynapse_writedata[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(16),
	o => \avs_pullSynapse_writedata[16]~input_o\);

-- Location: IOIBUF_X25_Y115_N58
\avs_pullSynapse_writedata[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(17),
	o => \avs_pullSynapse_writedata[17]~input_o\);

-- Location: IOIBUF_X121_Y93_N38
\avs_pullSynapse_writedata[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(18),
	o => \avs_pullSynapse_writedata[18]~input_o\);

-- Location: IOIBUF_X39_Y0_N52
\avs_pullSynapse_writedata[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(19),
	o => \avs_pullSynapse_writedata[19]~input_o\);

-- Location: IOIBUF_X110_Y115_N1
\avs_pullSynapse_writedata[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(20),
	o => \avs_pullSynapse_writedata[20]~input_o\);

-- Location: IOIBUF_X18_Y115_N52
\avs_pullSynapse_writedata[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(21),
	o => \avs_pullSynapse_writedata[21]~input_o\);

-- Location: IOIBUF_X121_Y61_N55
\avs_pullSynapse_writedata[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(22),
	o => \avs_pullSynapse_writedata[22]~input_o\);

-- Location: IOIBUF_X121_Y39_N38
\avs_pullSynapse_writedata[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(23),
	o => \avs_pullSynapse_writedata[23]~input_o\);

-- Location: IOIBUF_X121_Y14_N4
\avs_pullSynapse_writedata[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(24),
	o => \avs_pullSynapse_writedata[24]~input_o\);

-- Location: IOIBUF_X121_Y89_N44
\avs_pullSynapse_writedata[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(25),
	o => \avs_pullSynapse_writedata[25]~input_o\);

-- Location: IOIBUF_X69_Y0_N18
\avs_pullSynapse_writedata[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(26),
	o => \avs_pullSynapse_writedata[26]~input_o\);

-- Location: IOIBUF_X39_Y0_N18
\avs_pullSynapse_writedata[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(27),
	o => \avs_pullSynapse_writedata[27]~input_o\);

-- Location: IOIBUF_X42_Y115_N35
\avs_pullSynapse_writedata[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(28),
	o => \avs_pullSynapse_writedata[28]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\avs_pullSynapse_writedata[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(29),
	o => \avs_pullSynapse_writedata[29]~input_o\);

-- Location: IOIBUF_X121_Y60_N95
\avs_pullSynapse_writedata[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(30),
	o => \avs_pullSynapse_writedata[30]~input_o\);

-- Location: IOIBUF_X26_Y115_N1
\avs_pullSynapse_writedata[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSynapse_writedata(31),
	o => \avs_pullSynapse_writedata[31]~input_o\);

-- Location: IOIBUF_X20_Y0_N52
\avs_pullSoma_address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(0),
	o => \avs_pullSoma_address[0]~input_o\);

-- Location: IOIBUF_X35_Y0_N52
\avs_pullSoma_address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(1),
	o => \avs_pullSoma_address[1]~input_o\);

-- Location: IOIBUF_X69_Y0_N35
\avs_pullSoma_address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(2),
	o => \avs_pullSoma_address[2]~input_o\);

-- Location: IOIBUF_X18_Y115_N18
\avs_pullSoma_address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(3),
	o => \avs_pullSoma_address[3]~input_o\);

-- Location: IOIBUF_X79_Y0_N35
\avs_pullSoma_address[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(4),
	o => \avs_pullSoma_address[4]~input_o\);

-- Location: IOIBUF_X121_Y21_N78
\avs_pullSoma_address[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(5),
	o => \avs_pullSoma_address[5]~input_o\);

-- Location: IOIBUF_X77_Y0_N18
\avs_pullSoma_address[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(6),
	o => \avs_pullSoma_address[6]~input_o\);

-- Location: IOIBUF_X27_Y115_N18
\avs_pullSoma_address[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(7),
	o => \avs_pullSoma_address[7]~input_o\);

-- Location: IOIBUF_X121_Y39_N4
\avs_pullSoma_address[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(8),
	o => \avs_pullSoma_address[8]~input_o\);

-- Location: IOIBUF_X82_Y0_N58
\avs_pullSoma_address[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(9),
	o => \avs_pullSoma_address[9]~input_o\);

-- Location: IOIBUF_X50_Y0_N18
\avs_pullSoma_address[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(10),
	o => \avs_pullSoma_address[10]~input_o\);

-- Location: IOIBUF_X113_Y0_N18
\avs_pullSoma_address[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(11),
	o => \avs_pullSoma_address[11]~input_o\);

-- Location: IOIBUF_X26_Y0_N35
\avs_pullSoma_address[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(12),
	o => \avs_pullSoma_address[12]~input_o\);

-- Location: IOIBUF_X27_Y0_N35
\avs_pullSoma_address[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(13),
	o => \avs_pullSoma_address[13]~input_o\);

-- Location: IOIBUF_X121_Y43_N78
\avs_pullSoma_address[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(14),
	o => \avs_pullSoma_address[14]~input_o\);

-- Location: IOIBUF_X40_Y115_N41
\avs_pullSoma_address[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(15),
	o => \avs_pullSoma_address[15]~input_o\);

-- Location: IOIBUF_X52_Y115_N18
\avs_pullSoma_address[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(16),
	o => \avs_pullSoma_address[16]~input_o\);

-- Location: IOIBUF_X121_Y43_N44
\avs_pullSoma_address[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(17),
	o => \avs_pullSoma_address[17]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\avs_pullSoma_address[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(18),
	o => \avs_pullSoma_address[18]~input_o\);

-- Location: IOIBUF_X67_Y0_N35
\avs_pullSoma_address[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(19),
	o => \avs_pullSoma_address[19]~input_o\);

-- Location: IOIBUF_X54_Y115_N52
\avs_pullSoma_address[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(20),
	o => \avs_pullSoma_address[20]~input_o\);

-- Location: IOIBUF_X121_Y94_N55
\avs_pullSoma_address[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(21),
	o => \avs_pullSoma_address[21]~input_o\);

-- Location: IOIBUF_X111_Y115_N52
\avs_pullSoma_address[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(22),
	o => \avs_pullSoma_address[22]~input_o\);

-- Location: IOIBUF_X121_Y61_N4
\avs_pullSoma_address[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(23),
	o => \avs_pullSoma_address[23]~input_o\);

-- Location: IOIBUF_X121_Y55_N38
\avs_pullSoma_address[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(24),
	o => \avs_pullSoma_address[24]~input_o\);

-- Location: IOIBUF_X86_Y115_N18
\avs_pullSoma_address[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(25),
	o => \avs_pullSoma_address[25]~input_o\);

-- Location: IOIBUF_X50_Y115_N1
\avs_pullSoma_address[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(26),
	o => \avs_pullSoma_address[26]~input_o\);

-- Location: IOIBUF_X10_Y115_N18
\avs_pullSoma_address[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(27),
	o => \avs_pullSoma_address[27]~input_o\);

-- Location: IOIBUF_X121_Y82_N78
\avs_pullSoma_address[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(28),
	o => \avs_pullSoma_address[28]~input_o\);

-- Location: IOIBUF_X73_Y115_N58
\avs_pullSoma_address[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(29),
	o => \avs_pullSoma_address[29]~input_o\);

-- Location: IOIBUF_X8_Y115_N92
\avs_pullSoma_address[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(30),
	o => \avs_pullSoma_address[30]~input_o\);

-- Location: IOIBUF_X17_Y115_N58
\avs_pullSoma_address[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_address(31),
	o => \avs_pullSoma_address[31]~input_o\);

-- Location: IOIBUF_X71_Y115_N35
\avs_pullSoma_writedata[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(0),
	o => \avs_pullSoma_writedata[0]~input_o\);

-- Location: IOIBUF_X73_Y115_N92
\avs_pullSoma_writedata[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(1),
	o => \avs_pullSoma_writedata[1]~input_o\);

-- Location: IOIBUF_X71_Y115_N18
\avs_pullSoma_writedata[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(2),
	o => \avs_pullSoma_writedata[2]~input_o\);

-- Location: IOIBUF_X121_Y14_N21
\avs_pullSoma_writedata[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(3),
	o => \avs_pullSoma_writedata[3]~input_o\);

-- Location: IOIBUF_X35_Y115_N52
\avs_pullSoma_writedata[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(4),
	o => \avs_pullSoma_writedata[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N52
\avs_pullSoma_writedata[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(5),
	o => \avs_pullSoma_writedata[5]~input_o\);

-- Location: IOIBUF_X79_Y115_N1
\avs_pullSoma_writedata[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(6),
	o => \avs_pullSoma_writedata[6]~input_o\);

-- Location: IOIBUF_X54_Y115_N18
\avs_pullSoma_writedata[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(7),
	o => \avs_pullSoma_writedata[7]~input_o\);

-- Location: IOIBUF_X121_Y87_N55
\avs_pullSoma_writedata[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(8),
	o => \avs_pullSoma_writedata[8]~input_o\);

-- Location: IOIBUF_X94_Y115_N18
\avs_pullSoma_writedata[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(9),
	o => \avs_pullSoma_writedata[9]~input_o\);

-- Location: IOIBUF_X39_Y115_N52
\avs_pullSoma_writedata[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(10),
	o => \avs_pullSoma_writedata[10]~input_o\);

-- Location: IOIBUF_X73_Y0_N58
\avs_pullSoma_writedata[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(11),
	o => \avs_pullSoma_writedata[11]~input_o\);

-- Location: IOIBUF_X25_Y0_N92
\avs_pullSoma_writedata[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(12),
	o => \avs_pullSoma_writedata[12]~input_o\);

-- Location: IOIBUF_X121_Y53_N21
\avs_pullSoma_writedata[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(13),
	o => \avs_pullSoma_writedata[13]~input_o\);

-- Location: IOIBUF_X42_Y0_N52
\avs_pullSoma_writedata[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(14),
	o => \avs_pullSoma_writedata[14]~input_o\);

-- Location: IOIBUF_X20_Y115_N18
\avs_pullSoma_writedata[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(15),
	o => \avs_pullSoma_writedata[15]~input_o\);

-- Location: IOIBUF_X40_Y0_N41
\avs_pullSoma_writedata[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(16),
	o => \avs_pullSoma_writedata[16]~input_o\);

-- Location: IOIBUF_X33_Y115_N75
\avs_pullSoma_writedata[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(17),
	o => \avs_pullSoma_writedata[17]~input_o\);

-- Location: IOIBUF_X121_Y72_N55
\avs_pullSoma_writedata[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(18),
	o => \avs_pullSoma_writedata[18]~input_o\);

-- Location: IOIBUF_X10_Y0_N52
\avs_pullSoma_writedata[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(19),
	o => \avs_pullSoma_writedata[19]~input_o\);

-- Location: IOIBUF_X8_Y0_N92
\avs_pullSoma_writedata[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(20),
	o => \avs_pullSoma_writedata[20]~input_o\);

-- Location: IOIBUF_X37_Y115_N1
\avs_pullSoma_writedata[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(21),
	o => \avs_pullSoma_writedata[21]~input_o\);

-- Location: IOIBUF_X73_Y115_N75
\avs_pullSoma_writedata[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(22),
	o => \avs_pullSoma_writedata[22]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\avs_pullSoma_writedata[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(23),
	o => \avs_pullSoma_writedata[23]~input_o\);

-- Location: IOIBUF_X121_Y74_N78
\avs_pullSoma_writedata[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(24),
	o => \avs_pullSoma_writedata[24]~input_o\);

-- Location: IOIBUF_X84_Y115_N18
\avs_pullSoma_writedata[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(25),
	o => \avs_pullSoma_writedata[25]~input_o\);

-- Location: IOIBUF_X121_Y28_N44
\avs_pullSoma_writedata[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(26),
	o => \avs_pullSoma_writedata[26]~input_o\);

-- Location: IOIBUF_X86_Y0_N1
\avs_pullSoma_writedata[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(27),
	o => \avs_pullSoma_writedata[27]~input_o\);

-- Location: IOIBUF_X86_Y115_N35
\avs_pullSoma_writedata[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(28),
	o => \avs_pullSoma_writedata[28]~input_o\);

-- Location: IOIBUF_X121_Y31_N21
\avs_pullSoma_writedata[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(29),
	o => \avs_pullSoma_writedata[29]~input_o\);

-- Location: IOIBUF_X121_Y70_N21
\avs_pullSoma_writedata[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(30),
	o => \avs_pullSoma_writedata[30]~input_o\);

-- Location: IOIBUF_X30_Y115_N35
\avs_pullSoma_writedata[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_pullSoma_writedata(31),
	o => \avs_pullSoma_writedata[31]~input_o\);

-- Location: IOIBUF_X121_Y70_N38
\avm_pushSynapse_waitrequest~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avm_pushSynapse_waitrequest,
	o => \avm_pushSynapse_waitrequest~input_o\);

-- Location: IOIBUF_X111_Y0_N52
\avm_pushSoma_waitrequest~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avm_pushSoma_waitrequest,
	o => \avm_pushSoma_waitrequest~input_o\);

-- Location: MLABCELL_X68_Y92_N3
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


