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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/23/2022 17:01:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          synapse_module
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY synapse_module_vhd_vec_tst IS
END synapse_module_vhd_vec_tst;
ARCHITECTURE synapse_module_arch OF synapse_module_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL avm_pushSynapse_address : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL avm_pushSynapse_byteenable : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL avm_pushSynapse_waitrequest : STD_LOGIC;
SIGNAL avm_pushSynapse_write : STD_LOGIC;
SIGNAL avm_pushSynapse_writedata : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL avs_fetchSynapse_address : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL avs_fetchSynapse_response : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL avs_fetchSynapse_waitrequest : STD_LOGIC;
SIGNAL avs_fetchSynapse_write : STD_LOGIC;
SIGNAL avs_fetchSynapse_writedata : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL avs_pullSpike_address : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL avs_pullSpike_byteenable : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL avs_pullSpike_waitrequest : STD_LOGIC;
SIGNAL avs_pullSpike_write : STD_LOGIC;
SIGNAL avs_pullSpike_writedata : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL dbg_arxivPOST0 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL dbg_arxivPOST1 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL dbg_arxivPRE0 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL dbg_arxivPRE1 : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL dbg_deltaidx : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL dbg_full_idx : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL dbg_stack : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL dbg_synapsedelta : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT synapse_module
	PORT (
	avm_pushSynapse_address : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	avm_pushSynapse_byteenable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	avm_pushSynapse_waitrequest : IN STD_LOGIC;
	avm_pushSynapse_write : OUT STD_LOGIC;
	avm_pushSynapse_writedata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	avs_fetchSynapse_address : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	avs_fetchSynapse_response : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	avs_fetchSynapse_waitrequest : OUT STD_LOGIC;
	avs_fetchSynapse_write : IN STD_LOGIC;
	avs_fetchSynapse_writedata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	avs_pullSpike_address : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	avs_pullSpike_byteenable : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	avs_pullSpike_waitrequest : OUT STD_LOGIC;
	avs_pullSpike_write : IN STD_LOGIC;
	avs_pullSpike_writedata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	clk : IN STD_LOGIC;
	dbg_arxivPOST0 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	dbg_arxivPOST1 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	dbg_arxivPRE0 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	dbg_arxivPRE1 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	dbg_deltaidx : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	dbg_full_idx : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	dbg_stack : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	dbg_synapsedelta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : synapse_module
	PORT MAP (
-- list connections between master ports and signals
	avm_pushSynapse_address => avm_pushSynapse_address,
	avm_pushSynapse_byteenable => avm_pushSynapse_byteenable,
	avm_pushSynapse_waitrequest => avm_pushSynapse_waitrequest,
	avm_pushSynapse_write => avm_pushSynapse_write,
	avm_pushSynapse_writedata => avm_pushSynapse_writedata,
	avs_fetchSynapse_address => avs_fetchSynapse_address,
	avs_fetchSynapse_response => avs_fetchSynapse_response,
	avs_fetchSynapse_waitrequest => avs_fetchSynapse_waitrequest,
	avs_fetchSynapse_write => avs_fetchSynapse_write,
	avs_fetchSynapse_writedata => avs_fetchSynapse_writedata,
	avs_pullSpike_address => avs_pullSpike_address,
	avs_pullSpike_byteenable => avs_pullSpike_byteenable,
	avs_pullSpike_waitrequest => avs_pullSpike_waitrequest,
	avs_pullSpike_write => avs_pullSpike_write,
	avs_pullSpike_writedata => avs_pullSpike_writedata,
	clk => clk,
	dbg_arxivPOST0 => dbg_arxivPOST0,
	dbg_arxivPOST1 => dbg_arxivPOST1,
	dbg_arxivPRE0 => dbg_arxivPRE0,
	dbg_arxivPRE1 => dbg_arxivPRE1,
	dbg_deltaidx => dbg_deltaidx,
	dbg_full_idx => dbg_full_idx,
	dbg_stack => dbg_stack,
	dbg_synapsedelta => dbg_synapsedelta,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 20000 ps;
	rst <= '1';
	WAIT FOR 20000 ps;
	rst <= '0';
	WAIT FOR 390000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
-- avs_fetchSynapse_address[1]
t_prcs_avs_fetchSynapse_address_1: PROCESS
BEGIN
	avs_fetchSynapse_address(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_address_1;
-- avs_fetchSynapse_address[0]
t_prcs_avs_fetchSynapse_address_0: PROCESS
BEGIN
	avs_fetchSynapse_address(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_address_0;

-- avs_fetchSynapse_write
t_prcs_avs_fetchSynapse_write: PROCESS
BEGIN
	avs_fetchSynapse_write <= '0';
	WAIT FOR 90000 ps;
	avs_fetchSynapse_write <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_write <= '0';
	WAIT FOR 30000 ps;
	avs_fetchSynapse_write <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_write <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_write;
-- avs_fetchSynapse_writedata[15]
t_prcs_avs_fetchSynapse_writedata_15: PROCESS
BEGIN
	avs_fetchSynapse_writedata(15) <= '0';
	WAIT FOR 130000 ps;
	avs_fetchSynapse_writedata(15) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(15) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_writedata_15;
-- avs_fetchSynapse_writedata[14]
t_prcs_avs_fetchSynapse_writedata_14: PROCESS
BEGIN
	avs_fetchSynapse_writedata(14) <= '0';
	WAIT FOR 130000 ps;
	avs_fetchSynapse_writedata(14) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(14) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_writedata_14;
-- avs_fetchSynapse_writedata[13]
t_prcs_avs_fetchSynapse_writedata_13: PROCESS
BEGIN
	avs_fetchSynapse_writedata(13) <= '0';
	WAIT FOR 130000 ps;
	avs_fetchSynapse_writedata(13) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(13) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_writedata_13;
-- avs_fetchSynapse_writedata[12]
t_prcs_avs_fetchSynapse_writedata_12: PROCESS
BEGIN
	avs_fetchSynapse_writedata(12) <= '0';
	WAIT FOR 90000 ps;
	avs_fetchSynapse_writedata(12) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(12) <= '0';
	WAIT FOR 30000 ps;
	avs_fetchSynapse_writedata(12) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(12) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_writedata_12;
-- avs_fetchSynapse_writedata[11]
t_prcs_avs_fetchSynapse_writedata_11: PROCESS
BEGIN
	avs_fetchSynapse_writedata(11) <= '0';
	WAIT FOR 130000 ps;
	avs_fetchSynapse_writedata(11) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(11) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_writedata_11;
-- avs_fetchSynapse_writedata[10]
t_prcs_avs_fetchSynapse_writedata_10: PROCESS
BEGIN
	avs_fetchSynapse_writedata(10) <= '0';
	WAIT FOR 130000 ps;
	avs_fetchSynapse_writedata(10) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(10) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_writedata_10;
-- avs_fetchSynapse_writedata[9]
t_prcs_avs_fetchSynapse_writedata_9: PROCESS
BEGIN
	avs_fetchSynapse_writedata(9) <= '0';
	WAIT FOR 130000 ps;
	avs_fetchSynapse_writedata(9) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(9) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_writedata_9;
-- avs_fetchSynapse_writedata[8]
t_prcs_avs_fetchSynapse_writedata_8: PROCESS
BEGIN
	avs_fetchSynapse_writedata(8) <= '0';
	WAIT FOR 90000 ps;
	avs_fetchSynapse_writedata(8) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(8) <= '0';
	WAIT FOR 30000 ps;
	avs_fetchSynapse_writedata(8) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(8) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_writedata_8;
-- avs_fetchSynapse_writedata[7]
t_prcs_avs_fetchSynapse_writedata_7: PROCESS
BEGIN
	avs_fetchSynapse_writedata(7) <= '0';
	WAIT FOR 130000 ps;
	avs_fetchSynapse_writedata(7) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(7) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_writedata_7;
-- avs_fetchSynapse_writedata[6]
t_prcs_avs_fetchSynapse_writedata_6: PROCESS
BEGIN
	avs_fetchSynapse_writedata(6) <= '0';
	WAIT FOR 130000 ps;
	avs_fetchSynapse_writedata(6) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(6) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_writedata_6;
-- avs_fetchSynapse_writedata[5]
t_prcs_avs_fetchSynapse_writedata_5: PROCESS
BEGIN
	avs_fetchSynapse_writedata(5) <= '0';
	WAIT FOR 130000 ps;
	avs_fetchSynapse_writedata(5) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(5) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_writedata_5;
-- avs_fetchSynapse_writedata[4]
t_prcs_avs_fetchSynapse_writedata_4: PROCESS
BEGIN
	avs_fetchSynapse_writedata(4) <= '0';
	WAIT FOR 90000 ps;
	avs_fetchSynapse_writedata(4) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(4) <= '0';
	WAIT FOR 30000 ps;
	avs_fetchSynapse_writedata(4) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(4) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_writedata_4;
-- avs_fetchSynapse_writedata[3]
t_prcs_avs_fetchSynapse_writedata_3: PROCESS
BEGIN
	avs_fetchSynapse_writedata(3) <= '0';
	WAIT FOR 130000 ps;
	avs_fetchSynapse_writedata(3) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(3) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_writedata_3;
-- avs_fetchSynapse_writedata[2]
t_prcs_avs_fetchSynapse_writedata_2: PROCESS
BEGIN
	avs_fetchSynapse_writedata(2) <= '0';
	WAIT FOR 130000 ps;
	avs_fetchSynapse_writedata(2) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(2) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_writedata_2;
-- avs_fetchSynapse_writedata[1]
t_prcs_avs_fetchSynapse_writedata_1: PROCESS
BEGIN
	avs_fetchSynapse_writedata(1) <= '0';
	WAIT FOR 130000 ps;
	avs_fetchSynapse_writedata(1) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_writedata_1;
-- avs_fetchSynapse_writedata[0]
t_prcs_avs_fetchSynapse_writedata_0: PROCESS
BEGIN
	avs_fetchSynapse_writedata(0) <= '0';
	WAIT FOR 90000 ps;
	avs_fetchSynapse_writedata(0) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(0) <= '0';
	WAIT FOR 30000 ps;
	avs_fetchSynapse_writedata(0) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSynapse_writedata(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSynapse_writedata_0;
-- avs_pullSpike_address[31]
t_prcs_avs_pullSpike_address_31: PROCESS
BEGIN
	avs_pullSpike_address(31) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_31;
-- avs_pullSpike_address[30]
t_prcs_avs_pullSpike_address_30: PROCESS
BEGIN
	avs_pullSpike_address(30) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_30;
-- avs_pullSpike_address[29]
t_prcs_avs_pullSpike_address_29: PROCESS
BEGIN
	avs_pullSpike_address(29) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_29;
-- avs_pullSpike_address[28]
t_prcs_avs_pullSpike_address_28: PROCESS
BEGIN
	avs_pullSpike_address(28) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_28;
-- avs_pullSpike_address[27]
t_prcs_avs_pullSpike_address_27: PROCESS
BEGIN
	avs_pullSpike_address(27) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_27;
-- avs_pullSpike_address[26]
t_prcs_avs_pullSpike_address_26: PROCESS
BEGIN
	avs_pullSpike_address(26) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_26;
-- avs_pullSpike_address[25]
t_prcs_avs_pullSpike_address_25: PROCESS
BEGIN
	avs_pullSpike_address(25) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_25;
-- avs_pullSpike_address[24]
t_prcs_avs_pullSpike_address_24: PROCESS
BEGIN
	avs_pullSpike_address(24) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_24;
-- avs_pullSpike_address[23]
t_prcs_avs_pullSpike_address_23: PROCESS
BEGIN
	avs_pullSpike_address(23) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_23;
-- avs_pullSpike_address[22]
t_prcs_avs_pullSpike_address_22: PROCESS
BEGIN
	avs_pullSpike_address(22) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_22;
-- avs_pullSpike_address[21]
t_prcs_avs_pullSpike_address_21: PROCESS
BEGIN
	avs_pullSpike_address(21) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_21;
-- avs_pullSpike_address[20]
t_prcs_avs_pullSpike_address_20: PROCESS
BEGIN
	avs_pullSpike_address(20) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_20;
-- avs_pullSpike_address[19]
t_prcs_avs_pullSpike_address_19: PROCESS
BEGIN
	avs_pullSpike_address(19) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_19;
-- avs_pullSpike_address[18]
t_prcs_avs_pullSpike_address_18: PROCESS
BEGIN
	avs_pullSpike_address(18) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_18;
-- avs_pullSpike_address[17]
t_prcs_avs_pullSpike_address_17: PROCESS
BEGIN
	avs_pullSpike_address(17) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_17;
-- avs_pullSpike_address[16]
t_prcs_avs_pullSpike_address_16: PROCESS
BEGIN
	avs_pullSpike_address(16) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_16;
-- avs_pullSpike_address[15]
t_prcs_avs_pullSpike_address_15: PROCESS
BEGIN
	avs_pullSpike_address(15) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_15;
-- avs_pullSpike_address[14]
t_prcs_avs_pullSpike_address_14: PROCESS
BEGIN
	avs_pullSpike_address(14) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_14;
-- avs_pullSpike_address[13]
t_prcs_avs_pullSpike_address_13: PROCESS
BEGIN
	avs_pullSpike_address(13) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_13;
-- avs_pullSpike_address[12]
t_prcs_avs_pullSpike_address_12: PROCESS
BEGIN
	avs_pullSpike_address(12) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_12;
-- avs_pullSpike_address[11]
t_prcs_avs_pullSpike_address_11: PROCESS
BEGIN
	avs_pullSpike_address(11) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_11;
-- avs_pullSpike_address[10]
t_prcs_avs_pullSpike_address_10: PROCESS
BEGIN
	avs_pullSpike_address(10) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_10;
-- avs_pullSpike_address[9]
t_prcs_avs_pullSpike_address_9: PROCESS
BEGIN
	avs_pullSpike_address(9) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_9;
-- avs_pullSpike_address[8]
t_prcs_avs_pullSpike_address_8: PROCESS
BEGIN
	avs_pullSpike_address(8) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_8;
-- avs_pullSpike_address[7]
t_prcs_avs_pullSpike_address_7: PROCESS
BEGIN
	avs_pullSpike_address(7) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_7;
-- avs_pullSpike_address[6]
t_prcs_avs_pullSpike_address_6: PROCESS
BEGIN
	avs_pullSpike_address(6) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_6;
-- avs_pullSpike_address[5]
t_prcs_avs_pullSpike_address_5: PROCESS
BEGIN
	avs_pullSpike_address(5) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_5;
-- avs_pullSpike_address[4]
t_prcs_avs_pullSpike_address_4: PROCESS
BEGIN
	avs_pullSpike_address(4) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_4;
-- avs_pullSpike_address[3]
t_prcs_avs_pullSpike_address_3: PROCESS
BEGIN
	avs_pullSpike_address(3) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_3;
-- avs_pullSpike_address[2]
t_prcs_avs_pullSpike_address_2: PROCESS
BEGIN
	avs_pullSpike_address(2) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_2;
-- avs_pullSpike_address[1]
t_prcs_avs_pullSpike_address_1: PROCESS
BEGIN
	avs_pullSpike_address(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_1;
-- avs_pullSpike_address[0]
t_prcs_avs_pullSpike_address_0: PROCESS
BEGIN
	avs_pullSpike_address(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_address_0;

-- avs_pullSpike_write
t_prcs_avs_pullSpike_write: PROCESS
BEGIN
	avs_pullSpike_write <= '0';
	WAIT FOR 120000 ps;
	avs_pullSpike_write <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_write <= '0';
	WAIT FOR 40000 ps;
	avs_pullSpike_write <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_write <= '0';
	WAIT FOR 40000 ps;
	avs_pullSpike_write <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_write <= '0';
	WAIT FOR 30000 ps;
	avs_pullSpike_write <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_write <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_write;
-- avs_pullSpike_writedata[31]
t_prcs_avs_pullSpike_writedata_31: PROCESS
BEGIN
	avs_pullSpike_writedata(31) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_31;
-- avs_pullSpike_writedata[30]
t_prcs_avs_pullSpike_writedata_30: PROCESS
BEGIN
	avs_pullSpike_writedata(30) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_30;
-- avs_pullSpike_writedata[29]
t_prcs_avs_pullSpike_writedata_29: PROCESS
BEGIN
	avs_pullSpike_writedata(29) <= '0';
	WAIT FOR 220000 ps;
	avs_pullSpike_writedata(29) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(29) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_29;
-- avs_pullSpike_writedata[28]
t_prcs_avs_pullSpike_writedata_28: PROCESS
BEGIN
	avs_pullSpike_writedata(28) <= '0';
	WAIT FOR 120000 ps;
	avs_pullSpike_writedata(28) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(28) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_28;
-- avs_pullSpike_writedata[27]
t_prcs_avs_pullSpike_writedata_27: PROCESS
BEGIN
	avs_pullSpike_writedata(27) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_27;
-- avs_pullSpike_writedata[26]
t_prcs_avs_pullSpike_writedata_26: PROCESS
BEGIN
	avs_pullSpike_writedata(26) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_26;
-- avs_pullSpike_writedata[25]
t_prcs_avs_pullSpike_writedata_25: PROCESS
BEGIN
	avs_pullSpike_writedata(25) <= '0';
	WAIT FOR 220000 ps;
	avs_pullSpike_writedata(25) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(25) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_25;
-- avs_pullSpike_writedata[24]
t_prcs_avs_pullSpike_writedata_24: PROCESS
BEGIN
	avs_pullSpike_writedata(24) <= '0';
	WAIT FOR 120000 ps;
	avs_pullSpike_writedata(24) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(24) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_24;
-- avs_pullSpike_writedata[23]
t_prcs_avs_pullSpike_writedata_23: PROCESS
BEGIN
	avs_pullSpike_writedata(23) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_23;
-- avs_pullSpike_writedata[22]
t_prcs_avs_pullSpike_writedata_22: PROCESS
BEGIN
	avs_pullSpike_writedata(22) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_22;
-- avs_pullSpike_writedata[21]
t_prcs_avs_pullSpike_writedata_21: PROCESS
BEGIN
	avs_pullSpike_writedata(21) <= '0';
	WAIT FOR 220000 ps;
	avs_pullSpike_writedata(21) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(21) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_21;
-- avs_pullSpike_writedata[20]
t_prcs_avs_pullSpike_writedata_20: PROCESS
BEGIN
	avs_pullSpike_writedata(20) <= '0';
	WAIT FOR 120000 ps;
	avs_pullSpike_writedata(20) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(20) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_20;
-- avs_pullSpike_writedata[19]
t_prcs_avs_pullSpike_writedata_19: PROCESS
BEGIN
	avs_pullSpike_writedata(19) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_19;
-- avs_pullSpike_writedata[18]
t_prcs_avs_pullSpike_writedata_18: PROCESS
BEGIN
	avs_pullSpike_writedata(18) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_18;
-- avs_pullSpike_writedata[17]
t_prcs_avs_pullSpike_writedata_17: PROCESS
BEGIN
	avs_pullSpike_writedata(17) <= '0';
	WAIT FOR 220000 ps;
	avs_pullSpike_writedata(17) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(17) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_17;
-- avs_pullSpike_writedata[16]
t_prcs_avs_pullSpike_writedata_16: PROCESS
BEGIN
	avs_pullSpike_writedata(16) <= '0';
	WAIT FOR 120000 ps;
	avs_pullSpike_writedata(16) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(16) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_16;
-- avs_pullSpike_writedata[15]
t_prcs_avs_pullSpike_writedata_15: PROCESS
BEGIN
	avs_pullSpike_writedata(15) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_writedata(15) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(15) <= '0';
	WAIT FOR 40000 ps;
	avs_pullSpike_writedata(15) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(15) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_15;
-- avs_pullSpike_writedata[14]
t_prcs_avs_pullSpike_writedata_14: PROCESS
BEGIN
	avs_pullSpike_writedata(14) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_writedata(14) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(14) <= '0';
	WAIT FOR 80000 ps;
	avs_pullSpike_writedata(14) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(14) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_14;
-- avs_pullSpike_writedata[13]
t_prcs_avs_pullSpike_writedata_13: PROCESS
BEGIN
	avs_pullSpike_writedata(13) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_writedata(13) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(13) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_13;
-- avs_pullSpike_writedata[12]
t_prcs_avs_pullSpike_writedata_12: PROCESS
BEGIN
	avs_pullSpike_writedata(12) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_writedata(12) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(12) <= '0';
	WAIT FOR 40000 ps;
	avs_pullSpike_writedata(12) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(12) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_12;
-- avs_pullSpike_writedata[11]
t_prcs_avs_pullSpike_writedata_11: PROCESS
BEGIN
	avs_pullSpike_writedata(11) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_writedata(11) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(11) <= '0';
	WAIT FOR 40000 ps;
	avs_pullSpike_writedata(11) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(11) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_11;
-- avs_pullSpike_writedata[10]
t_prcs_avs_pullSpike_writedata_10: PROCESS
BEGIN
	avs_pullSpike_writedata(10) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_writedata(10) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(10) <= '0';
	WAIT FOR 80000 ps;
	avs_pullSpike_writedata(10) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(10) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_10;
-- avs_pullSpike_writedata[9]
t_prcs_avs_pullSpike_writedata_9: PROCESS
BEGIN
	avs_pullSpike_writedata(9) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_writedata(9) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(9) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_9;
-- avs_pullSpike_writedata[8]
t_prcs_avs_pullSpike_writedata_8: PROCESS
BEGIN
	avs_pullSpike_writedata(8) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_writedata(8) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(8) <= '0';
	WAIT FOR 40000 ps;
	avs_pullSpike_writedata(8) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(8) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_8;
-- avs_pullSpike_writedata[7]
t_prcs_avs_pullSpike_writedata_7: PROCESS
BEGIN
	avs_pullSpike_writedata(7) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_writedata(7) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(7) <= '0';
	WAIT FOR 40000 ps;
	avs_pullSpike_writedata(7) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(7) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_7;
-- avs_pullSpike_writedata[6]
t_prcs_avs_pullSpike_writedata_6: PROCESS
BEGIN
	avs_pullSpike_writedata(6) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_writedata(6) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(6) <= '0';
	WAIT FOR 80000 ps;
	avs_pullSpike_writedata(6) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(6) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_6;
-- avs_pullSpike_writedata[5]
t_prcs_avs_pullSpike_writedata_5: PROCESS
BEGIN
	avs_pullSpike_writedata(5) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_writedata(5) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(5) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_5;
-- avs_pullSpike_writedata[4]
t_prcs_avs_pullSpike_writedata_4: PROCESS
BEGIN
	avs_pullSpike_writedata(4) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_writedata(4) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(4) <= '0';
	WAIT FOR 40000 ps;
	avs_pullSpike_writedata(4) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(4) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_4;
-- avs_pullSpike_writedata[3]
t_prcs_avs_pullSpike_writedata_3: PROCESS
BEGIN
	avs_pullSpike_writedata(3) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_writedata(3) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(3) <= '0';
	WAIT FOR 40000 ps;
	avs_pullSpike_writedata(3) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(3) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_3;
-- avs_pullSpike_writedata[2]
t_prcs_avs_pullSpike_writedata_2: PROCESS
BEGIN
	avs_pullSpike_writedata(2) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_writedata(2) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(2) <= '0';
	WAIT FOR 80000 ps;
	avs_pullSpike_writedata(2) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(2) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_2;
-- avs_pullSpike_writedata[1]
t_prcs_avs_pullSpike_writedata_1: PROCESS
BEGIN
	avs_pullSpike_writedata(1) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_writedata(1) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_1;
-- avs_pullSpike_writedata[0]
t_prcs_avs_pullSpike_writedata_0: PROCESS
BEGIN
	avs_pullSpike_writedata(0) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_writedata(0) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(0) <= '0';
	WAIT FOR 40000 ps;
	avs_pullSpike_writedata(0) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_writedata(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_writedata_0;
-- avs_pullSpike_byteenable[3]
t_prcs_avs_pullSpike_byteenable_3: PROCESS
BEGIN
	avs_pullSpike_byteenable(3) <= '0';
	WAIT FOR 120000 ps;
	avs_pullSpike_byteenable(3) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_byteenable(3) <= '0';
	WAIT FOR 90000 ps;
	avs_pullSpike_byteenable(3) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_byteenable(3) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_byteenable_3;
-- avs_pullSpike_byteenable[2]
t_prcs_avs_pullSpike_byteenable_2: PROCESS
BEGIN
	avs_pullSpike_byteenable(2) <= '0';
	WAIT FOR 120000 ps;
	avs_pullSpike_byteenable(2) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_byteenable(2) <= '0';
	WAIT FOR 90000 ps;
	avs_pullSpike_byteenable(2) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_byteenable(2) <= '0';
	WAIT FOR 30000 ps;
	avs_pullSpike_byteenable(2) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_byteenable(2) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_byteenable_2;
-- avs_pullSpike_byteenable[1]
t_prcs_avs_pullSpike_byteenable_1: PROCESS
BEGIN
	avs_pullSpike_byteenable(1) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_byteenable(1) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_byteenable(1) <= '0';
	WAIT FOR 40000 ps;
	avs_pullSpike_byteenable(1) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_byteenable(1) <= '0';
	WAIT FOR 30000 ps;
	avs_pullSpike_byteenable(1) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_byteenable(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_byteenable_1;
-- avs_pullSpike_byteenable[0]
t_prcs_avs_pullSpike_byteenable_0: PROCESS
BEGIN
	avs_pullSpike_byteenable(0) <= '0';
	WAIT FOR 170000 ps;
	avs_pullSpike_byteenable(0) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_byteenable(0) <= '0';
	WAIT FOR 40000 ps;
	avs_pullSpike_byteenable(0) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSpike_byteenable(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSpike_byteenable_0;

-- avm_pushSynapse_waitrequest
t_prcs_avm_pushSynapse_waitrequest: PROCESS
BEGIN
	avm_pushSynapse_waitrequest <= '0';
WAIT;
END PROCESS t_prcs_avm_pushSynapse_waitrequest;
END synapse_module_arch;
