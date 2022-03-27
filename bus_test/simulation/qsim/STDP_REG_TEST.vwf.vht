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
-- Generated on "03/25/2022 17:29:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          shift_reg_post_add
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY shift_reg_post_add_vhd_vec_tst IS
END shift_reg_post_add_vhd_vec_tst;
ARCHITECTURE shift_reg_post_add_arch OF shift_reg_post_add_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL STDP_DATAIN_POST_FIFO : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL STDP_DATAIN_PRE_FIFO : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL STDP_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL STDP_patchPOSTneuron : STD_LOGIC;
SIGNAL STDP_patchPREneuron : STD_LOGIC;
SIGNAL synapsePush : STD_LOGIC;
SIGNAL sys_clk : STD_LOGIC;
SIGNAL sys_rst : STD_LOGIC;
COMPONENT shift_reg_post_add
	PORT (
	STDP_DATAIN_POST_FIFO : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	STDP_DATAIN_PRE_FIFO : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	STDP_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	STDP_patchPOSTneuron : IN STD_LOGIC;
	STDP_patchPREneuron : IN STD_LOGIC;
	synapsePush : IN STD_LOGIC;
	sys_clk : IN STD_LOGIC;
	sys_rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : shift_reg_post_add
	PORT MAP (
-- list connections between master ports and signals
	STDP_DATAIN_POST_FIFO => STDP_DATAIN_POST_FIFO,
	STDP_DATAIN_PRE_FIFO => STDP_DATAIN_PRE_FIFO,
	STDP_OUT => STDP_OUT,
	STDP_patchPOSTneuron => STDP_patchPOSTneuron,
	STDP_patchPREneuron => STDP_patchPREneuron,
	synapsePush => synapsePush,
	sys_clk => sys_clk,
	sys_rst => sys_rst
	);

-- sys_clk
t_prcs_sys_clk: PROCESS
BEGIN
LOOP
	sys_clk <= '0';
	WAIT FOR 5000 ps;
	sys_clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sys_clk;

-- sys_rst
t_prcs_sys_rst: PROCESS
BEGIN
	sys_rst <= '0';
	WAIT FOR 10000 ps;
	sys_rst <= '1';
	WAIT FOR 10000 ps;
	sys_rst <= '0';
	WAIT FOR 270000 ps;
	sys_rst <= '1';
	WAIT FOR 10000 ps;
	sys_rst <= '0';
WAIT;
END PROCESS t_prcs_sys_rst;

-- STDP_patchPREneuron
t_prcs_STDP_patchPREneuron: PROCESS
BEGIN
	STDP_patchPREneuron <= '0';
	WAIT FOR 40000 ps;
	STDP_patchPREneuron <= '1';
	WAIT FOR 10000 ps;
	STDP_patchPREneuron <= '0';
	WAIT FOR 30000 ps;
	STDP_patchPREneuron <= '1';
	WAIT FOR 10000 ps;
	STDP_patchPREneuron <= '0';
	WAIT FOR 30000 ps;
	STDP_patchPREneuron <= '1';
	WAIT FOR 10000 ps;
	STDP_patchPREneuron <= '0';
	WAIT FOR 40000 ps;
	STDP_patchPREneuron <= '1';
	WAIT FOR 10000 ps;
	STDP_patchPREneuron <= '0';
WAIT;
END PROCESS t_prcs_STDP_patchPREneuron;
-- STDP_DATAIN_PRE_FIFO[7]
t_prcs_STDP_DATAIN_PRE_FIFO_7: PROCESS
BEGIN
	STDP_DATAIN_PRE_FIFO(7) <= '0';
WAIT;
END PROCESS t_prcs_STDP_DATAIN_PRE_FIFO_7;
-- STDP_DATAIN_PRE_FIFO[6]
t_prcs_STDP_DATAIN_PRE_FIFO_6: PROCESS
BEGIN
	STDP_DATAIN_PRE_FIFO(6) <= '0';
WAIT;
END PROCESS t_prcs_STDP_DATAIN_PRE_FIFO_6;
-- STDP_DATAIN_PRE_FIFO[5]
t_prcs_STDP_DATAIN_PRE_FIFO_5: PROCESS
BEGIN
	STDP_DATAIN_PRE_FIFO(5) <= '0';
WAIT;
END PROCESS t_prcs_STDP_DATAIN_PRE_FIFO_5;
-- STDP_DATAIN_PRE_FIFO[4]
t_prcs_STDP_DATAIN_PRE_FIFO_4: PROCESS
BEGIN
	STDP_DATAIN_PRE_FIFO(4) <= '0';
	WAIT FOR 170000 ps;
	STDP_DATAIN_PRE_FIFO(4) <= '1';
	WAIT FOR 10000 ps;
	STDP_DATAIN_PRE_FIFO(4) <= '0';
WAIT;
END PROCESS t_prcs_STDP_DATAIN_PRE_FIFO_4;
-- STDP_DATAIN_PRE_FIFO[3]
t_prcs_STDP_DATAIN_PRE_FIFO_3: PROCESS
BEGIN
	STDP_DATAIN_PRE_FIFO(3) <= '0';
WAIT;
END PROCESS t_prcs_STDP_DATAIN_PRE_FIFO_3;
-- STDP_DATAIN_PRE_FIFO[2]
t_prcs_STDP_DATAIN_PRE_FIFO_2: PROCESS
BEGIN
	STDP_DATAIN_PRE_FIFO(2) <= '0';
WAIT;
END PROCESS t_prcs_STDP_DATAIN_PRE_FIFO_2;
-- STDP_DATAIN_PRE_FIFO[1]
t_prcs_STDP_DATAIN_PRE_FIFO_1: PROCESS
BEGIN
	STDP_DATAIN_PRE_FIFO(1) <= '0';
	WAIT FOR 80000 ps;
	STDP_DATAIN_PRE_FIFO(1) <= '1';
	WAIT FOR 10000 ps;
	STDP_DATAIN_PRE_FIFO(1) <= '0';
	WAIT FOR 30000 ps;
	STDP_DATAIN_PRE_FIFO(1) <= '1';
	WAIT FOR 10000 ps;
	STDP_DATAIN_PRE_FIFO(1) <= '0';
WAIT;
END PROCESS t_prcs_STDP_DATAIN_PRE_FIFO_1;
-- STDP_DATAIN_PRE_FIFO[0]
t_prcs_STDP_DATAIN_PRE_FIFO_0: PROCESS
BEGIN
	STDP_DATAIN_PRE_FIFO(0) <= '0';
	WAIT FOR 40000 ps;
	STDP_DATAIN_PRE_FIFO(0) <= '1';
	WAIT FOR 10000 ps;
	STDP_DATAIN_PRE_FIFO(0) <= '0';
	WAIT FOR 70000 ps;
	STDP_DATAIN_PRE_FIFO(0) <= '1';
	WAIT FOR 10000 ps;
	STDP_DATAIN_PRE_FIFO(0) <= '0';
WAIT;
END PROCESS t_prcs_STDP_DATAIN_PRE_FIFO_0;

-- STDP_patchPOSTneuron
t_prcs_STDP_patchPOSTneuron: PROCESS
BEGIN
	STDP_patchPOSTneuron <= '0';
	WAIT FOR 70000 ps;
	STDP_patchPOSTneuron <= '1';
	WAIT FOR 10000 ps;
	STDP_patchPOSTneuron <= '0';
	WAIT FOR 30000 ps;
	STDP_patchPOSTneuron <= '1';
	WAIT FOR 10000 ps;
	STDP_patchPOSTneuron <= '0';
	WAIT FOR 30000 ps;
	STDP_patchPOSTneuron <= '1';
	WAIT FOR 10000 ps;
	STDP_patchPOSTneuron <= '0';
WAIT;
END PROCESS t_prcs_STDP_patchPOSTneuron;
-- STDP_DATAIN_POST_FIFO[7]
t_prcs_STDP_DATAIN_POST_FIFO_7: PROCESS
BEGIN
	STDP_DATAIN_POST_FIFO(7) <= '0';
WAIT;
END PROCESS t_prcs_STDP_DATAIN_POST_FIFO_7;
-- STDP_DATAIN_POST_FIFO[6]
t_prcs_STDP_DATAIN_POST_FIFO_6: PROCESS
BEGIN
	STDP_DATAIN_POST_FIFO(6) <= '0';
WAIT;
END PROCESS t_prcs_STDP_DATAIN_POST_FIFO_6;
-- STDP_DATAIN_POST_FIFO[5]
t_prcs_STDP_DATAIN_POST_FIFO_5: PROCESS
BEGIN
	STDP_DATAIN_POST_FIFO(5) <= '0';
WAIT;
END PROCESS t_prcs_STDP_DATAIN_POST_FIFO_5;
-- STDP_DATAIN_POST_FIFO[4]
t_prcs_STDP_DATAIN_POST_FIFO_4: PROCESS
BEGIN
	STDP_DATAIN_POST_FIFO(4) <= '0';
WAIT;
END PROCESS t_prcs_STDP_DATAIN_POST_FIFO_4;
-- STDP_DATAIN_POST_FIFO[3]
t_prcs_STDP_DATAIN_POST_FIFO_3: PROCESS
BEGIN
	STDP_DATAIN_POST_FIFO(3) <= '0';
WAIT;
END PROCESS t_prcs_STDP_DATAIN_POST_FIFO_3;
-- STDP_DATAIN_POST_FIFO[2]
t_prcs_STDP_DATAIN_POST_FIFO_2: PROCESS
BEGIN
	STDP_DATAIN_POST_FIFO(2) <= '0';
	WAIT FOR 150000 ps;
	STDP_DATAIN_POST_FIFO(2) <= '1';
	WAIT FOR 10000 ps;
	STDP_DATAIN_POST_FIFO(2) <= '0';
WAIT;
END PROCESS t_prcs_STDP_DATAIN_POST_FIFO_2;
-- STDP_DATAIN_POST_FIFO[1]
t_prcs_STDP_DATAIN_POST_FIFO_1: PROCESS
BEGIN
	STDP_DATAIN_POST_FIFO(1) <= '0';
	WAIT FOR 110000 ps;
	STDP_DATAIN_POST_FIFO(1) <= '1';
	WAIT FOR 10000 ps;
	STDP_DATAIN_POST_FIFO(1) <= '0';
WAIT;
END PROCESS t_prcs_STDP_DATAIN_POST_FIFO_1;
-- STDP_DATAIN_POST_FIFO[0]
t_prcs_STDP_DATAIN_POST_FIFO_0: PROCESS
BEGIN
	STDP_DATAIN_POST_FIFO(0) <= '0';
	WAIT FOR 70000 ps;
	STDP_DATAIN_POST_FIFO(0) <= '1';
	WAIT FOR 10000 ps;
	STDP_DATAIN_POST_FIFO(0) <= '0';
WAIT;
END PROCESS t_prcs_STDP_DATAIN_POST_FIFO_0;

-- synapsePush
t_prcs_synapsePush: PROCESS
BEGIN
	synapsePush <= '0';
	WAIT FOR 240000 ps;
	synapsePush <= '1';
	WAIT FOR 20000 ps;
	synapsePush <= '0';
WAIT;
END PROCESS t_prcs_synapsePush;
END shift_reg_post_add_arch;
