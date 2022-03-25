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
-- Generated on "03/21/2022 10:55:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          addr_slave
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY addr_slave_vhd_vec_tst IS
END addr_slave_vhd_vec_tst;
ARCHITECTURE addr_slave_arch OF addr_slave_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL avm_m0_address : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL avm_m0_burstcount : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL avm_m0_byteenable : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL avm_m0_waitrequest : STD_LOGIC;
SIGNAL avm_m0_write : STD_LOGIC;
SIGNAL avm_m0_writedata : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL avs_s0_address : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL avs_s0_burstcount : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL avs_s0_byteenable : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL avs_s0_waitrequest : STD_LOGIC;
SIGNAL avs_s0_write : STD_LOGIC;
SIGNAL avs_s0_writedata : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT addr_slave
	PORT (
	avm_m0_address : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	avm_m0_burstcount : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	avm_m0_byteenable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	avm_m0_waitrequest : IN STD_LOGIC;
	avm_m0_write : OUT STD_LOGIC;
	avm_m0_writedata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	avs_s0_address : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	avs_s0_burstcount : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	avs_s0_byteenable : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	avs_s0_waitrequest : OUT STD_LOGIC;
	avs_s0_write : IN STD_LOGIC;
	avs_s0_writedata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	clk : IN STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : addr_slave
	PORT MAP (
-- list connections between master ports and signals
	avm_m0_address => avm_m0_address,
	avm_m0_burstcount => avm_m0_burstcount,
	avm_m0_byteenable => avm_m0_byteenable,
	avm_m0_waitrequest => avm_m0_waitrequest,
	avm_m0_write => avm_m0_write,
	avm_m0_writedata => avm_m0_writedata,
	avs_s0_address => avs_s0_address,
	avs_s0_burstcount => avs_s0_burstcount,
	avs_s0_byteenable => avs_s0_byteenable,
	avs_s0_waitrequest => avs_s0_waitrequest,
	avs_s0_write => avs_s0_write,
	avs_s0_writedata => avs_s0_writedata,
	clk => clk,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
	WAIT FOR 2000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	FOR i IN 1 TO 99
	LOOP
		clk <= '0';
		WAIT FOR 5000 ps;
		clk <= '1';
		WAIT FOR 5000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 10000 ps;
	rst <= '1';
	WAIT FOR 20000 ps;
	rst <= '0';
	WAIT FOR 130000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
-- avs_s0_address[11]
t_prcs_avs_s0_address_11: PROCESS
BEGIN
	avs_s0_address(11) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_address(11) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(11) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_11;
-- avs_s0_address[10]
t_prcs_avs_s0_address_10: PROCESS
BEGIN
	avs_s0_address(10) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_address(10) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(10) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_10;
-- avs_s0_address[9]
t_prcs_avs_s0_address_9: PROCESS
BEGIN
	avs_s0_address(9) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_address(9) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(9) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_9;
-- avs_s0_address[8]
t_prcs_avs_s0_address_8: PROCESS
BEGIN
	avs_s0_address(8) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_address(8) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(8) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_8;
-- avs_s0_address[7]
t_prcs_avs_s0_address_7: PROCESS
BEGIN
	avs_s0_address(7) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_address(7) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(7) <= '0';
	WAIT FOR 40000 ps;
	avs_s0_address(7) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(7) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_7;
-- avs_s0_address[6]
t_prcs_avs_s0_address_6: PROCESS
BEGIN
	avs_s0_address(6) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_address(6) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(6) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_6;
-- avs_s0_address[5]
t_prcs_avs_s0_address_5: PROCESS
BEGIN
	avs_s0_address(5) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_address(5) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(5) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_5;
-- avs_s0_address[4]
t_prcs_avs_s0_address_4: PROCESS
BEGIN
	avs_s0_address(4) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_address(4) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(4) <= '0';
	WAIT FOR 40000 ps;
	avs_s0_address(4) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(4) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_4;
-- avs_s0_address[3]
t_prcs_avs_s0_address_3: PROCESS
BEGIN
	avs_s0_address(3) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_address(3) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(3) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_3;
-- avs_s0_address[2]
t_prcs_avs_s0_address_2: PROCESS
BEGIN
	avs_s0_address(2) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_address(2) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(2) <= '0';
	WAIT FOR 40000 ps;
	avs_s0_address(2) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(2) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_2;
-- avs_s0_address[1]
t_prcs_avs_s0_address_1: PROCESS
BEGIN
	avs_s0_address(1) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_address(1) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(1) <= '0';
	WAIT FOR 40000 ps;
	avs_s0_address(1) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_1;
-- avs_s0_address[0]
t_prcs_avs_s0_address_0: PROCESS
BEGIN
	avs_s0_address(0) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_address(0) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(0) <= '0';
	WAIT FOR 40000 ps;
	avs_s0_address(0) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_0;
-- avs_s0_burstcount[3]
t_prcs_avs_s0_burstcount_3: PROCESS
BEGIN
	avs_s0_burstcount(3) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_burstcount_3;
-- avs_s0_burstcount[2]
t_prcs_avs_s0_burstcount_2: PROCESS
BEGIN
	avs_s0_burstcount(2) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_burstcount_2;
-- avs_s0_burstcount[1]
t_prcs_avs_s0_burstcount_1: PROCESS
BEGIN
	avs_s0_burstcount(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_burstcount_1;
-- avs_s0_burstcount[0]
t_prcs_avs_s0_burstcount_0: PROCESS
BEGIN
	avs_s0_burstcount(0) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_burstcount(0) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_burstcount(0) <= '0';
	WAIT FOR 40000 ps;
	avs_s0_burstcount(0) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_burstcount(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_burstcount_0;

-- avs_s0_write
t_prcs_avs_s0_write: PROCESS
BEGIN
	avs_s0_write <= '0';
	WAIT FOR 70000 ps;
	avs_s0_write <= '1';
	WAIT FOR 10000 ps;
	avs_s0_write <= '0';
	WAIT FOR 40000 ps;
	avs_s0_write <= '1';
	WAIT FOR 10000 ps;
	avs_s0_write <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_write;
-- avs_s0_writedata[31]
t_prcs_avs_s0_writedata_31: PROCESS
BEGIN
	avs_s0_writedata(31) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_31;
-- avs_s0_writedata[30]
t_prcs_avs_s0_writedata_30: PROCESS
BEGIN
	avs_s0_writedata(30) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_30;
-- avs_s0_writedata[29]
t_prcs_avs_s0_writedata_29: PROCESS
BEGIN
	avs_s0_writedata(29) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_29;
-- avs_s0_writedata[28]
t_prcs_avs_s0_writedata_28: PROCESS
BEGIN
	avs_s0_writedata(28) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_28;
-- avs_s0_writedata[27]
t_prcs_avs_s0_writedata_27: PROCESS
BEGIN
	avs_s0_writedata(27) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_27;
-- avs_s0_writedata[26]
t_prcs_avs_s0_writedata_26: PROCESS
BEGIN
	avs_s0_writedata(26) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_26;
-- avs_s0_writedata[25]
t_prcs_avs_s0_writedata_25: PROCESS
BEGIN
	avs_s0_writedata(25) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_25;
-- avs_s0_writedata[24]
t_prcs_avs_s0_writedata_24: PROCESS
BEGIN
	avs_s0_writedata(24) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_24;
-- avs_s0_writedata[23]
t_prcs_avs_s0_writedata_23: PROCESS
BEGIN
	avs_s0_writedata(23) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_23;
-- avs_s0_writedata[22]
t_prcs_avs_s0_writedata_22: PROCESS
BEGIN
	avs_s0_writedata(22) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_22;
-- avs_s0_writedata[21]
t_prcs_avs_s0_writedata_21: PROCESS
BEGIN
	avs_s0_writedata(21) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_21;
-- avs_s0_writedata[20]
t_prcs_avs_s0_writedata_20: PROCESS
BEGIN
	avs_s0_writedata(20) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_20;
-- avs_s0_writedata[19]
t_prcs_avs_s0_writedata_19: PROCESS
BEGIN
	avs_s0_writedata(19) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_19;
-- avs_s0_writedata[18]
t_prcs_avs_s0_writedata_18: PROCESS
BEGIN
	avs_s0_writedata(18) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_18;
-- avs_s0_writedata[17]
t_prcs_avs_s0_writedata_17: PROCESS
BEGIN
	avs_s0_writedata(17) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_17;
-- avs_s0_writedata[16]
t_prcs_avs_s0_writedata_16: PROCESS
BEGIN
	avs_s0_writedata(16) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_16;
-- avs_s0_writedata[15]
t_prcs_avs_s0_writedata_15: PROCESS
BEGIN
	avs_s0_writedata(15) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_15;
-- avs_s0_writedata[14]
t_prcs_avs_s0_writedata_14: PROCESS
BEGIN
	avs_s0_writedata(14) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_14;
-- avs_s0_writedata[13]
t_prcs_avs_s0_writedata_13: PROCESS
BEGIN
	avs_s0_writedata(13) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_13;
-- avs_s0_writedata[12]
t_prcs_avs_s0_writedata_12: PROCESS
BEGIN
	avs_s0_writedata(12) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_12;
-- avs_s0_writedata[11]
t_prcs_avs_s0_writedata_11: PROCESS
BEGIN
	avs_s0_writedata(11) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_11;
-- avs_s0_writedata[10]
t_prcs_avs_s0_writedata_10: PROCESS
BEGIN
	avs_s0_writedata(10) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_10;
-- avs_s0_writedata[9]
t_prcs_avs_s0_writedata_9: PROCESS
BEGIN
	avs_s0_writedata(9) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_9;
-- avs_s0_writedata[8]
t_prcs_avs_s0_writedata_8: PROCESS
BEGIN
	avs_s0_writedata(8) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_8;
-- avs_s0_writedata[7]
t_prcs_avs_s0_writedata_7: PROCESS
BEGIN
	avs_s0_writedata(7) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_7;
-- avs_s0_writedata[6]
t_prcs_avs_s0_writedata_6: PROCESS
BEGIN
	avs_s0_writedata(6) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_6;
-- avs_s0_writedata[5]
t_prcs_avs_s0_writedata_5: PROCESS
BEGIN
	avs_s0_writedata(5) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_5;
-- avs_s0_writedata[4]
t_prcs_avs_s0_writedata_4: PROCESS
BEGIN
	avs_s0_writedata(4) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_writedata(4) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_writedata(4) <= '0';
	WAIT FOR 40000 ps;
	avs_s0_writedata(4) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_writedata(4) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_4;
-- avs_s0_writedata[3]
t_prcs_avs_s0_writedata_3: PROCESS
BEGIN
	avs_s0_writedata(3) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_3;
-- avs_s0_writedata[2]
t_prcs_avs_s0_writedata_2: PROCESS
BEGIN
	avs_s0_writedata(2) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_writedata(2) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_writedata(2) <= '0';
	WAIT FOR 40000 ps;
	avs_s0_writedata(2) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_writedata(2) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_2;
-- avs_s0_writedata[1]
t_prcs_avs_s0_writedata_1: PROCESS
BEGIN
	avs_s0_writedata(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_1;
-- avs_s0_writedata[0]
t_prcs_avs_s0_writedata_0: PROCESS
BEGIN
	avs_s0_writedata(0) <= '0';
	WAIT FOR 120000 ps;
	avs_s0_writedata(0) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_writedata(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_0;
-- avs_s0_byteenable[3]
t_prcs_avs_s0_byteenable_3: PROCESS
BEGIN
	avs_s0_byteenable(3) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_byteenable(3) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_byteenable(3) <= '0';
	WAIT FOR 40000 ps;
	avs_s0_byteenable(3) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_byteenable(3) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_byteenable_3;
-- avs_s0_byteenable[2]
t_prcs_avs_s0_byteenable_2: PROCESS
BEGIN
	avs_s0_byteenable(2) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_byteenable(2) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_byteenable(2) <= '0';
	WAIT FOR 40000 ps;
	avs_s0_byteenable(2) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_byteenable(2) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_byteenable_2;
-- avs_s0_byteenable[1]
t_prcs_avs_s0_byteenable_1: PROCESS
BEGIN
	avs_s0_byteenable(1) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_byteenable(1) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_byteenable(1) <= '0';
	WAIT FOR 40000 ps;
	avs_s0_byteenable(1) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_byteenable(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_byteenable_1;
-- avs_s0_byteenable[0]
t_prcs_avs_s0_byteenable_0: PROCESS
BEGIN
	avs_s0_byteenable(0) <= '0';
	WAIT FOR 70000 ps;
	avs_s0_byteenable(0) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_byteenable(0) <= '0';
	WAIT FOR 40000 ps;
	avs_s0_byteenable(0) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_byteenable(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_byteenable_0;

-- avm_m0_waitrequest
t_prcs_avm_m0_waitrequest: PROCESS
BEGIN
	avm_m0_waitrequest <= '0';
WAIT;
END PROCESS t_prcs_avm_m0_waitrequest;
END addr_slave_arch;
