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
-- Generated on "03/25/2022 00:03:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          shift_regi_post
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY shift_regi_post_vhd_vec_tst IS
END shift_regi_post_vhd_vec_tst;
ARCHITECTURE shift_regi_post_arch OF shift_regi_post_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL DATA_CAL_EN : STD_LOGIC;
SIGNAL DATA_CAL_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DATA_CAL_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DATA_EN : STD_LOGIC;
SIGNAL DATA_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DATA_MOD_EN : STD_LOGIC;
SIGNAL DATA_MOD_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dbg_0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dbg_1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dbg_2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dbg_3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dbg_top : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL POP_ADDR : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL POP_EN : STD_LOGIC;
SIGNAL POP_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT shift_regi_post
	PORT (
	clk : IN STD_LOGIC;
	DATA_CAL_EN : IN STD_LOGIC;
	DATA_CAL_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	DATA_CAL_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DATA_EN : IN STD_LOGIC;
	DATA_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	DATA_MOD_EN : IN STD_LOGIC;
	DATA_MOD_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dbg_0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	dbg_1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	dbg_2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	dbg_3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	dbg_top : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	POP_ADDR : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	POP_EN : IN STD_LOGIC;
	POP_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : shift_regi_post
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	DATA_CAL_EN => DATA_CAL_EN,
	DATA_CAL_IN => DATA_CAL_IN,
	DATA_CAL_OUT => DATA_CAL_OUT,
	DATA_EN => DATA_EN,
	DATA_IN => DATA_IN,
	DATA_MOD_EN => DATA_MOD_EN,
	DATA_MOD_IN => DATA_MOD_IN,
	dbg_0 => dbg_0,
	dbg_1 => dbg_1,
	dbg_2 => dbg_2,
	dbg_3 => dbg_3,
	dbg_top => dbg_top,
	POP_ADDR => POP_ADDR,
	POP_EN => POP_EN,
	POP_OUT => POP_OUT,
	rst => rst
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
	rst <= '0';
	WAIT FOR 20000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
	WAIT FOR 330000 ps;
	rst <= '1';
	WAIT FOR 10000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- DATA_EN
t_prcs_DATA_EN: PROCESS
BEGIN
	DATA_EN <= '0';
	WAIT FOR 70000 ps;
	DATA_EN <= '1';
	WAIT FOR 10000 ps;
	DATA_EN <= '0';
	WAIT FOR 40000 ps;
	DATA_EN <= '1';
	WAIT FOR 10000 ps;
	DATA_EN <= '0';
	WAIT FOR 20000 ps;
	DATA_EN <= '1';
	WAIT FOR 10000 ps;
	DATA_EN <= '0';
	WAIT FOR 50000 ps;
	DATA_EN <= '1';
	WAIT FOR 10000 ps;
	DATA_EN <= '0';
	WAIT FOR 40000 ps;
	DATA_EN <= '1';
	WAIT FOR 10000 ps;
	DATA_EN <= '0';
WAIT;
END PROCESS t_prcs_DATA_EN;
-- DATA_IN[7]
t_prcs_DATA_IN_7: PROCESS
BEGIN
	DATA_IN(7) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_7;
-- DATA_IN[6]
t_prcs_DATA_IN_6: PROCESS
BEGIN
	DATA_IN(6) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_6;
-- DATA_IN[5]
t_prcs_DATA_IN_5: PROCESS
BEGIN
	DATA_IN(5) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_5;
-- DATA_IN[4]
t_prcs_DATA_IN_4: PROCESS
BEGIN
	DATA_IN(4) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_4;
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
	WAIT FOR 210000 ps;
	DATA_IN(2) <= '1';
	WAIT FOR 10000 ps;
	DATA_IN(2) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_2;
-- DATA_IN[1]
t_prcs_DATA_IN_1: PROCESS
BEGIN
	DATA_IN(1) <= '0';
	WAIT FOR 120000 ps;
	DATA_IN(1) <= '1';
	WAIT FOR 10000 ps;
	DATA_IN(1) <= '0';
	WAIT FOR 20000 ps;
	DATA_IN(1) <= '1';
	WAIT FOR 10000 ps;
	DATA_IN(1) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_1;
-- DATA_IN[0]
t_prcs_DATA_IN_0: PROCESS
BEGIN
	DATA_IN(0) <= '0';
	WAIT FOR 70000 ps;
	DATA_IN(0) <= '1';
	WAIT FOR 10000 ps;
	DATA_IN(0) <= '0';
	WAIT FOR 70000 ps;
	DATA_IN(0) <= '1';
	WAIT FOR 10000 ps;
	DATA_IN(0) <= '0';
	WAIT FOR 100000 ps;
	DATA_IN(0) <= '1';
	WAIT FOR 10000 ps;
	DATA_IN(0) <= '0';
WAIT;
END PROCESS t_prcs_DATA_IN_0;

-- DATA_MOD_EN
t_prcs_DATA_MOD_EN: PROCESS
BEGIN
	DATA_MOD_EN <= '0';
	WAIT FOR 190000 ps;
	DATA_MOD_EN <= '1';
	WAIT FOR 10000 ps;
	DATA_MOD_EN <= '0';
WAIT;
END PROCESS t_prcs_DATA_MOD_EN;
-- DATA_MOD_IN[7]
t_prcs_DATA_MOD_IN_7: PROCESS
BEGIN
	DATA_MOD_IN(7) <= '0';
WAIT;
END PROCESS t_prcs_DATA_MOD_IN_7;
-- DATA_MOD_IN[6]
t_prcs_DATA_MOD_IN_6: PROCESS
BEGIN
	DATA_MOD_IN(6) <= '0';
WAIT;
END PROCESS t_prcs_DATA_MOD_IN_6;
-- DATA_MOD_IN[5]
t_prcs_DATA_MOD_IN_5: PROCESS
BEGIN
	DATA_MOD_IN(5) <= '0';
WAIT;
END PROCESS t_prcs_DATA_MOD_IN_5;
-- DATA_MOD_IN[4]
t_prcs_DATA_MOD_IN_4: PROCESS
BEGIN
	DATA_MOD_IN(4) <= '0';
WAIT;
END PROCESS t_prcs_DATA_MOD_IN_4;
-- DATA_MOD_IN[3]
t_prcs_DATA_MOD_IN_3: PROCESS
BEGIN
	DATA_MOD_IN(3) <= '0';
WAIT;
END PROCESS t_prcs_DATA_MOD_IN_3;
-- DATA_MOD_IN[2]
t_prcs_DATA_MOD_IN_2: PROCESS
BEGIN
	DATA_MOD_IN(2) <= '0';
WAIT;
END PROCESS t_prcs_DATA_MOD_IN_2;
-- DATA_MOD_IN[1]
t_prcs_DATA_MOD_IN_1: PROCESS
BEGIN
	DATA_MOD_IN(1) <= '0';
	WAIT FOR 190000 ps;
	DATA_MOD_IN(1) <= '1';
	WAIT FOR 10000 ps;
	DATA_MOD_IN(1) <= '0';
WAIT;
END PROCESS t_prcs_DATA_MOD_IN_1;
-- DATA_MOD_IN[0]
t_prcs_DATA_MOD_IN_0: PROCESS
BEGIN
	DATA_MOD_IN(0) <= '0';
WAIT;
END PROCESS t_prcs_DATA_MOD_IN_0;

-- DATA_CAL_EN
t_prcs_DATA_CAL_EN: PROCESS
BEGIN
	DATA_CAL_EN <= '0';
	WAIT FOR 240000 ps;
	DATA_CAL_EN <= '1';
	WAIT FOR 10000 ps;
	DATA_CAL_EN <= '0';
WAIT;
END PROCESS t_prcs_DATA_CAL_EN;
-- DATA_CAL_IN[7]
t_prcs_DATA_CAL_IN_7: PROCESS
BEGIN
	DATA_CAL_IN(7) <= '0';
WAIT;
END PROCESS t_prcs_DATA_CAL_IN_7;
-- DATA_CAL_IN[6]
t_prcs_DATA_CAL_IN_6: PROCESS
BEGIN
	DATA_CAL_IN(6) <= '0';
WAIT;
END PROCESS t_prcs_DATA_CAL_IN_6;
-- DATA_CAL_IN[5]
t_prcs_DATA_CAL_IN_5: PROCESS
BEGIN
	DATA_CAL_IN(5) <= '0';
WAIT;
END PROCESS t_prcs_DATA_CAL_IN_5;
-- DATA_CAL_IN[4]
t_prcs_DATA_CAL_IN_4: PROCESS
BEGIN
	DATA_CAL_IN(4) <= '0';
WAIT;
END PROCESS t_prcs_DATA_CAL_IN_4;
-- DATA_CAL_IN[3]
t_prcs_DATA_CAL_IN_3: PROCESS
BEGIN
	DATA_CAL_IN(3) <= '0';
WAIT;
END PROCESS t_prcs_DATA_CAL_IN_3;
-- DATA_CAL_IN[2]
t_prcs_DATA_CAL_IN_2: PROCESS
BEGIN
	DATA_CAL_IN(2) <= '0';
WAIT;
END PROCESS t_prcs_DATA_CAL_IN_2;
-- DATA_CAL_IN[1]
t_prcs_DATA_CAL_IN_1: PROCESS
BEGIN
	DATA_CAL_IN(1) <= '0';
WAIT;
END PROCESS t_prcs_DATA_CAL_IN_1;
-- DATA_CAL_IN[0]
t_prcs_DATA_CAL_IN_0: PROCESS
BEGIN
	DATA_CAL_IN(0) <= '0';
	WAIT FOR 240000 ps;
	DATA_CAL_IN(0) <= '1';
	WAIT FOR 10000 ps;
	DATA_CAL_IN(0) <= '0';
WAIT;
END PROCESS t_prcs_DATA_CAL_IN_0;

-- POP_EN
t_prcs_POP_EN: PROCESS
BEGIN
	POP_EN <= '0';
	WAIT FOR 280000 ps;
	POP_EN <= '1';
	WAIT FOR 40000 ps;
	POP_EN <= '0';
WAIT;
END PROCESS t_prcs_POP_EN;
-- POP_ADDR[2]
t_prcs_POP_ADDR_2: PROCESS
BEGIN
	POP_ADDR(2) <= '0';
WAIT;
END PROCESS t_prcs_POP_ADDR_2;
-- POP_ADDR[1]
t_prcs_POP_ADDR_1: PROCESS
BEGIN
	POP_ADDR(1) <= '0';
	WAIT FOR 300000 ps;
	POP_ADDR(1) <= '1';
	WAIT FOR 20000 ps;
	POP_ADDR(1) <= '0';
WAIT;
END PROCESS t_prcs_POP_ADDR_1;
-- POP_ADDR[0]
t_prcs_POP_ADDR_0: PROCESS
BEGIN
	POP_ADDR(0) <= '0';
	WAIT FOR 290000 ps;
	POP_ADDR(0) <= '1';
	WAIT FOR 10000 ps;
	POP_ADDR(0) <= '0';
	WAIT FOR 10000 ps;
	POP_ADDR(0) <= '1';
	WAIT FOR 10000 ps;
	POP_ADDR(0) <= '0';
WAIT;
END PROCESS t_prcs_POP_ADDR_0;
END shift_regi_post_arch;
