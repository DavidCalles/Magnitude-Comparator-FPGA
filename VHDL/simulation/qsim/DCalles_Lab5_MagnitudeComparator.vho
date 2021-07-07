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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "07/05/2021 20:13:32"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DCalles_Lab5_MagnitudeComparator IS
    PORT (
	sw : IN std_logic_vector(7 DOWNTO 0);
	led : OUT std_logic_vector(2 DOWNTO 0)
	);
END DCalles_Lab5_MagnitudeComparator;

-- Design Ports Information
-- led[0]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DCalles_Lab5_MagnitudeComparator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \Comparator1|BigA~0_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \Comparator1|BigA~1_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \Comparator1|BigB~combout\ : std_logic;
SIGNAL \Comparator1|BigA~2_combout\ : std_logic;
SIGNAL \Comparator1|Equal~combout\ : std_logic;
SIGNAL \Comparator1|ALT_INV_BigA~1_combout\ : std_logic;
SIGNAL \Comparator1|ALT_INV_BigA~0_combout\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \Comparator1|ALT_INV_Equal~combout\ : std_logic;
SIGNAL \ALT_INV_sw[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[7]~input_o\ : std_logic;

BEGIN

ww_sw <= sw;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Comparator1|ALT_INV_BigA~1_combout\ <= NOT \Comparator1|BigA~1_combout\;
\Comparator1|ALT_INV_BigA~0_combout\ <= NOT \Comparator1|BigA~0_combout\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\Comparator1|ALT_INV_Equal~combout\ <= NOT \Comparator1|Equal~combout\;
\ALT_INV_sw[4]~input_o\ <= NOT \sw[4]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_sw[5]~input_o\ <= NOT \sw[5]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_sw[3]~input_o\ <= NOT \sw[3]~input_o\;
\ALT_INV_sw[6]~input_o\ <= NOT \sw[6]~input_o\;
\ALT_INV_sw[7]~input_o\ <= NOT \sw[7]~input_o\;

-- Location: IOOBUF_X89_Y23_N39
\led[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Comparator1|BigB~combout\,
	devoe => ww_devoe,
	o => ww_led(0));

-- Location: IOOBUF_X89_Y20_N96
\led[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Comparator1|BigA~2_combout\,
	devoe => ww_devoe,
	o => ww_led(1));

-- Location: IOOBUF_X89_Y23_N56
\led[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Comparator1|ALT_INV_Equal~combout\,
	devoe => ww_devoe,
	o => ww_led(2));

-- Location: IOIBUF_X89_Y21_N21
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X89_Y21_N4
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: LABCELL_X88_Y21_N30
\Comparator1|BigA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Comparator1|BigA~0_combout\ = ( \sw[2]~input_o\ & ( \sw[6]~input_o\ & ( !\sw[7]~input_o\ $ (\sw[3]~input_o\) ) ) ) # ( !\sw[2]~input_o\ & ( !\sw[6]~input_o\ & ( !\sw[7]~input_o\ $ (\sw[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011000000000000000000000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[7]~input_o\,
	datac => \ALT_INV_sw[3]~input_o\,
	datae => \ALT_INV_sw[2]~input_o\,
	dataf => \ALT_INV_sw[6]~input_o\,
	combout => \Comparator1|BigA~0_combout\);

-- Location: IOIBUF_X89_Y20_N78
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LABCELL_X88_Y21_N39
\Comparator1|BigA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Comparator1|BigA~1_combout\ = ( \sw[2]~input_o\ & ( \sw[6]~input_o\ & ( (!\sw[3]~input_o\ & \sw[7]~input_o\) ) ) ) # ( !\sw[2]~input_o\ & ( \sw[6]~input_o\ & ( (!\sw[3]~input_o\) # (\sw[7]~input_o\) ) ) ) # ( \sw[2]~input_o\ & ( !\sw[6]~input_o\ & ( 
-- (!\sw[3]~input_o\ & \sw[7]~input_o\) ) ) ) # ( !\sw[2]~input_o\ & ( !\sw[6]~input_o\ & ( (!\sw[3]~input_o\ & \sw[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101111101011110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[3]~input_o\,
	datac => \ALT_INV_sw[7]~input_o\,
	datae => \ALT_INV_sw[2]~input_o\,
	dataf => \ALT_INV_sw[6]~input_o\,
	combout => \Comparator1|BigA~1_combout\);

