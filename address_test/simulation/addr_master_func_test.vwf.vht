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
-- Generated on "03/07/2022 17:38:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          addr_master
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY addr_master_vhd_vec_tst IS
END addr_master_vhd_vec_tst;
ARCHITECTURE addr_master_arch OF addr_master_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL avm_m0_address : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL avm_m0_waitrequest : STD_LOGIC;
SIGNAL avm_m0_write : STD_LOGIC;
SIGNAL avm_m0_writedata : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL data_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL input_en : STD_LOGIC;
SIGNAL output_en : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL write_to : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT addr_master
	PORT (
	avm_m0_address : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	avm_m0_waitrequest : IN STD_LOGIC;
	avm_m0_write : OUT STD_LOGIC;
	avm_m0_writedata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	input_en : IN STD_LOGIC;
	output_en : IN STD_LOGIC;
	rst : IN STD_LOGIC;
	write_to : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : addr_master
	PORT MAP (
-- list connections between master ports and signals
	avm_m0_address => avm_m0_address,
	avm_m0_waitrequest => avm_m0_waitrequest,
	avm_m0_write => avm_m0_write,
	avm_m0_writedata => avm_m0_writedata,
	clk => clk,
	data_in => data_in,
	input_en => input_en,
	output_en => output_en,
	rst => rst,
	write_to => write_to
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
	WAIT FOR 20000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- input_en
t_prcs_input_en: PROCESS
BEGIN
	input_en <= '0';
	WAIT FOR 40000 ps;
	input_en <= '1';
	WAIT FOR 10000 ps;
	input_en <= '0';
WAIT;
END PROCESS t_prcs_input_en;
-- data_in[7]
t_prcs_data_in_7: PROCESS
BEGIN
	data_in(7) <= '0';
WAIT;
END PROCESS t_prcs_data_in_7;
-- data_in[6]
t_prcs_data_in_6: PROCESS
BEGIN
	data_in(6) <= '0';
WAIT;
END PROCESS t_prcs_data_in_6;
-- data_in[5]
t_prcs_data_in_5: PROCESS
BEGIN
	data_in(5) <= '0';
WAIT;
END PROCESS t_prcs_data_in_5;
-- data_in[4]
t_prcs_data_in_4: PROCESS
BEGIN
	data_in(4) <= '0';
WAIT;
END PROCESS t_prcs_data_in_4;
-- data_in[3]
t_prcs_data_in_3: PROCESS
BEGIN
	data_in(3) <= '0';
WAIT;
END PROCESS t_prcs_data_in_3;
-- data_in[2]
t_prcs_data_in_2: PROCESS
BEGIN
	data_in(2) <= '0';
WAIT;
END PROCESS t_prcs_data_in_2;
-- data_in[1]
t_prcs_data_in_1: PROCESS
BEGIN
	data_in(1) <= '0';
WAIT;
END PROCESS t_prcs_data_in_1;
-- data_in[0]
t_prcs_data_in_0: PROCESS
BEGIN
	data_in(0) <= '0';
	WAIT FOR 40000 ps;
	data_in(0) <= '1';
	WAIT FOR 10000 ps;
	data_in(0) <= '0';
WAIT;
END PROCESS t_prcs_data_in_0;
-- write_to[2]
t_prcs_write_to_2: PROCESS
BEGIN
	write_to(2) <= '0';
WAIT;
END PROCESS t_prcs_write_to_2;
-- write_to[1]
t_prcs_write_to_1: PROCESS
BEGIN
	write_to(1) <= '0';
WAIT;
END PROCESS t_prcs_write_to_1;
-- write_to[0]
t_prcs_write_to_0: PROCESS
BEGIN
	write_to(0) <= '0';
	WAIT FOR 40000 ps;
	write_to(0) <= '1';
	WAIT FOR 10000 ps;
	write_to(0) <= '0';
WAIT;
END PROCESS t_prcs_write_to_0;

-- output_en
t_prcs_output_en: PROCESS
BEGIN
	output_en <= '0';
	WAIT FOR 50000 ps;
	output_en <= '1';
	WAIT FOR 10000 ps;
	output_en <= '0';
WAIT;
END PROCESS t_prcs_output_en;

-- avm_m0_waitrequest
t_prcs_avm_m0_waitrequest: PROCESS
BEGIN
	avm_m0_waitrequest <= '0';
WAIT;
END PROCESS t_prcs_avm_m0_waitrequest;
END addr_master_arch;
