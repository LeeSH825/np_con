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
-- Generated on "03/29/2022 23:58:52"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          STDP_reg_module
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY STDP_reg_module_vhd_vec_tst IS
END STDP_reg_module_vhd_vec_tst;
ARCHITECTURE STDP_reg_module_arch OF STDP_reg_module_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_STDP_reg_module : STD_LOGIC;
SIGNAL dbg_cal : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL dbg_cal_en : STD_LOGIC;
SIGNAL dbg_cal_fin : STD_LOGIC;
SIGNAL dbg_cal_sig : STD_LOGIC;
SIGNAL IDX_POST : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL IDX_PRE : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL popWeightDATA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pushPOSTneuron : STD_LOGIC;
SIGNAL pushPOSTneuronDATA : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL pushPREneuron : STD_LOGIC;
SIGNAL pushPREneuronDATA : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL requestWeight : STD_LOGIC;
SIGNAL rst_STDP_reg_module : STD_LOGIC;
SIGNAL wait_CAL : STD_LOGIC;
COMPONENT STDP_reg_module
	PORT (
	clk_STDP_reg_module : IN STD_LOGIC;
	dbg_cal : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	dbg_cal_en : OUT STD_LOGIC;
	dbg_cal_fin : OUT STD_LOGIC;
	dbg_cal_sig : OUT STD_LOGIC;
	IDX_POST : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	IDX_PRE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	popWeightDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pushPOSTneuron : IN STD_LOGIC;
	pushPOSTneuronDATA : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	pushPREneuron : IN STD_LOGIC;
	pushPREneuronDATA : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	requestWeight : IN STD_LOGIC;
	rst_STDP_reg_module : IN STD_LOGIC;
	wait_CAL : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : STDP_reg_module
	PORT MAP (
-- list connections between master ports and signals
	clk_STDP_reg_module => clk_STDP_reg_module,
	dbg_cal => dbg_cal,
	dbg_cal_en => dbg_cal_en,
	dbg_cal_fin => dbg_cal_fin,
	dbg_cal_sig => dbg_cal_sig,
	IDX_POST => IDX_POST,
	IDX_PRE => IDX_PRE,
	popWeightDATA => popWeightDATA,
	pushPOSTneuron => pushPOSTneuron,
	pushPOSTneuronDATA => pushPOSTneuronDATA,
	pushPREneuron => pushPREneuron,
	pushPREneuronDATA => pushPREneuronDATA,
	requestWeight => requestWeight,
	rst_STDP_reg_module => rst_STDP_reg_module,
	wait_CAL => wait_CAL
	);

-- clk_STDP_reg_module
t_prcs_clk_STDP_reg_module: PROCESS
BEGIN
	clk_STDP_reg_module <= '1';
	WAIT FOR 5000 ps;
	FOR i IN 1 TO 99
	LOOP
		clk_STDP_reg_module <= '0';
		WAIT FOR 5000 ps;
		clk_STDP_reg_module <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	clk_STDP_reg_module <= '0';
WAIT;
END PROCESS t_prcs_clk_STDP_reg_module;

-- rst_STDP_reg_module
t_prcs_rst_STDP_reg_module: PROCESS
BEGIN
	rst_STDP_reg_module <= '0';
	WAIT FOR 20000 ps;
	rst_STDP_reg_module <= '1';
	WAIT FOR 10000 ps;
	rst_STDP_reg_module <= '0';
	WAIT FOR 480000 ps;
	rst_STDP_reg_module <= '1';
	WAIT FOR 10000 ps;
	rst_STDP_reg_module <= '0';
WAIT;
END PROCESS t_prcs_rst_STDP_reg_module;

-- pushPREneuron
t_prcs_pushPREneuron: PROCESS
BEGIN
	pushPREneuron <= '0';
	WAIT FOR 70000 ps;
	pushPREneuron <= '1';
	WAIT FOR 10000 ps;
	pushPREneuron <= '0';
	WAIT FOR 70000 ps;
	pushPREneuron <= '1';
	WAIT FOR 10000 ps;
	pushPREneuron <= '0';
	WAIT FOR 50000 ps;
	pushPREneuron <= '1';
	WAIT FOR 10000 ps;
	pushPREneuron <= '0';
	WAIT FOR 80000 ps;
	pushPREneuron <= '1';
	WAIT FOR 10000 ps;
	pushPREneuron <= '0';
WAIT;
END PROCESS t_prcs_pushPREneuron;
-- pushPREneuronDATA[9]
t_prcs_pushPREneuronDATA_9: PROCESS
BEGIN
	pushPREneuronDATA(9) <= '0';
WAIT;
END PROCESS t_prcs_pushPREneuronDATA_9;
-- pushPREneuronDATA[8]
t_prcs_pushPREneuronDATA_8: PROCESS
BEGIN
	pushPREneuronDATA(8) <= '0';
WAIT;
END PROCESS t_prcs_pushPREneuronDATA_8;
-- pushPREneuronDATA[7]
t_prcs_pushPREneuronDATA_7: PROCESS
BEGIN
	pushPREneuronDATA(7) <= '0';
WAIT;
END PROCESS t_prcs_pushPREneuronDATA_7;
-- pushPREneuronDATA[6]
t_prcs_pushPREneuronDATA_6: PROCESS
BEGIN
	pushPREneuronDATA(6) <= '0';
WAIT;
END PROCESS t_prcs_pushPREneuronDATA_6;
-- pushPREneuronDATA[5]
t_prcs_pushPREneuronDATA_5: PROCESS
BEGIN
	pushPREneuronDATA(5) <= '0';
WAIT;
END PROCESS t_prcs_pushPREneuronDATA_5;
-- pushPREneuronDATA[4]
t_prcs_pushPREneuronDATA_4: PROCESS
BEGIN
	pushPREneuronDATA(4) <= '0';
WAIT;
END PROCESS t_prcs_pushPREneuronDATA_4;
-- pushPREneuronDATA[3]
t_prcs_pushPREneuronDATA_3: PROCESS
BEGIN
	pushPREneuronDATA(3) <= '0';
WAIT;
END PROCESS t_prcs_pushPREneuronDATA_3;
-- pushPREneuronDATA[2]
t_prcs_pushPREneuronDATA_2: PROCESS
BEGIN
	pushPREneuronDATA(2) <= '0';
WAIT;
END PROCESS t_prcs_pushPREneuronDATA_2;
-- pushPREneuronDATA[1]
t_prcs_pushPREneuronDATA_1: PROCESS
BEGIN
	pushPREneuronDATA(1) <= '0';
	WAIT FOR 150000 ps;
	pushPREneuronDATA(1) <= '1';
	WAIT FOR 10000 ps;
	pushPREneuronDATA(1) <= '0';
	WAIT FOR 50000 ps;
	pushPREneuronDATA(1) <= '1';
	WAIT FOR 10000 ps;
	pushPREneuronDATA(1) <= '0';
WAIT;
END PROCESS t_prcs_pushPREneuronDATA_1;
-- pushPREneuronDATA[0]
t_prcs_pushPREneuronDATA_0: PROCESS
BEGIN
	pushPREneuronDATA(0) <= '0';
	WAIT FOR 70000 ps;
	pushPREneuronDATA(0) <= '1';
	WAIT FOR 10000 ps;
	pushPREneuronDATA(0) <= '0';
	WAIT FOR 220000 ps;
	pushPREneuronDATA(0) <= '1';
	WAIT FOR 10000 ps;
	pushPREneuronDATA(0) <= '0';
WAIT;
END PROCESS t_prcs_pushPREneuronDATA_0;

-- pushPOSTneuron
t_prcs_pushPOSTneuron: PROCESS
BEGIN
	pushPOSTneuron <= '0';
	WAIT FOR 120000 ps;
	pushPOSTneuron <= '1';
	WAIT FOR 10000 ps;
	pushPOSTneuron <= '0';
	WAIT FOR 50000 ps;
	pushPOSTneuron <= '1';
	WAIT FOR 10000 ps;
	pushPOSTneuron <= '0';
	WAIT FOR 30000 ps;
	pushPOSTneuron <= '1';
	WAIT FOR 10000 ps;
	pushPOSTneuron <= '0';
	WAIT FOR 40000 ps;
	pushPOSTneuron <= '1';
	WAIT FOR 10000 ps;
	pushPOSTneuron <= '0';
WAIT;
END PROCESS t_prcs_pushPOSTneuron;
-- pushPOSTneuronDATA[9]
t_prcs_pushPOSTneuronDATA_9: PROCESS
BEGIN
	pushPOSTneuronDATA(9) <= '0';
WAIT;
END PROCESS t_prcs_pushPOSTneuronDATA_9;
-- pushPOSTneuronDATA[8]
t_prcs_pushPOSTneuronDATA_8: PROCESS
BEGIN
	pushPOSTneuronDATA(8) <= '0';
WAIT;
END PROCESS t_prcs_pushPOSTneuronDATA_8;
-- pushPOSTneuronDATA[7]
t_prcs_pushPOSTneuronDATA_7: PROCESS
BEGIN
	pushPOSTneuronDATA(7) <= '0';
WAIT;
END PROCESS t_prcs_pushPOSTneuronDATA_7;
-- pushPOSTneuronDATA[6]
t_prcs_pushPOSTneuronDATA_6: PROCESS
BEGIN
	pushPOSTneuronDATA(6) <= '0';
WAIT;
END PROCESS t_prcs_pushPOSTneuronDATA_6;
-- pushPOSTneuronDATA[5]
t_prcs_pushPOSTneuronDATA_5: PROCESS
BEGIN
	pushPOSTneuronDATA(5) <= '0';
WAIT;
END PROCESS t_prcs_pushPOSTneuronDATA_5;
-- pushPOSTneuronDATA[4]
t_prcs_pushPOSTneuronDATA_4: PROCESS
BEGIN
	pushPOSTneuronDATA(4) <= '0';
WAIT;
END PROCESS t_prcs_pushPOSTneuronDATA_4;
-- pushPOSTneuronDATA[3]
t_prcs_pushPOSTneuronDATA_3: PROCESS
BEGIN
	pushPOSTneuronDATA(3) <= '0';
WAIT;
END PROCESS t_prcs_pushPOSTneuronDATA_3;
-- pushPOSTneuronDATA[2]
t_prcs_pushPOSTneuronDATA_2: PROCESS
BEGIN
	pushPOSTneuronDATA(2) <= '0';
	WAIT FOR 220000 ps;
	pushPOSTneuronDATA(2) <= '1';
	WAIT FOR 10000 ps;
	pushPOSTneuronDATA(2) <= '0';
WAIT;
END PROCESS t_prcs_pushPOSTneuronDATA_2;
-- pushPOSTneuronDATA[1]
t_prcs_pushPOSTneuronDATA_1: PROCESS
BEGIN
	pushPOSTneuronDATA(1) <= '0';
	WAIT FOR 120000 ps;
	pushPOSTneuronDATA(1) <= '1';
	WAIT FOR 10000 ps;
	pushPOSTneuronDATA(1) <= '0';
	WAIT FOR 140000 ps;
	pushPOSTneuronDATA(1) <= '1';
	WAIT FOR 10000 ps;
	pushPOSTneuronDATA(1) <= '0';
WAIT;
END PROCESS t_prcs_pushPOSTneuronDATA_1;
-- pushPOSTneuronDATA[0]
t_prcs_pushPOSTneuronDATA_0: PROCESS
BEGIN
	pushPOSTneuronDATA(0) <= '0';
	WAIT FOR 180000 ps;
	pushPOSTneuronDATA(0) <= '1';
	WAIT FOR 10000 ps;
	pushPOSTneuronDATA(0) <= '0';
	WAIT FOR 80000 ps;
	pushPOSTneuronDATA(0) <= '1';
	WAIT FOR 10000 ps;
	pushPOSTneuronDATA(0) <= '0';
WAIT;
END PROCESS t_prcs_pushPOSTneuronDATA_0;

-- requestWeight
t_prcs_requestWeight: PROCESS
BEGIN
	requestWeight <= '1';
WAIT;
END PROCESS t_prcs_requestWeight;
END STDP_reg_module_arch;
