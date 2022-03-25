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
-- Generated on "03/23/2022 17:17:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          shift_regi
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY shift_regi_vhd_vec_tst IS
END shift_regi_vhd_vec_tst;
ARCHITECTURE shift_regi_arch OF shift_regi_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL DATA_EN : STD_LOGIC;
SIGNAL DATA_IN : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dbg_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dbg_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dbg_2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL shiftFlag : STD_LOGIC;
COMPONENT shift_regi
	PORT (
	clk : IN STD_LOGIC;
	DATA_EN : IN STD_LOGIC;
	DATA_IN : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dbg_0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	dbg_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	dbg_2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rst : IN STD_LOGIC;
	shiftFlag : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : shift_regi
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	DATA_EN => DATA_EN,
	DATA_IN => DATA_IN,
	dbg_0 => dbg_0,
	dbg_1 => dbg_1,
	dbg_2 => dbg_2,
	rst => rst,
	shiftFlag => shiftFlag
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
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
	rst <= '1';
	WAIT FOR 20000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- DATA_EN
t_prcs_DATA_EN: PROCESS
BEGIN
	DATA_EN <= '0';
	WAIT FOR 30000 ps;
	DATA_EN <= '1';
	WAIT FOR 20000 ps;
	DATA_EN <= '0';
	WAIT FOR 60000 ps;
	DATA_EN <= '1';
	WAIT FOR 20000 ps;
	DATA_EN <= '0';
	WAIT FOR 20000 ps;
	DATA_EN <= '1';
	WAIT FOR 20000 ps;
	DATA_EN <= '0';
WAIT;
END PROCESS t_prcs_DATA_EN;
-- DATA_IN[3]
t_prcs_DATA_IN_3: PROCESS
BEGIN
	DATA_IN(3) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_3;
-- DATA_IN[2]
t_prcs_DATA_IN_2: PROCESS
BEGIN
	DATA_IN(2) <= '0';
	WAIT FOR 150000 ps;
	DATA_IN(2) <= '1';
	WAIT FOR 20000 ps;
	DATA_IN(2) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_2;
-- DATA_IN[1]
t_prcs_DATA_IN_1: PROCESS
BEGIN
	DATA_IN(1) <= '0';
	WAIT FOR 110000 ps;
	DATA_IN(1) <= '1';
	WAIT FOR 20000 ps;
	DATA_IN(1) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_1;
-- DATA_IN[0]
t_prcs_DATA_IN_0: PROCESS
BEGIN
	DATA_IN(0) <= '0';
	WAIT FOR 30000 ps;
	DATA_IN(0) <= '1';
	WAIT FOR 20000 ps;
	DATA_IN(0) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_0;

-- shiftFlag
t_prcs_shiftFlag: PROCESS
BEGIN
	shiftFlag <= '0';
	WAIT FOR 70000 ps;
	shiftFlag <= '1';
	WAIT FOR 10000 ps;
	shiftFlag <= '0';
	WAIT FOR 50000 ps;
	shiftFlag <= '1';
	WAIT FOR 10000 ps;
	shiftFlag <= '0';
WAIT;
END PROCESS t_prcs_shiftFlag;
END shift_regi_arch;
