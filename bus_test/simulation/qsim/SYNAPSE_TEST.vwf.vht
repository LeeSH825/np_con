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
-- Generated on "03/29/2022 00:15:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Synapse_Unit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Synapse_Unit_vhd_vec_tst IS
END Synapse_Unit_vhd_vec_tst;
ARCHITECTURE Synapse_Unit_arch OF Synapse_Unit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL avs_initSynapse_byteenable : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL avs_initSynapse_response : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL avs_initSynapse_waitrequest : STD_LOGIC;
SIGNAL avs_initSynapse_write : STD_LOGIC;
SIGNAL avs_initSynapse_writedata : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk_synapse_unit : STD_LOGIC;
SIGNAL dbg_active : STD_LOGIC;
SIGNAL rst_synapse_unit : STD_LOGIC;
COMPONENT Synapse_Unit
	PORT (
	avs_initSynapse_byteenable : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	avs_initSynapse_response : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	avs_initSynapse_waitrequest : OUT STD_LOGIC;
	avs_initSynapse_write : IN STD_LOGIC;
	avs_initSynapse_writedata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk_synapse_unit : IN STD_LOGIC;
	dbg_active : OUT STD_LOGIC;
	rst_synapse_unit : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Synapse_Unit
	PORT MAP (
-- list connections between master ports and signals
	avs_initSynapse_byteenable => avs_initSynapse_byteenable,
	avs_initSynapse_response => avs_initSynapse_response,
	avs_initSynapse_waitrequest => avs_initSynapse_waitrequest,
	avs_initSynapse_write => avs_initSynapse_write,
	avs_initSynapse_writedata => avs_initSynapse_writedata,
	clk_synapse_unit => clk_synapse_unit,
	dbg_active => dbg_active,
	rst_synapse_unit => rst_synapse_unit
	);

-- clk_synapse_unit
t_prcs_clk_synapse_unit: PROCESS
BEGIN
LOOP
	clk_synapse_unit <= '0';
	WAIT FOR 5000 ps;
	clk_synapse_unit <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_synapse_unit;

-- rst_synapse_unit
t_prcs_rst_synapse_unit: PROCESS
BEGIN
	rst_synapse_unit <= '0';
	WAIT FOR 40000 ps;
	rst_synapse_unit <= '1';
	WAIT FOR 10000 ps;
	rst_synapse_unit <= '0';
WAIT;
END PROCESS t_prcs_rst_synapse_unit;

-- avs_initSynapse_write
t_prcs_avs_initSynapse_write: PROCESS
BEGIN
	avs_initSynapse_write <= '0';
WAIT;
END PROCESS t_prcs_avs_initSynapse_write;
-- avs_initSynapse_byteenable[1]
t_prcs_avs_initSynapse_byteenable_1: PROCESS
BEGIN
	avs_initSynapse_byteenable(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_initSynapse_byteenable_1;
-- avs_initSynapse_byteenable[0]
t_prcs_avs_initSynapse_byteenable_0: PROCESS
BEGIN
	avs_initSynapse_byteenable(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_initSynapse_byteenable_0;
-- avs_initSynapse_writedata[7]
t_prcs_avs_initSynapse_writedata_7: PROCESS
BEGIN
	avs_initSynapse_writedata(7) <= '0';
WAIT;
END PROCESS t_prcs_avs_initSynapse_writedata_7;
-- avs_initSynapse_writedata[6]
t_prcs_avs_initSynapse_writedata_6: PROCESS
BEGIN
	avs_initSynapse_writedata(6) <= '0';
WAIT;
END PROCESS t_prcs_avs_initSynapse_writedata_6;
-- avs_initSynapse_writedata[5]
t_prcs_avs_initSynapse_writedata_5: PROCESS
BEGIN
	avs_initSynapse_writedata(5) <= '0';
WAIT;
END PROCESS t_prcs_avs_initSynapse_writedata_5;
-- avs_initSynapse_writedata[4]
t_prcs_avs_initSynapse_writedata_4: PROCESS
BEGIN
	avs_initSynapse_writedata(4) <= '0';
WAIT;
END PROCESS t_prcs_avs_initSynapse_writedata_4;
-- avs_initSynapse_writedata[3]
t_prcs_avs_initSynapse_writedata_3: PROCESS
BEGIN
	avs_initSynapse_writedata(3) <= '0';
WAIT;
END PROCESS t_prcs_avs_initSynapse_writedata_3;
-- avs_initSynapse_writedata[2]
t_prcs_avs_initSynapse_writedata_2: PROCESS
BEGIN
	avs_initSynapse_writedata(2) <= '0';
WAIT;
END PROCESS t_prcs_avs_initSynapse_writedata_2;
-- avs_initSynapse_writedata[1]
t_prcs_avs_initSynapse_writedata_1: PROCESS
BEGIN
	avs_initSynapse_writedata(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_initSynapse_writedata_1;
-- avs_initSynapse_writedata[0]
t_prcs_avs_initSynapse_writedata_0: PROCESS
BEGIN
	avs_initSynapse_writedata(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_initSynapse_writedata_0;
END Synapse_Unit_arch;
