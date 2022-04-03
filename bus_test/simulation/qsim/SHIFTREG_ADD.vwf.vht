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
-- Generated on "03/29/2022 19:59:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          STDP_reg_module
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY STDP_reg_module_vhd_vec_tst IS
END STDP_reg_module_vhd_vec_tst;
ARCHITECTURE STDP_reg_module_arch OF STDP_reg_module_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_STDP_reg_module : STD_LOGIC;
SIGNAL dbg_cal : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL dbg_cal_sig : STD_LOGIC;
SIGNAL IDX_POST : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL IDX_PRE : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL popWeightDATA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL pushPOSTneuron : STD_LOGIC;
SIGNAL pushPOSTneuronDATA : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL pushPREneuron : STD_LOGIC;
SIGNAL pushPREneuronDATA : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL requestWeight : STD_LOGIC;
SIGNAL rst_STDP_reg_module : STD_LOGIC;
SIGNAL wait_CAL : STD_LOGIC;
COMPONENT STDP_reg_module
	PORT (
	clk_STDP_reg_module : IN STD_LOGIC;
	dbg_cal : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	dbg_cal_sig : BUFFER STD_LOGIC;
	IDX_POST : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	IDX_PRE : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	popWeightDATA : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	pushPOSTneuron : IN STD_LOGIC;
	pushPOSTneuronDATA : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	pushPREneuron : IN STD_LOGIC;
	pushPREneuronDATA : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	requestWeight : IN STD_LOGIC;
	rst_STDP_reg_module : IN STD_LOGIC;
	wait_CAL : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : STDP_reg_module
	PORT MAP (
-- list connections between master ports and signals
	clk_STDP_reg_module => clk_STDP_reg_module,
	dbg_cal => dbg_cal,
	dbg_cal_sig => dbg_cal_sig,
	IDX_POST => IDX_POST,
	IDX_PRE => IDX_PRE,
	popWeightDATA => popWeightDATA,
	pushPOSTneuron => pushPOSTneuron,
	pushPOSTneuronDATA => pushPOSTneuronDATA,
	pushPREneuron => pushPREneuron,
	pushPREneuronDATA => pushPREneuronDATA,
	requestWeight => requestWeight,
	rst_STDP_reg_module => rst_STDP_reg_module,
	wait_CAL => wait_CAL
	);
END STDP_reg_module_arch;