-- Location: IOIBUF_X89_Y21_N55
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LABCELL_X88_Y21_N42
\Comparator1|BigB\ : cyclonev_lcell_comb
-- Equation(s):
-- \Comparator1|BigB~combout\ = ( \sw[5]~input_o\ & ( \sw[4]~input_o\ & ( (!\Comparator1|BigA~0_combout\ & !\Comparator1|BigA~1_combout\) ) ) ) # ( !\sw[5]~input_o\ & ( \sw[4]~input_o\ & ( (!\Comparator1|BigA~1_combout\ & ((!\Comparator1|BigA~0_combout\) # 
-- (\sw[1]~input_o\))) ) ) ) # ( \sw[5]~input_o\ & ( !\sw[4]~input_o\ & ( (!\Comparator1|BigA~1_combout\ & ((!\Comparator1|BigA~0_combout\) # ((\sw[0]~input_o\ & \sw[1]~input_o\)))) ) ) ) # ( !\sw[5]~input_o\ & ( !\sw[4]~input_o\ & ( 
-- (!\Comparator1|BigA~1_combout\ & (((!\Comparator1|BigA~0_combout\) # (\sw[1]~input_o\)) # (\sw[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100000000110011010000000011001111000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[0]~input_o\,
	datab => \Comparator1|ALT_INV_BigA~0_combout\,
	datac => \ALT_INV_sw[1]~input_o\,
	datad => \Comparator1|ALT_INV_BigA~1_combout\,
	datae => \ALT_INV_sw[5]~input_o\,
	dataf => \ALT_INV_sw[4]~input_o\,
	combout => \Comparator1|BigB~combout\);

-- Location: LABCELL_X88_Y21_N48
\Comparator1|BigA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Comparator1|BigA~2_combout\ = ( \sw[5]~input_o\ & ( \sw[4]~input_o\ & ( ((\Comparator1|BigA~0_combout\ & ((!\sw[0]~input_o\) # (!\sw[1]~input_o\)))) # (\Comparator1|BigA~1_combout\) ) ) ) # ( !\sw[5]~input_o\ & ( \sw[4]~input_o\ & ( ((!\sw[0]~input_o\ & 
-- (\Comparator1|BigA~0_combout\ & !\sw[1]~input_o\))) # (\Comparator1|BigA~1_combout\) ) ) ) # ( \sw[5]~input_o\ & ( !\sw[4]~input_o\ & ( ((\Comparator1|BigA~0_combout\ & !\sw[1]~input_o\)) # (\Comparator1|BigA~1_combout\) ) ) ) # ( !\sw[5]~input_o\ & ( 
-- !\sw[4]~input_o\ & ( \Comparator1|BigA~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100001111111100100000111111110011001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[0]~input_o\,
	datab => \Comparator1|ALT_INV_BigA~0_combout\,
	datac => \ALT_INV_sw[1]~input_o\,
	datad => \Comparator1|ALT_INV_BigA~1_combout\,
	datae => \ALT_INV_sw[5]~input_o\,
	dataf => \ALT_INV_sw[4]~input_o\,
	combout => \Comparator1|BigA~2_combout\);

-- Location: LABCELL_X88_Y21_N54
\Comparator1|Equal\ : cyclonev_lcell_comb
-- Equation(s):
-- \Comparator1|Equal~combout\ = ( \sw[5]~input_o\ & ( (!\Comparator1|BigA~0_combout\) # ((!\sw[1]~input_o\) # (!\sw[0]~input_o\ $ (!\sw[4]~input_o\))) ) ) # ( !\sw[5]~input_o\ & ( (!\Comparator1|BigA~0_combout\) # ((!\sw[0]~input_o\ $ (!\sw[4]~input_o\)) # 
-- (\sw[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111101111111111011111111011011111111011111111110111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[0]~input_o\,
	datab => \Comparator1|ALT_INV_BigA~0_combout\,
	datac => \ALT_INV_sw[1]~input_o\,
	datad => \ALT_INV_sw[4]~input_o\,
	datae => \ALT_INV_sw[5]~input_o\,
	combout => \Comparator1|Equal~combout\);

-- Location: MLABCELL_X59_Y34_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


