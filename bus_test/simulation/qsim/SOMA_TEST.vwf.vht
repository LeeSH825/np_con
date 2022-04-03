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
-- Generated on "03/31/2022 17:43:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          soma
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY soma_vhd_vec_tst IS
END soma_vhd_vec_tst;
ARCHITECTURE soma_arch OF soma_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL avm_pushSpike_address : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL avm_pushSpike_byteenable : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL avm_pushSpike_waitrequest : STD_LOGIC;
SIGNAL avm_pushSpike_write : STD_LOGIC;
SIGNAL avm_pushSpike_writedata : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL avs_fetchSoma_address : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL avs_fetchSoma_waitrequest : STD_LOGIC;
SIGNAL avs_fetchSoma_write : STD_LOGIC;
SIGNAL avs_fetchSoma_writedata : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL avs_pullSynapse_address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL avs_pullSynapse_waitrequest : STD_LOGIC;
SIGNAL avs_pullSynapse_write : STD_LOGIC;
SIGNAL avs_pullSynapse_writedata : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clk_soma : STD_LOGIC;
SIGNAL dbg_ADDR : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dbg_Membrane : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL dbg_patchMembrane : STD_LOGIC;
SIGNAL dbg_TIME : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL rst_soma : STD_LOGIC;
COMPONENT soma
	PORT (
	avm_pushSpike_address : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	avm_pushSpike_byteenable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	avm_pushSpike_waitrequest : IN STD_LOGIC;
	avm_pushSpike_write : OUT STD_LOGIC;
	avm_pushSpike_writedata : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	avs_fetchSoma_address : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	avs_fetchSoma_waitrequest : OUT STD_LOGIC;
	avs_fetchSoma_write : IN STD_LOGIC;
	avs_fetchSoma_writedata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	avs_pullSynapse_address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	avs_pullSynapse_waitrequest : OUT STD_LOGIC;
	avs_pullSynapse_write : IN STD_LOGIC;
	avs_pullSynapse_writedata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	clk_soma : IN STD_LOGIC;
	dbg_ADDR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	dbg_Membrane : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	dbg_patchMembrane : OUT STD_LOGIC;
	dbg_TIME : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	rst_soma : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : soma
	PORT MAP (
-- list connections between master ports and signals
	avm_pushSpike_address => avm_pushSpike_address,
	avm_pushSpike_byteenable => avm_pushSpike_byteenable,
	avm_pushSpike_waitrequest => avm_pushSpike_waitrequest,
	avm_pushSpike_write => avm_pushSpike_write,
	avm_pushSpike_writedata => avm_pushSpike_writedata,
	avs_fetchSoma_address => avs_fetchSoma_address,
	avs_fetchSoma_waitrequest => avs_fetchSoma_waitrequest,
	avs_fetchSoma_write => avs_fetchSoma_write,
	avs_fetchSoma_writedata => avs_fetchSoma_writedata,
	avs_pullSynapse_address => avs_pullSynapse_address,
	avs_pullSynapse_waitrequest => avs_pullSynapse_waitrequest,
	avs_pullSynapse_write => avs_pullSynapse_write,
	avs_pullSynapse_writedata => avs_pullSynapse_writedata,
	clk_soma => clk_soma,
	dbg_ADDR => dbg_ADDR,
	dbg_Membrane => dbg_Membrane,
	dbg_patchMembrane => dbg_patchMembrane,
	dbg_TIME => dbg_TIME,
	rst_soma => rst_soma
	);

-- clk_soma
t_prcs_clk_soma: PROCESS
BEGIN
LOOP
	clk_soma <= '0';
	WAIT FOR 5000 ps;
	clk_soma <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_soma;

-- rst_soma
t_prcs_rst_soma: PROCESS
BEGIN
	rst_soma <= '0';
	WAIT FOR 10000 ps;
	rst_soma <= '1';
	WAIT FOR 10000 ps;
	rst_soma <= '0';
WAIT;
END PROCESS t_prcs_rst_soma;

-- avm_pushSpike_waitrequest
t_prcs_avm_pushSpike_waitrequest: PROCESS
BEGIN
	avm_pushSpike_waitrequest <= '0';
WAIT;
END PROCESS t_prcs_avm_pushSpike_waitrequest;
-- avs_fetchSoma_address[1]
t_prcs_avs_fetchSoma_address_1: PROCESS
BEGIN
	avs_fetchSoma_address(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_address_1;
-- avs_fetchSoma_address[0]
t_prcs_avs_fetchSoma_address_0: PROCESS
BEGIN
	avs_fetchSoma_address(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_address_0;

-- avs_fetchSoma_write
t_prcs_avs_fetchSoma_write: PROCESS
BEGIN
	avs_fetchSoma_write <= '0';
	WAIT FOR 30000 ps;
	avs_fetchSoma_write <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSoma_write <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_write;
-- avs_fetchSoma_writedata[15]
t_prcs_avs_fetchSoma_writedata_15: PROCESS
BEGIN
	avs_fetchSoma_writedata(15) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_writedata_15;
-- avs_fetchSoma_writedata[14]
t_prcs_avs_fetchSoma_writedata_14: PROCESS
BEGIN
	avs_fetchSoma_writedata(14) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_writedata_14;
-- avs_fetchSoma_writedata[13]
t_prcs_avs_fetchSoma_writedata_13: PROCESS
BEGIN
	avs_fetchSoma_writedata(13) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_writedata_13;
-- avs_fetchSoma_writedata[12]
t_prcs_avs_fetchSoma_writedata_12: PROCESS
BEGIN
	avs_fetchSoma_writedata(12) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_writedata_12;
-- avs_fetchSoma_writedata[11]
t_prcs_avs_fetchSoma_writedata_11: PROCESS
BEGIN
	avs_fetchSoma_writedata(11) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_writedata_11;
-- avs_fetchSoma_writedata[10]
t_prcs_avs_fetchSoma_writedata_10: PROCESS
BEGIN
	avs_fetchSoma_writedata(10) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_writedata_10;
-- avs_fetchSoma_writedata[9]
t_prcs_avs_fetchSoma_writedata_9: PROCESS
BEGIN
	avs_fetchSoma_writedata(9) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_writedata_9;
-- avs_fetchSoma_writedata[8]
t_prcs_avs_fetchSoma_writedata_8: PROCESS
BEGIN
	avs_fetchSoma_writedata(8) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_writedata_8;
-- avs_fetchSoma_writedata[7]
t_prcs_avs_fetchSoma_writedata_7: PROCESS
BEGIN
	avs_fetchSoma_writedata(7) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_writedata_7;
-- avs_fetchSoma_writedata[6]
t_prcs_avs_fetchSoma_writedata_6: PROCESS
BEGIN
	avs_fetchSoma_writedata(6) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_writedata_6;
-- avs_fetchSoma_writedata[5]
t_prcs_avs_fetchSoma_writedata_5: PROCESS
BEGIN
	avs_fetchSoma_writedata(5) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_writedata_5;
-- avs_fetchSoma_writedata[4]
t_prcs_avs_fetchSoma_writedata_4: PROCESS
BEGIN
	avs_fetchSoma_writedata(4) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_writedata_4;
-- avs_fetchSoma_writedata[3]
t_prcs_avs_fetchSoma_writedata_3: PROCESS
BEGIN
	avs_fetchSoma_writedata(3) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_writedata_3;
-- avs_fetchSoma_writedata[2]
t_prcs_avs_fetchSoma_writedata_2: PROCESS
BEGIN
	avs_fetchSoma_writedata(2) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_writedata_2;
-- avs_fetchSoma_writedata[1]
t_prcs_avs_fetchSoma_writedata_1: PROCESS
BEGIN
	avs_fetchSoma_writedata(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_writedata_1;
-- avs_fetchSoma_writedata[0]
t_prcs_avs_fetchSoma_writedata_0: PROCESS
BEGIN
	avs_fetchSoma_writedata(0) <= '0';
	WAIT FOR 30000 ps;
	avs_fetchSoma_writedata(0) <= '1';
	WAIT FOR 10000 ps;
	avs_fetchSoma_writedata(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_fetchSoma_writedata_0;
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
WAIT;
END PROCESS t_prcs_avs_pullSynapse_address_0;

-- avs_pullSynapse_write
t_prcs_avs_pullSynapse_write: PROCESS
BEGIN
	avs_pullSynapse_write <= '0';
	WAIT FOR 50000 ps;
	avs_pullSynapse_write <= '1';
	WAIT FOR 20000 ps;
	avs_pullSynapse_write <= '0';
	WAIT FOR 20000 ps;
	avs_pullSynapse_write <= '1';
	WAIT FOR 20000 ps;
	avs_pullSynapse_write <= '0';
	WAIT FOR 10000 ps;
	avs_pullSynapse_write <= '1';
	WAIT FOR 20000 ps;
	avs_pullSynapse_write <= '0';
	WAIT FOR 20000 ps;
	avs_pullSynapse_write <= '1';
	WAIT FOR 20000 ps;
	avs_pullSynapse_write <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_write;
-- avs_pullSynapse_writedata[31]
t_prcs_avs_pullSynapse_writedata_31: PROCESS
BEGIN
	avs_pullSynapse_writedata(31) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_31;
-- avs_pullSynapse_writedata[30]
t_prcs_avs_pullSynapse_writedata_30: PROCESS
BEGIN
	avs_pullSynapse_writedata(30) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_30;
-- avs_pullSynapse_writedata[29]
t_prcs_avs_pullSynapse_writedata_29: PROCESS
BEGIN
	avs_pullSynapse_writedata(29) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_29;
-- avs_pullSynapse_writedata[28]
t_prcs_avs_pullSynapse_writedata_28: PROCESS
BEGIN
	avs_pullSynapse_writedata(28) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_28;
-- avs_pullSynapse_writedata[27]
t_prcs_avs_pullSynapse_writedata_27: PROCESS
BEGIN
	avs_pullSynapse_writedata(27) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_27;
-- avs_pullSynapse_writedata[26]
t_prcs_avs_pullSynapse_writedata_26: PROCESS
BEGIN
	avs_pullSynapse_writedata(26) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_26;
-- avs_pullSynapse_writedata[25]
t_prcs_avs_pullSynapse_writedata_25: PROCESS
BEGIN
	avs_pullSynapse_writedata(25) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_25;
-- avs_pullSynapse_writedata[24]
t_prcs_avs_pullSynapse_writedata_24: PROCESS
BEGIN
	avs_pullSynapse_writedata(24) <= '0';
	WAIT FOR 50000 ps;
	avs_pullSynapse_writedata(24) <= '1';
	WAIT FOR 20000 ps;
	avs_pullSynapse_writedata(24) <= '0';
	WAIT FOR 20000 ps;
	avs_pullSynapse_writedata(24) <= '1';
	WAIT FOR 20000 ps;
	avs_pullSynapse_writedata(24) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_24;
-- avs_pullSynapse_writedata[23]
t_prcs_avs_pullSynapse_writedata_23: PROCESS
BEGIN
	avs_pullSynapse_writedata(23) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_23;
-- avs_pullSynapse_writedata[22]
t_prcs_avs_pullSynapse_writedata_22: PROCESS
BEGIN
	avs_pullSynapse_writedata(22) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_22;
-- avs_pullSynapse_writedata[21]
t_prcs_avs_pullSynapse_writedata_21: PROCESS
BEGIN
	avs_pullSynapse_writedata(21) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_21;
-- avs_pullSynapse_writedata[20]
t_prcs_avs_pullSynapse_writedata_20: PROCESS
BEGIN
	avs_pullSynapse_writedata(20) <= '0';
	WAIT FOR 120000 ps;
	avs_pullSynapse_writedata(20) <= '1';
	WAIT FOR 20000 ps;
	avs_pullSynapse_writedata(20) <= '0';
	WAIT FOR 20000 ps;
	avs_pullSynapse_writedata(20) <= '1';
	WAIT FOR 20000 ps;
	avs_pullSynapse_writedata(20) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_20;
-- avs_pullSynapse_writedata[19]
t_prcs_avs_pullSynapse_writedata_19: PROCESS
BEGIN
	avs_pullSynapse_writedata(19) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_19;
-- avs_pullSynapse_writedata[18]
t_prcs_avs_pullSynapse_writedata_18: PROCESS
BEGIN
	avs_pullSynapse_writedata(18) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_18;
-- avs_pullSynapse_writedata[17]
t_prcs_avs_pullSynapse_writedata_17: PROCESS
BEGIN
	avs_pullSynapse_writedata(17) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_17;
-- avs_pullSynapse_writedata[16]
t_prcs_avs_pullSynapse_writedata_16: PROCESS
BEGIN
	avs_pullSynapse_writedata(16) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_16;
-- avs_pullSynapse_writedata[15]
t_prcs_avs_pullSynapse_writedata_15: PROCESS
BEGIN
	avs_pullSynapse_writedata(15) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_15;
-- avs_pullSynapse_writedata[14]
t_prcs_avs_pullSynapse_writedata_14: PROCESS
BEGIN
	avs_pullSynapse_writedata(14) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_14;
-- avs_pullSynapse_writedata[13]
t_prcs_avs_pullSynapse_writedata_13: PROCESS
BEGIN
	avs_pullSynapse_writedata(13) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_13;
-- avs_pullSynapse_writedata[12]
t_prcs_avs_pullSynapse_writedata_12: PROCESS
BEGIN
	avs_pullSynapse_writedata(12) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_12;
-- avs_pullSynapse_writedata[11]
t_prcs_avs_pullSynapse_writedata_11: PROCESS
BEGIN
	avs_pullSynapse_writedata(11) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_11;
-- avs_pullSynapse_writedata[10]
t_prcs_avs_pullSynapse_writedata_10: PROCESS
BEGIN
	avs_pullSynapse_writedata(10) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_10;
-- avs_pullSynapse_writedata[9]
t_prcs_avs_pullSynapse_writedata_9: PROCESS
BEGIN
	avs_pullSynapse_writedata(9) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_9;
-- avs_pullSynapse_writedata[8]
t_prcs_avs_pullSynapse_writedata_8: PROCESS
BEGIN
	avs_pullSynapse_writedata(8) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_8;
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
	WAIT FOR 90000 ps;
	avs_pullSynapse_writedata(4) <= '1';
	WAIT FOR 20000 ps;
	avs_pullSynapse_writedata(4) <= '0';
	WAIT FOR 50000 ps;
	avs_pullSynapse_writedata(4) <= '1';
	WAIT FOR 20000 ps;
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
	WAIT FOR 50000 ps;
	avs_pullSynapse_writedata(0) <= '1';
	WAIT FOR 20000 ps;
	avs_pullSynapse_writedata(0) <= '0';
	WAIT FOR 50000 ps;
	avs_pullSynapse_writedata(0) <= '1';
	WAIT FOR 20000 ps;
	avs_pullSynapse_writedata(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_pullSynapse_writedata_0;
END soma_arch;
