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
-- Generated on "03/06/2022 12:33:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          simple_SDC_sm
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY simple_SDC_sm_vhd_vec_tst IS
END simple_SDC_sm_vhd_vec_tst;
ARCHITECTURE simple_SDC_sm_arch OF simple_SDC_sm_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL avs_s0_address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL avs_s0_read_target_synapse_addr : STD_LOGIC;
SIGNAL avs_s0_readdata_target_synapse_addr : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL avs_s0_waitrequest : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT simple_SDC_sm
	PORT (
	avs_s0_address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	avs_s0_read_target_synapse_addr : IN STD_LOGIC;
	avs_s0_readdata_target_synapse_addr : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	avs_s0_waitrequest : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : simple_SDC_sm
	PORT MAP (
-- list connections between master ports and signals
	avs_s0_address => avs_s0_address,
	avs_s0_read_target_synapse_addr => avs_s0_read_target_synapse_addr,
	avs_s0_readdata_target_synapse_addr => avs_s0_readdata_target_synapse_addr,
	avs_s0_waitrequest => avs_s0_waitrequest,
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

-- avs_s0_read_target_synapse_addr
t_prcs_avs_s0_read_target_synapse_addr: PROCESS
BEGIN
	avs_s0_read_target_synapse_addr <= '0';
	WAIT FOR 40000 ps;
	avs_s0_read_target_synapse_addr <= '1';
	WAIT FOR 10000 ps;
	avs_s0_read_target_synapse_addr <= '0';
	WAIT FOR 120000 ps;
	avs_s0_read_target_synapse_addr <= '1';
	WAIT FOR 10000 ps;
	avs_s0_read_target_synapse_addr <= '0';
	WAIT FOR 220000 ps;
	avs_s0_read_target_synapse_addr <= '1';
	WAIT FOR 10000 ps;
	avs_s0_read_target_synapse_addr <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_read_target_synapse_addr;
-- avs_s0_address[7]
t_prcs_avs_s0_address_7: PROCESS
BEGIN
	avs_s0_address(7) <= '0';
	WAIT FOR 400000 ps;
	avs_s0_address(7) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(7) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_7;
-- avs_s0_address[6]
t_prcs_avs_s0_address_6: PROCESS
BEGIN
	avs_s0_address(6) <= '0';
	WAIT FOR 400000 ps;
	avs_s0_address(6) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(6) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_6;
-- avs_s0_address[5]
t_prcs_avs_s0_address_5: PROCESS
BEGIN
	avs_s0_address(5) <= '0';
	WAIT FOR 400000 ps;
	avs_s0_address(5) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(5) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_5;
-- avs_s0_address[4]
t_prcs_avs_s0_address_4: PROCESS
BEGIN
	avs_s0_address(4) <= '0';
	WAIT FOR 400000 ps;
	avs_s0_address(4) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(4) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_4;
-- avs_s0_address[3]
t_prcs_avs_s0_address_3: PROCESS
BEGIN
	avs_s0_address(3) <= '0';
	WAIT FOR 400000 ps;
	avs_s0_address(3) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(3) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_3;
-- avs_s0_address[2]
t_prcs_avs_s0_address_2: PROCESS
BEGIN
	avs_s0_address(2) <= '0';
	WAIT FOR 40000 ps;
	avs_s0_address(2) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(2) <= '0';
	WAIT FOR 120000 ps;
	avs_s0_address(2) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(2) <= '0';
	WAIT FOR 220000 ps;
	avs_s0_address(2) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(2) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_2;
-- avs_s0_address[1]
t_prcs_avs_s0_address_1: PROCESS
BEGIN
	avs_s0_address(1) <= '0';
	WAIT FOR 170000 ps;
	avs_s0_address(1) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(1) <= '0';
	WAIT FOR 220000 ps;
	avs_s0_address(1) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_1;
-- avs_s0_address[0]
t_prcs_avs_s0_address_0: PROCESS
BEGIN
	avs_s0_address(0) <= '0';
	WAIT FOR 40000 ps;
	avs_s0_address(0) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(0) <= '0';
	WAIT FOR 350000 ps;
	avs_s0_address(0) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_0;
END simple_SDC_sm_arch;
