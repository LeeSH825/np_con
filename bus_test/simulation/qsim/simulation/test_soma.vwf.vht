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
-- Generated on "03/06/2022 20:09:13"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          simple_soma_sm
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY simple_soma_sm_vhd_vec_tst IS
END simple_soma_sm_vhd_vec_tst;
ARCHITECTURE simple_soma_sm_arch OF simple_soma_sm_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL avm_pushSpike_address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL avm_pushSpike_response : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL avm_pushSpike_waitrequest : STD_LOGIC;
SIGNAL avm_pushSpike_write : STD_LOGIC;
SIGNAL avm_pushSpike_writedata : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL avs_pullSynapse_address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL avs_pullSynapse_write : STD_LOGIC;
SIGNAL avs_pullSynapse_writedata : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT simple_soma_sm
	PORT (
	avm_pushSpike_address : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	avm_pushSpike_response : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	avm_pushSpike_waitrequest : IN STD_LOGIC;
	avm_pushSpike_write : OUT STD_LOGIC;
	avm_pushSpike_writedata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	avs_pullSynapse_address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	avs_pullSynapse_write : IN STD_LOGIC;
	avs_pullSynapse_writedata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : simple_soma_sm
	PORT MAP (
-- list connections between master ports and signals
	avm_pushSpike_address => avm_pushSpike_address,
	avm_pushSpike_response => avm_pushSpike_response,
	avm_pushSpike_waitrequest => avm_pushSpike_waitrequest,
	avm_pushSpike_write => avm_pushSpike_write,
	avm_pushSpike_writedata => avm_pushSpike_writedata,
	avs_pullSynapse_address => avs_pullSynapse_address,
	avs_pullSynapse_write => avs_pullSynapse_write,
	avs_pullSynapse_writedata => avs_pullSynapse_writedata,
	clk => clk,
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
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
-- avm_pushSpike_response[1]
t_prcs_avm_pushSpike_response_1: PROCESS
BEGIN
	avm_pushSpike_response(1) <= '0';
WAIT;
END PROCESS t_prcs_avm_pushSpike_response_1;
-- avm_pushSpike_response[0]
t_prcs_avm_pushSpike_response_0: PROCESS
BEGIN
	avm_pushSpike_response(0) <= '0';
WAIT;
END PROCESS t_prcs_avm_pushSpike_response_0;

-- avm_pushSpike_waitrequest
t_prcs_avm_pushSpike_waitrequest: PROCESS
BEGIN
	avm_pushSpike_waitrequest <= '0';
WAIT;
END PROCESS t_prcs_avm_pushSpike_waitrequest;
-- avs_pullSynapse_address[7]
t_prcs_avs_pullSynapse_address_7: PROCESS
BEGIN
	avs_pullSynapse_address(7) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_address_7;
-- avs_pullSynapse_address[6]
t_prcs_avs_pullSynapse_address_6: PROCESS
BEGIN
	avs_pullSynapse_address(6) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_address_6;
-- avs_pullSynapse_address[5]
t_prcs_avs_pullSynapse_address_5: PROCESS
BEGIN
	avs_pullSynapse_address(5) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_address_5;
-- avs_pullSynapse_address[4]
t_prcs_avs_pullSynapse_address_4: PROCESS
BEGIN
	avs_pullSynapse_address(4) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_address_4;
-- avs_pullSynapse_address[3]
t_prcs_avs_pullSynapse_address_3: PROCESS
BEGIN
	avs_pullSynapse_address(3) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_address_3;
-- avs_pullSynapse_address[2]
t_prcs_avs_pullSynapse_address_2: PROCESS
BEGIN
	avs_pullSynapse_address(2) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_address_2;
-- avs_pullSynapse_address[1]
t_prcs_avs_pullSynapse_address_1: PROCESS
BEGIN
	avs_pullSynapse_address(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_address_1;
-- avs_pullSynapse_address[0]
t_prcs_avs_pullSynapse_address_0: PROCESS
BEGIN
	avs_pullSynapse_address(0) <= '0';
	WAIT FOR 30000 ps;
	avs_pullSynapse_address(0) <= '1';
	WAIT FOR 20000 ps;
	avs_pullSynapse_address(0) <= '0';
	WAIT FOR 20000 ps;
	avs_pullSynapse_address(0) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSynapse_address(0) <= '0';
	WAIT FOR 20000 ps;
	avs_pullSynapse_address(0) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSynapse_address(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_address_0;

-- avs_pullSynapse_write
t_prcs_avs_pullSynapse_write: PROCESS
BEGIN
	avs_pullSynapse_write <= '0';
	WAIT FOR 30000 ps;
	avs_pullSynapse_write <= '1';
	WAIT FOR 20000 ps;
	avs_pullSynapse_write <= '0';
	WAIT FOR 20000 ps;
	avs_pullSynapse_write <= '1';
	WAIT FOR 10000 ps;
	avs_pullSynapse_write <= '0';
	WAIT FOR 20000 ps;
	avs_pullSynapse_write <= '1';
	WAIT FOR 10000 ps;
	avs_pullSynapse_write <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_write;
-- avs_pullSynapse_writedata[7]
t_prcs_avs_pullSynapse_writedata_7: PROCESS
BEGIN
	avs_pullSynapse_writedata(7) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_7;
-- avs_pullSynapse_writedata[6]
t_prcs_avs_pullSynapse_writedata_6: PROCESS
BEGIN
	avs_pullSynapse_writedata(6) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_6;
-- avs_pullSynapse_writedata[5]
t_prcs_avs_pullSynapse_writedata_5: PROCESS
BEGIN
	avs_pullSynapse_writedata(5) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_5;
-- avs_pullSynapse_writedata[4]
t_prcs_avs_pullSynapse_writedata_4: PROCESS
BEGIN
	avs_pullSynapse_writedata(4) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_4;
-- avs_pullSynapse_writedata[3]
t_prcs_avs_pullSynapse_writedata_3: PROCESS
BEGIN
	avs_pullSynapse_writedata(3) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_3;
-- avs_pullSynapse_writedata[2]
t_prcs_avs_pullSynapse_writedata_2: PROCESS
BEGIN
	avs_pullSynapse_writedata(2) <= '0';
	WAIT FOR 30000 ps;
	avs_pullSynapse_writedata(2) <= '1';
	WAIT FOR 20000 ps;
	avs_pullSynapse_writedata(2) <= '0';
	WAIT FOR 20000 ps;
	avs_pullSynapse_writedata(2) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSynapse_writedata(2) <= '0';
	WAIT FOR 20000 ps;
	avs_pullSynapse_writedata(2) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSynapse_writedata(2) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_2;
-- avs_pullSynapse_writedata[1]
t_prcs_avs_pullSynapse_writedata_1: PROCESS
BEGIN
	avs_pullSynapse_writedata(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_1;
-- avs_pullSynapse_writedata[0]
t_prcs_avs_pullSynapse_writedata_0: PROCESS
BEGIN
	avs_pullSynapse_writedata(0) <= '0';
	WAIT FOR 30000 ps;
	avs_pullSynapse_writedata(0) <= '1';
	WAIT FOR 20000 ps;
	avs_pullSynapse_writedata(0) <= '0';
	WAIT FOR 20000 ps;
	avs_pullSynapse_writedata(0) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSynapse_writedata(0) <= '0';
	WAIT FOR 20000 ps;
	avs_pullSynapse_writedata(0) <= '1';
	WAIT FOR 10000 ps;
	avs_pullSynapse_writedata(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_0;
END simple_soma_sm_arch;
