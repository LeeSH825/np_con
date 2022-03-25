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
-- Generated on "03/13/2022 17:07:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          test
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY test_vhd_vec_tst IS
END test_vhd_vec_tst;
ARCHITECTURE test_arch OF test_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr_master_0_data_in_condiut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL addr_master_0_dbg_data_in_conduit : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL addr_master_0_dbg_input_en_conduit : STD_LOGIC;
SIGNAL addr_master_0_dbg_output_en_conduit : STD_LOGIC;
SIGNAL addr_master_0_dbg_write_data_conduit : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL addr_master_0_dbg_write_to_conduit : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL addr_master_0_input_en_conduit : STD_LOGIC;
SIGNAL addr_master_0_output_en_conduit : STD_LOGIC;
SIGNAL addr_master_0_write_to_conduit : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL addr_slave_0_dbg_chip_conduit : STD_LOGIC;
SIGNAL addr_slave_0_dbg_data_conduit : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL addr_slave_0_dbg_data_write_conduit : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL addr_slave_0_dbg_out_en_conduit : STD_LOGIC;
SIGNAL addr_slave_0_dbg_wait_pin_conduit : STD_LOGIC;
SIGNAL addr_slave_0_out_en_conduit : STD_LOGIC;
SIGNAL addr_slave_0_output_en_conduit : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL addr_slave_0_wait_pin_conduit : STD_LOGIC;
SIGNAL clk_clk : STD_LOGIC;
SIGNAL reset_reset_n : STD_LOGIC;
COMPONENT test
	PORT (
	addr_master_0_data_in_condiut : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	addr_master_0_dbg_data_in_conduit : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	addr_master_0_dbg_input_en_conduit : BUFFER STD_LOGIC;
	addr_master_0_dbg_output_en_conduit : BUFFER STD_LOGIC;
	addr_master_0_dbg_write_data_conduit : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	addr_master_0_dbg_write_to_conduit : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	addr_master_0_input_en_conduit : IN STD_LOGIC;
	addr_master_0_output_en_conduit : IN STD_LOGIC;
	addr_master_0_write_to_conduit : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	addr_slave_0_dbg_chip_conduit : BUFFER STD_LOGIC;
	addr_slave_0_dbg_data_conduit : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	addr_slave_0_dbg_data_write_conduit : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	addr_slave_0_dbg_out_en_conduit : BUFFER STD_LOGIC;
	addr_slave_0_dbg_wait_pin_conduit : BUFFER STD_LOGIC;
	addr_slave_0_out_en_conduit : IN STD_LOGIC;
	addr_slave_0_output_en_conduit : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	addr_slave_0_wait_pin_conduit : IN STD_LOGIC;
	clk_clk : IN STD_LOGIC;
	reset_reset_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : test
	PORT MAP (
-- list connections between master ports and signals
	addr_master_0_data_in_condiut => addr_master_0_data_in_condiut,
	addr_master_0_dbg_data_in_conduit => addr_master_0_dbg_data_in_conduit,
	addr_master_0_dbg_input_en_conduit => addr_master_0_dbg_input_en_conduit,
	addr_master_0_dbg_output_en_conduit => addr_master_0_dbg_output_en_conduit,
	addr_master_0_dbg_write_data_conduit => addr_master_0_dbg_write_data_conduit,
	addr_master_0_dbg_write_to_conduit => addr_master_0_dbg_write_to_conduit,
	addr_master_0_input_en_conduit => addr_master_0_input_en_conduit,
	addr_master_0_output_en_conduit => addr_master_0_output_en_conduit,
	addr_master_0_write_to_conduit => addr_master_0_write_to_conduit,
	addr_slave_0_dbg_chip_conduit => addr_slave_0_dbg_chip_conduit,
	addr_slave_0_dbg_data_conduit => addr_slave_0_dbg_data_conduit,
	addr_slave_0_dbg_data_write_conduit => addr_slave_0_dbg_data_write_conduit,
	addr_slave_0_dbg_out_en_conduit => addr_slave_0_dbg_out_en_conduit,
	addr_slave_0_dbg_wait_pin_conduit => addr_slave_0_dbg_wait_pin_conduit,
	addr_slave_0_out_en_conduit => addr_slave_0_out_en_conduit,
	addr_slave_0_output_en_conduit => addr_slave_0_output_en_conduit,
	addr_slave_0_wait_pin_conduit => addr_slave_0_wait_pin_conduit,
	clk_clk => clk_clk,
	reset_reset_n => reset_reset_n
	);
-- addr_master_0_data_in_condiut[7]
t_prcs_addr_master_0_data_in_condiut_7: PROCESS
BEGIN
	addr_master_0_data_in_condiut(7) <= '0';
	WAIT FOR 80000 ps;
	addr_master_0_data_in_condiut(7) <= '1';
	WAIT FOR 10000 ps;
	addr_master_0_data_in_condiut(7) <= '0';
WAIT;
END PROCESS t_prcs_addr_master_0_data_in_condiut_7;
-- addr_master_0_data_in_condiut[6]
t_prcs_addr_master_0_data_in_condiut_6: PROCESS
BEGIN
	addr_master_0_data_in_condiut(6) <= '0';
	WAIT FOR 80000 ps;
	addr_master_0_data_in_condiut(6) <= '1';
	WAIT FOR 10000 ps;
	addr_master_0_data_in_condiut(6) <= '0';
WAIT;
END PROCESS t_prcs_addr_master_0_data_in_condiut_6;
-- addr_master_0_data_in_condiut[5]
t_prcs_addr_master_0_data_in_condiut_5: PROCESS
BEGIN
	addr_master_0_data_in_condiut(5) <= '0';
	WAIT FOR 80000 ps;
	addr_master_0_data_in_condiut(5) <= '1';
	WAIT FOR 10000 ps;
	addr_master_0_data_in_condiut(5) <= '0';
WAIT;
END PROCESS t_prcs_addr_master_0_data_in_condiut_5;
-- addr_master_0_data_in_condiut[4]
t_prcs_addr_master_0_data_in_condiut_4: PROCESS
BEGIN
	addr_master_0_data_in_condiut(4) <= '0';
	WAIT FOR 80000 ps;
	addr_master_0_data_in_condiut(4) <= '1';
	WAIT FOR 10000 ps;
	addr_master_0_data_in_condiut(4) <= '0';
WAIT;
END PROCESS t_prcs_addr_master_0_data_in_condiut_4;
-- addr_master_0_data_in_condiut[3]
t_prcs_addr_master_0_data_in_condiut_3: PROCESS
BEGIN
	addr_master_0_data_in_condiut(3) <= '0';
	WAIT FOR 80000 ps;
	addr_master_0_data_in_condiut(3) <= '1';
	WAIT FOR 10000 ps;
	addr_master_0_data_in_condiut(3) <= '0';
WAIT;
END PROCESS t_prcs_addr_master_0_data_in_condiut_3;
-- addr_master_0_data_in_condiut[2]
t_prcs_addr_master_0_data_in_condiut_2: PROCESS
BEGIN
	addr_master_0_data_in_condiut(2) <= '0';
	WAIT FOR 80000 ps;
	addr_master_0_data_in_condiut(2) <= '1';
	WAIT FOR 10000 ps;
	addr_master_0_data_in_condiut(2) <= '0';
WAIT;
END PROCESS t_prcs_addr_master_0_data_in_condiut_2;
-- addr_master_0_data_in_condiut[1]
t_prcs_addr_master_0_data_in_condiut_1: PROCESS
BEGIN
	addr_master_0_data_in_condiut(1) <= '0';
	WAIT FOR 80000 ps;
	addr_master_0_data_in_condiut(1) <= '1';
	WAIT FOR 10000 ps;
	addr_master_0_data_in_condiut(1) <= '0';
WAIT;
END PROCESS t_prcs_addr_master_0_data_in_condiut_1;
-- addr_master_0_data_in_condiut[0]
t_prcs_addr_master_0_data_in_condiut_0: PROCESS
BEGIN
	addr_master_0_data_in_condiut(0) <= '0';
	WAIT FOR 80000 ps;
	addr_master_0_data_in_condiut(0) <= '1';
	WAIT FOR 10000 ps;
	addr_master_0_data_in_condiut(0) <= '0';
WAIT;
END PROCESS t_prcs_addr_master_0_data_in_condiut_0;

-- addr_master_0_input_en_conduit
t_prcs_addr_master_0_input_en_conduit: PROCESS
BEGIN
	addr_master_0_input_en_conduit <= '0';
	WAIT FOR 80000 ps;
	addr_master_0_input_en_conduit <= '1';
	WAIT FOR 10000 ps;
	addr_master_0_input_en_conduit <= '0';
WAIT;
END PROCESS t_prcs_addr_master_0_input_en_conduit;

-- addr_master_0_output_en_conduit
t_prcs_addr_master_0_output_en_conduit: PROCESS
BEGIN
	addr_master_0_output_en_conduit <= '0';
	WAIT FOR 80000 ps;
	addr_master_0_output_en_conduit <= '1';
	WAIT FOR 10000 ps;
	addr_master_0_output_en_conduit <= '0';
WAIT;
END PROCESS t_prcs_addr_master_0_output_en_conduit;
-- addr_master_0_write_to_conduit[2]
t_prcs_addr_master_0_write_to_conduit_2: PROCESS
BEGIN
	addr_master_0_write_to_conduit(2) <= '0';
WAIT;
END PROCESS t_prcs_addr_master_0_write_to_conduit_2;
-- addr_master_0_write_to_conduit[1]
t_prcs_addr_master_0_write_to_conduit_1: PROCESS
BEGIN
	addr_master_0_write_to_conduit(1) <= '0';
WAIT;
END PROCESS t_prcs_addr_master_0_write_to_conduit_1;
-- addr_master_0_write_to_conduit[0]
t_prcs_addr_master_0_write_to_conduit_0: PROCESS
BEGIN
	addr_master_0_write_to_conduit(0) <= '0';
WAIT;
END PROCESS t_prcs_addr_master_0_write_to_conduit_0;

-- addr_slave_0_out_en_conduit
t_prcs_addr_slave_0_out_en_conduit: PROCESS
BEGIN
	addr_slave_0_out_en_conduit <= '0';
	WAIT FOR 100000 ps;
	addr_slave_0_out_en_conduit <= '1';
	WAIT FOR 10000 ps;
	addr_slave_0_out_en_conduit <= '0';
WAIT;
END PROCESS t_prcs_addr_slave_0_out_en_conduit;

-- addr_slave_0_wait_pin_conduit
t_prcs_addr_slave_0_wait_pin_conduit: PROCESS
BEGIN
	addr_slave_0_wait_pin_conduit <= '0';
WAIT;
END PROCESS t_prcs_addr_slave_0_wait_pin_conduit;

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
	reset_reset_n <= '0';
	WAIT FOR 10000 ps;
	reset_reset_n <= '1';
	WAIT FOR 20000 ps;
	reset_reset_n <= '0';
WAIT;
END PROCESS t_prcs_reset_reset_n;
END test_arch;
