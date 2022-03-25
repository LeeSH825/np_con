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
-- Generated on "03/16/2022 12:50:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          avlm_avls_1x1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY avlm_avls_1x1_vhd_vec_tst IS
END avlm_avls_1x1_vhd_vec_tst;
ARCHITECTURE avlm_avls_1x1_arch OF avlm_avls_1x1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_clk : STD_LOGIC;
SIGNAL master_0_m0_address : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL master_0_m0_burstcount : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL master_0_m0_byteenable : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL master_0_m0_waitrequest : STD_LOGIC;
SIGNAL master_0_m0_write : STD_LOGIC;
SIGNAL master_0_m0_writedata : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reset_reset_n : STD_LOGIC;
SIGNAL slave_0_s0_address : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL slave_0_s0_burstcount : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL slave_0_s0_byteenable : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL slave_0_s0_waitrequest : STD_LOGIC;
SIGNAL slave_0_s0_write : STD_LOGIC;
SIGNAL slave_0_s0_writedata : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT avlm_avls_1x1
	PORT (
	clk_clk : IN STD_LOGIC;
	master_0_m0_address : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	master_0_m0_burstcount : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	master_0_m0_byteenable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	master_0_m0_waitrequest : IN STD_LOGIC;
	master_0_m0_write : OUT STD_LOGIC;
	master_0_m0_writedata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	reset_reset_n : IN STD_LOGIC;
	slave_0_s0_address : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	slave_0_s0_burstcount : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	slave_0_s0_byteenable : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	slave_0_s0_waitrequest : OUT STD_LOGIC;
	slave_0_s0_write : IN STD_LOGIC;
	slave_0_s0_writedata : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : avlm_avls_1x1
	PORT MAP (
-- list connections between master ports and signals
	clk_clk => clk_clk,
	master_0_m0_address => master_0_m0_address,
	master_0_m0_burstcount => master_0_m0_burstcount,
	master_0_m0_byteenable => master_0_m0_byteenable,
	master_0_m0_waitrequest => master_0_m0_waitrequest,
	master_0_m0_write => master_0_m0_write,
	master_0_m0_writedata => master_0_m0_writedata,
	reset_reset_n => reset_reset_n,
	slave_0_s0_address => slave_0_s0_address,
	slave_0_s0_burstcount => slave_0_s0_burstcount,
	slave_0_s0_byteenable => slave_0_s0_byteenable,
	slave_0_s0_waitrequest => slave_0_s0_waitrequest,
	slave_0_s0_write => slave_0_s0_write,
	slave_0_s0_writedata => slave_0_s0_writedata
	);

-- clk_clk
t_prcs_clk_clk: PROCESS
BEGIN
LOOP
	clk_clk <= '0';
	WAIT FOR 5000 ps;
	clk_clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_clk;

-- reset_reset_n
t_prcs_reset_reset_n: PROCESS
BEGIN
	reset_reset_n <= '1';
	WAIT FOR 30000 ps;
	reset_reset_n <= '0';
WAIT;
END PROCESS t_prcs_reset_reset_n;

-- master_0_m0_waitrequest
t_prcs_master_0_m0_waitrequest: PROCESS
BEGIN
	master_0_m0_waitrequest <= '1';
	WAIT FOR 40000 ps;
	master_0_m0_waitrequest <= '0';
	WAIT FOR 70000 ps;
	master_0_m0_waitrequest <= '1';
WAIT;
END PROCESS t_prcs_master_0_m0_waitrequest;
-- slave_0_s0_address[11]
t_prcs_slave_0_s0_address_11: PROCESS
BEGIN
	slave_0_s0_address(11) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_address_11;
-- slave_0_s0_address[10]
t_prcs_slave_0_s0_address_10: PROCESS
BEGIN
	slave_0_s0_address(10) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_address_10;
-- slave_0_s0_address[9]
t_prcs_slave_0_s0_address_9: PROCESS
BEGIN
	slave_0_s0_address(9) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_address_9;
-- slave_0_s0_address[8]
t_prcs_slave_0_s0_address_8: PROCESS
BEGIN
	slave_0_s0_address(8) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_address_8;
-- slave_0_s0_address[7]
t_prcs_slave_0_s0_address_7: PROCESS
BEGIN
	slave_0_s0_address(7) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_address_7;
-- slave_0_s0_address[6]
t_prcs_slave_0_s0_address_6: PROCESS
BEGIN
	slave_0_s0_address(6) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_address_6;
-- slave_0_s0_address[5]
t_prcs_slave_0_s0_address_5: PROCESS
BEGIN
	slave_0_s0_address(5) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_address_5;
-- slave_0_s0_address[4]
t_prcs_slave_0_s0_address_4: PROCESS
BEGIN
	slave_0_s0_address(4) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_address_4;
-- slave_0_s0_address[3]
t_prcs_slave_0_s0_address_3: PROCESS
BEGIN
	slave_0_s0_address(3) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_address_3;
-- slave_0_s0_address[2]
t_prcs_slave_0_s0_address_2: PROCESS
BEGIN
	slave_0_s0_address(2) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_address_2;
-- slave_0_s0_address[1]
t_prcs_slave_0_s0_address_1: PROCESS
BEGIN
	slave_0_s0_address(1) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_address_1;
-- slave_0_s0_address[0]
t_prcs_slave_0_s0_address_0: PROCESS
BEGIN
	slave_0_s0_address(0) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_address_0;
-- slave_0_s0_burstcount[3]
t_prcs_slave_0_s0_burstcount_3: PROCESS
BEGIN
	slave_0_s0_burstcount(3) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_burstcount_3;
-- slave_0_s0_burstcount[2]
t_prcs_slave_0_s0_burstcount_2: PROCESS
BEGIN
	slave_0_s0_burstcount(2) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_burstcount_2;
-- slave_0_s0_burstcount[1]
t_prcs_slave_0_s0_burstcount_1: PROCESS
BEGIN
	slave_0_s0_burstcount(1) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_burstcount_1;
-- slave_0_s0_burstcount[0]
t_prcs_slave_0_s0_burstcount_0: PROCESS
BEGIN
	slave_0_s0_burstcount(0) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_burstcount_0;
-- slave_0_s0_byteenable[3]
t_prcs_slave_0_s0_byteenable_3: PROCESS
BEGIN
	slave_0_s0_byteenable(3) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_byteenable_3;
-- slave_0_s0_byteenable[2]
t_prcs_slave_0_s0_byteenable_2: PROCESS
BEGIN
	slave_0_s0_byteenable(2) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_byteenable_2;
-- slave_0_s0_byteenable[1]
t_prcs_slave_0_s0_byteenable_1: PROCESS
BEGIN
	slave_0_s0_byteenable(1) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_byteenable_1;
-- slave_0_s0_byteenable[0]
t_prcs_slave_0_s0_byteenable_0: PROCESS
BEGIN
	slave_0_s0_byteenable(0) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_byteenable_0;

-- slave_0_s0_write
t_prcs_slave_0_s0_write: PROCESS
BEGIN
	slave_0_s0_write <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_write;
-- slave_0_s0_writedata[31]
t_prcs_slave_0_s0_writedata_31: PROCESS
BEGIN
	slave_0_s0_writedata(31) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_31;
-- slave_0_s0_writedata[30]
t_prcs_slave_0_s0_writedata_30: PROCESS
BEGIN
	slave_0_s0_writedata(30) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_30;
-- slave_0_s0_writedata[29]
t_prcs_slave_0_s0_writedata_29: PROCESS
BEGIN
	slave_0_s0_writedata(29) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_29;
-- slave_0_s0_writedata[28]
t_prcs_slave_0_s0_writedata_28: PROCESS
BEGIN
	slave_0_s0_writedata(28) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_28;
-- slave_0_s0_writedata[27]
t_prcs_slave_0_s0_writedata_27: PROCESS
BEGIN
	slave_0_s0_writedata(27) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_27;
-- slave_0_s0_writedata[26]
t_prcs_slave_0_s0_writedata_26: PROCESS
BEGIN
	slave_0_s0_writedata(26) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_26;
-- slave_0_s0_writedata[25]
t_prcs_slave_0_s0_writedata_25: PROCESS
BEGIN
	slave_0_s0_writedata(25) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_25;
-- slave_0_s0_writedata[24]
t_prcs_slave_0_s0_writedata_24: PROCESS
BEGIN
	slave_0_s0_writedata(24) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_24;
-- slave_0_s0_writedata[23]
t_prcs_slave_0_s0_writedata_23: PROCESS
BEGIN
	slave_0_s0_writedata(23) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_23;
-- slave_0_s0_writedata[22]
t_prcs_slave_0_s0_writedata_22: PROCESS
BEGIN
	slave_0_s0_writedata(22) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_22;
-- slave_0_s0_writedata[21]
t_prcs_slave_0_s0_writedata_21: PROCESS
BEGIN
	slave_0_s0_writedata(21) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_21;
-- slave_0_s0_writedata[20]
t_prcs_slave_0_s0_writedata_20: PROCESS
BEGIN
	slave_0_s0_writedata(20) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_20;
-- slave_0_s0_writedata[19]
t_prcs_slave_0_s0_writedata_19: PROCESS
BEGIN
	slave_0_s0_writedata(19) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_19;
-- slave_0_s0_writedata[18]
t_prcs_slave_0_s0_writedata_18: PROCESS
BEGIN
	slave_0_s0_writedata(18) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_18;
-- slave_0_s0_writedata[17]
t_prcs_slave_0_s0_writedata_17: PROCESS
BEGIN
	slave_0_s0_writedata(17) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_17;
-- slave_0_s0_writedata[16]
t_prcs_slave_0_s0_writedata_16: PROCESS
BEGIN
	slave_0_s0_writedata(16) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_16;
-- slave_0_s0_writedata[15]
t_prcs_slave_0_s0_writedata_15: PROCESS
BEGIN
	slave_0_s0_writedata(15) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_15;
-- slave_0_s0_writedata[14]
t_prcs_slave_0_s0_writedata_14: PROCESS
BEGIN
	slave_0_s0_writedata(14) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_14;
-- slave_0_s0_writedata[13]
t_prcs_slave_0_s0_writedata_13: PROCESS
BEGIN
	slave_0_s0_writedata(13) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_13;
-- slave_0_s0_writedata[12]
t_prcs_slave_0_s0_writedata_12: PROCESS
BEGIN
	slave_0_s0_writedata(12) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_12;
-- slave_0_s0_writedata[11]
t_prcs_slave_0_s0_writedata_11: PROCESS
BEGIN
	slave_0_s0_writedata(11) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_11;
-- slave_0_s0_writedata[10]
t_prcs_slave_0_s0_writedata_10: PROCESS
BEGIN
	slave_0_s0_writedata(10) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_10;
-- slave_0_s0_writedata[9]
t_prcs_slave_0_s0_writedata_9: PROCESS
BEGIN
	slave_0_s0_writedata(9) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_9;
-- slave_0_s0_writedata[8]
t_prcs_slave_0_s0_writedata_8: PROCESS
BEGIN
	slave_0_s0_writedata(8) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_8;
-- slave_0_s0_writedata[7]
t_prcs_slave_0_s0_writedata_7: PROCESS
BEGIN
	slave_0_s0_writedata(7) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_7;
-- slave_0_s0_writedata[6]
t_prcs_slave_0_s0_writedata_6: PROCESS
BEGIN
	slave_0_s0_writedata(6) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_6;
-- slave_0_s0_writedata[5]
t_prcs_slave_0_s0_writedata_5: PROCESS
BEGIN
	slave_0_s0_writedata(5) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_5;
-- slave_0_s0_writedata[4]
t_prcs_slave_0_s0_writedata_4: PROCESS
BEGIN
	slave_0_s0_writedata(4) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_4;
-- slave_0_s0_writedata[3]
t_prcs_slave_0_s0_writedata_3: PROCESS
BEGIN
	slave_0_s0_writedata(3) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_3;
-- slave_0_s0_writedata[2]
t_prcs_slave_0_s0_writedata_2: PROCESS
BEGIN
	slave_0_s0_writedata(2) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_2;
-- slave_0_s0_writedata[1]
t_prcs_slave_0_s0_writedata_1: PROCESS
BEGIN
	slave_0_s0_writedata(1) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_1;
-- slave_0_s0_writedata[0]
t_prcs_slave_0_s0_writedata_0: PROCESS
BEGIN
	slave_0_s0_writedata(0) <= '0';
WAIT;
END PROCESS t_prcs_slave_0_s0_writedata_0;
END avlm_avls_1x1_arch;
