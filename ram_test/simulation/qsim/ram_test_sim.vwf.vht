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
-- Generated on "03/26/2022 19:54:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ram_control
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ram_control_vhd_vec_tst IS
END ram_control_vhd_vec_tst;
ARCHITECTURE ram_control_arch OF ram_control_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADDR_in : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL DATA_IN_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DATA_OUT_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL R_EN_in : STD_LOGIC;
SIGNAL W_EN_in : STD_LOGIC;
COMPONENT ram_control
	PORT (
	ADDR_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk : IN STD_LOGIC;
	DATA_IN_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	DATA_OUT_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	R_EN_in : IN STD_LOGIC;
	W_EN_in : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ram_control
	PORT MAP (
-- list connections between master ports and signals
	ADDR_in => ADDR_in,
	clk => clk,
	DATA_IN_in => DATA_IN_in,
	DATA_OUT_out => DATA_OUT_out,
	R_EN_in => R_EN_in,
	W_EN_in => W_EN_in
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

-- W_EN_in
t_prcs_W_EN_in: PROCESS
BEGIN
	W_EN_in <= '0';
	WAIT FOR 30000 ps;
	W_EN_in <= '1';
	WAIT FOR 10000 ps;
	W_EN_in <= '0';
	WAIT FOR 30000 ps;
	W_EN_in <= '1';
	WAIT FOR 10000 ps;
	W_EN_in <= '0';
	WAIT FOR 70000 ps;
	W_EN_in <= '1';
	WAIT FOR 20000 ps;
	W_EN_in <= '0';
WAIT;
END PROCESS t_prcs_W_EN_in;

-- R_EN_in
t_prcs_R_EN_in: PROCESS
BEGIN
	R_EN_in <= '0';
	WAIT FOR 100000 ps;
	R_EN_in <= '1';
	WAIT FOR 10000 ps;
	R_EN_in <= '0';
	WAIT FOR 10000 ps;
	R_EN_in <= '1';
	WAIT FOR 10000 ps;
	R_EN_in <= '0';
	WAIT FOR 60000 ps;
	R_EN_in <= '1';
	WAIT FOR 20000 ps;
	R_EN_in <= '0';
WAIT;
END PROCESS t_prcs_R_EN_in;
-- ADDR_in[3]
t_prcs_ADDR_in_3: PROCESS
BEGIN
	ADDR_in(3) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_in_3;
-- ADDR_in[2]
t_prcs_ADDR_in_2: PROCESS
BEGIN
	ADDR_in(2) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_in_2;
-- ADDR_in[1]
t_prcs_ADDR_in_1: PROCESS
BEGIN
	ADDR_in(1) <= '0';
	WAIT FOR 160000 ps;
	ADDR_in(1) <= '1';
	WAIT FOR 10000 ps;
	ADDR_in(1) <= '0';
	WAIT FOR 30000 ps;
	ADDR_in(1) <= '1';
	WAIT FOR 10000 ps;
	ADDR_in(1) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_in_1;
-- ADDR_in[0]
t_prcs_ADDR_in_0: PROCESS
BEGIN
	ADDR_in(0) <= '0';
	WAIT FOR 70000 ps;
	ADDR_in(0) <= '1';
	WAIT FOR 10000 ps;
	ADDR_in(0) <= '0';
	WAIT FOR 40000 ps;
	ADDR_in(0) <= '1';
	WAIT FOR 10000 ps;
	ADDR_in(0) <= '0';
	WAIT FOR 20000 ps;
	ADDR_in(0) <= '1';
	WAIT FOR 10000 ps;
	ADDR_in(0) <= '0';
	WAIT FOR 30000 ps;
	ADDR_in(0) <= '1';
	WAIT FOR 10000 ps;
	ADDR_in(0) <= '0';
WAIT;
END PROCESS t_prcs_ADDR_in_0;
-- DATA_IN_in[15]
t_prcs_DATA_IN_in_15: PROCESS
BEGIN
	DATA_IN_in(15) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_in_15;
-- DATA_IN_in[14]
t_prcs_DATA_IN_in_14: PROCESS
BEGIN
	DATA_IN_in(14) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_in_14;
-- DATA_IN_in[13]
t_prcs_DATA_IN_in_13: PROCESS
BEGIN
	DATA_IN_in(13) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_in_13;
-- DATA_IN_in[12]
t_prcs_DATA_IN_in_12: PROCESS
BEGIN
	DATA_IN_in(12) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_in_12;
-- DATA_IN_in[11]
t_prcs_DATA_IN_in_11: PROCESS
BEGIN
	DATA_IN_in(11) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_in_11;
-- DATA_IN_in[10]
t_prcs_DATA_IN_in_10: PROCESS
BEGIN
	DATA_IN_in(10) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_in_10;
-- DATA_IN_in[9]
t_prcs_DATA_IN_in_9: PROCESS
BEGIN
	DATA_IN_in(9) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_in_9;
-- DATA_IN_in[8]
t_prcs_DATA_IN_in_8: PROCESS
BEGIN
	DATA_IN_in(8) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_in_8;
-- DATA_IN_in[7]
t_prcs_DATA_IN_in_7: PROCESS
BEGIN
	DATA_IN_in(7) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_in_7;
-- DATA_IN_in[6]
t_prcs_DATA_IN_in_6: PROCESS
BEGIN
	DATA_IN_in(6) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_in_6;
-- DATA_IN_in[5]
t_prcs_DATA_IN_in_5: PROCESS
BEGIN
	DATA_IN_in(5) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_in_5;
-- DATA_IN_in[4]
t_prcs_DATA_IN_in_4: PROCESS
BEGIN
	DATA_IN_in(4) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_in_4;
-- DATA_IN_in[3]
t_prcs_DATA_IN_in_3: PROCESS
BEGIN
	DATA_IN_in(3) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_in_3;
-- DATA_IN_in[2]
t_prcs_DATA_IN_in_2: PROCESS
BEGIN
	DATA_IN_in(2) <= '0';
	WAIT FOR 150000 ps;
	DATA_IN_in(2) <= '1';
	WAIT FOR 20000 ps;
	DATA_IN_in(2) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_in_2;
-- DATA_IN_in[1]
t_prcs_DATA_IN_in_1: PROCESS
BEGIN
	DATA_IN_in(1) <= '0';
	WAIT FOR 70000 ps;
	DATA_IN_in(1) <= '1';
	WAIT FOR 10000 ps;
	DATA_IN_in(1) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_in_1;
-- DATA_IN_in[0]
t_prcs_DATA_IN_in_0: PROCESS
BEGIN
	DATA_IN_in(0) <= '0';
	WAIT FOR 30000 ps;
	DATA_IN_in(0) <= '1';
	WAIT FOR 10000 ps;
	DATA_IN_in(0) <= '0';
	WAIT FOR 120000 ps;
	DATA_IN_in(0) <= '1';
	WAIT FOR 10000 ps;
	DATA_IN_in(0) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_in_0;
END ram_control_arch;
