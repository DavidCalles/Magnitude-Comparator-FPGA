-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- Generated on "07/05/2021 20:13:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DCalles_Lab5_MagnitudeComparator
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DCalles_Lab5_MagnitudeComparator_vhd_vec_tst IS
END DCalles_Lab5_MagnitudeComparator_vhd_vec_tst;
ARCHITECTURE DCalles_Lab5_MagnitudeComparator_arch OF DCalles_Lab5_MagnitudeComparator_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL led : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL sw : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT DCalles_Lab5_MagnitudeComparator
	PORT (
	led : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	sw : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : DCalles_Lab5_MagnitudeComparator
	PORT MAP (
-- list connections between master ports and signals
	led => led,
	sw => sw
	);

-- sw[7]
t_prcs_sw_7: PROCESS
BEGIN
	sw(7) <= '1';
	WAIT FOR 170000 ps;
	sw(7) <= '0';
	WAIT FOR 90000 ps;
	sw(7) <= '1';
	WAIT FOR 110000 ps;
	sw(7) <= '0';
WAIT;
END PROCESS t_prcs_sw_7;

-- sw[6]
t_prcs_sw_6: PROCESS
BEGIN
	sw(6) <= '1';
	WAIT FOR 170000 ps;
	sw(6) <= '0';
	WAIT FOR 90000 ps;
	sw(6) <= '1';
	WAIT FOR 110000 ps;
	sw(6) <= '0';
WAIT;
END PROCESS t_prcs_sw_6;

-- sw[5]
t_prcs_sw_5: PROCESS
BEGIN
	sw(5) <= '0';
	WAIT FOR 170000 ps;
	sw(5) <= '1';
	WAIT FOR 200000 ps;
	sw(5) <= '0';
WAIT;
END PROCESS t_prcs_sw_5;

-- sw[4]
t_prcs_sw_4: PROCESS
BEGIN
	sw(4) <= '0';
	WAIT FOR 260000 ps;
	sw(4) <= '1';
	WAIT FOR 110000 ps;
	sw(4) <= '0';
WAIT;
END PROCESS t_prcs_sw_4;

-- sw[3]
t_prcs_sw_3: PROCESS
BEGIN
	sw(3) <= '1';
	WAIT FOR 170000 ps;
	sw(3) <= '0';
WAIT;
END PROCESS t_prcs_sw_3;

-- sw[2]
t_prcs_sw_2: PROCESS
BEGIN
	sw(2) <= '0';
	WAIT FOR 90000 ps;
	sw(2) <= '1';
	WAIT FOR 80000 ps;
	sw(2) <= '0';
	WAIT FOR 90000 ps;
	sw(2) <= '1';
	WAIT FOR 110000 ps;
	sw(2) <= '0';
WAIT;
END PROCESS t_prcs_sw_2;

-- sw[1]
t_prcs_sw_1: PROCESS
BEGIN
	sw(1) <= '0';
	WAIT FOR 90000 ps;
	sw(1) <= '1';
	WAIT FOR 170000 ps;
	sw(1) <= '0';
WAIT;
END PROCESS t_prcs_sw_1;

-- sw[0]
t_prcs_sw_0: PROCESS
BEGIN
	sw(0) <= '1';
	WAIT FOR 90000 ps;
	sw(0) <= '0';
WAIT;
END PROCESS t_prcs_sw_0;
END DCalles_Lab5_MagnitudeComparator_arch;
