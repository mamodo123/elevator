-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "11/21/2018 15:59:40"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Teste IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(0 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	upButton : BUFFER std_logic;
	downButton : BUFFER std_logic
	);
END Teste;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- upButton	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- downButton	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Teste IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_upButton : std_logic;
SIGNAL ww_downButton : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \top|controle|currentState.DESCENDO~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \trex|Equal0~6_combout\ : std_logic;
SIGNAL \top|controle|Selector0~1_combout\ : std_logic;
SIGNAL \top|controle|currentState.PARADO~q\ : std_logic;
SIGNAL \top|controle|Decoder0~1_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \top|btUpArray|bot:1:botaaao|saida~combout\ : std_logic;
SIGNAL \top|controle|Decoder0~3_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \top|btUpArray|bot:3:botaaao|saida~combout\ : std_logic;
SIGNAL \top|controle|Selector0~0_combout\ : std_logic;
SIGNAL \top|controle|Mux0~0_combout\ : std_logic;
SIGNAL \top|operativo|xbtUpPU|output~0_combout\ : std_logic;
SIGNAL \top|controle|Selector3~3_combout\ : std_logic;
SIGNAL \trex|Equal2~0_combout\ : std_logic;
SIGNAL \top|controle|currentState.SUBINDO~DUPLICATE_q\ : std_logic;
SIGNAL \top|controle|Selector4~0_combout\ : std_logic;
SIGNAL \top|controle|currentState.PARADO_DESCENDO~DUPLICATE_q\ : std_logic;
SIGNAL \top|controle|Selector1~2_combout\ : std_logic;
SIGNAL \top|controle|Selector1~1_combout\ : std_logic;
SIGNAL \top|controle|Selector3~2_combout\ : std_logic;
SIGNAL \top|controle|Selector3~0_combout\ : std_logic;
SIGNAL \top|controle|Selector1~0_combout\ : std_logic;
SIGNAL \top|controle|Selector1~3_combout\ : std_logic;
SIGNAL \top|controle|currentState.SUBINDO~q\ : std_logic;
SIGNAL \motor|Add1~1_sumout\ : std_logic;
SIGNAL \motor|Add0~73_sumout\ : std_logic;
SIGNAL \motor|Add0~102\ : std_logic;
SIGNAL \motor|Add0~65_sumout\ : std_logic;
SIGNAL \motor|Add0~66\ : std_logic;
SIGNAL \motor|Add0~69_sumout\ : std_logic;
SIGNAL \motor|Add0~70\ : std_logic;
SIGNAL \motor|Add0~77_sumout\ : std_logic;
SIGNAL \motor|Add0~78\ : std_logic;
SIGNAL \motor|Add0~81_sumout\ : std_logic;
SIGNAL \motor|Add0~82\ : std_logic;
SIGNAL \motor|Add0~85_sumout\ : std_logic;
SIGNAL \motor|Add0~86\ : std_logic;
SIGNAL \motor|Add0~89_sumout\ : std_logic;
SIGNAL \motor|Add0~90\ : std_logic;
SIGNAL \motor|Add0~93_sumout\ : std_logic;
SIGNAL \motor|Add0~94\ : std_logic;
SIGNAL \motor|Add0~97_sumout\ : std_logic;
SIGNAL \motor|Add0~98\ : std_logic;
SIGNAL \motor|Add0~105_sumout\ : std_logic;
SIGNAL \motor|Add0~106\ : std_logic;
SIGNAL \motor|Add0~109_sumout\ : std_logic;
SIGNAL \motor|Add0~110\ : std_logic;
SIGNAL \motor|Add0~41_sumout\ : std_logic;
SIGNAL \motor|contador[13]~DUPLICATE_q\ : std_logic;
SIGNAL \motor|Add0~42\ : std_logic;
SIGNAL \motor|Add0~45_sumout\ : std_logic;
SIGNAL \motor|Add0~46\ : std_logic;
SIGNAL \motor|Add0~49_sumout\ : std_logic;
SIGNAL \motor|contador[15]~DUPLICATE_q\ : std_logic;
SIGNAL \motor|Add0~50\ : std_logic;
SIGNAL \motor|Add0~53_sumout\ : std_logic;
SIGNAL \motor|contador[16]~DUPLICATE_q\ : std_logic;
SIGNAL \motor|Add0~54\ : std_logic;
SIGNAL \motor|Add0~57_sumout\ : std_logic;
SIGNAL \motor|Add0~58\ : std_logic;
SIGNAL \motor|Add0~61_sumout\ : std_logic;
SIGNAL \motor|contador[18]~DUPLICATE_q\ : std_logic;
SIGNAL \motor|Add0~62\ : std_logic;
SIGNAL \motor|Add0~37_sumout\ : std_logic;
SIGNAL \motor|Add0~38\ : std_logic;
SIGNAL \motor|Add0~17_sumout\ : std_logic;
SIGNAL \motor|Add0~18\ : std_logic;
SIGNAL \motor|Add0~21_sumout\ : std_logic;
SIGNAL \motor|Add0~22\ : std_logic;
SIGNAL \motor|Add0~25_sumout\ : std_logic;
SIGNAL \motor|Add0~26\ : std_logic;
SIGNAL \motor|Add0~29_sumout\ : std_logic;
SIGNAL \motor|Add0~30\ : std_logic;
SIGNAL \motor|Add0~33_sumout\ : std_logic;
SIGNAL \motor|Add0~34\ : std_logic;
SIGNAL \motor|Add0~1_sumout\ : std_logic;
SIGNAL \motor|Add0~2\ : std_logic;
SIGNAL \motor|Add0~9_sumout\ : std_logic;
SIGNAL \motor|Add0~10\ : std_logic;
SIGNAL \motor|Add0~5_sumout\ : std_logic;
SIGNAL \motor|contador[25]~DUPLICATE_q\ : std_logic;
SIGNAL \motor|Equal2~0_combout\ : std_logic;
SIGNAL \motor|Equal2~3_combout\ : std_logic;
SIGNAL \motor|Equal2~1_combout\ : std_logic;
SIGNAL \motor|Equal2~2_combout\ : std_logic;
SIGNAL \motor|Equal2~5_combout\ : std_logic;
SIGNAL \motor|Add0~74\ : std_logic;
SIGNAL \motor|Add0~13_sumout\ : std_logic;
SIGNAL \motor|Add0~14\ : std_logic;
SIGNAL \motor|Add0~101_sumout\ : std_logic;
SIGNAL \motor|contador[11]~DUPLICATE_q\ : std_logic;
SIGNAL \motor|Equal2~4_combout\ : std_logic;
SIGNAL \motor|positionCont[28]~0_combout\ : std_logic;
SIGNAL \top|controle|Decoder0~0_combout\ : std_logic;
SIGNAL \top|btUpArray|bot:0:botaaao|saida~combout\ : std_logic;
SIGNAL \top|controle|Selector3~1_combout\ : std_logic;
SIGNAL \top|controle|Selector2~0_combout\ : std_logic;
SIGNAL \top|controle|Selector2~1_combout\ : std_logic;
SIGNAL \top|controle|currentState.PARADO_SUBINDO~q\ : std_logic;
SIGNAL \top|controle|Decoder0~2_combout\ : std_logic;
SIGNAL \top|btUpArray|bot:2:botaaao|saida~combout\ : std_logic;
SIGNAL \top|operativo|xbtUpZP|output~0_combout\ : std_logic;
SIGNAL \top|controle|Selector3~5_combout\ : std_logic;
SIGNAL \top|controle|Selector3~4_combout\ : std_logic;
SIGNAL \top|controle|Selector3~6_combout\ : std_logic;
SIGNAL \top|controle|currentState.DESCENDO~DUPLICATE_q\ : std_logic;
SIGNAL \motor|Add1~2\ : std_logic;
SIGNAL \motor|Add1~5_sumout\ : std_logic;
SIGNAL \motor|Add1~6\ : std_logic;
SIGNAL \motor|Add1~9_sumout\ : std_logic;
SIGNAL \motor|Add1~10\ : std_logic;
SIGNAL \motor|Add1~29_sumout\ : std_logic;
SIGNAL \motor|Add1~30\ : std_logic;
SIGNAL \motor|Add1~25_sumout\ : std_logic;
SIGNAL \motor|Add1~26\ : std_logic;
SIGNAL \motor|Add1~21_sumout\ : std_logic;
SIGNAL \motor|Add1~22\ : std_logic;
SIGNAL \motor|Add1~17_sumout\ : std_logic;
SIGNAL \motor|Add1~18\ : std_logic;
SIGNAL \motor|Add1~13_sumout\ : std_logic;
SIGNAL \motor|Add1~14\ : std_logic;
SIGNAL \motor|Add1~53_sumout\ : std_logic;
SIGNAL \motor|Add1~54\ : std_logic;
SIGNAL \motor|Add1~49_sumout\ : std_logic;
SIGNAL \motor|Add1~50\ : std_logic;
SIGNAL \motor|Add1~45_sumout\ : std_logic;
SIGNAL \motor|Add1~46\ : std_logic;
SIGNAL \motor|Add1~41_sumout\ : std_logic;
SIGNAL \motor|Add1~42\ : std_logic;
SIGNAL \motor|Add1~37_sumout\ : std_logic;
SIGNAL \motor|Add1~38\ : std_logic;
SIGNAL \motor|Add1~33_sumout\ : std_logic;
SIGNAL \trex|Equal0~1_combout\ : std_logic;
SIGNAL \motor|Add1~34\ : std_logic;
SIGNAL \motor|Add1~77_sumout\ : std_logic;
SIGNAL \motor|Add1~78\ : std_logic;
SIGNAL \motor|Add1~73_sumout\ : std_logic;
SIGNAL \motor|Add1~74\ : std_logic;
SIGNAL \motor|Add1~69_sumout\ : std_logic;
SIGNAL \motor|Add1~70\ : std_logic;
SIGNAL \motor|Add1~65_sumout\ : std_logic;
SIGNAL \motor|Add1~66\ : std_logic;
SIGNAL \motor|Add1~61_sumout\ : std_logic;
SIGNAL \motor|Add1~62\ : std_logic;
SIGNAL \motor|Add1~57_sumout\ : std_logic;
SIGNAL \motor|Add1~58\ : std_logic;
SIGNAL \motor|Add1~125_sumout\ : std_logic;
SIGNAL \motor|Add1~126\ : std_logic;
SIGNAL \motor|Add1~121_sumout\ : std_logic;
SIGNAL \motor|Add1~122\ : std_logic;
SIGNAL \motor|Add1~117_sumout\ : std_logic;
SIGNAL \motor|Add1~118\ : std_logic;
SIGNAL \motor|Add1~113_sumout\ : std_logic;
SIGNAL \motor|Add1~114\ : std_logic;
SIGNAL \motor|Add1~109_sumout\ : std_logic;
SIGNAL \motor|Add1~110\ : std_logic;
SIGNAL \motor|Add1~105_sumout\ : std_logic;
SIGNAL \trex|Equal0~4_combout\ : std_logic;
SIGNAL \trex|Equal0~2_combout\ : std_logic;
SIGNAL \motor|Add1~106\ : std_logic;
SIGNAL \motor|Add1~101_sumout\ : std_logic;
SIGNAL \motor|Add1~102\ : std_logic;
SIGNAL \motor|Add1~97_sumout\ : std_logic;
SIGNAL \motor|Add1~98\ : std_logic;
SIGNAL \motor|Add1~93_sumout\ : std_logic;
SIGNAL \motor|Add1~94\ : std_logic;
SIGNAL \motor|Add1~89_sumout\ : std_logic;
SIGNAL \motor|Add1~90\ : std_logic;
SIGNAL \motor|Add1~85_sumout\ : std_logic;
SIGNAL \motor|Add1~86\ : std_logic;
SIGNAL \motor|Add1~81_sumout\ : std_logic;
SIGNAL \trex|Equal0~3_combout\ : std_logic;
SIGNAL \trex|Equal0~0_combout\ : std_logic;
SIGNAL \trex|Equal0~5_combout\ : std_logic;
SIGNAL \trex|Equal1~0_combout\ : std_logic;
SIGNAL \trex|Equal1~1_combout\ : std_logic;
SIGNAL \trex|HEX[0]~0_combout\ : std_logic;
SIGNAL \trex|HEX[1]~1_combout\ : std_logic;
SIGNAL \trex|Equal3~0_combout\ : std_logic;
SIGNAL \trex|HEX[3]~2_combout\ : std_logic;
SIGNAL \trex|HEX[4]~3_combout\ : std_logic;
SIGNAL \trex|HEX[5]~4_combout\ : std_logic;
SIGNAL \trex|HEX[6]~5_combout\ : std_logic;
SIGNAL \top|controle|upButton~combout\ : std_logic;
SIGNAL \top|controle|currentState.PARADO_DESCENDO~q\ : std_logic;
SIGNAL \top|controle|downButton~combout\ : std_logic;
SIGNAL \motor|contador\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \motor|positionCont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \top|controle|ALT_INV_currentState.PARADO_DESCENDO~DUPLICATE_q\ : std_logic;
SIGNAL \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\ : std_logic;
SIGNAL \top|controle|ALT_INV_currentState.SUBINDO~DUPLICATE_q\ : std_logic;
SIGNAL \motor|ALT_INV_contador[11]~DUPLICATE_q\ : std_logic;
SIGNAL \motor|ALT_INV_contador[18]~DUPLICATE_q\ : std_logic;
SIGNAL \motor|ALT_INV_contador[16]~DUPLICATE_q\ : std_logic;
SIGNAL \motor|ALT_INV_contador[15]~DUPLICATE_q\ : std_logic;
SIGNAL \motor|ALT_INV_contador[13]~DUPLICATE_q\ : std_logic;
SIGNAL \motor|ALT_INV_contador[25]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \top|btUpArray|bot:3:botaaao|ALT_INV_saida~combout\ : std_logic;
SIGNAL \top|btUpArray|bot:2:botaaao|ALT_INV_saida~combout\ : std_logic;
SIGNAL \top|btUpArray|bot:1:botaaao|ALT_INV_saida~combout\ : std_logic;
SIGNAL \top|btUpArray|bot:0:botaaao|ALT_INV_saida~combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_Selector3~5_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_Selector3~4_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \trex|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \top|operativo|xbtUpZP|ALT_INV_output~0_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_Selector3~3_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \top|operativo|xbtUpPU|ALT_INV_output~0_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \trex|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_currentState.PARADO~q\ : std_logic;
SIGNAL \motor|ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \motor|ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \motor|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \motor|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \motor|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \top|controle|ALT_INV_currentState.PARADO_DESCENDO~q\ : std_logic;
SIGNAL \top|controle|ALT_INV_currentState.DESCENDO~q\ : std_logic;
SIGNAL \top|controle|ALT_INV_currentState.PARADO_SUBINDO~q\ : std_logic;
SIGNAL \top|controle|ALT_INV_currentState.SUBINDO~q\ : std_logic;
SIGNAL \trex|ALT_INV_HEX[1]~1_combout\ : std_logic;
SIGNAL \trex|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \trex|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \trex|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \trex|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \motor|ALT_INV_positionCont\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \trex|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \trex|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \trex|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \trex|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \motor|ALT_INV_contador\ : std_logic_vector(27 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
LEDR <= ww_LEDR;
upButton <= ww_upButton;
downButton <= ww_downButton;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\top|controle|ALT_INV_currentState.PARADO_DESCENDO~DUPLICATE_q\ <= NOT \top|controle|currentState.PARADO_DESCENDO~DUPLICATE_q\;
\top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\ <= NOT \top|controle|currentState.DESCENDO~DUPLICATE_q\;
\top|controle|ALT_INV_currentState.SUBINDO~DUPLICATE_q\ <= NOT \top|controle|currentState.SUBINDO~DUPLICATE_q\;
\motor|ALT_INV_contador[11]~DUPLICATE_q\ <= NOT \motor|contador[11]~DUPLICATE_q\;
\motor|ALT_INV_contador[18]~DUPLICATE_q\ <= NOT \motor|contador[18]~DUPLICATE_q\;
\motor|ALT_INV_contador[16]~DUPLICATE_q\ <= NOT \motor|contador[16]~DUPLICATE_q\;
\motor|ALT_INV_contador[15]~DUPLICATE_q\ <= NOT \motor|contador[15]~DUPLICATE_q\;
\motor|ALT_INV_contador[13]~DUPLICATE_q\ <= NOT \motor|contador[13]~DUPLICATE_q\;
\motor|ALT_INV_contador[25]~DUPLICATE_q\ <= NOT \motor|contador[25]~DUPLICATE_q\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\top|btUpArray|bot:3:botaaao|ALT_INV_saida~combout\ <= NOT \top|btUpArray|bot:3:botaaao|saida~combout\;
\top|btUpArray|bot:2:botaaao|ALT_INV_saida~combout\ <= NOT \top|btUpArray|bot:2:botaaao|saida~combout\;
\top|btUpArray|bot:1:botaaao|ALT_INV_saida~combout\ <= NOT \top|btUpArray|bot:1:botaaao|saida~combout\;
\top|btUpArray|bot:0:botaaao|ALT_INV_saida~combout\ <= NOT \top|btUpArray|bot:0:botaaao|saida~combout\;
\top|controle|ALT_INV_Selector3~5_combout\ <= NOT \top|controle|Selector3~5_combout\;
\top|controle|ALT_INV_Selector3~4_combout\ <= NOT \top|controle|Selector3~4_combout\;
\top|controle|ALT_INV_Selector2~0_combout\ <= NOT \top|controle|Selector2~0_combout\;
\top|controle|ALT_INV_Selector1~2_combout\ <= NOT \top|controle|Selector1~2_combout\;
\trex|ALT_INV_Equal0~6_combout\ <= NOT \trex|Equal0~6_combout\;
\top|controle|ALT_INV_Selector1~1_combout\ <= NOT \top|controle|Selector1~1_combout\;
\top|controle|ALT_INV_Selector1~0_combout\ <= NOT \top|controle|Selector1~0_combout\;
\top|operativo|xbtUpZP|ALT_INV_output~0_combout\ <= NOT \top|operativo|xbtUpZP|output~0_combout\;
\top|controle|ALT_INV_Selector3~3_combout\ <= NOT \top|controle|Selector3~3_combout\;
\top|controle|ALT_INV_Selector0~0_combout\ <= NOT \top|controle|Selector0~0_combout\;
\top|controle|ALT_INV_Selector3~2_combout\ <= NOT \top|controle|Selector3~2_combout\;
\top|controle|ALT_INV_Selector3~1_combout\ <= NOT \top|controle|Selector3~1_combout\;
\top|controle|ALT_INV_Selector3~0_combout\ <= NOT \top|controle|Selector3~0_combout\;
\top|operativo|xbtUpPU|ALT_INV_output~0_combout\ <= NOT \top|operativo|xbtUpPU|output~0_combout\;
\top|controle|ALT_INV_Mux0~0_combout\ <= NOT \top|controle|Mux0~0_combout\;
\trex|ALT_INV_Equal2~0_combout\ <= NOT \trex|Equal2~0_combout\;
\top|controle|ALT_INV_Decoder0~3_combout\ <= NOT \top|controle|Decoder0~3_combout\;
\top|controle|ALT_INV_Decoder0~2_combout\ <= NOT \top|controle|Decoder0~2_combout\;
\top|controle|ALT_INV_Decoder0~1_combout\ <= NOT \top|controle|Decoder0~1_combout\;
\top|controle|ALT_INV_Decoder0~0_combout\ <= NOT \top|controle|Decoder0~0_combout\;
\top|controle|ALT_INV_currentState.PARADO~q\ <= NOT \top|controle|currentState.PARADO~q\;
\motor|ALT_INV_Equal2~4_combout\ <= NOT \motor|Equal2~4_combout\;
\motor|ALT_INV_Equal2~3_combout\ <= NOT \motor|Equal2~3_combout\;
\motor|ALT_INV_Equal2~2_combout\ <= NOT \motor|Equal2~2_combout\;
\motor|ALT_INV_Equal2~1_combout\ <= NOT \motor|Equal2~1_combout\;
\motor|ALT_INV_Equal2~0_combout\ <= NOT \motor|Equal2~0_combout\;
\top|controle|ALT_INV_currentState.PARADO_DESCENDO~q\ <= NOT \top|controle|currentState.PARADO_DESCENDO~q\;
\top|controle|ALT_INV_currentState.DESCENDO~q\ <= NOT \top|controle|currentState.DESCENDO~q\;
\top|controle|ALT_INV_currentState.PARADO_SUBINDO~q\ <= NOT \top|controle|currentState.PARADO_SUBINDO~q\;
\top|controle|ALT_INV_currentState.SUBINDO~q\ <= NOT \top|controle|currentState.SUBINDO~q\;
\trex|ALT_INV_HEX[1]~1_combout\ <= NOT \trex|HEX[1]~1_combout\;
\trex|ALT_INV_Equal1~1_combout\ <= NOT \trex|Equal1~1_combout\;
\trex|ALT_INV_Equal1~0_combout\ <= NOT \trex|Equal1~0_combout\;
\trex|ALT_INV_Equal0~5_combout\ <= NOT \trex|Equal0~5_combout\;
\trex|ALT_INV_Equal0~4_combout\ <= NOT \trex|Equal0~4_combout\;
\motor|ALT_INV_positionCont\(20) <= NOT \motor|positionCont\(20);
\motor|ALT_INV_positionCont\(21) <= NOT \motor|positionCont\(21);
\motor|ALT_INV_positionCont\(22) <= NOT \motor|positionCont\(22);
\motor|ALT_INV_positionCont\(23) <= NOT \motor|positionCont\(23);
\motor|ALT_INV_positionCont\(24) <= NOT \motor|positionCont\(24);
\motor|ALT_INV_positionCont\(25) <= NOT \motor|positionCont\(25);
\trex|ALT_INV_Equal0~3_combout\ <= NOT \trex|Equal0~3_combout\;
\motor|ALT_INV_positionCont\(26) <= NOT \motor|positionCont\(26);
\motor|ALT_INV_positionCont\(27) <= NOT \motor|positionCont\(27);
\motor|ALT_INV_positionCont\(28) <= NOT \motor|positionCont\(28);
\motor|ALT_INV_positionCont\(29) <= NOT \motor|positionCont\(29);
\motor|ALT_INV_positionCont\(30) <= NOT \motor|positionCont\(30);
\motor|ALT_INV_positionCont\(31) <= NOT \motor|positionCont\(31);
\trex|ALT_INV_Equal0~2_combout\ <= NOT \trex|Equal0~2_combout\;
\motor|ALT_INV_positionCont\(14) <= NOT \motor|positionCont\(14);
\motor|ALT_INV_positionCont\(15) <= NOT \motor|positionCont\(15);
\motor|ALT_INV_positionCont\(16) <= NOT \motor|positionCont\(16);
\motor|ALT_INV_positionCont\(17) <= NOT \motor|positionCont\(17);
\motor|ALT_INV_positionCont\(18) <= NOT \motor|positionCont\(18);
\motor|ALT_INV_positionCont\(19) <= NOT \motor|positionCont\(19);
\trex|ALT_INV_Equal0~1_combout\ <= NOT \trex|Equal0~1_combout\;
\motor|ALT_INV_positionCont\(8) <= NOT \motor|positionCont\(8);
\motor|ALT_INV_positionCont\(9) <= NOT \motor|positionCont\(9);
\motor|ALT_INV_positionCont\(10) <= NOT \motor|positionCont\(10);
\motor|ALT_INV_positionCont\(11) <= NOT \motor|positionCont\(11);
\motor|ALT_INV_positionCont\(12) <= NOT \motor|positionCont\(12);
\motor|ALT_INV_positionCont\(13) <= NOT \motor|positionCont\(13);
\trex|ALT_INV_Equal0~0_combout\ <= NOT \trex|Equal0~0_combout\;
\motor|ALT_INV_positionCont\(3) <= NOT \motor|positionCont\(3);
\motor|ALT_INV_positionCont\(4) <= NOT \motor|positionCont\(4);
\motor|ALT_INV_positionCont\(5) <= NOT \motor|positionCont\(5);
\motor|ALT_INV_positionCont\(6) <= NOT \motor|positionCont\(6);
\motor|ALT_INV_positionCont\(7) <= NOT \motor|positionCont\(7);
\motor|ALT_INV_positionCont\(2) <= NOT \motor|positionCont\(2);
\motor|ALT_INV_positionCont\(1) <= NOT \motor|positionCont\(1);
\motor|ALT_INV_positionCont\(0) <= NOT \motor|positionCont\(0);
\motor|ALT_INV_contador\(12) <= NOT \motor|contador\(12);
\motor|ALT_INV_contador\(11) <= NOT \motor|contador\(11);
\motor|ALT_INV_contador\(2) <= NOT \motor|contador\(2);
\motor|ALT_INV_contador\(10) <= NOT \motor|contador\(10);
\motor|ALT_INV_contador\(9) <= NOT \motor|contador\(9);
\motor|ALT_INV_contador\(8) <= NOT \motor|contador\(8);
\motor|ALT_INV_contador\(7) <= NOT \motor|contador\(7);
\motor|ALT_INV_contador\(6) <= NOT \motor|contador\(6);
\motor|ALT_INV_contador\(5) <= NOT \motor|contador\(5);
\motor|ALT_INV_contador\(0) <= NOT \motor|contador\(0);
\motor|ALT_INV_contador\(4) <= NOT \motor|contador\(4);
\motor|ALT_INV_contador\(3) <= NOT \motor|contador\(3);
\motor|ALT_INV_contador\(18) <= NOT \motor|contador\(18);
\motor|ALT_INV_contador\(17) <= NOT \motor|contador\(17);
\motor|ALT_INV_contador\(16) <= NOT \motor|contador\(16);
\motor|ALT_INV_contador\(15) <= NOT \motor|contador\(15);
\motor|ALT_INV_contador\(14) <= NOT \motor|contador\(14);
\motor|ALT_INV_contador\(13) <= NOT \motor|contador\(13);
\motor|ALT_INV_contador\(19) <= NOT \motor|contador\(19);
\motor|ALT_INV_contador\(24) <= NOT \motor|contador\(24);
\motor|ALT_INV_contador\(23) <= NOT \motor|contador\(23);
\motor|ALT_INV_contador\(22) <= NOT \motor|contador\(22);
\motor|ALT_INV_contador\(21) <= NOT \motor|contador\(21);
\motor|ALT_INV_contador\(20) <= NOT \motor|contador\(20);
\motor|ALT_INV_contador\(1) <= NOT \motor|contador\(1);
\motor|ALT_INV_contador\(26) <= NOT \motor|contador\(26);
\motor|ALT_INV_contador\(27) <= NOT \motor|contador\(27);
\motor|ALT_INV_contador\(25) <= NOT \motor|contador\(25);

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trex|HEX[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trex|ALT_INV_HEX[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trex|Equal3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trex|HEX[3]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trex|HEX[4]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trex|HEX[5]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \trex|HEX[6]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \top|btUpArray|bot:0:botaaao|saida~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \top|btUpArray|bot:1:botaaao|saida~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \top|btUpArray|bot:2:botaaao|saida~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \top|btUpArray|bot:3:botaaao|saida~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X26_Y0_N93
\upButton~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \top|controle|upButton~combout\,
	devoe => ww_devoe,
	o => ww_upButton);

-- Location: IOOBUF_X30_Y0_N53
\downButton~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \top|controle|downButton~combout\,
	devoe => ww_devoe,
	o => ww_downButton);

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X28_Y5_N8
\top|controle|currentState.DESCENDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \top|controle|Selector3~6_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top|controle|currentState.DESCENDO~q\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: MLABCELL_X28_Y5_N15
\trex|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|Equal0~6_combout\ = ( !\motor|positionCont\(1) & ( !\motor|positionCont\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor|ALT_INV_positionCont\(0),
	dataf => \motor|ALT_INV_positionCont\(1),
	combout => \trex|Equal0~6_combout\);

-- Location: LABCELL_X27_Y5_N24
\top|controle|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Selector0~1_combout\ = ( \top|controle|Selector0~0_combout\ & ( (!\trex|Equal0~6_combout\ & (((!\top|btUpArray|bot:0:botaaao|saida~combout\ & \top|controle|currentState.PARADO~q\)))) # (\trex|Equal0~6_combout\ & 
-- ((!\top|controle|currentState.DESCENDO~q\) # ((!\top|btUpArray|bot:0:botaaao|saida~combout\ & \top|controle|currentState.PARADO~q\)))) ) ) # ( !\top|controle|Selector0~0_combout\ & ( (\trex|Equal0~6_combout\ & !\top|controle|currentState.DESCENDO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100111101000100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \trex|ALT_INV_Equal0~6_combout\,
	datab => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	datac => \top|btUpArray|bot:0:botaaao|ALT_INV_saida~combout\,
	datad => \top|controle|ALT_INV_currentState.PARADO~q\,
	dataf => \top|controle|ALT_INV_Selector0~0_combout\,
	combout => \top|controle|Selector0~1_combout\);

-- Location: FF_X27_Y5_N25
\top|controle|currentState.PARADO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \top|controle|Selector0~1_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top|controle|currentState.PARADO~q\);

-- Location: LABCELL_X27_Y5_N0
\top|controle|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Decoder0~1_combout\ = ( \top|controle|currentState.PARADO~q\ & ( (\motor|positionCont\(0) & !\motor|positionCont\(1)) ) ) # ( !\top|controle|currentState.PARADO~q\ & ( (\top|controle|currentState.PARADO_SUBINDO~q\ & (\motor|positionCont\(0) 
-- & !\motor|positionCont\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|controle|ALT_INV_currentState.PARADO_SUBINDO~q\,
	datab => \motor|ALT_INV_positionCont\(0),
	datac => \motor|ALT_INV_positionCont\(1),
	dataf => \top|controle|ALT_INV_currentState.PARADO~q\,
	combout => \top|controle|Decoder0~1_combout\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X27_Y5_N12
\top|btUpArray|bot:1:botaaao|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|btUpArray|bot:1:botaaao|saida~combout\ = ( \top|btUpArray|bot:1:botaaao|saida~combout\ & ( !\top|controle|Decoder0~1_combout\ ) ) # ( !\top|btUpArray|bot:1:botaaao|saida~combout\ & ( (!\top|controle|Decoder0~1_combout\ & !\KEY[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top|controle|ALT_INV_Decoder0~1_combout\,
	datad => \ALT_INV_KEY[1]~input_o\,
	dataf => \top|btUpArray|bot:1:botaaao|ALT_INV_saida~combout\,
	combout => \top|btUpArray|bot:1:botaaao|saida~combout\);

-- Location: LABCELL_X27_Y5_N6
\top|controle|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Decoder0~3_combout\ = ( \top|controle|currentState.PARADO~q\ & ( (\motor|positionCont\(0) & \motor|positionCont\(1)) ) ) # ( !\top|controle|currentState.PARADO~q\ & ( (\top|controle|currentState.PARADO_SUBINDO~q\ & (\motor|positionCont\(0) & 
-- \motor|positionCont\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|controle|ALT_INV_currentState.PARADO_SUBINDO~q\,
	datab => \motor|ALT_INV_positionCont\(0),
	datac => \motor|ALT_INV_positionCont\(1),
	dataf => \top|controle|ALT_INV_currentState.PARADO~q\,
	combout => \top|controle|Decoder0~3_combout\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X27_Y5_N27
\top|btUpArray|bot:3:botaaao|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|btUpArray|bot:3:botaaao|saida~combout\ = ( \top|btUpArray|bot:3:botaaao|saida~combout\ & ( !\top|controle|Decoder0~3_combout\ ) ) # ( !\top|btUpArray|bot:3:botaaao|saida~combout\ & ( (!\top|controle|Decoder0~3_combout\ & !\KEY[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top|controle|ALT_INV_Decoder0~3_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	dataf => \top|btUpArray|bot:3:botaaao|ALT_INV_saida~combout\,
	combout => \top|btUpArray|bot:3:botaaao|saida~combout\);

-- Location: LABCELL_X27_Y5_N33
\top|controle|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Selector0~0_combout\ = ( !\top|btUpArray|bot:3:botaaao|saida~combout\ & ( (!\top|btUpArray|bot:1:botaaao|saida~combout\ & !\top|btUpArray|bot:2:botaaao|saida~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top|btUpArray|bot:1:botaaao|ALT_INV_saida~combout\,
	datad => \top|btUpArray|bot:2:botaaao|ALT_INV_saida~combout\,
	dataf => \top|btUpArray|bot:3:botaaao|ALT_INV_saida~combout\,
	combout => \top|controle|Selector0~0_combout\);

-- Location: LABCELL_X27_Y5_N36
\top|controle|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Mux0~0_combout\ = ( \top|btUpArray|bot:3:botaaao|saida~combout\ & ( \motor|positionCont\(1) & ( (\motor|positionCont\(0)) # (\top|btUpArray|bot:2:botaaao|saida~combout\) ) ) ) # ( !\top|btUpArray|bot:3:botaaao|saida~combout\ & ( 
-- \motor|positionCont\(1) & ( (\top|btUpArray|bot:2:botaaao|saida~combout\ & !\motor|positionCont\(0)) ) ) ) # ( \top|btUpArray|bot:3:botaaao|saida~combout\ & ( !\motor|positionCont\(1) & ( (!\motor|positionCont\(0) & 
-- ((\top|btUpArray|bot:0:botaaao|saida~combout\))) # (\motor|positionCont\(0) & (\top|btUpArray|bot:1:botaaao|saida~combout\)) ) ) ) # ( !\top|btUpArray|bot:3:botaaao|saida~combout\ & ( !\motor|positionCont\(1) & ( (!\motor|positionCont\(0) & 
-- ((\top|btUpArray|bot:0:botaaao|saida~combout\))) # (\motor|positionCont\(0) & (\top|btUpArray|bot:1:botaaao|saida~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|btUpArray|bot:2:botaaao|ALT_INV_saida~combout\,
	datab => \top|btUpArray|bot:1:botaaao|ALT_INV_saida~combout\,
	datac => \top|btUpArray|bot:0:botaaao|ALT_INV_saida~combout\,
	datad => \motor|ALT_INV_positionCont\(0),
	datae => \top|btUpArray|bot:3:botaaao|ALT_INV_saida~combout\,
	dataf => \motor|ALT_INV_positionCont\(1),
	combout => \top|controle|Mux0~0_combout\);

-- Location: LABCELL_X27_Y5_N45
\top|operativo|xbtUpPU|output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|operativo|xbtUpPU|output~0_combout\ = ( \motor|positionCont\(0) & ( ((!\top|btUpArray|bot:3:botaaao|saida~combout\ & !\top|btUpArray|bot:2:botaaao|saida~combout\)) # (\motor|positionCont\(1)) ) ) # ( !\motor|positionCont\(0) & ( 
-- (!\top|btUpArray|bot:3:botaaao|saida~combout\ & (((!\top|btUpArray|bot:1:botaaao|saida~combout\ & !\top|btUpArray|bot:2:botaaao|saida~combout\)) # (\motor|positionCont\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010001000100110001000100010011011101010101011101110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_positionCont\(1),
	datab => \top|btUpArray|bot:3:botaaao|ALT_INV_saida~combout\,
	datac => \top|btUpArray|bot:1:botaaao|ALT_INV_saida~combout\,
	datad => \top|btUpArray|bot:2:botaaao|ALT_INV_saida~combout\,
	dataf => \motor|ALT_INV_positionCont\(0),
	combout => \top|operativo|xbtUpPU|output~0_combout\);

-- Location: LABCELL_X27_Y5_N30
\top|controle|Selector3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Selector3~3_combout\ = ( \top|btUpArray|bot:0:botaaao|saida~combout\ & ( (!\top|controle|currentState.DESCENDO~q\ & (!\top|controle|Mux0~0_combout\ & \top|operativo|xbtUpPU|output~0_combout\)) ) ) # ( 
-- !\top|btUpArray|bot:0:botaaao|saida~combout\ & ( (!\top|controle|currentState.DESCENDO~q\ & (((!\top|controle|Mux0~0_combout\ & \top|operativo|xbtUpPU|output~0_combout\)))) # (\top|controle|currentState.DESCENDO~q\ & (\top|controle|Selector0~0_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000100011101000100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|controle|ALT_INV_Selector0~0_combout\,
	datab => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	datac => \top|controle|ALT_INV_Mux0~0_combout\,
	datad => \top|operativo|xbtUpPU|ALT_INV_output~0_combout\,
	dataf => \top|btUpArray|bot:0:botaaao|ALT_INV_saida~combout\,
	combout => \top|controle|Selector3~3_combout\);

-- Location: MLABCELL_X28_Y5_N57
\trex|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|Equal2~0_combout\ = ( \motor|positionCont\(1) & ( \motor|positionCont\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor|ALT_INV_positionCont\(0),
	dataf => \motor|ALT_INV_positionCont\(1),
	combout => \trex|Equal2~0_combout\);

-- Location: FF_X28_Y5_N50
\top|controle|currentState.SUBINDO~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \top|controle|Selector1~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top|controle|currentState.SUBINDO~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y5_N24
\top|controle|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Selector4~0_combout\ = ( \trex|Equal2~0_combout\ & ( \top|controle|currentState.SUBINDO~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \trex|ALT_INV_Equal2~0_combout\,
	dataf => \top|controle|ALT_INV_currentState.SUBINDO~DUPLICATE_q\,
	combout => \top|controle|Selector4~0_combout\);

-- Location: FF_X28_Y5_N26
\top|controle|currentState.PARADO_DESCENDO~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \top|controle|Selector4~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top|controle|currentState.PARADO_DESCENDO~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y5_N42
\top|controle|Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Selector1~2_combout\ = ( \top|controle|currentState.PARADO_SUBINDO~q\ & ( \top|controle|currentState.DESCENDO~q\ & ( (!\top|controle|Mux0~0_combout\ & ((!\top|controle|currentState.PARADO_DESCENDO~DUPLICATE_q\) # 
-- (\top|operativo|xbtUpZP|output~0_combout\))) ) ) ) # ( !\top|controle|currentState.PARADO_SUBINDO~q\ & ( \top|controle|currentState.DESCENDO~q\ & ( (!\top|controle|currentState.PARADO_DESCENDO~DUPLICATE_q\) # (\top|operativo|xbtUpZP|output~0_combout\) ) ) 
-- ) # ( \top|controle|currentState.PARADO_SUBINDO~q\ & ( !\top|controle|currentState.DESCENDO~q\ & ( (!\trex|Equal0~6_combout\ & (!\top|controle|Mux0~0_combout\ & \top|operativo|xbtUpZP|output~0_combout\)) ) ) ) # ( 
-- !\top|controle|currentState.PARADO_SUBINDO~q\ & ( !\top|controle|currentState.DESCENDO~q\ & ( (!\trex|Equal0~6_combout\ & \top|operativo|xbtUpZP|output~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100000010101010111111111010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|controle|ALT_INV_currentState.PARADO_DESCENDO~DUPLICATE_q\,
	datab => \trex|ALT_INV_Equal0~6_combout\,
	datac => \top|controle|ALT_INV_Mux0~0_combout\,
	datad => \top|operativo|xbtUpZP|ALT_INV_output~0_combout\,
	datae => \top|controle|ALT_INV_currentState.PARADO_SUBINDO~q\,
	dataf => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	combout => \top|controle|Selector1~2_combout\);

-- Location: MLABCELL_X28_Y5_N21
\top|controle|Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Selector1~1_combout\ = ( \top|operativo|xbtUpPU|output~0_combout\ & ( \top|controle|currentState.DESCENDO~q\ & ( (!\top|btUpArray|bot:0:botaaao|saida~combout\ & ((!\top|controle|currentState.SUBINDO~DUPLICATE_q\) # ((!\trex|Equal2~0_combout\ 
-- & !\top|controle|Mux0~0_combout\)))) ) ) ) # ( !\top|operativo|xbtUpPU|output~0_combout\ & ( \top|controle|currentState.DESCENDO~q\ & ( (!\top|controle|currentState.SUBINDO~DUPLICATE_q\ & (!\top|btUpArray|bot:0:botaaao|saida~combout\)) # 
-- (\top|controle|currentState.SUBINDO~DUPLICATE_q\ & ((!\top|controle|Mux0~0_combout\))) ) ) ) # ( \top|operativo|xbtUpPU|output~0_combout\ & ( !\top|controle|currentState.DESCENDO~q\ & ( (!\top|controle|Mux0~0_combout\ & 
-- ((!\top|controle|currentState.SUBINDO~DUPLICATE_q\) # (!\trex|Equal2~0_combout\))) ) ) ) # ( !\top|operativo|xbtUpPU|output~0_combout\ & ( !\top|controle|currentState.DESCENDO~q\ & ( !\top|controle|Mux0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111110100000000011011101100010001100100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|controle|ALT_INV_currentState.SUBINDO~DUPLICATE_q\,
	datab => \top|btUpArray|bot:0:botaaao|ALT_INV_saida~combout\,
	datac => \trex|ALT_INV_Equal2~0_combout\,
	datad => \top|controle|ALT_INV_Mux0~0_combout\,
	datae => \top|operativo|xbtUpPU|ALT_INV_output~0_combout\,
	dataf => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	combout => \top|controle|Selector1~1_combout\);

-- Location: LABCELL_X27_Y5_N42
\top|controle|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Selector3~2_combout\ = ( !\top|controle|currentState.PARADO~q\ & ( !\top|controle|Selector3~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top|controle|ALT_INV_Selector3~1_combout\,
	dataf => \top|controle|ALT_INV_currentState.PARADO~q\,
	combout => \top|controle|Selector3~2_combout\);

-- Location: MLABCELL_X28_Y5_N54
\top|controle|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Selector3~0_combout\ = (\top|controle|currentState.SUBINDO~DUPLICATE_q\ & (((!\top|operativo|xbtUpPU|output~0_combout\) # (\top|controle|Mux0~0_combout\)) # (\trex|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010101010101010001010101010101000101010101010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|controle|ALT_INV_currentState.SUBINDO~DUPLICATE_q\,
	datab => \trex|ALT_INV_Equal2~0_combout\,
	datac => \top|controle|ALT_INV_Mux0~0_combout\,
	datad => \top|operativo|xbtUpPU|ALT_INV_output~0_combout\,
	combout => \top|controle|Selector3~0_combout\);

-- Location: MLABCELL_X28_Y5_N30
\top|controle|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Selector1~0_combout\ = ( \top|operativo|xbtUpPU|output~0_combout\ & ( \top|controle|currentState.SUBINDO~DUPLICATE_q\ & ( (!\top|controle|currentState.PARADO_DESCENDO~DUPLICATE_q\ & (((!\top|controle|currentState.PARADO_SUBINDO~q\) # 
-- (\top|controle|Mux0~0_combout\)))) # (\top|controle|currentState.PARADO_DESCENDO~DUPLICATE_q\ & (!\top|operativo|xbtUpZP|output~0_combout\ & ((!\top|controle|currentState.PARADO_SUBINDO~q\) # (\top|controle|Mux0~0_combout\)))) ) ) ) # ( 
-- !\top|operativo|xbtUpPU|output~0_combout\ & ( \top|controle|currentState.SUBINDO~DUPLICATE_q\ ) ) # ( !\top|operativo|xbtUpPU|output~0_combout\ & ( !\top|controle|currentState.SUBINDO~DUPLICATE_q\ & ( 
-- (!\top|controle|currentState.PARADO_DESCENDO~DUPLICATE_q\ & (((!\top|controle|Mux0~0_combout\ & \top|controle|currentState.PARADO_SUBINDO~q\)))) # (\top|controle|currentState.PARADO_DESCENDO~DUPLICATE_q\ & (((!\top|controle|Mux0~0_combout\ & 
-- \top|controle|currentState.PARADO_SUBINDO~q\)) # (\top|operativo|xbtUpZP|output~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111110001000000000000000011111111111111111110111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|controle|ALT_INV_currentState.PARADO_DESCENDO~DUPLICATE_q\,
	datab => \top|operativo|xbtUpZP|ALT_INV_output~0_combout\,
	datac => \top|controle|ALT_INV_Mux0~0_combout\,
	datad => \top|controle|ALT_INV_currentState.PARADO_SUBINDO~q\,
	datae => \top|operativo|xbtUpPU|ALT_INV_output~0_combout\,
	dataf => \top|controle|ALT_INV_currentState.SUBINDO~DUPLICATE_q\,
	combout => \top|controle|Selector1~0_combout\);

-- Location: MLABCELL_X28_Y5_N48
\top|controle|Selector1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Selector1~3_combout\ = ( \top|controle|Selector3~0_combout\ & ( \top|controle|Selector1~0_combout\ & ( (\top|controle|Selector1~2_combout\ & \top|controle|Selector1~1_combout\) ) ) ) # ( !\top|controle|Selector3~0_combout\ & ( 
-- \top|controle|Selector1~0_combout\ & ( (\top|controle|Selector1~2_combout\ & (((\top|controle|Selector3~2_combout\) # (\top|controle|Selector1~1_combout\)) # (\top|controle|Selector3~3_combout\))) ) ) ) # ( \top|controle|Selector3~0_combout\ & ( 
-- !\top|controle|Selector1~0_combout\ & ( (\top|controle|Selector1~2_combout\ & \top|controle|Selector1~1_combout\) ) ) ) # ( !\top|controle|Selector3~0_combout\ & ( !\top|controle|Selector1~0_combout\ & ( (!\top|controle|Selector3~3_combout\ & 
-- (\top|controle|Selector1~2_combout\ & (\top|controle|Selector1~1_combout\ & !\top|controle|Selector3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000110000001100010011001100110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|controle|ALT_INV_Selector3~3_combout\,
	datab => \top|controle|ALT_INV_Selector1~2_combout\,
	datac => \top|controle|ALT_INV_Selector1~1_combout\,
	datad => \top|controle|ALT_INV_Selector3~2_combout\,
	datae => \top|controle|ALT_INV_Selector3~0_combout\,
	dataf => \top|controle|ALT_INV_Selector1~0_combout\,
	combout => \top|controle|Selector1~3_combout\);

-- Location: FF_X28_Y5_N49
\top|controle|currentState.SUBINDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \top|controle|Selector1~3_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top|controle|currentState.SUBINDO~q\);

-- Location: LABCELL_X29_Y5_N0
\motor|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~1_sumout\ = SUM(( \motor|positionCont\(0) ) + ( (!\top|controle|currentState.DESCENDO~DUPLICATE_q\) # (\top|controle|currentState.SUBINDO~q\) ) + ( !VCC ))
-- \motor|Add1~2\ = CARRY(( \motor|positionCont\(0) ) + ( (!\top|controle|currentState.DESCENDO~DUPLICATE_q\) # (\top|controle|currentState.SUBINDO~q\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top|controle|ALT_INV_currentState.SUBINDO~q\,
	datac => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	datad => \motor|ALT_INV_positionCont\(0),
	cin => GND,
	sumout => \motor|Add1~1_sumout\,
	cout => \motor|Add1~2\);

-- Location: MLABCELL_X28_Y4_N30
\motor|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~73_sumout\ = SUM(( \motor|contador\(0) ) + ( VCC ) + ( !VCC ))
-- \motor|Add0~74\ = CARRY(( \motor|contador\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador\(0),
	cin => GND,
	sumout => \motor|Add0~73_sumout\,
	cout => \motor|Add0~74\);

-- Location: MLABCELL_X28_Y4_N36
\motor|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~101_sumout\ = SUM(( \motor|contador\(2) ) + ( GND ) + ( \motor|Add0~14\ ))
-- \motor|Add0~102\ = CARRY(( \motor|contador\(2) ) + ( GND ) + ( \motor|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor|ALT_INV_contador\(2),
	cin => \motor|Add0~14\,
	sumout => \motor|Add0~101_sumout\,
	cout => \motor|Add0~102\);

-- Location: MLABCELL_X28_Y4_N39
\motor|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~65_sumout\ = SUM(( \motor|contador\(3) ) + ( GND ) + ( \motor|Add0~102\ ))
-- \motor|Add0~66\ = CARRY(( \motor|contador\(3) ) + ( GND ) + ( \motor|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador\(3),
	cin => \motor|Add0~102\,
	sumout => \motor|Add0~65_sumout\,
	cout => \motor|Add0~66\);

-- Location: FF_X28_Y4_N41
\motor|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~65_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(3));

-- Location: MLABCELL_X28_Y4_N42
\motor|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~69_sumout\ = SUM(( \motor|contador\(4) ) + ( GND ) + ( \motor|Add0~66\ ))
-- \motor|Add0~70\ = CARRY(( \motor|contador\(4) ) + ( GND ) + ( \motor|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor|ALT_INV_contador\(4),
	cin => \motor|Add0~66\,
	sumout => \motor|Add0~69_sumout\,
	cout => \motor|Add0~70\);

-- Location: FF_X28_Y4_N43
\motor|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~69_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(4));

-- Location: MLABCELL_X28_Y4_N45
\motor|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~77_sumout\ = SUM(( \motor|contador\(5) ) + ( GND ) + ( \motor|Add0~70\ ))
-- \motor|Add0~78\ = CARRY(( \motor|contador\(5) ) + ( GND ) + ( \motor|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor|ALT_INV_contador\(5),
	cin => \motor|Add0~70\,
	sumout => \motor|Add0~77_sumout\,
	cout => \motor|Add0~78\);

-- Location: FF_X28_Y4_N47
\motor|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~77_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(5));

-- Location: MLABCELL_X28_Y4_N48
\motor|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~81_sumout\ = SUM(( \motor|contador\(6) ) + ( GND ) + ( \motor|Add0~78\ ))
-- \motor|Add0~82\ = CARRY(( \motor|contador\(6) ) + ( GND ) + ( \motor|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador\(6),
	cin => \motor|Add0~78\,
	sumout => \motor|Add0~81_sumout\,
	cout => \motor|Add0~82\);

-- Location: FF_X28_Y4_N50
\motor|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~81_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(6));

-- Location: MLABCELL_X28_Y4_N51
\motor|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~85_sumout\ = SUM(( \motor|contador\(7) ) + ( GND ) + ( \motor|Add0~82\ ))
-- \motor|Add0~86\ = CARRY(( \motor|contador\(7) ) + ( GND ) + ( \motor|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor|ALT_INV_contador\(7),
	cin => \motor|Add0~82\,
	sumout => \motor|Add0~85_sumout\,
	cout => \motor|Add0~86\);

-- Location: FF_X28_Y4_N52
\motor|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~85_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(7));

-- Location: MLABCELL_X28_Y4_N54
\motor|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~89_sumout\ = SUM(( \motor|contador\(8) ) + ( GND ) + ( \motor|Add0~86\ ))
-- \motor|Add0~90\ = CARRY(( \motor|contador\(8) ) + ( GND ) + ( \motor|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador\(8),
	cin => \motor|Add0~86\,
	sumout => \motor|Add0~89_sumout\,
	cout => \motor|Add0~90\);

-- Location: FF_X28_Y4_N56
\motor|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~89_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(8));

-- Location: MLABCELL_X28_Y4_N57
\motor|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~93_sumout\ = SUM(( \motor|contador\(9) ) + ( GND ) + ( \motor|Add0~90\ ))
-- \motor|Add0~94\ = CARRY(( \motor|contador\(9) ) + ( GND ) + ( \motor|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador\(9),
	cin => \motor|Add0~90\,
	sumout => \motor|Add0~93_sumout\,
	cout => \motor|Add0~94\);

-- Location: FF_X28_Y4_N59
\motor|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~93_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(9));

-- Location: MLABCELL_X28_Y3_N0
\motor|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~97_sumout\ = SUM(( \motor|contador\(10) ) + ( GND ) + ( \motor|Add0~94\ ))
-- \motor|Add0~98\ = CARRY(( \motor|contador\(10) ) + ( GND ) + ( \motor|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador\(10),
	cin => \motor|Add0~94\,
	sumout => \motor|Add0~97_sumout\,
	cout => \motor|Add0~98\);

-- Location: FF_X28_Y3_N2
\motor|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~97_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(10));

-- Location: MLABCELL_X28_Y3_N3
\motor|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~105_sumout\ = SUM(( \motor|contador\(11) ) + ( GND ) + ( \motor|Add0~98\ ))
-- \motor|Add0~106\ = CARRY(( \motor|contador\(11) ) + ( GND ) + ( \motor|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor|ALT_INV_contador\(11),
	cin => \motor|Add0~98\,
	sumout => \motor|Add0~105_sumout\,
	cout => \motor|Add0~106\);

-- Location: FF_X28_Y3_N5
\motor|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~105_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(11));

-- Location: MLABCELL_X28_Y3_N6
\motor|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~109_sumout\ = SUM(( \motor|contador\(12) ) + ( GND ) + ( \motor|Add0~106\ ))
-- \motor|Add0~110\ = CARRY(( \motor|contador\(12) ) + ( GND ) + ( \motor|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador\(12),
	cin => \motor|Add0~106\,
	sumout => \motor|Add0~109_sumout\,
	cout => \motor|Add0~110\);

-- Location: FF_X28_Y3_N7
\motor|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~109_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(12));

-- Location: MLABCELL_X28_Y3_N9
\motor|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~41_sumout\ = SUM(( \motor|contador[13]~DUPLICATE_q\ ) + ( GND ) + ( \motor|Add0~110\ ))
-- \motor|Add0~42\ = CARRY(( \motor|contador[13]~DUPLICATE_q\ ) + ( GND ) + ( \motor|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador[13]~DUPLICATE_q\,
	cin => \motor|Add0~110\,
	sumout => \motor|Add0~41_sumout\,
	cout => \motor|Add0~42\);

-- Location: FF_X28_Y3_N11
\motor|contador[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~41_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador[13]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y3_N12
\motor|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~45_sumout\ = SUM(( \motor|contador\(14) ) + ( GND ) + ( \motor|Add0~42\ ))
-- \motor|Add0~46\ = CARRY(( \motor|contador\(14) ) + ( GND ) + ( \motor|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor|ALT_INV_contador\(14),
	cin => \motor|Add0~42\,
	sumout => \motor|Add0~45_sumout\,
	cout => \motor|Add0~46\);

-- Location: FF_X28_Y3_N13
\motor|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~45_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(14));

-- Location: MLABCELL_X28_Y3_N15
\motor|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~49_sumout\ = SUM(( \motor|contador[15]~DUPLICATE_q\ ) + ( GND ) + ( \motor|Add0~46\ ))
-- \motor|Add0~50\ = CARRY(( \motor|contador[15]~DUPLICATE_q\ ) + ( GND ) + ( \motor|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador[15]~DUPLICATE_q\,
	cin => \motor|Add0~46\,
	sumout => \motor|Add0~49_sumout\,
	cout => \motor|Add0~50\);

-- Location: FF_X28_Y3_N17
\motor|contador[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~49_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador[15]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y3_N18
\motor|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~53_sumout\ = SUM(( \motor|contador[16]~DUPLICATE_q\ ) + ( GND ) + ( \motor|Add0~50\ ))
-- \motor|Add0~54\ = CARRY(( \motor|contador[16]~DUPLICATE_q\ ) + ( GND ) + ( \motor|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador[16]~DUPLICATE_q\,
	cin => \motor|Add0~50\,
	sumout => \motor|Add0~53_sumout\,
	cout => \motor|Add0~54\);

-- Location: FF_X28_Y3_N20
\motor|contador[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~53_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador[16]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y3_N21
\motor|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~57_sumout\ = SUM(( \motor|contador\(17) ) + ( GND ) + ( \motor|Add0~54\ ))
-- \motor|Add0~58\ = CARRY(( \motor|contador\(17) ) + ( GND ) + ( \motor|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador\(17),
	cin => \motor|Add0~54\,
	sumout => \motor|Add0~57_sumout\,
	cout => \motor|Add0~58\);

-- Location: FF_X28_Y3_N22
\motor|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~57_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(17));

-- Location: MLABCELL_X28_Y3_N24
\motor|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~61_sumout\ = SUM(( \motor|contador[18]~DUPLICATE_q\ ) + ( GND ) + ( \motor|Add0~58\ ))
-- \motor|Add0~62\ = CARRY(( \motor|contador[18]~DUPLICATE_q\ ) + ( GND ) + ( \motor|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador[18]~DUPLICATE_q\,
	cin => \motor|Add0~58\,
	sumout => \motor|Add0~61_sumout\,
	cout => \motor|Add0~62\);

-- Location: FF_X28_Y3_N26
\motor|contador[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~61_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador[18]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y3_N27
\motor|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~37_sumout\ = SUM(( \motor|contador\(19) ) + ( GND ) + ( \motor|Add0~62\ ))
-- \motor|Add0~38\ = CARRY(( \motor|contador\(19) ) + ( GND ) + ( \motor|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor|ALT_INV_contador\(19),
	cin => \motor|Add0~62\,
	sumout => \motor|Add0~37_sumout\,
	cout => \motor|Add0~38\);

-- Location: FF_X28_Y3_N29
\motor|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~37_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(19));

-- Location: MLABCELL_X28_Y3_N30
\motor|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~17_sumout\ = SUM(( \motor|contador\(20) ) + ( GND ) + ( \motor|Add0~38\ ))
-- \motor|Add0~18\ = CARRY(( \motor|contador\(20) ) + ( GND ) + ( \motor|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor|ALT_INV_contador\(20),
	cin => \motor|Add0~38\,
	sumout => \motor|Add0~17_sumout\,
	cout => \motor|Add0~18\);

-- Location: FF_X28_Y3_N32
\motor|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~17_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(20));

-- Location: MLABCELL_X28_Y3_N33
\motor|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~21_sumout\ = SUM(( \motor|contador\(21) ) + ( GND ) + ( \motor|Add0~18\ ))
-- \motor|Add0~22\ = CARRY(( \motor|contador\(21) ) + ( GND ) + ( \motor|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_contador\(21),
	cin => \motor|Add0~18\,
	sumout => \motor|Add0~21_sumout\,
	cout => \motor|Add0~22\);

-- Location: FF_X28_Y3_N35
\motor|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~21_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(21));

-- Location: MLABCELL_X28_Y3_N36
\motor|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~25_sumout\ = SUM(( \motor|contador\(22) ) + ( GND ) + ( \motor|Add0~22\ ))
-- \motor|Add0~26\ = CARRY(( \motor|contador\(22) ) + ( GND ) + ( \motor|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador\(22),
	cin => \motor|Add0~22\,
	sumout => \motor|Add0~25_sumout\,
	cout => \motor|Add0~26\);

-- Location: FF_X28_Y3_N38
\motor|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~25_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(22));

-- Location: MLABCELL_X28_Y3_N39
\motor|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~29_sumout\ = SUM(( \motor|contador\(23) ) + ( GND ) + ( \motor|Add0~26\ ))
-- \motor|Add0~30\ = CARRY(( \motor|contador\(23) ) + ( GND ) + ( \motor|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador\(23),
	cin => \motor|Add0~26\,
	sumout => \motor|Add0~29_sumout\,
	cout => \motor|Add0~30\);

-- Location: FF_X28_Y3_N41
\motor|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~29_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(23));

-- Location: MLABCELL_X28_Y3_N42
\motor|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~33_sumout\ = SUM(( \motor|contador\(24) ) + ( GND ) + ( \motor|Add0~30\ ))
-- \motor|Add0~34\ = CARRY(( \motor|contador\(24) ) + ( GND ) + ( \motor|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor|ALT_INV_contador\(24),
	cin => \motor|Add0~30\,
	sumout => \motor|Add0~33_sumout\,
	cout => \motor|Add0~34\);

-- Location: FF_X28_Y3_N44
\motor|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~33_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(24));

-- Location: MLABCELL_X28_Y3_N45
\motor|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~1_sumout\ = SUM(( \motor|contador\(25) ) + ( GND ) + ( \motor|Add0~34\ ))
-- \motor|Add0~2\ = CARRY(( \motor|contador\(25) ) + ( GND ) + ( \motor|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador\(25),
	cin => \motor|Add0~34\,
	sumout => \motor|Add0~1_sumout\,
	cout => \motor|Add0~2\);

-- Location: FF_X28_Y3_N47
\motor|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~1_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(25));

-- Location: MLABCELL_X28_Y3_N48
\motor|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~9_sumout\ = SUM(( \motor|contador\(26) ) + ( GND ) + ( \motor|Add0~2\ ))
-- \motor|Add0~10\ = CARRY(( \motor|contador\(26) ) + ( GND ) + ( \motor|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador\(26),
	cin => \motor|Add0~2\,
	sumout => \motor|Add0~9_sumout\,
	cout => \motor|Add0~10\);

-- Location: FF_X28_Y3_N50
\motor|contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~9_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(26));

-- Location: MLABCELL_X28_Y3_N51
\motor|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~5_sumout\ = SUM(( \motor|contador\(27) ) + ( GND ) + ( \motor|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_contador\(27),
	cin => \motor|Add0~10\,
	sumout => \motor|Add0~5_sumout\);

-- Location: FF_X28_Y3_N52
\motor|contador[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~5_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(27));

-- Location: FF_X28_Y3_N46
\motor|contador[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~1_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador[25]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y4_N12
\motor|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Equal2~0_combout\ = ( !\motor|contador\(27) & ( \motor|contador[25]~DUPLICATE_q\ & ( (!\motor|contador\(26) & \motor|contador\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_contador\(26),
	datac => \motor|ALT_INV_contador\(1),
	datae => \motor|ALT_INV_contador\(27),
	dataf => \motor|ALT_INV_contador[25]~DUPLICATE_q\,
	combout => \motor|Equal2~0_combout\);

-- Location: MLABCELL_X28_Y4_N6
\motor|Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Equal2~3_combout\ = ( !\motor|contador\(7) & ( \motor|contador\(3) & ( (\motor|contador\(6) & (\motor|contador\(4) & (\motor|contador\(0) & \motor|contador\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_contador\(6),
	datab => \motor|ALT_INV_contador\(4),
	datac => \motor|ALT_INV_contador\(0),
	datad => \motor|ALT_INV_contador\(5),
	datae => \motor|ALT_INV_contador\(7),
	dataf => \motor|ALT_INV_contador\(3),
	combout => \motor|Equal2~3_combout\);

-- Location: MLABCELL_X28_Y3_N54
\motor|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Equal2~1_combout\ = ( \motor|contador\(22) & ( \motor|contador\(20) & ( (\motor|contador\(21) & (!\motor|contador\(24) & (\motor|contador\(19) & \motor|contador\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_contador\(21),
	datab => \motor|ALT_INV_contador\(24),
	datac => \motor|ALT_INV_contador\(19),
	datad => \motor|ALT_INV_contador\(23),
	datae => \motor|ALT_INV_contador\(22),
	dataf => \motor|ALT_INV_contador\(20),
	combout => \motor|Equal2~1_combout\);

-- Location: FF_X28_Y3_N10
\motor|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~41_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(13));

-- Location: FF_X28_Y3_N19
\motor|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~53_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(16));

-- Location: FF_X28_Y3_N25
\motor|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~61_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(18));

-- Location: FF_X28_Y3_N16
\motor|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~49_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(15));

-- Location: LABCELL_X29_Y3_N0
\motor|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Equal2~2_combout\ = ( !\motor|contador\(18) & ( \motor|contador\(15) & ( (\motor|contador\(14) & (\motor|contador\(13) & (\motor|contador\(17) & !\motor|contador\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_contador\(14),
	datab => \motor|ALT_INV_contador\(13),
	datac => \motor|ALT_INV_contador\(17),
	datad => \motor|ALT_INV_contador\(16),
	datae => \motor|ALT_INV_contador\(18),
	dataf => \motor|ALT_INV_contador\(15),
	combout => \motor|Equal2~2_combout\);

-- Location: MLABCELL_X28_Y4_N24
\motor|Equal2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Equal2~5_combout\ = ( \motor|Equal2~1_combout\ & ( \motor|Equal2~2_combout\ & ( (\motor|Equal2~0_combout\ & (\motor|Equal2~4_combout\ & \motor|Equal2~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor|ALT_INV_Equal2~0_combout\,
	datac => \motor|ALT_INV_Equal2~4_combout\,
	datad => \motor|ALT_INV_Equal2~3_combout\,
	datae => \motor|ALT_INV_Equal2~1_combout\,
	dataf => \motor|ALT_INV_Equal2~2_combout\,
	combout => \motor|Equal2~5_combout\);

-- Location: FF_X28_Y4_N31
\motor|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~73_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(0));

-- Location: MLABCELL_X28_Y4_N33
\motor|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add0~13_sumout\ = SUM(( \motor|contador\(1) ) + ( GND ) + ( \motor|Add0~74\ ))
-- \motor|Add0~14\ = CARRY(( \motor|contador\(1) ) + ( GND ) + ( \motor|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_contador\(1),
	cin => \motor|Add0~74\,
	sumout => \motor|Add0~13_sumout\,
	cout => \motor|Add0~14\);

-- Location: FF_X28_Y4_N35
\motor|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~13_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(1));

-- Location: FF_X28_Y4_N38
\motor|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~101_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador\(2));

-- Location: FF_X28_Y3_N4
\motor|contador[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add0~105_sumout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sclr => \motor|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|contador[11]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y4_N0
\motor|Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Equal2~4_combout\ = ( !\motor|contador\(8) & ( !\motor|contador[11]~DUPLICATE_q\ & ( (\motor|contador\(2) & (!\motor|contador\(9) & (!\motor|contador\(10) & \motor|contador\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_contador\(2),
	datab => \motor|ALT_INV_contador\(9),
	datac => \motor|ALT_INV_contador\(10),
	datad => \motor|ALT_INV_contador\(12),
	datae => \motor|ALT_INV_contador\(8),
	dataf => \motor|ALT_INV_contador[11]~DUPLICATE_q\,
	combout => \motor|Equal2~4_combout\);

-- Location: MLABCELL_X28_Y4_N18
\motor|positionCont[28]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|positionCont[28]~0_combout\ = ( \motor|Equal2~1_combout\ & ( \motor|Equal2~2_combout\ & ( (\motor|Equal2~4_combout\ & (\motor|Equal2~0_combout\ & (!\SW[0]~input_o\ & \motor|Equal2~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_Equal2~4_combout\,
	datab => \motor|ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \motor|ALT_INV_Equal2~3_combout\,
	datae => \motor|ALT_INV_Equal2~1_combout\,
	dataf => \motor|ALT_INV_Equal2~2_combout\,
	combout => \motor|positionCont[28]~0_combout\);

-- Location: FF_X29_Y5_N2
\motor|positionCont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~1_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(0));

-- Location: LABCELL_X27_Y5_N21
\top|controle|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Decoder0~0_combout\ = ( \top|controle|currentState.PARADO~q\ & ( (!\motor|positionCont\(1) & !\motor|positionCont\(0)) ) ) # ( !\top|controle|currentState.PARADO~q\ & ( (!\motor|positionCont\(1) & (!\motor|positionCont\(0) & 
-- \top|controle|currentState.PARADO_SUBINDO~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_positionCont\(1),
	datac => \motor|ALT_INV_positionCont\(0),
	datad => \top|controle|ALT_INV_currentState.PARADO_SUBINDO~q\,
	dataf => \top|controle|ALT_INV_currentState.PARADO~q\,
	combout => \top|controle|Decoder0~0_combout\);

-- Location: LABCELL_X27_Y5_N18
\top|btUpArray|bot:0:botaaao|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|btUpArray|bot:0:botaaao|saida~combout\ = ( \top|btUpArray|bot:0:botaaao|saida~combout\ & ( !\top|controle|Decoder0~0_combout\ ) ) # ( !\top|btUpArray|bot:0:botaaao|saida~combout\ & ( (!\KEY[0]~input_o\ & !\top|controle|Decoder0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \top|controle|ALT_INV_Decoder0~0_combout\,
	dataf => \top|btUpArray|bot:0:botaaao|ALT_INV_saida~combout\,
	combout => \top|btUpArray|bot:0:botaaao|saida~combout\);

-- Location: LABCELL_X27_Y5_N48
\top|controle|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Selector3~1_combout\ = ( !\top|controle|currentState.DESCENDO~q\ & ( \motor|positionCont\(0) & ( (!\top|btUpArray|bot:0:botaaao|saida~combout\ & ((!\motor|positionCont\(1)) # ((!\top|btUpArray|bot:1:botaaao|saida~combout\ & 
-- !\top|btUpArray|bot:2:botaaao|saida~combout\)))) ) ) ) # ( !\top|controle|currentState.DESCENDO~q\ & ( !\motor|positionCont\(0) & ( (!\top|btUpArray|bot:0:botaaao|saida~combout\ & (!\top|btUpArray|bot:1:botaaao|saida~combout\ & \motor|positionCont\(1))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000000000000010101010100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|btUpArray|bot:0:botaaao|ALT_INV_saida~combout\,
	datab => \top|btUpArray|bot:1:botaaao|ALT_INV_saida~combout\,
	datac => \top|btUpArray|bot:2:botaaao|ALT_INV_saida~combout\,
	datad => \motor|ALT_INV_positionCont\(1),
	datae => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	dataf => \motor|ALT_INV_positionCont\(0),
	combout => \top|controle|Selector3~1_combout\);

-- Location: LABCELL_X27_Y5_N9
\top|controle|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Selector2~0_combout\ = ( \motor|positionCont\(1) & ( (!\top|controle|currentState.PARADO_SUBINDO~q\ & ((!\top|controle|currentState.SUBINDO~DUPLICATE_q\) # (\motor|positionCont\(0)))) ) ) # ( !\motor|positionCont\(1) & ( 
-- (!\top|controle|currentState.PARADO_SUBINDO~q\ & !\top|controle|currentState.SUBINDO~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|controle|ALT_INV_currentState.PARADO_SUBINDO~q\,
	datac => \motor|ALT_INV_positionCont\(0),
	datad => \top|controle|ALT_INV_currentState.SUBINDO~DUPLICATE_q\,
	dataf => \motor|ALT_INV_positionCont\(1),
	combout => \top|controle|Selector2~0_combout\);

-- Location: LABCELL_X27_Y5_N15
\top|controle|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Selector2~1_combout\ = ( \top|controle|currentState.PARADO~q\ & ( ((\top|controle|Mux0~0_combout\ & ((!\top|controle|Selector2~0_combout\) # (\top|controle|Selector3~1_combout\)))) # (\top|btUpArray|bot:0:botaaao|saida~combout\) ) ) # ( 
-- !\top|controle|currentState.PARADO~q\ & ( (\top|controle|Mux0~0_combout\ & ((!\top|controle|Selector2~0_combout\) # (\top|controle|Selector3~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100110001001100010011000100110001111111110011000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|controle|ALT_INV_Selector3~1_combout\,
	datab => \top|controle|ALT_INV_Mux0~0_combout\,
	datac => \top|controle|ALT_INV_Selector2~0_combout\,
	datad => \top|btUpArray|bot:0:botaaao|ALT_INV_saida~combout\,
	dataf => \top|controle|ALT_INV_currentState.PARADO~q\,
	combout => \top|controle|Selector2~1_combout\);

-- Location: FF_X27_Y5_N16
\top|controle|currentState.PARADO_SUBINDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \top|controle|Selector2~1_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top|controle|currentState.PARADO_SUBINDO~q\);

-- Location: LABCELL_X27_Y5_N3
\top|controle|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Decoder0~2_combout\ = ( \top|controle|currentState.PARADO~q\ & ( (!\motor|positionCont\(0) & \motor|positionCont\(1)) ) ) # ( !\top|controle|currentState.PARADO~q\ & ( (\top|controle|currentState.PARADO_SUBINDO~q\ & (!\motor|positionCont\(0) 
-- & \motor|positionCont\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|controle|ALT_INV_currentState.PARADO_SUBINDO~q\,
	datab => \motor|ALT_INV_positionCont\(0),
	datac => \motor|ALT_INV_positionCont\(1),
	dataf => \top|controle|ALT_INV_currentState.PARADO~q\,
	combout => \top|controle|Decoder0~2_combout\);

-- Location: LABCELL_X33_Y3_N24
\top|btUpArray|bot:2:botaaao|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|btUpArray|bot:2:botaaao|saida~combout\ = ( \top|btUpArray|bot:2:botaaao|saida~combout\ & ( !\top|controle|Decoder0~2_combout\ ) ) # ( !\top|btUpArray|bot:2:botaaao|saida~combout\ & ( (!\KEY[2]~input_o\ & !\top|controle|Decoder0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \top|controle|ALT_INV_Decoder0~2_combout\,
	dataf => \top|btUpArray|bot:2:botaaao|ALT_INV_saida~combout\,
	combout => \top|btUpArray|bot:2:botaaao|saida~combout\);

-- Location: LABCELL_X27_Y5_N57
\top|operativo|xbtUpZP|output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|operativo|xbtUpZP|output~0_combout\ = ( \top|btUpArray|bot:0:botaaao|saida~combout\ & ( (!\motor|positionCont\(0) & !\motor|positionCont\(1)) ) ) # ( !\top|btUpArray|bot:0:botaaao|saida~combout\ & ( (!\motor|positionCont\(1)) # 
-- ((!\top|btUpArray|bot:1:botaaao|saida~combout\ & ((!\top|btUpArray|bot:2:botaaao|saida~combout\) # (!\motor|positionCont\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111100000111111111110000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|btUpArray|bot:2:botaaao|ALT_INV_saida~combout\,
	datab => \motor|ALT_INV_positionCont\(0),
	datac => \top|btUpArray|bot:1:botaaao|ALT_INV_saida~combout\,
	datad => \motor|ALT_INV_positionCont\(1),
	dataf => \top|btUpArray|bot:0:botaaao|ALT_INV_saida~combout\,
	combout => \top|operativo|xbtUpZP|output~0_combout\);

-- Location: MLABCELL_X28_Y5_N12
\top|controle|Selector3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Selector3~5_combout\ = ( \trex|Equal0~6_combout\ & ( (!\top|operativo|xbtUpZP|output~0_combout\ & \top|controle|currentState.PARADO_DESCENDO~DUPLICATE_q\) ) ) # ( !\trex|Equal0~6_combout\ & ( (!\top|operativo|xbtUpZP|output~0_combout\ & 
-- ((!\top|controle|currentState.DESCENDO~q\) # (\top|controle|currentState.PARADO_DESCENDO~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100011001000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	datab => \top|operativo|xbtUpZP|ALT_INV_output~0_combout\,
	datac => \top|controle|ALT_INV_currentState.PARADO_DESCENDO~DUPLICATE_q\,
	dataf => \trex|ALT_INV_Equal0~6_combout\,
	combout => \top|controle|Selector3~5_combout\);

-- Location: MLABCELL_X28_Y5_N39
\top|controle|Selector3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Selector3~4_combout\ = ( \top|operativo|xbtUpPU|output~0_combout\ & ( \top|controle|currentState.DESCENDO~q\ & ( (!\top|controle|Mux0~0_combout\ & (!\top|controle|currentState.PARADO_SUBINDO~q\ & ((!\top|operativo|xbtUpZP|output~0_combout\) 
-- # (!\top|controle|currentState.PARADO_DESCENDO~DUPLICATE_q\)))) # (\top|controle|Mux0~0_combout\ & (((!\top|operativo|xbtUpZP|output~0_combout\) # (!\top|controle|currentState.PARADO_DESCENDO~DUPLICATE_q\)))) ) ) ) # ( 
-- !\top|operativo|xbtUpPU|output~0_combout\ & ( \top|controle|currentState.DESCENDO~q\ ) ) # ( !\top|operativo|xbtUpPU|output~0_combout\ & ( !\top|controle|currentState.DESCENDO~q\ & ( (!\top|controle|Mux0~0_combout\ & 
-- (((\top|operativo|xbtUpZP|output~0_combout\ & \top|controle|currentState.PARADO_DESCENDO~DUPLICATE_q\)) # (\top|controle|currentState.PARADO_SUBINDO~q\))) # (\top|controle|Mux0~0_combout\ & (((\top|operativo|xbtUpZP|output~0_combout\ & 
-- \top|controle|currentState.PARADO_DESCENDO~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000101111000000000000000011111111111111111101110111010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|controle|ALT_INV_Mux0~0_combout\,
	datab => \top|controle|ALT_INV_currentState.PARADO_SUBINDO~q\,
	datac => \top|operativo|xbtUpZP|ALT_INV_output~0_combout\,
	datad => \top|controle|ALT_INV_currentState.PARADO_DESCENDO~DUPLICATE_q\,
	datae => \top|operativo|xbtUpPU|ALT_INV_output~0_combout\,
	dataf => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	combout => \top|controle|Selector3~4_combout\);

-- Location: MLABCELL_X28_Y5_N6
\top|controle|Selector3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|Selector3~6_combout\ = ( \top|controle|Selector3~0_combout\ & ( \top|controle|Selector1~2_combout\ & ( !\top|controle|Selector3~5_combout\ ) ) ) # ( !\top|controle|Selector3~0_combout\ & ( \top|controle|Selector1~2_combout\ & ( 
-- (!\top|controle|Selector3~3_combout\ & ((!\top|controle|Selector3~2_combout\ & (!\top|controle|Selector3~5_combout\)) # (\top|controle|Selector3~2_combout\ & ((\top|controle|Selector3~4_combout\))))) # (\top|controle|Selector3~3_combout\ & 
-- (((\top|controle|Selector3~4_combout\)))) ) ) ) # ( \top|controle|Selector3~0_combout\ & ( !\top|controle|Selector1~2_combout\ & ( !\top|controle|Selector3~5_combout\ ) ) ) # ( !\top|controle|Selector3~0_combout\ & ( !\top|controle|Selector1~2_combout\ & 
-- ( !\top|controle|Selector3~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100011001100111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|controle|ALT_INV_Selector3~5_combout\,
	datab => \top|controle|ALT_INV_Selector3~4_combout\,
	datac => \top|controle|ALT_INV_Selector3~3_combout\,
	datad => \top|controle|ALT_INV_Selector3~2_combout\,
	datae => \top|controle|ALT_INV_Selector3~0_combout\,
	dataf => \top|controle|ALT_INV_Selector1~2_combout\,
	combout => \top|controle|Selector3~6_combout\);

-- Location: FF_X28_Y5_N7
\top|controle|currentState.DESCENDO~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \top|controle|Selector3~6_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top|controle|currentState.DESCENDO~DUPLICATE_q\);

-- Location: LABCELL_X29_Y5_N3
\motor|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~5_sumout\ = SUM(( \motor|positionCont\(1) ) + ( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|Add1~2\ ))
-- \motor|Add1~6\ = CARRY(( \motor|positionCont\(1) ) + ( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	datad => \motor|ALT_INV_positionCont\(1),
	cin => \motor|Add1~2\,
	sumout => \motor|Add1~5_sumout\,
	cout => \motor|Add1~6\);

-- Location: FF_X29_Y5_N5
\motor|positionCont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~5_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(1));

-- Location: LABCELL_X29_Y5_N6
\motor|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~9_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(2) ) + ( \motor|Add1~6\ ))
-- \motor|Add1~10\ = CARRY(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(2) ) + ( \motor|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor|ALT_INV_positionCont\(2),
	datad => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	cin => \motor|Add1~6\,
	sumout => \motor|Add1~9_sumout\,
	cout => \motor|Add1~10\);

-- Location: FF_X29_Y5_N8
\motor|positionCont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~9_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(2));

-- Location: LABCELL_X29_Y5_N9
\motor|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~29_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(3) ) + ( \motor|Add1~10\ ))
-- \motor|Add1~30\ = CARRY(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(3) ) + ( \motor|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_positionCont\(3),
	datad => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	cin => \motor|Add1~10\,
	sumout => \motor|Add1~29_sumout\,
	cout => \motor|Add1~30\);

-- Location: FF_X29_Y5_N11
\motor|positionCont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~29_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(3));

-- Location: LABCELL_X29_Y5_N12
\motor|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~25_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(4) ) + ( \motor|Add1~30\ ))
-- \motor|Add1~26\ = CARRY(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(4) ) + ( \motor|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor|ALT_INV_positionCont\(4),
	datad => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	cin => \motor|Add1~30\,
	sumout => \motor|Add1~25_sumout\,
	cout => \motor|Add1~26\);

-- Location: FF_X29_Y5_N14
\motor|positionCont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~25_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(4));

-- Location: LABCELL_X29_Y5_N15
\motor|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~21_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(5) ) + ( \motor|Add1~26\ ))
-- \motor|Add1~22\ = CARRY(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(5) ) + ( \motor|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_positionCont\(5),
	datad => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	cin => \motor|Add1~26\,
	sumout => \motor|Add1~21_sumout\,
	cout => \motor|Add1~22\);

-- Location: FF_X29_Y5_N17
\motor|positionCont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~21_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(5));

-- Location: LABCELL_X29_Y5_N18
\motor|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~17_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(6) ) + ( \motor|Add1~22\ ))
-- \motor|Add1~18\ = CARRY(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(6) ) + ( \motor|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_positionCont\(6),
	datad => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	cin => \motor|Add1~22\,
	sumout => \motor|Add1~17_sumout\,
	cout => \motor|Add1~18\);

-- Location: FF_X29_Y5_N20
\motor|positionCont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~17_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(6));

-- Location: LABCELL_X29_Y5_N21
\motor|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~13_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(7) ) + ( \motor|Add1~18\ ))
-- \motor|Add1~14\ = CARRY(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(7) ) + ( \motor|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_positionCont\(7),
	datad => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	cin => \motor|Add1~18\,
	sumout => \motor|Add1~13_sumout\,
	cout => \motor|Add1~14\);

-- Location: FF_X29_Y5_N23
\motor|positionCont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~13_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(7));

-- Location: LABCELL_X29_Y5_N24
\motor|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~53_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(8) ) + ( \motor|Add1~14\ ))
-- \motor|Add1~54\ = CARRY(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(8) ) + ( \motor|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_positionCont\(8),
	datad => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	cin => \motor|Add1~14\,
	sumout => \motor|Add1~53_sumout\,
	cout => \motor|Add1~54\);

-- Location: FF_X29_Y5_N26
\motor|positionCont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~53_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(8));

-- Location: LABCELL_X29_Y5_N27
\motor|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~49_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(9) ) + ( \motor|Add1~54\ ))
-- \motor|Add1~50\ = CARRY(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(9) ) + ( \motor|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_positionCont\(9),
	datad => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	cin => \motor|Add1~54\,
	sumout => \motor|Add1~49_sumout\,
	cout => \motor|Add1~50\);

-- Location: FF_X29_Y5_N29
\motor|positionCont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~49_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(9));

-- Location: LABCELL_X29_Y5_N30
\motor|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~45_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(10) ) + ( \motor|Add1~50\ ))
-- \motor|Add1~46\ = CARRY(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(10) ) + ( \motor|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor|ALT_INV_positionCont\(10),
	datad => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	cin => \motor|Add1~50\,
	sumout => \motor|Add1~45_sumout\,
	cout => \motor|Add1~46\);

-- Location: FF_X29_Y5_N32
\motor|positionCont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~45_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(10));

-- Location: LABCELL_X29_Y5_N33
\motor|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~41_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(11) ) + ( \motor|Add1~46\ ))
-- \motor|Add1~42\ = CARRY(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(11) ) + ( \motor|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_positionCont\(11),
	datad => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	cin => \motor|Add1~46\,
	sumout => \motor|Add1~41_sumout\,
	cout => \motor|Add1~42\);

-- Location: FF_X29_Y5_N35
\motor|positionCont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~41_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(11));

-- Location: LABCELL_X29_Y5_N36
\motor|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~37_sumout\ = SUM(( \motor|positionCont\(12) ) + ( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|Add1~42\ ))
-- \motor|Add1~38\ = CARRY(( \motor|positionCont\(12) ) + ( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	datad => \motor|ALT_INV_positionCont\(12),
	cin => \motor|Add1~42\,
	sumout => \motor|Add1~37_sumout\,
	cout => \motor|Add1~38\);

-- Location: FF_X29_Y5_N38
\motor|positionCont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~37_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(12));

-- Location: LABCELL_X29_Y5_N39
\motor|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~33_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(13) ) + ( \motor|Add1~38\ ))
-- \motor|Add1~34\ = CARRY(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(13) ) + ( \motor|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_positionCont\(13),
	datad => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	cin => \motor|Add1~38\,
	sumout => \motor|Add1~33_sumout\,
	cout => \motor|Add1~34\);

-- Location: FF_X29_Y5_N41
\motor|positionCont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~33_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(13));

-- Location: MLABCELL_X28_Y5_N0
\trex|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|Equal0~1_combout\ = ( !\motor|positionCont\(9) & ( !\motor|positionCont\(11) & ( (!\motor|positionCont\(13) & (!\motor|positionCont\(8) & (!\motor|positionCont\(10) & !\motor|positionCont\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_positionCont\(13),
	datab => \motor|ALT_INV_positionCont\(8),
	datac => \motor|ALT_INV_positionCont\(10),
	datad => \motor|ALT_INV_positionCont\(12),
	datae => \motor|ALT_INV_positionCont\(9),
	dataf => \motor|ALT_INV_positionCont\(11),
	combout => \trex|Equal0~1_combout\);

-- Location: LABCELL_X29_Y5_N42
\motor|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~77_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(14) ) + ( \motor|Add1~34\ ))
-- \motor|Add1~78\ = CARRY(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(14) ) + ( \motor|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor|ALT_INV_positionCont\(14),
	datad => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	cin => \motor|Add1~34\,
	sumout => \motor|Add1~77_sumout\,
	cout => \motor|Add1~78\);

-- Location: FF_X29_Y5_N44
\motor|positionCont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~77_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(14));

-- Location: LABCELL_X29_Y5_N45
\motor|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~73_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(15) ) + ( \motor|Add1~78\ ))
-- \motor|Add1~74\ = CARRY(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(15) ) + ( \motor|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_positionCont\(15),
	datad => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	cin => \motor|Add1~78\,
	sumout => \motor|Add1~73_sumout\,
	cout => \motor|Add1~74\);

-- Location: FF_X29_Y5_N47
\motor|positionCont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~73_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(15));

-- Location: LABCELL_X29_Y5_N48
\motor|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~69_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(16) ) + ( \motor|Add1~74\ ))
-- \motor|Add1~70\ = CARRY(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(16) ) + ( \motor|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_positionCont\(16),
	datad => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	cin => \motor|Add1~74\,
	sumout => \motor|Add1~69_sumout\,
	cout => \motor|Add1~70\);

-- Location: FF_X29_Y5_N50
\motor|positionCont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~69_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(16));

-- Location: LABCELL_X29_Y5_N51
\motor|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~65_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(17) ) + ( \motor|Add1~70\ ))
-- \motor|Add1~66\ = CARRY(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(17) ) + ( \motor|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	dataf => \motor|ALT_INV_positionCont\(17),
	cin => \motor|Add1~70\,
	sumout => \motor|Add1~65_sumout\,
	cout => \motor|Add1~66\);

-- Location: FF_X29_Y5_N53
\motor|positionCont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~65_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(17));

-- Location: LABCELL_X29_Y5_N54
\motor|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~61_sumout\ = SUM(( \motor|positionCont\(18) ) + ( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|Add1~66\ ))
-- \motor|Add1~62\ = CARRY(( \motor|positionCont\(18) ) + ( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	datad => \motor|ALT_INV_positionCont\(18),
	cin => \motor|Add1~66\,
	sumout => \motor|Add1~61_sumout\,
	cout => \motor|Add1~62\);

-- Location: FF_X29_Y5_N56
\motor|positionCont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~61_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(18));

-- Location: LABCELL_X29_Y5_N57
\motor|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~57_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(19) ) + ( \motor|Add1~62\ ))
-- \motor|Add1~58\ = CARRY(( !\top|controle|currentState.DESCENDO~DUPLICATE_q\ ) + ( \motor|positionCont\(19) ) + ( \motor|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_positionCont\(19),
	datad => \top|controle|ALT_INV_currentState.DESCENDO~DUPLICATE_q\,
	cin => \motor|Add1~62\,
	sumout => \motor|Add1~57_sumout\,
	cout => \motor|Add1~58\);

-- Location: FF_X29_Y5_N59
\motor|positionCont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~57_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(19));

-- Location: LABCELL_X29_Y4_N0
\motor|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~125_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|positionCont\(20) ) + ( \motor|Add1~58\ ))
-- \motor|Add1~126\ = CARRY(( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|positionCont\(20) ) + ( \motor|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	datac => \motor|ALT_INV_positionCont\(20),
	cin => \motor|Add1~58\,
	sumout => \motor|Add1~125_sumout\,
	cout => \motor|Add1~126\);

-- Location: FF_X29_Y4_N2
\motor|positionCont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~125_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(20));

-- Location: LABCELL_X29_Y4_N3
\motor|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~121_sumout\ = SUM(( \motor|positionCont\(21) ) + ( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|Add1~126\ ))
-- \motor|Add1~122\ = CARRY(( \motor|positionCont\(21) ) + ( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	datad => \motor|ALT_INV_positionCont\(21),
	cin => \motor|Add1~126\,
	sumout => \motor|Add1~121_sumout\,
	cout => \motor|Add1~122\);

-- Location: FF_X29_Y4_N5
\motor|positionCont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~121_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(21));

-- Location: LABCELL_X29_Y4_N6
\motor|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~117_sumout\ = SUM(( \motor|positionCont\(22) ) + ( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|Add1~122\ ))
-- \motor|Add1~118\ = CARRY(( \motor|positionCont\(22) ) + ( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor|ALT_INV_positionCont\(22),
	dataf => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	cin => \motor|Add1~122\,
	sumout => \motor|Add1~117_sumout\,
	cout => \motor|Add1~118\);

-- Location: FF_X29_Y4_N8
\motor|positionCont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~117_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(22));

-- Location: LABCELL_X29_Y4_N9
\motor|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~113_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|positionCont\(23) ) + ( \motor|Add1~118\ ))
-- \motor|Add1~114\ = CARRY(( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|positionCont\(23) ) + ( \motor|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	dataf => \motor|ALT_INV_positionCont\(23),
	cin => \motor|Add1~118\,
	sumout => \motor|Add1~113_sumout\,
	cout => \motor|Add1~114\);

-- Location: FF_X29_Y4_N11
\motor|positionCont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~113_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(23));

-- Location: LABCELL_X29_Y4_N12
\motor|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~109_sumout\ = SUM(( \motor|positionCont\(24) ) + ( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|Add1~114\ ))
-- \motor|Add1~110\ = CARRY(( \motor|positionCont\(24) ) + ( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor|ALT_INV_positionCont\(24),
	dataf => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	cin => \motor|Add1~114\,
	sumout => \motor|Add1~109_sumout\,
	cout => \motor|Add1~110\);

-- Location: FF_X29_Y4_N14
\motor|positionCont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~109_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(24));

-- Location: LABCELL_X29_Y4_N15
\motor|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~105_sumout\ = SUM(( \motor|positionCont\(25) ) + ( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|Add1~110\ ))
-- \motor|Add1~106\ = CARRY(( \motor|positionCont\(25) ) + ( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_positionCont\(25),
	dataf => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	cin => \motor|Add1~110\,
	sumout => \motor|Add1~105_sumout\,
	cout => \motor|Add1~106\);

-- Location: FF_X29_Y4_N17
\motor|positionCont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~105_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(25));

-- Location: LABCELL_X29_Y4_N42
\trex|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|Equal0~4_combout\ = ( !\motor|positionCont\(20) & ( !\motor|positionCont\(25) & ( (!\motor|positionCont\(22) & (!\motor|positionCont\(24) & (!\motor|positionCont\(21) & !\motor|positionCont\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_positionCont\(22),
	datab => \motor|ALT_INV_positionCont\(24),
	datac => \motor|ALT_INV_positionCont\(21),
	datad => \motor|ALT_INV_positionCont\(23),
	datae => \motor|ALT_INV_positionCont\(20),
	dataf => \motor|ALT_INV_positionCont\(25),
	combout => \trex|Equal0~4_combout\);

-- Location: LABCELL_X30_Y5_N54
\trex|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|Equal0~2_combout\ = ( !\motor|positionCont\(17) & ( !\motor|positionCont\(19) & ( (!\motor|positionCont\(15) & (!\motor|positionCont\(18) & (!\motor|positionCont\(14) & !\motor|positionCont\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_positionCont\(15),
	datab => \motor|ALT_INV_positionCont\(18),
	datac => \motor|ALT_INV_positionCont\(14),
	datad => \motor|ALT_INV_positionCont\(16),
	datae => \motor|ALT_INV_positionCont\(17),
	dataf => \motor|ALT_INV_positionCont\(19),
	combout => \trex|Equal0~2_combout\);

-- Location: LABCELL_X29_Y4_N18
\motor|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~101_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|positionCont\(26) ) + ( \motor|Add1~106\ ))
-- \motor|Add1~102\ = CARRY(( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|positionCont\(26) ) + ( \motor|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	datac => \motor|ALT_INV_positionCont\(26),
	cin => \motor|Add1~106\,
	sumout => \motor|Add1~101_sumout\,
	cout => \motor|Add1~102\);

-- Location: FF_X29_Y4_N20
\motor|positionCont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~101_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(26));

-- Location: LABCELL_X29_Y4_N21
\motor|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~97_sumout\ = SUM(( \motor|positionCont\(27) ) + ( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|Add1~102\ ))
-- \motor|Add1~98\ = CARRY(( \motor|positionCont\(27) ) + ( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	datad => \motor|ALT_INV_positionCont\(27),
	cin => \motor|Add1~102\,
	sumout => \motor|Add1~97_sumout\,
	cout => \motor|Add1~98\);

-- Location: FF_X29_Y4_N23
\motor|positionCont[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~97_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(27));

-- Location: LABCELL_X29_Y4_N24
\motor|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~93_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|positionCont\(28) ) + ( \motor|Add1~98\ ))
-- \motor|Add1~94\ = CARRY(( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|positionCont\(28) ) + ( \motor|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	datac => \motor|ALT_INV_positionCont\(28),
	cin => \motor|Add1~98\,
	sumout => \motor|Add1~93_sumout\,
	cout => \motor|Add1~94\);

-- Location: FF_X29_Y4_N26
\motor|positionCont[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~93_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(28));

-- Location: LABCELL_X29_Y4_N27
\motor|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~89_sumout\ = SUM(( \motor|positionCont\(29) ) + ( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|Add1~94\ ))
-- \motor|Add1~90\ = CARRY(( \motor|positionCont\(29) ) + ( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	datad => \motor|ALT_INV_positionCont\(29),
	cin => \motor|Add1~94\,
	sumout => \motor|Add1~89_sumout\,
	cout => \motor|Add1~90\);

-- Location: FF_X29_Y4_N29
\motor|positionCont[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~89_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(29));

-- Location: LABCELL_X29_Y4_N30
\motor|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~85_sumout\ = SUM(( \motor|positionCont\(30) ) + ( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|Add1~90\ ))
-- \motor|Add1~86\ = CARRY(( \motor|positionCont\(30) ) + ( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor|ALT_INV_positionCont\(30),
	dataf => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	cin => \motor|Add1~90\,
	sumout => \motor|Add1~85_sumout\,
	cout => \motor|Add1~86\);

-- Location: FF_X29_Y4_N32
\motor|positionCont[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~85_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(30));

-- Location: LABCELL_X29_Y4_N33
\motor|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor|Add1~81_sumout\ = SUM(( !\top|controle|currentState.DESCENDO~q\ ) + ( \motor|positionCont\(31) ) + ( \motor|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_positionCont\(31),
	datac => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	cin => \motor|Add1~86\,
	sumout => \motor|Add1~81_sumout\);

-- Location: FF_X29_Y4_N35
\motor|positionCont[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \motor|Add1~81_sumout\,
	ena => \motor|positionCont[28]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor|positionCont\(31));

-- Location: LABCELL_X29_Y4_N48
\trex|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|Equal0~3_combout\ = ( !\motor|positionCont\(29) & ( !\motor|positionCont\(31) & ( (!\motor|positionCont\(26) & (!\motor|positionCont\(30) & (!\motor|positionCont\(28) & !\motor|positionCont\(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_positionCont\(26),
	datab => \motor|ALT_INV_positionCont\(30),
	datac => \motor|ALT_INV_positionCont\(28),
	datad => \motor|ALT_INV_positionCont\(27),
	datae => \motor|ALT_INV_positionCont\(29),
	dataf => \motor|ALT_INV_positionCont\(31),
	combout => \trex|Equal0~3_combout\);

-- Location: LABCELL_X30_Y5_N51
\trex|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|Equal0~0_combout\ = ( !\motor|positionCont\(7) & ( (!\motor|positionCont\(3) & (!\motor|positionCont\(4) & (!\motor|positionCont\(6) & !\motor|positionCont\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor|ALT_INV_positionCont\(3),
	datab => \motor|ALT_INV_positionCont\(4),
	datac => \motor|ALT_INV_positionCont\(6),
	datad => \motor|ALT_INV_positionCont\(5),
	dataf => \motor|ALT_INV_positionCont\(7),
	combout => \trex|Equal0~0_combout\);

-- Location: LABCELL_X30_Y5_N0
\trex|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|Equal0~5_combout\ = ( \trex|Equal0~3_combout\ & ( \trex|Equal0~0_combout\ & ( (\trex|Equal0~1_combout\ & (\trex|Equal0~4_combout\ & (\trex|Equal0~2_combout\ & !\motor|positionCont\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \trex|ALT_INV_Equal0~1_combout\,
	datab => \trex|ALT_INV_Equal0~4_combout\,
	datac => \trex|ALT_INV_Equal0~2_combout\,
	datad => \motor|ALT_INV_positionCont\(2),
	datae => \trex|ALT_INV_Equal0~3_combout\,
	dataf => \trex|ALT_INV_Equal0~0_combout\,
	combout => \trex|Equal0~5_combout\);

-- Location: LABCELL_X30_Y5_N48
\trex|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|Equal1~0_combout\ = ( !\motor|positionCont\(1) & ( (!\motor|positionCont\(0) & \motor|positionCont\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_positionCont\(0),
	datad => \motor|ALT_INV_positionCont\(2),
	dataf => \motor|ALT_INV_positionCont\(1),
	combout => \trex|Equal1~0_combout\);

-- Location: LABCELL_X30_Y5_N30
\trex|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|Equal1~1_combout\ = ( \trex|Equal0~2_combout\ & ( \trex|Equal0~0_combout\ & ( (\trex|Equal0~1_combout\ & (\trex|Equal0~4_combout\ & (\trex|Equal1~0_combout\ & \trex|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \trex|ALT_INV_Equal0~1_combout\,
	datab => \trex|ALT_INV_Equal0~4_combout\,
	datac => \trex|ALT_INV_Equal1~0_combout\,
	datad => \trex|ALT_INV_Equal0~3_combout\,
	datae => \trex|ALT_INV_Equal0~2_combout\,
	dataf => \trex|ALT_INV_Equal0~0_combout\,
	combout => \trex|Equal1~1_combout\);

-- Location: LABCELL_X30_Y5_N27
\trex|HEX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|HEX[0]~0_combout\ = ( \trex|Equal0~5_combout\ & ( \trex|Equal1~1_combout\ ) ) # ( !\trex|Equal0~5_combout\ & ( \trex|Equal1~1_combout\ ) ) # ( \trex|Equal0~5_combout\ & ( !\trex|Equal1~1_combout\ & ( (!\motor|positionCont\(1) & 
-- \motor|positionCont\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_positionCont\(1),
	datad => \motor|ALT_INV_positionCont\(0),
	datae => \trex|ALT_INV_Equal0~5_combout\,
	dataf => \trex|ALT_INV_Equal1~1_combout\,
	combout => \trex|HEX[0]~0_combout\);

-- Location: LABCELL_X30_Y5_N42
\trex|HEX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|HEX[1]~1_combout\ = ( \trex|Equal1~1_combout\ ) # ( !\trex|Equal1~1_combout\ & ( \trex|Equal0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \trex|ALT_INV_Equal0~5_combout\,
	dataf => \trex|ALT_INV_Equal1~1_combout\,
	combout => \trex|HEX[1]~1_combout\);

-- Location: LABCELL_X30_Y5_N15
\trex|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|Equal3~0_combout\ = ( !\motor|positionCont\(0) & ( (\trex|Equal0~5_combout\ & \motor|positionCont\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \trex|ALT_INV_Equal0~5_combout\,
	datac => \motor|ALT_INV_positionCont\(1),
	datae => \motor|ALT_INV_positionCont\(0),
	combout => \trex|Equal3~0_combout\);

-- Location: LABCELL_X30_Y5_N6
\trex|HEX[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|HEX[3]~2_combout\ = ( \motor|positionCont\(1) & ( !\trex|Equal0~5_combout\ ) ) # ( !\motor|positionCont\(1) & ( (!\trex|Equal0~5_combout\) # (\motor|positionCont\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \trex|ALT_INV_Equal0~5_combout\,
	datac => \motor|ALT_INV_positionCont\(0),
	dataf => \motor|ALT_INV_positionCont\(1),
	combout => \trex|HEX[3]~2_combout\);

-- Location: LABCELL_X30_Y5_N36
\trex|HEX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|HEX[4]~3_combout\ = ( \motor|positionCont\(0) & ( \trex|Equal1~1_combout\ ) ) # ( !\motor|positionCont\(0) & ( \trex|Equal1~1_combout\ & ( (!\trex|Equal0~5_combout\) # (!\motor|positionCont\(1)) ) ) ) # ( \motor|positionCont\(0) & ( 
-- !\trex|Equal1~1_combout\ & ( \trex|Equal0~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010111101110111011101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \trex|ALT_INV_Equal0~5_combout\,
	datab => \motor|ALT_INV_positionCont\(1),
	datae => \motor|ALT_INV_positionCont\(0),
	dataf => \trex|ALT_INV_Equal1~1_combout\,
	combout => \trex|HEX[4]~3_combout\);

-- Location: LABCELL_X30_Y5_N9
\trex|HEX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|HEX[5]~4_combout\ = ( \motor|positionCont\(1) & ( (!\trex|Equal1~1_combout\) # (\trex|Equal0~5_combout\) ) ) # ( !\motor|positionCont\(1) & ( (!\trex|Equal0~5_combout\ & (!\trex|Equal1~1_combout\)) # (\trex|Equal0~5_combout\ & 
-- ((\motor|positionCont\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110101101000001111010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \trex|ALT_INV_Equal0~5_combout\,
	datac => \trex|ALT_INV_Equal1~1_combout\,
	datad => \motor|ALT_INV_positionCont\(0),
	dataf => \motor|ALT_INV_positionCont\(1),
	combout => \trex|HEX[5]~4_combout\);

-- Location: LABCELL_X30_Y5_N21
\trex|HEX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \trex|HEX[6]~5_combout\ = ( \trex|Equal0~5_combout\ & ( !\motor|positionCont\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor|ALT_INV_positionCont\(1),
	datae => \trex|ALT_INV_Equal0~5_combout\,
	combout => \trex|HEX[6]~5_combout\);

-- Location: LABCELL_X27_Y5_N54
\top|controle|upButton\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|upButton~combout\ = (\top|controle|currentState.SUBINDO~DUPLICATE_q\) # (\top|controle|currentState.PARADO_SUBINDO~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top|controle|ALT_INV_currentState.PARADO_SUBINDO~q\,
	datad => \top|controle|ALT_INV_currentState.SUBINDO~DUPLICATE_q\,
	combout => \top|controle|upButton~combout\);

-- Location: FF_X28_Y5_N25
\top|controle|currentState.PARADO_DESCENDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \top|controle|Selector4~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top|controle|currentState.PARADO_DESCENDO~q\);

-- Location: LABCELL_X29_Y4_N39
\top|controle|downButton\ : cyclonev_lcell_comb
-- Equation(s):
-- \top|controle|downButton~combout\ = ( \top|controle|currentState.PARADO_DESCENDO~q\ & ( \top|controle|currentState.DESCENDO~q\ ) ) # ( \top|controle|currentState.PARADO_DESCENDO~q\ & ( !\top|controle|currentState.DESCENDO~q\ ) ) # ( 
-- !\top|controle|currentState.PARADO_DESCENDO~q\ & ( !\top|controle|currentState.DESCENDO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \top|controle|ALT_INV_currentState.PARADO_DESCENDO~q\,
	dataf => \top|controle|ALT_INV_currentState.DESCENDO~q\,
	combout => \top|controle|downButton~combout\);

-- Location: LABCELL_X51_Y19_N0
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


