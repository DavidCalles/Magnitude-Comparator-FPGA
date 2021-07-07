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

-- DATE "07/07/2021 19:00:56"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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
	led : BUFFER std_logic_vector(2 DOWNTO 0);
	segmentA : BUFFER std_logic_vector(6 DOWNTO 0);
	segmentB : BUFFER std_logic_vector(6 DOWNTO 0);
	segmentM : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END DCalles_Lab5_MagnitudeComparator;

-- Design Ports Information
-- led[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentA[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentA[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentA[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentA[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentA[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentA[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentA[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentB[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentB[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentB[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentB[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentB[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentB[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentB[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentM[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentM[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentM[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentM[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentM[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentM[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentM[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_segmentA : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentB : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentM : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \Comparator1|BigA~0_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \Comparator1|BigA~1_combout\ : std_logic;
SIGNAL \Comparator1|BigB~combout\ : std_logic;
SIGNAL \Comparator1|BigA~2_combout\ : std_logic;
SIGNAL \Comparator1|Equal~combout\ : std_logic;
SIGNAL \SevenSegmentsL|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL|Mux0~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR|Mux0~0_combout\ : std_logic;
SIGNAL \SevenSegmentsM|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegmentsM|Mux0~0_combout\ : std_logic;
SIGNAL \Comparator1|ALT_INV_Equal~combout\ : std_logic;
SIGNAL \SevenSegmentsL|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SevenSegmentsM|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[7]~input_o\ : std_logic;
SIGNAL \Comparator1|ALT_INV_BigA~0_combout\ : std_logic;
SIGNAL \Comparator1|ALT_INV_BigA~1_combout\ : std_logic;
SIGNAL \Comparator1|ALT_INV_BigB~combout\ : std_logic;

BEGIN

ww_sw <= sw;
led <= ww_led;
segmentA <= ww_segmentA;
segmentB <= ww_segmentB;
segmentM <= ww_segmentM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Comparator1|ALT_INV_Equal~combout\ <= NOT \Comparator1|Equal~combout\;
\SevenSegmentsL|ALT_INV_Mux0~0_combout\ <= NOT \SevenSegmentsL|Mux0~0_combout\;
\SevenSegmentsR|ALT_INV_Mux0~0_combout\ <= NOT \SevenSegmentsR|Mux0~0_combout\;
\SevenSegmentsM|ALT_INV_Mux0~0_combout\ <= NOT \SevenSegmentsM|Mux0~0_combout\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\ALT_INV_sw[4]~input_o\ <= NOT \sw[4]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_sw[5]~input_o\ <= NOT \sw[5]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_sw[6]~input_o\ <= NOT \sw[6]~input_o\;
\ALT_INV_sw[3]~input_o\ <= NOT \sw[3]~input_o\;
\ALT_INV_sw[7]~input_o\ <= NOT \sw[7]~input_o\;
\Comparator1|ALT_INV_BigA~0_combout\ <= NOT \Comparator1|BigA~0_combout\;
\Comparator1|ALT_INV_BigA~1_combout\ <= NOT \Comparator1|BigA~1_combout\;
\Comparator1|ALT_INV_BigB~combout\ <= NOT \Comparator1|BigB~combout\;

-- Location: IOOBUF_X80_Y0_N2
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

-- Location: IOOBUF_X60_Y0_N19
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

-- Location: IOOBUF_X80_Y0_N19
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

-- Location: IOOBUF_X89_Y9_N22
\segmentA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentA(0));

-- Location: IOOBUF_X89_Y23_N39
\segmentA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentA(1));

-- Location: IOOBUF_X89_Y23_N56
\segmentA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentA(2));

-- Location: IOOBUF_X89_Y20_N79
\segmentA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentA(3));

-- Location: IOOBUF_X89_Y25_N39
\segmentA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentA(4));

-- Location: IOOBUF_X89_Y20_N96
\segmentA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentA(5));

-- Location: IOOBUF_X89_Y25_N56
\segmentA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentA(6));

-- Location: IOOBUF_X89_Y8_N39
\segmentB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentB(0));

-- Location: IOOBUF_X89_Y11_N79
\segmentB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentB(1));

-- Location: IOOBUF_X89_Y11_N96
\segmentB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentB(2));

-- Location: IOOBUF_X89_Y4_N79
\segmentB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentB(3));

-- Location: IOOBUF_X89_Y13_N56
\segmentB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentB(4));

-- Location: IOOBUF_X89_Y13_N39
\segmentB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentB(5));

-- Location: IOOBUF_X89_Y4_N96
\segmentB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentB(6));

-- Location: IOOBUF_X89_Y6_N39
\segmentM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsM|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentM(0));

-- Location: IOOBUF_X89_Y6_N56
\segmentM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Comparator1|ALT_INV_BigB~combout\,
	devoe => ww_devoe,
	o => ww_segmentM(1));

-- Location: IOOBUF_X89_Y16_N39
\segmentM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Comparator1|ALT_INV_BigB~combout\,
	devoe => ww_devoe,
	o => ww_segmentM(2));

-- Location: IOOBUF_X89_Y16_N56
\segmentM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsM|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentM(3));

-- Location: IOOBUF_X89_Y15_N39
\segmentM[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsM|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentM(4));

-- Location: IOOBUF_X89_Y15_N56
\segmentM[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsM|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentM(5));

-- Location: IOOBUF_X89_Y8_N56
\segmentM[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_segmentM(6));

-- Location: IOIBUF_X4_Y0_N52
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\sw[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\sw[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LABCELL_X83_Y4_N0
\Comparator1|BigA~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Comparator1|BigA~0_combout\ = ( \sw[2]~input_o\ & ( (\sw[6]~input_o\ & (!\sw[3]~input_o\ $ (\sw[7]~input_o\))) ) ) # ( !\sw[2]~input_o\ & ( (!\sw[6]~input_o\ & (!\sw[3]~input_o\ $ (\sw[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[3]~input_o\,
	datab => \ALT_INV_sw[6]~input_o\,
	datac => \ALT_INV_sw[7]~input_o\,
	dataf => \ALT_INV_sw[2]~input_o\,
	combout => \Comparator1|BigA~0_combout\);

-- Location: IOIBUF_X12_Y0_N18
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\sw[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\sw[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LABCELL_X83_Y4_N9
\Comparator1|BigA~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Comparator1|BigA~1_combout\ = ( \sw[2]~input_o\ & ( (\sw[7]~input_o\ & !\sw[3]~input_o\) ) ) # ( !\sw[2]~input_o\ & ( (!\sw[7]~input_o\ & (\sw[6]~input_o\ & !\sw[3]~input_o\)) # (\sw[7]~input_o\ & ((!\sw[3]~input_o\) # (\sw[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010111110000010101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[7]~input_o\,
	datac => \ALT_INV_sw[6]~input_o\,
	datad => \ALT_INV_sw[3]~input_o\,
	dataf => \ALT_INV_sw[2]~input_o\,
	combout => \Comparator1|BigA~1_combout\);

-- Location: LABCELL_X83_Y4_N42
\Comparator1|BigB\ : cyclonev_lcell_comb
-- Equation(s):
-- \Comparator1|BigB~combout\ = ( \sw[4]~input_o\ & ( !\Comparator1|BigA~1_combout\ & ( (!\Comparator1|BigA~0_combout\) # ((\sw[1]~input_o\ & !\sw[5]~input_o\)) ) ) ) # ( !\sw[4]~input_o\ & ( !\Comparator1|BigA~1_combout\ & ( (!\Comparator1|BigA~0_combout\) 
-- # ((!\sw[0]~input_o\ & (\sw[1]~input_o\ & !\sw[5]~input_o\)) # (\sw[0]~input_o\ & ((!\sw[5]~input_o\) # (\sw[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110101011101011111010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Comparator1|ALT_INV_BigA~0_combout\,
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[1]~input_o\,
	datad => \ALT_INV_sw[5]~input_o\,
	datae => \ALT_INV_sw[4]~input_o\,
	dataf => \Comparator1|ALT_INV_BigA~1_combout\,
	combout => \Comparator1|BigB~combout\);

-- Location: LABCELL_X83_Y4_N48
\Comparator1|BigA~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Comparator1|BigA~2_combout\ = ( \sw[0]~input_o\ & ( \Comparator1|BigA~1_combout\ ) ) # ( !\sw[0]~input_o\ & ( \Comparator1|BigA~1_combout\ ) ) # ( \sw[0]~input_o\ & ( !\Comparator1|BigA~1_combout\ & ( (\sw[5]~input_o\ & (\Comparator1|BigA~0_combout\ & 
-- !\sw[1]~input_o\)) ) ) ) # ( !\sw[0]~input_o\ & ( !\Comparator1|BigA~1_combout\ & ( (\Comparator1|BigA~0_combout\ & ((!\sw[5]~input_o\ & (\sw[4]~input_o\ & !\sw[1]~input_o\)) # (\sw[5]~input_o\ & ((!\sw[1]~input_o\) # (\sw[4]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000001000001010000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[5]~input_o\,
	datab => \ALT_INV_sw[4]~input_o\,
	datac => \Comparator1|ALT_INV_BigA~0_combout\,
	datad => \ALT_INV_sw[1]~input_o\,
	datae => \ALT_INV_sw[0]~input_o\,
	dataf => \Comparator1|ALT_INV_BigA~1_combout\,
	combout => \Comparator1|BigA~2_combout\);

-- Location: LABCELL_X83_Y4_N27
\Comparator1|Equal\ : cyclonev_lcell_comb
-- Equation(s):
-- \Comparator1|Equal~combout\ = ( \sw[5]~input_o\ & ( (!\sw[1]~input_o\) # ((!\Comparator1|BigA~0_combout\) # (!\sw[0]~input_o\ $ (!\sw[4]~input_o\))) ) ) # ( !\sw[5]~input_o\ & ( ((!\Comparator1|BigA~0_combout\) # (!\sw[0]~input_o\ $ (!\sw[4]~input_o\))) # 
-- (\sw[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111101111111110111110111111111101111101111111110111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[1]~input_o\,
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[4]~input_o\,
	datad => \Comparator1|ALT_INV_BigA~0_combout\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \Comparator1|Equal~combout\);

-- Location: LABCELL_X83_Y16_N0
\SevenSegmentsL|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL|Mux6~0_combout\ = ( \sw[4]~input_o\ & ( \sw[5]~input_o\ & ( (\sw[7]~input_o\ & !\sw[6]~input_o\) ) ) ) # ( \sw[4]~input_o\ & ( !\sw[5]~input_o\ & ( !\sw[7]~input_o\ $ (\sw[6]~input_o\) ) ) ) # ( !\sw[4]~input_o\ & ( !\sw[5]~input_o\ & ( 
-- (!\sw[7]~input_o\ & \sw[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000111100001100000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[7]~input_o\,
	datac => \ALT_INV_sw[6]~input_o\,
	datae => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \SevenSegmentsL|Mux6~0_combout\);

-- Location: LABCELL_X83_Y16_N39
\SevenSegmentsL|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL|Mux5~0_combout\ = ( \sw[4]~input_o\ & ( \sw[5]~input_o\ & ( \sw[7]~input_o\ ) ) ) # ( !\sw[4]~input_o\ & ( \sw[5]~input_o\ & ( \sw[6]~input_o\ ) ) ) # ( \sw[4]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[6]~input_o\ & !\sw[7]~input_o\) ) ) ) # 
-- ( !\sw[4]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[6]~input_o\ & \sw[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010100000101000001010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[6]~input_o\,
	datac => \ALT_INV_sw[7]~input_o\,
	datae => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \SevenSegmentsL|Mux5~0_combout\);

-- Location: LABCELL_X83_Y16_N12
\SevenSegmentsL|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL|Mux4~0_combout\ = ( \sw[4]~input_o\ & ( \sw[5]~input_o\ & ( (\sw[7]~input_o\ & \sw[6]~input_o\) ) ) ) # ( !\sw[4]~input_o\ & ( \sw[5]~input_o\ & ( !\sw[7]~input_o\ $ (\sw[6]~input_o\) ) ) ) # ( !\sw[4]~input_o\ & ( !\sw[5]~input_o\ & ( 
-- (\sw[7]~input_o\ & \sw[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000011000011110000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[7]~input_o\,
	datac => \ALT_INV_sw[6]~input_o\,
	datae => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \SevenSegmentsL|Mux4~0_combout\);

-- Location: LABCELL_X83_Y16_N21
\SevenSegmentsL|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL|Mux3~0_combout\ = ( \sw[4]~input_o\ & ( \sw[5]~input_o\ & ( \sw[6]~input_o\ ) ) ) # ( !\sw[4]~input_o\ & ( \sw[5]~input_o\ & ( (!\sw[6]~input_o\ & \sw[7]~input_o\) ) ) ) # ( \sw[4]~input_o\ & ( !\sw[5]~input_o\ & ( !\sw[6]~input_o\ ) ) ) # 
-- ( !\sw[4]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[6]~input_o\ & !\sw[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101010101010101000001010000010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[6]~input_o\,
	datac => \ALT_INV_sw[7]~input_o\,
	datae => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \SevenSegmentsL|Mux3~0_combout\);

-- Location: LABCELL_X83_Y16_N54
\SevenSegmentsL|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL|Mux2~0_combout\ = ( \sw[4]~input_o\ & ( \sw[5]~input_o\ & ( !\sw[7]~input_o\ ) ) ) # ( \sw[4]~input_o\ & ( !\sw[5]~input_o\ & ( (!\sw[7]~input_o\) # (!\sw[6]~input_o\) ) ) ) # ( !\sw[4]~input_o\ & ( !\sw[5]~input_o\ & ( (!\sw[7]~input_o\ & 
-- \sw[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111111001111110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[7]~input_o\,
	datac => \ALT_INV_sw[6]~input_o\,
	datae => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \SevenSegmentsL|Mux2~0_combout\);

-- Location: LABCELL_X83_Y16_N33
\SevenSegmentsL|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL|Mux1~0_combout\ = ( \sw[4]~input_o\ & ( \sw[5]~input_o\ & ( !\sw[7]~input_o\ ) ) ) # ( !\sw[4]~input_o\ & ( \sw[5]~input_o\ & ( (!\sw[6]~input_o\ & !\sw[7]~input_o\) ) ) ) # ( \sw[4]~input_o\ & ( !\sw[5]~input_o\ & ( !\sw[6]~input_o\ $ 
-- (\sw[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101001011010010110100000101000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[6]~input_o\,
	datac => \ALT_INV_sw[7]~input_o\,
	datae => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \SevenSegmentsL|Mux1~0_combout\);

-- Location: LABCELL_X83_Y16_N6
\SevenSegmentsL|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL|Mux0~0_combout\ = ( \sw[4]~input_o\ & ( \sw[5]~input_o\ & ( (!\sw[6]~input_o\) # (\sw[7]~input_o\) ) ) ) # ( !\sw[4]~input_o\ & ( \sw[5]~input_o\ ) ) # ( \sw[4]~input_o\ & ( !\sw[5]~input_o\ & ( (\sw[6]~input_o\) # (\sw[7]~input_o\) ) ) ) 
-- # ( !\sw[4]~input_o\ & ( !\sw[5]~input_o\ & ( !\sw[7]~input_o\ $ (!\sw[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111110011111111111111111111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[7]~input_o\,
	datac => \ALT_INV_sw[6]~input_o\,
	datae => \ALT_INV_sw[4]~input_o\,
	dataf => \ALT_INV_sw[5]~input_o\,
	combout => \SevenSegmentsL|Mux0~0_combout\);

-- Location: LABCELL_X83_Y4_N24
\SevenSegmentsR|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR|Mux6~0_combout\ = ( \sw[3]~input_o\ & ( (\sw[0]~input_o\ & (!\sw[1]~input_o\ $ (!\sw[2]~input_o\))) ) ) # ( !\sw[3]~input_o\ & ( (!\sw[1]~input_o\ & (!\sw[0]~input_o\ $ (!\sw[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[1]~input_o\,
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[2]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \SevenSegmentsR|Mux6~0_combout\);

-- Location: LABCELL_X83_Y4_N33
\SevenSegmentsR|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR|Mux5~0_combout\ = ( \sw[3]~input_o\ & ( (!\sw[0]~input_o\ & (\sw[2]~input_o\)) # (\sw[0]~input_o\ & ((\sw[1]~input_o\))) ) ) # ( !\sw[3]~input_o\ & ( (\sw[2]~input_o\ & (!\sw[0]~input_o\ $ (!\sw[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[2]~input_o\,
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \SevenSegmentsR|Mux5~0_combout\);

-- Location: LABCELL_X83_Y4_N36
\SevenSegmentsR|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR|Mux4~0_combout\ = ( \sw[3]~input_o\ & ( (\sw[2]~input_o\ & ((!\sw[0]~input_o\) # (\sw[1]~input_o\))) ) ) # ( !\sw[3]~input_o\ & ( (!\sw[0]~input_o\ & (!\sw[2]~input_o\ & \sw[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[2]~input_o\,
	datad => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \SevenSegmentsR|Mux4~0_combout\);

-- Location: LABCELL_X83_Y4_N12
\SevenSegmentsR|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR|Mux3~0_combout\ = ( \sw[1]~input_o\ & ( (!\sw[2]~input_o\ & (!\sw[0]~input_o\ & \sw[3]~input_o\)) # (\sw[2]~input_o\ & (\sw[0]~input_o\)) ) ) # ( !\sw[1]~input_o\ & ( (!\sw[2]~input_o\ & (\sw[0]~input_o\)) # (\sw[2]~input_o\ & 
-- (!\sw[0]~input_o\ & !\sw[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001001100010011000100110001000011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[2]~input_o\,
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[3]~input_o\,
	dataf => \ALT_INV_sw[1]~input_o\,
	combout => \SevenSegmentsR|Mux3~0_combout\);

-- Location: LABCELL_X83_Y4_N30
\SevenSegmentsR|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR|Mux2~0_combout\ = ( \sw[1]~input_o\ & ( (\sw[0]~input_o\ & !\sw[3]~input_o\) ) ) # ( !\sw[1]~input_o\ & ( (!\sw[2]~input_o\ & (\sw[0]~input_o\)) # (\sw[2]~input_o\ & ((!\sw[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001001110010011100100111001000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[2]~input_o\,
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[3]~input_o\,
	dataf => \ALT_INV_sw[1]~input_o\,
	combout => \SevenSegmentsR|Mux2~0_combout\);

-- Location: LABCELL_X83_Y4_N39
\SevenSegmentsR|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR|Mux1~0_combout\ = ( \sw[3]~input_o\ & ( (\sw[2]~input_o\ & (\sw[0]~input_o\ & !\sw[1]~input_o\)) ) ) # ( !\sw[3]~input_o\ & ( (!\sw[2]~input_o\ & ((\sw[1]~input_o\) # (\sw[0]~input_o\))) # (\sw[2]~input_o\ & (\sw[0]~input_o\ & 
-- \sw[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[2]~input_o\,
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \SevenSegmentsR|Mux1~0_combout\);

-- Location: LABCELL_X83_Y4_N15
\SevenSegmentsR|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR|Mux0~0_combout\ = ( \sw[3]~input_o\ & ( (!\sw[2]~input_o\) # ((\sw[1]~input_o\) # (\sw[0]~input_o\)) ) ) # ( !\sw[3]~input_o\ & ( (!\sw[2]~input_o\ & ((\sw[1]~input_o\))) # (\sw[2]~input_o\ & ((!\sw[0]~input_o\) # (!\sw[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111001011110010111100101111010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw[2]~input_o\,
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[1]~input_o\,
	dataf => \ALT_INV_sw[3]~input_o\,
	combout => \SevenSegmentsR|Mux0~0_combout\);

-- Location: LABCELL_X83_Y4_N18
\SevenSegmentsM|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsM|Mux2~0_combout\ = ( \sw[4]~input_o\ & ( \Comparator1|BigA~1_combout\ ) ) # ( !\sw[4]~input_o\ & ( \Comparator1|BigA~1_combout\ ) ) # ( \sw[4]~input_o\ & ( !\Comparator1|BigA~1_combout\ & ( (!\Comparator1|BigA~0_combout\) # 
-- ((!\sw[0]~input_o\) # (!\sw[1]~input_o\ $ (!\sw[5]~input_o\))) ) ) ) # ( !\sw[4]~input_o\ & ( !\Comparator1|BigA~1_combout\ & ( (!\Comparator1|BigA~0_combout\) # ((!\sw[1]~input_o\ $ (!\sw[5]~input_o\)) # (\sw[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111111111011111011111111111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Comparator1|ALT_INV_BigA~0_combout\,
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[1]~input_o\,
	datad => \ALT_INV_sw[5]~input_o\,
	datae => \ALT_INV_sw[4]~input_o\,
	dataf => \Comparator1|ALT_INV_BigA~1_combout\,
	combout => \SevenSegmentsM|Mux2~0_combout\);

-- Location: LABCELL_X83_Y4_N54
\SevenSegmentsM|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsM|Mux0~0_combout\ = ( \sw[4]~input_o\ & ( \Comparator1|BigA~1_combout\ & ( (!\Comparator1|BigA~0_combout\) # ((!\sw[0]~input_o\) # (!\sw[1]~input_o\ $ (!\sw[5]~input_o\))) ) ) ) # ( !\sw[4]~input_o\ & ( \Comparator1|BigA~1_combout\ & ( 
-- (!\Comparator1|BigA~0_combout\) # ((!\sw[1]~input_o\ $ (!\sw[5]~input_o\)) # (\sw[0]~input_o\)) ) ) ) # ( \sw[4]~input_o\ & ( !\Comparator1|BigA~1_combout\ & ( (\Comparator1|BigA~0_combout\ & ((!\sw[0]~input_o\ & ((!\sw[1]~input_o\) # (\sw[5]~input_o\))) 
-- # (\sw[0]~input_o\ & (!\sw[1]~input_o\ & \sw[5]~input_o\)))) ) ) ) # ( !\sw[4]~input_o\ & ( !\Comparator1|BigA~1_combout\ & ( (\Comparator1|BigA~0_combout\ & (!\sw[1]~input_o\ & \sw[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000010000000101010010111111111110111110111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Comparator1|ALT_INV_BigA~0_combout\,
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_sw[1]~input_o\,
	datad => \ALT_INV_sw[5]~input_o\,
	datae => \ALT_INV_sw[4]~input_o\,
	dataf => \Comparator1|ALT_INV_BigA~1_combout\,
	combout => \SevenSegmentsM|Mux0~0_combout\);

-- Location: LABCELL_X88_Y11_N3
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


