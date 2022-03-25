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
-- Generated on "03/14/2022 17:40:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          simpe_synapse_sm
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY simpe_synapse_sm_vhd_vec_tst IS
END simpe_synapse_sm_vhd_vec_tst;
ARCHITECTURE simpe_synapse_sm_arch OF simpe_synapse_sm_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL avm_pushSynapse_address : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL avm_pushSynapse_waitrequest : STD_LOGIC;
SIGNAL avm_pushSynapse_write : STD_LOGIC;
SIGNAL avm_pushSynapse_writedata : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL avs_broadcastSpike_address : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL avs_broadcastSpike_waitrequest : STD_LOGIC;
SIGNAL avs_broadcastSpike_write : STD_LOGIC;
SIGNAL avs_broadcastSpike_writedata : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT simpe_synapse_sm
	PORT (
	avm_pushSynapse_address : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	avm_pushSynapse_waitrequest : IN STD_LOGIC;
	avm_pushSynapse_write : OUT STD_LOGIC;
	avm_pushSynapse_writedata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	avs_broadcastSpike_address : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	avs_broadcastSpike_waitrequest : OUT STD_LOGIC;
	avs_broadcastSpike_write : IN STD_LOGIC;
	avs_broadcastSpike_writedata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : simpe_synapse_sm
	PORT MAP (
-- list connections between master ports and signals
	avm_pushSynapse_address => avm_pushSynapse_address,
	avm_pushSynapse_waitrequest => avm_pushSynapse_waitrequest,
	avm_pushSynapse_write => avm_pushSynapse_write,
	avm_pushSynapse_writedata => avm_pushSynapse_writedata,
	avs_broadcastSpike_address => avs_broadcastSpike_address,
	avs_broadcastSpike_waitrequest => avs_broadcastSpike_waitrequest,
	avs_broadcastSpike_write => avs_broadcastSpike_write,
	avs_broadcastSpike_writedata => avs_broadcastSpike_writedata,
	clk => clk,
	rst => rst
	);

-- avm_pushSynapse_waitrequest
t_prcs_avm_pushSynapse_waitrequest: PROCESS
BEGIN
	avm_pushSynapse_waitrequest <= '0';
WAIT;
END PROCESS t_prcs_avm_pushSynapse_waitrequest;

-- avs_broadcastSpike_write
t_prcs_avs_broadcastSpike_write: PROCESS
BEGIN
	avs_broadcastSpike_write <= '0';
	WAIT FOR 70000 ps;
	avs_broadcastSpike_write <= '1';
	WAIT FOR 10000 ps;
	avs_broadcastSpike_write <= '0';
WAIT;
END PROCESS t_prcs_avs_broadcastSpike_write;
-- avs_broadcastSpike_writedata[7]
t_prcs_avs_broadcastSpike_writedata_7: PROCESS
BEGIN
	avs_broadcastSpike_writedata(7) <= '0';
WAIT;
END PROCESS t_prcs_avs_broadcastSpike_writedata_7;
-- avs_broadcastSpike_writedata[6]
t_prcs_avs_broadcastSpike_writedata_6: PROCESS
BEGIN
	avs_broadcastSpike_writedata(6) <= '0';
WAIT;
END PROCESS t_prcs_avs_broadcastSpike_writedata_6;
-- avs_broadcastSpike_writedata[5]
t_prcs_avs_broadcastSpike_writedata_5: PROCESS
BEGIN
	avs_broadcastSpike_writedata(5) <= '0';
WAIT;
END PROCESS t_prcs_avs_broadcastSpike_writedata_5;
-- avs_broadcastSpike_writedata[4]
t_prcs_avs_broadcastSpike_writedata_4: PROCESS
BEGIN
	avs_broadcastSpike_writedata(4) <= '0';
WAIT;
END PROCESS t_prcs_avs_broadcastSpike_writedata_4;
-- avs_broadcastSpike_writedata[3]
t_prcs_avs_broadcastSpike_writedata_3: PROCESS
BEGIN
	avs_broadcastSpike_writedata(3) <= '0';
WAIT;
END PROCESS t_prcs_avs_broadcastSpike_writedata_3;
-- avs_broadcastSpike_writedata[2]
t_prcs_avs_broadcastSpike_writedata_2: PROCESS
BEGIN
	avs_broadcastSpike_writedata(2) <= '0';
WAIT;
END PROCESS t_prcs_avs_broadcastSpike_writedata_2;
-- avs_broadcastSpike_writedata[1]
t_prcs_avs_broadcastSpike_writedata_1: PROCESS
BEGIN
	avs_broadcastSpike_writedata(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_broadcastSpike_writedata_1;
-- avs_broadcastSpike_writedata[0]
t_prcs_avs_broadcastSpike_writedata_0: PROCESS
BEGIN
	avs_broadcastSpike_writedata(0) <= '0';
	WAIT FOR 70000 ps;
	avs_broadcastSpike_writedata(0) <= '1';
	WAIT FOR 10000 ps;
	avs_broadcastSpike_writedata(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_broadcastSpike_writedata_0;

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
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 20000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END simpe_synapse_sm_arch;
