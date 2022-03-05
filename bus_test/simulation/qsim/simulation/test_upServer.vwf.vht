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
-- Generated on "03/05/2022 23:06:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          simple_up_server_sm
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY simple_up_server_sm_vhd_vec_tst IS
END simple_up_server_sm_vhd_vec_tst;
ARCHITECTURE simple_up_server_sm_arch OF simple_up_server_sm_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL avm_m0_address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL avm_m0_waitrequest : STD_LOGIC;
SIGNAL avm_m0_write_spike : STD_LOGIC;
SIGNAL avm_m0_writedata_spike_time : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL avm_m1_address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL avm_m1_read_target_synapse_addr : STD_LOGIC;
SIGNAL avm_m1_readdata_target_synapse_addr : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL avm_m1_waitrequest : STD_LOGIC;
SIGNAL avs_s0_address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL avs_s0_write_spike : STD_LOGIC;
SIGNAL avs_s0_writedata_spike_time : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT simple_up_server_sm
	PORT (
	avm_m0_address : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	avm_m0_waitrequest : IN STD_LOGIC;
	avm_m0_write_spike : OUT STD_LOGIC;
	avm_m0_writedata_spike_time : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	avm_m1_address : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	avm_m1_read_target_synapse_addr : OUT STD_LOGIC;
	avm_m1_readdata_target_synapse_addr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	avm_m1_waitrequest : IN STD_LOGIC;
	avs_s0_address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	avs_s0_write_spike : IN STD_LOGIC;
	avs_s0_writedata_spike_time : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	clk : IN STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : simple_up_server_sm
	PORT MAP (
-- list connections between master ports and signals
	avm_m0_address => avm_m0_address,
	avm_m0_waitrequest => avm_m0_waitrequest,
	avm_m0_write_spike => avm_m0_write_spike,
	avm_m0_writedata_spike_time => avm_m0_writedata_spike_time,
	avm_m1_address => avm_m1_address,
	avm_m1_read_target_synapse_addr => avm_m1_read_target_synapse_addr,
	avm_m1_readdata_target_synapse_addr => avm_m1_readdata_target_synapse_addr,
	avm_m1_waitrequest => avm_m1_waitrequest,
	avs_s0_address => avs_s0_address,
	avs_s0_write_spike => avs_s0_write_spike,
	avs_s0_writedata_spike_time => avs_s0_writedata_spike_time,
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
	WAIT FOR 20000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- avm_m0_waitrequest
t_prcs_avm_m0_waitrequest: PROCESS
BEGIN
	avm_m0_waitrequest <= '0';
WAIT;
END PROCESS t_prcs_avm_m0_waitrequest;
-- avm_m1_readdata_target_synapse_addr[7]
t_prcs_avm_m1_readdata_target_synapse_addr_7: PROCESS
BEGIN
	avm_m1_readdata_target_synapse_addr(7) <= '0';
WAIT;
END PROCESS t_prcs_avm_m1_readdata_target_synapse_addr_7;
-- avm_m1_readdata_target_synapse_addr[6]
t_prcs_avm_m1_readdata_target_synapse_addr_6: PROCESS
BEGIN
	avm_m1_readdata_target_synapse_addr(6) <= '0';
WAIT;
END PROCESS t_prcs_avm_m1_readdata_target_synapse_addr_6;
-- avm_m1_readdata_target_synapse_addr[5]
t_prcs_avm_m1_readdata_target_synapse_addr_5: PROCESS
BEGIN
	avm_m1_readdata_target_synapse_addr(5) <= '0';
WAIT;
END PROCESS t_prcs_avm_m1_readdata_target_synapse_addr_5;
-- avm_m1_readdata_target_synapse_addr[4]
t_prcs_avm_m1_readdata_target_synapse_addr_4: PROCESS
BEGIN
	avm_m1_readdata_target_synapse_addr(4) <= '0';
WAIT;
END PROCESS t_prcs_avm_m1_readdata_target_synapse_addr_4;
-- avm_m1_readdata_target_synapse_addr[3]
t_prcs_avm_m1_readdata_target_synapse_addr_3: PROCESS
BEGIN
	avm_m1_readdata_target_synapse_addr(3) <= '0';
WAIT;
END PROCESS t_prcs_avm_m1_readdata_target_synapse_addr_3;
-- avm_m1_readdata_target_synapse_addr[2]
t_prcs_avm_m1_readdata_target_synapse_addr_2: PROCESS
BEGIN
	avm_m1_readdata_target_synapse_addr(2) <= '0';
	WAIT FOR 90000 ps;
	avm_m1_readdata_target_synapse_addr(2) <= '1';
	WAIT FOR 40000 ps;
	avm_m1_readdata_target_synapse_addr(2) <= '0';
WAIT;
END PROCESS t_prcs_avm_m1_readdata_target_synapse_addr_2;
-- avm_m1_readdata_target_synapse_addr[1]
t_prcs_avm_m1_readdata_target_synapse_addr_1: PROCESS
BEGIN
	avm_m1_readdata_target_synapse_addr(1) <= '0';
	WAIT FOR 60000 ps;
	avm_m1_readdata_target_synapse_addr(1) <= '1';
	WAIT FOR 10000 ps;
	avm_m1_readdata_target_synapse_addr(1) <= '0';
	WAIT FOR 10000 ps;
	avm_m1_readdata_target_synapse_addr(1) <= '1';
	WAIT FOR 10000 ps;
	avm_m1_readdata_target_synapse_addr(1) <= '0';
	WAIT FOR 20000 ps;
	avm_m1_readdata_target_synapse_addr(1) <= '1';
	WAIT FOR 20000 ps;
	avm_m1_readdata_target_synapse_addr(1) <= '0';
WAIT;
END PROCESS t_prcs_avm_m1_readdata_target_synapse_addr_1;
-- avm_m1_readdata_target_synapse_addr[0]
t_prcs_avm_m1_readdata_target_synapse_addr_0: PROCESS
BEGIN
	avm_m1_readdata_target_synapse_addr(0) <= '0';
	WAIT FOR 60000 ps;
	avm_m1_readdata_target_synapse_addr(0) <= '1';
	WAIT FOR 20000 ps;
	avm_m1_readdata_target_synapse_addr(0) <= '0';
	WAIT FOR 20000 ps;
	avm_m1_readdata_target_synapse_addr(0) <= '1';
	WAIT FOR 10000 ps;
	avm_m1_readdata_target_synapse_addr(0) <= '0';
	WAIT FOR 10000 ps;
	avm_m1_readdata_target_synapse_addr(0) <= '1';
	WAIT FOR 10000 ps;
	avm_m1_readdata_target_synapse_addr(0) <= '0';
WAIT;
END PROCESS t_prcs_avm_m1_readdata_target_synapse_addr_0;

-- avm_m1_waitrequest
t_prcs_avm_m1_waitrequest: PROCESS
BEGIN
	avm_m1_waitrequest <= '0';
	WAIT FOR 50000 ps;
	avm_m1_waitrequest <= '1';
	WAIT FOR 80000 ps;
	avm_m1_waitrequest <= '0';
WAIT;
END PROCESS t_prcs_avm_m1_waitrequest;
-- avs_s0_address[7]
t_prcs_avs_s0_address_7: PROCESS
BEGIN
	avs_s0_address(7) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_7;
-- avs_s0_address[6]
t_prcs_avs_s0_address_6: PROCESS
BEGIN
	avs_s0_address(6) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_6;
-- avs_s0_address[5]
t_prcs_avs_s0_address_5: PROCESS
BEGIN
	avs_s0_address(5) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_5;
-- avs_s0_address[4]
t_prcs_avs_s0_address_4: PROCESS
BEGIN
	avs_s0_address(4) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_4;
-- avs_s0_address[3]
t_prcs_avs_s0_address_3: PROCESS
BEGIN
	avs_s0_address(3) <= '0';
	WAIT FOR 50000 ps;
	avs_s0_address(3) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(3) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_3;
-- avs_s0_address[2]
t_prcs_avs_s0_address_2: PROCESS
BEGIN
	avs_s0_address(2) <= '0';
	WAIT FOR 160000 ps;
	avs_s0_address(2) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(2) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_2;
-- avs_s0_address[1]
t_prcs_avs_s0_address_1: PROCESS
BEGIN
	avs_s0_address(1) <= '0';
	WAIT FOR 190000 ps;
	avs_s0_address(1) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_1;
-- avs_s0_address[0]
t_prcs_avs_s0_address_0: PROCESS
BEGIN
	avs_s0_address(0) <= '0';
	WAIT FOR 50000 ps;
	avs_s0_address(0) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(0) <= '0';
	WAIT FOR 100000 ps;
	avs_s0_address(0) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_address(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_address_0;

-- avs_s0_write_spike
t_prcs_avs_s0_write_spike: PROCESS
BEGIN
	avs_s0_write_spike <= '0';
	WAIT FOR 50000 ps;
	avs_s0_write_spike <= '1';
	WAIT FOR 10000 ps;
	avs_s0_write_spike <= '0';
	WAIT FOR 100000 ps;
	avs_s0_write_spike <= '1';
	WAIT FOR 10000 ps;
	avs_s0_write_spike <= '0';
	WAIT FOR 20000 ps;
	avs_s0_write_spike <= '1';
	WAIT FOR 10000 ps;
	avs_s0_write_spike <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_write_spike;
-- avs_s0_writedata_spike_time[8]
t_prcs_avs_s0_writedata_spike_time_8: PROCESS
BEGIN
	avs_s0_writedata_spike_time(8) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_spike_time_8;
-- avs_s0_writedata_spike_time[7]
t_prcs_avs_s0_writedata_spike_time_7: PROCESS
BEGIN
	avs_s0_writedata_spike_time(7) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_spike_time_7;
-- avs_s0_writedata_spike_time[6]
t_prcs_avs_s0_writedata_spike_time_6: PROCESS
BEGIN
	avs_s0_writedata_spike_time(6) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_spike_time_6;
-- avs_s0_writedata_spike_time[5]
t_prcs_avs_s0_writedata_spike_time_5: PROCESS
BEGIN
	avs_s0_writedata_spike_time(5) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_spike_time_5;
-- avs_s0_writedata_spike_time[4]
t_prcs_avs_s0_writedata_spike_time_4: PROCESS
BEGIN
	avs_s0_writedata_spike_time(4) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_spike_time_4;
-- avs_s0_writedata_spike_time[3]
t_prcs_avs_s0_writedata_spike_time_3: PROCESS
BEGIN
	avs_s0_writedata_spike_time(3) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_spike_time_3;
-- avs_s0_writedata_spike_time[2]
t_prcs_avs_s0_writedata_spike_time_2: PROCESS
BEGIN
	avs_s0_writedata_spike_time(2) <= '0';
	WAIT FOR 50000 ps;
	avs_s0_writedata_spike_time(2) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_writedata_spike_time(2) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_spike_time_2;
-- avs_s0_writedata_spike_time[1]
t_prcs_avs_s0_writedata_spike_time_1: PROCESS
BEGIN
	avs_s0_writedata_spike_time(1) <= '0';
	WAIT FOR 160000 ps;
	avs_s0_writedata_spike_time(1) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_writedata_spike_time(1) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_spike_time_1;
-- avs_s0_writedata_spike_time[0]
t_prcs_avs_s0_writedata_spike_time_0: PROCESS
BEGIN
	avs_s0_writedata_spike_time(0) <= '0';
	WAIT FOR 50000 ps;
	avs_s0_writedata_spike_time(0) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_writedata_spike_time(0) <= '0';
	WAIT FOR 100000 ps;
	avs_s0_writedata_spike_time(0) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_writedata_spike_time(0) <= '0';
	WAIT FOR 20000 ps;
	avs_s0_writedata_spike_time(0) <= '1';
	WAIT FOR 10000 ps;
	avs_s0_writedata_spike_time(0) <= '0';
WAIT;
END PROCESS t_prcs_avs_s0_writedata_spike_time_0;
END simple_up_server_sm_arch;
