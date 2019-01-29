-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/29/2019 13:19:34"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab3 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	led : OUT std_logic
	);
END lab3;

-- Design Ports Information
-- led	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter[1]~24_combout\ : std_logic;
SIGNAL \counter[2]~26_combout\ : std_logic;
SIGNAL \counter[3]~28_combout\ : std_logic;
SIGNAL \counter[9]~40_combout\ : std_logic;
SIGNAL \counter[16]~54_combout\ : std_logic;
SIGNAL \counter[21]~64_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~72_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \counter[1]~25\ : std_logic;
SIGNAL \counter[2]~27\ : std_logic;
SIGNAL \counter[3]~29\ : std_logic;
SIGNAL \counter[4]~30_combout\ : std_logic;
SIGNAL \counter[4]~31\ : std_logic;
SIGNAL \counter[5]~33\ : std_logic;
SIGNAL \counter[6]~34_combout\ : std_logic;
SIGNAL \counter[6]~35\ : std_logic;
SIGNAL \counter[7]~37\ : std_logic;
SIGNAL \counter[8]~38_combout\ : std_logic;
SIGNAL \counter[8]~39\ : std_logic;
SIGNAL \counter[9]~41\ : std_logic;
SIGNAL \counter[10]~42_combout\ : std_logic;
SIGNAL \counter[10]~43\ : std_logic;
SIGNAL \counter[11]~44_combout\ : std_logic;
SIGNAL \counter[11]~45\ : std_logic;
SIGNAL \counter[12]~46_combout\ : std_logic;
SIGNAL \counter[12]~47\ : std_logic;
SIGNAL \counter[13]~48_combout\ : std_logic;
SIGNAL \counter[13]~49\ : std_logic;
SIGNAL \counter[14]~50_combout\ : std_logic;
SIGNAL \counter[14]~51\ : std_logic;
SIGNAL \counter[15]~52_combout\ : std_logic;
SIGNAL \counter[15]~53\ : std_logic;
SIGNAL \counter[16]~55\ : std_logic;
SIGNAL \counter[17]~56_combout\ : std_logic;
SIGNAL \counter[17]~57\ : std_logic;
SIGNAL \counter[18]~59\ : std_logic;
SIGNAL \counter[19]~60_combout\ : std_logic;
SIGNAL \counter[18]~58_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \counter[19]~61\ : std_logic;
SIGNAL \counter[20]~62_combout\ : std_logic;
SIGNAL \counter[20]~63\ : std_logic;
SIGNAL \counter[21]~65\ : std_logic;
SIGNAL \counter[22]~66_combout\ : std_logic;
SIGNAL \counter[22]~67\ : std_logic;
SIGNAL \counter[23]~68_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \counter[23]~69\ : std_logic;
SIGNAL \counter[24]~70_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \counter[5]~32_combout\ : std_logic;
SIGNAL \counter[7]~36_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \led_int~0_combout\ : std_logic;
SIGNAL \led_int~regout\ : std_logic;
SIGNAL \led~reg0feeder_combout\ : std_logic;
SIGNAL \led~reg0_regout\ : std_logic;
SIGNAL counter : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset~combout\ <= NOT \reset~combout\;

-- Location: LCFF_X48_Y7_N9
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[1]~24_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCFF_X48_Y7_N11
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[2]~26_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCFF_X48_Y7_N13
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[3]~28_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCFF_X48_Y7_N25
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[9]~40_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCFF_X48_Y6_N7
\counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[16]~54_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

-- Location: LCFF_X48_Y6_N17
\counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[21]~64_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(21));

-- Location: LCCOMB_X48_Y7_N8
\counter[1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]~24_combout\ = (counter(1) & (counter(0) $ (VCC))) # (!counter(1) & (counter(0) & VCC))
-- \counter[1]~25\ = CARRY((counter(1) & counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datad => VCC,
	combout => \counter[1]~24_combout\,
	cout => \counter[1]~25\);

-- Location: LCCOMB_X48_Y7_N10
\counter[2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[2]~26_combout\ = (counter(2) & (!\counter[1]~25\)) # (!counter(2) & ((\counter[1]~25\) # (GND)))
-- \counter[2]~27\ = CARRY((!\counter[1]~25\) # (!counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~25\,
	combout => \counter[2]~26_combout\,
	cout => \counter[2]~27\);

-- Location: LCCOMB_X48_Y7_N12
\counter[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[3]~28_combout\ = (counter(3) & (\counter[2]~27\ $ (GND))) # (!counter(3) & (!\counter[2]~27\ & VCC))
-- \counter[3]~29\ = CARRY((counter(3) & !\counter[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~27\,
	combout => \counter[3]~28_combout\,
	cout => \counter[3]~29\);

-- Location: LCCOMB_X48_Y7_N24
\counter[9]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[9]~40_combout\ = (counter(9) & (\counter[8]~39\ $ (GND))) # (!counter(9) & (!\counter[8]~39\ & VCC))
-- \counter[9]~41\ = CARRY((counter(9) & !\counter[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \counter[8]~39\,
	combout => \counter[9]~40_combout\,
	cout => \counter[9]~41\);

-- Location: LCCOMB_X48_Y6_N6
\counter[16]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[16]~54_combout\ = (counter(16) & (!\counter[15]~53\)) # (!counter(16) & ((\counter[15]~53\) # (GND)))
-- \counter[16]~55\ = CARRY((!\counter[15]~53\) # (!counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \counter[15]~53\,
	combout => \counter[16]~54_combout\,
	cout => \counter[16]~55\);

-- Location: LCCOMB_X48_Y6_N16
\counter[21]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[21]~64_combout\ = (counter(21) & (\counter[20]~63\ $ (GND))) # (!counter(21) & (!\counter[20]~63\ & VCC))
-- \counter[21]~65\ = CARRY((counter(21) & !\counter[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \counter[20]~63\,
	combout => \counter[21]~64_combout\,
	cout => \counter[21]~65\);

-- Location: LCCOMB_X48_Y7_N2
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter(2) & (counter(0) & (counter(1) & counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(0),
	datac => counter(1),
	datad => counter(3),
	combout => \Equal0~0_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X48_Y7_N4
\counter[0]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~72_combout\ = !counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	combout => \counter[0]~72_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCFF_X48_Y7_N5
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[0]~72_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X48_Y7_N14
\counter[4]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~30_combout\ = (counter(4) & (!\counter[3]~29\)) # (!counter(4) & ((\counter[3]~29\) # (GND)))
-- \counter[4]~31\ = CARRY((!\counter[3]~29\) # (!counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~29\,
	combout => \counter[4]~30_combout\,
	cout => \counter[4]~31\);

-- Location: LCFF_X48_Y7_N15
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[4]~30_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X48_Y7_N16
\counter[5]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[5]~32_combout\ = (counter(5) & (\counter[4]~31\ $ (GND))) # (!counter(5) & (!\counter[4]~31\ & VCC))
-- \counter[5]~33\ = CARRY((counter(5) & !\counter[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~31\,
	combout => \counter[5]~32_combout\,
	cout => \counter[5]~33\);

-- Location: LCCOMB_X48_Y7_N18
\counter[6]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[6]~34_combout\ = (counter(6) & (!\counter[5]~33\)) # (!counter(6) & ((\counter[5]~33\) # (GND)))
-- \counter[6]~35\ = CARRY((!\counter[5]~33\) # (!counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~33\,
	combout => \counter[6]~34_combout\,
	cout => \counter[6]~35\);

-- Location: LCFF_X48_Y7_N19
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[6]~34_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCCOMB_X48_Y7_N20
\counter[7]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[7]~36_combout\ = (counter(7) & (\counter[6]~35\ $ (GND))) # (!counter(7) & (!\counter[6]~35\ & VCC))
-- \counter[7]~37\ = CARRY((counter(7) & !\counter[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datad => VCC,
	cin => \counter[6]~35\,
	combout => \counter[7]~36_combout\,
	cout => \counter[7]~37\);

-- Location: LCCOMB_X48_Y7_N22
\counter[8]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[8]~38_combout\ = (counter(8) & (!\counter[7]~37\)) # (!counter(8) & ((\counter[7]~37\) # (GND)))
-- \counter[8]~39\ = CARRY((!\counter[7]~37\) # (!counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~37\,
	combout => \counter[8]~38_combout\,
	cout => \counter[8]~39\);

-- Location: LCFF_X48_Y7_N23
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[8]~38_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCCOMB_X48_Y7_N26
\counter[10]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[10]~42_combout\ = (counter(10) & (!\counter[9]~41\)) # (!counter(10) & ((\counter[9]~41\) # (GND)))
-- \counter[10]~43\ = CARRY((!\counter[9]~41\) # (!counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~41\,
	combout => \counter[10]~42_combout\,
	cout => \counter[10]~43\);

-- Location: LCFF_X48_Y7_N27
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[10]~42_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LCCOMB_X48_Y7_N28
\counter[11]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[11]~44_combout\ = (counter(11) & (\counter[10]~43\ $ (GND))) # (!counter(11) & (!\counter[10]~43\ & VCC))
-- \counter[11]~45\ = CARRY((counter(11) & !\counter[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~43\,
	combout => \counter[11]~44_combout\,
	cout => \counter[11]~45\);

-- Location: LCFF_X48_Y7_N29
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[11]~44_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCCOMB_X48_Y7_N30
\counter[12]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[12]~46_combout\ = (counter(12) & (!\counter[11]~45\)) # (!counter(12) & ((\counter[11]~45\) # (GND)))
-- \counter[12]~47\ = CARRY((!\counter[11]~45\) # (!counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~45\,
	combout => \counter[12]~46_combout\,
	cout => \counter[12]~47\);

-- Location: LCFF_X48_Y7_N31
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[12]~46_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCCOMB_X48_Y6_N0
\counter[13]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[13]~48_combout\ = (counter(13) & (\counter[12]~47\ $ (GND))) # (!counter(13) & (!\counter[12]~47\ & VCC))
-- \counter[13]~49\ = CARRY((counter(13) & !\counter[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \counter[12]~47\,
	combout => \counter[13]~48_combout\,
	cout => \counter[13]~49\);

-- Location: LCFF_X48_Y6_N1
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[13]~48_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCCOMB_X48_Y6_N2
\counter[14]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[14]~50_combout\ = (counter(14) & (!\counter[13]~49\)) # (!counter(14) & ((\counter[13]~49\) # (GND)))
-- \counter[14]~51\ = CARRY((!\counter[13]~49\) # (!counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~49\,
	combout => \counter[14]~50_combout\,
	cout => \counter[14]~51\);

-- Location: LCFF_X48_Y6_N3
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[14]~50_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCCOMB_X48_Y6_N4
\counter[15]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~52_combout\ = (counter(15) & (\counter[14]~51\ $ (GND))) # (!counter(15) & (!\counter[14]~51\ & VCC))
-- \counter[15]~53\ = CARRY((counter(15) & !\counter[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \counter[14]~51\,
	combout => \counter[15]~52_combout\,
	cout => \counter[15]~53\);

-- Location: LCFF_X48_Y6_N5
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[15]~52_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCCOMB_X48_Y6_N8
\counter[17]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[17]~56_combout\ = (counter(17) & (\counter[16]~55\ $ (GND))) # (!counter(17) & (!\counter[16]~55\ & VCC))
-- \counter[17]~57\ = CARRY((counter(17) & !\counter[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~55\,
	combout => \counter[17]~56_combout\,
	cout => \counter[17]~57\);

-- Location: LCFF_X48_Y6_N9
\counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[17]~56_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LCCOMB_X48_Y6_N10
\counter[18]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[18]~58_combout\ = (counter(18) & (!\counter[17]~57\)) # (!counter(18) & ((\counter[17]~57\) # (GND)))
-- \counter[18]~59\ = CARRY((!\counter[17]~57\) # (!counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \counter[17]~57\,
	combout => \counter[18]~58_combout\,
	cout => \counter[18]~59\);

-- Location: LCCOMB_X48_Y6_N12
\counter[19]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[19]~60_combout\ = (counter(19) & (\counter[18]~59\ $ (GND))) # (!counter(19) & (!\counter[18]~59\ & VCC))
-- \counter[19]~61\ = CARRY((counter(19) & !\counter[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \counter[18]~59\,
	combout => \counter[19]~60_combout\,
	cout => \counter[19]~61\);

-- Location: LCFF_X48_Y6_N13
\counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[19]~60_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LCFF_X48_Y6_N11
\counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[18]~58_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: LCCOMB_X48_Y6_N30
\Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (counter(16) & (counter(19) & (!counter(17) & counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(19),
	datac => counter(17),
	datad => counter(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X48_Y6_N14
\counter[20]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[20]~62_combout\ = (counter(20) & (!\counter[19]~61\)) # (!counter(20) & ((\counter[19]~61\) # (GND)))
-- \counter[20]~63\ = CARRY((!\counter[19]~61\) # (!counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \counter[19]~61\,
	combout => \counter[20]~62_combout\,
	cout => \counter[20]~63\);

-- Location: LCFF_X48_Y6_N15
\counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[20]~62_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(20));

-- Location: LCCOMB_X48_Y6_N18
\counter[22]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[22]~66_combout\ = (counter(22) & (!\counter[21]~65\)) # (!counter(22) & ((\counter[21]~65\) # (GND)))
-- \counter[22]~67\ = CARRY((!\counter[21]~65\) # (!counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~65\,
	combout => \counter[22]~66_combout\,
	cout => \counter[22]~67\);

-- Location: LCFF_X48_Y6_N19
\counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[22]~66_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(22));

-- Location: LCCOMB_X48_Y6_N20
\counter[23]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[23]~68_combout\ = (counter(23) & (\counter[22]~67\ $ (GND))) # (!counter(23) & (!\counter[22]~67\ & VCC))
-- \counter[23]~69\ = CARRY((counter(23) & !\counter[22]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datad => VCC,
	cin => \counter[22]~67\,
	combout => \counter[23]~68_combout\,
	cout => \counter[23]~69\);

-- Location: LCFF_X48_Y6_N21
\counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[23]~68_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(23));

-- Location: LCCOMB_X48_Y6_N24
\Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (counter(21) & (counter(20) & (!counter(23) & counter(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datab => counter(20),
	datac => counter(23),
	datad => counter(22),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X48_Y6_N22
\counter[24]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[24]~70_combout\ = \counter[23]~69\ $ (counter(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(24),
	cin => \counter[23]~69\,
	combout => \counter[24]~70_combout\);

-- Location: LCFF_X48_Y6_N23
\counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[24]~70_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(24));

-- Location: LCCOMB_X48_Y6_N26
\Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & counter(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => counter(24),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X48_Y7_N6
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!counter(9) & (!counter(10) & (!counter(8) & counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(10),
	datac => counter(8),
	datad => counter(11),
	combout => \Equal0~2_combout\);

-- Location: LCFF_X48_Y7_N17
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[5]~32_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCFF_X48_Y7_N21
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \counter[7]~36_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCCOMB_X48_Y7_N0
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (counter(4) & (!counter(6) & (counter(5) & !counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(6),
	datac => counter(5),
	datad => counter(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X48_Y6_N28
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (counter(12) & (counter(14) & (!counter(15) & counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(14),
	datac => counter(15),
	datad => counter(13),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X49_Y6_N0
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X49_Y6_N2
\led_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \led_int~0_combout\ = \led_int~regout\ $ (((\Equal0~7_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \led_int~regout\,
	datad => \Equal0~4_combout\,
	combout => \led_int~0_combout\);

-- Location: LCFF_X49_Y6_N3
led_int : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \led_int~0_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led_int~regout\);

-- Location: LCCOMB_X49_Y6_N16
\led~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \led~reg0feeder_combout\ = \led_int~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \led_int~regout\,
	combout => \led~reg0feeder_combout\);

-- Location: LCFF_X49_Y6_N17
\led~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \led~reg0feeder_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led~reg0_regout\);

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \led~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led);
END structure;


