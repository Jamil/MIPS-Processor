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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/18/2013 07:24:33"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	outputManagment IS
    PORT (
	\LEDR[0]__duplicate\ : OUT std_logic;
	\LEDR[1]__duplicate\ : OUT std_logic;
	\LEDR[2]__duplicate\ : OUT std_logic;
	\LEDR[3]__duplicate\ : OUT std_logic;
	\LEDR[4]__duplicate\ : OUT std_logic;
	\LEDR[5]__duplicate\ : OUT std_logic;
	\LEDR[6]__duplicate\ : OUT std_logic;
	\LEDR[7]__duplicate\ : OUT std_logic;
	\LEDR[8]__duplicate\ : OUT std_logic;
	\LEDR[9]__duplicate\ : OUT std_logic;
	\LEDR[10]__duplicate\ : OUT std_logic;
	\LEDR[11]__duplicate\ : OUT std_logic;
	\LEDR[12]__duplicate\ : OUT std_logic;
	\LEDR[13]__duplicate\ : OUT std_logic;
	\LEDR[14]__duplicate\ : OUT std_logic;
	\LEDR[15]__duplicate\ : OUT std_logic;
	\LEDR[16]__duplicate\ : OUT std_logic;
	\LEDR[17]__duplicate\ : OUT std_logic;
	\LEDG[0]__duplicate\ : OUT std_logic;
	\LEDG[1]__duplicate\ : OUT std_logic;
	\LEDG[2]__duplicate\ : OUT std_logic;
	\LEDG[3]__duplicate\ : OUT std_logic;
	\LEDG[4]__duplicate\ : OUT std_logic;
	\LEDG[5]__duplicate\ : OUT std_logic;
	\LEDG[6]__duplicate\ : OUT std_logic;
	\LEDG[7]__duplicate\ : OUT std_logic;
	CLOCK_50 : IN std_logic;
	VGA_CLK : OUT std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_BLANK : OUT std_logic;
	VGA_SYNC : OUT std_logic;
	VGA_R : OUT std_logic_vector(9 DOWNTO 0);
	VGA_G : OUT std_logic_vector(9 DOWNTO 0);
	VGA_B : OUT std_logic_vector(9 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	PS2_CLK : INOUT std_logic;
	PS2_DAT : INOUT std_logic
	);
END outputManagment;

-- Design Ports Information
-- PS2_CLK	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PS2_DAT	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_CLK	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_HS	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VS	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_BLANK	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_SYNC	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[0]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[3]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[4]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[5]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[6]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[8]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[9]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[3]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[5]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[6]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[7]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[8]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[9]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[4]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[8]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[9]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]__duplicate	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]__duplicate	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]__duplicate	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]__duplicate	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]__duplicate	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]__duplicate	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]__duplicate	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]__duplicate	=>  Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]__duplicate	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]__duplicate	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[10]__duplicate	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[11]__duplicate	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[12]__duplicate	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[13]__duplicate	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[14]__duplicate	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[15]__duplicate	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[16]__duplicate	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[17]__duplicate	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]__duplicate	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]__duplicate	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]__duplicate	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]__duplicate	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]__duplicate	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]__duplicate	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]__duplicate	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]__duplicate	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF outputManagment IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_LEDR[0]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[1]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[2]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[3]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[4]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[5]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[6]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[7]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[8]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[9]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[10]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[11]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[12]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[13]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[14]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[15]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[16]__duplicate\ : std_logic;
SIGNAL \ww_LEDR[17]__duplicate\ : std_logic;
SIGNAL \ww_LEDG[0]__duplicate\ : std_logic;
SIGNAL \ww_LEDG[1]__duplicate\ : std_logic;
SIGNAL \ww_LEDG[2]__duplicate\ : std_logic;
SIGNAL \ww_LEDG[3]__duplicate\ : std_logic;
SIGNAL \ww_LEDG[4]__duplicate\ : std_logic;
SIGNAL \ww_LEDG[5]__duplicate\ : std_logic;
SIGNAL \ww_LEDG[6]__duplicate\ : std_logic;
SIGNAL \ww_LEDG[7]__duplicate\ : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_BLANK : std_logic;
SIGNAL ww_VGA_SYNC : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_225|states_Q.101~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|mypll|altpll_component|_clk1\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|_clk2\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5~portadataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4~portadataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3~portadataout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~0_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~6_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~8_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~10_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~12_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add0~2_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add0~12_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\ : std_logic;
SIGNAL \comb_222|Add0~0_combout\ : std_logic;
SIGNAL \comb_222|Add0~2_combout\ : std_logic;
SIGNAL \comb_222|inst|Add0~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Add0~1_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|comb_3|Mux0~0_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|comb_3|Mux0~1_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|comb_3|Mux0~2_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\ : std_logic;
SIGNAL \comb_224|converter|WideOr4~2_combout\ : std_logic;
SIGNAL \comb_224|converter|WideOr4~4_combout\ : std_logic;
SIGNAL \comb_224|data_out~6_combout\ : std_logic;
SIGNAL \comb_224|data_out[28]~9_combout\ : std_logic;
SIGNAL \comb_224|data_out[11]~26_combout\ : std_logic;
SIGNAL \comb_224|data_out[7]~28_combout\ : std_logic;
SIGNAL \comb_224|data_out[3]~30_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS1~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Add1~0_combout\ : std_logic;
SIGNAL \comb_222|inst|counter_D[2]~0_combout\ : std_logic;
SIGNAL \VGA|controller|Equal0~1_combout\ : std_logic;
SIGNAL \comb_225|states_Q.001~regout\ : std_logic;
SIGNAL \comb_225|Selector1~0_combout\ : std_logic;
SIGNAL \comb_225|Selector68~0_combout\ : std_logic;
SIGNAL \comb_225|Selector34~0_combout\ : std_logic;
SIGNAL \comb_225|Selector33~0_combout\ : std_logic;
SIGNAL \comb_225|Selector32~0_combout\ : std_logic;
SIGNAL \comb_224|WideOr0~0_combout\ : std_logic;
SIGNAL \comb_224|count~4_combout\ : std_logic;
SIGNAL \comb_225|states_Q.000~regout\ : std_logic;
SIGNAL \comb_225|states_D.001~0_combout\ : std_logic;
SIGNAL \comb_225|Selector67~0_combout\ : std_logic;
SIGNAL \comb_225|Selector66~0_combout\ : std_logic;
SIGNAL \comb_225|Selector65~0_combout\ : std_logic;
SIGNAL \comb_225|Selector64~0_combout\ : std_logic;
SIGNAL \comb_222|Selector7~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector10~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector8~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector8~1_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_3_PARITY_IN~regout\ : std_logic;
SIGNAL \comb_225|Selector0~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector14~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector14~1_combout\ : std_logic;
SIGNAL \comb_222|Selector9~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector12~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector12~1_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector11~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector11~1_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|always1~0_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|Selector3~0_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE~regout\ : std_logic;
SIGNAL \comb_222|Selector15~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector18~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector18~1_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector17~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector17~1_combout\ : std_logic;
SIGNAL \comb_222|Selector13~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector16~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector16~1_combout\ : std_logic;
SIGNAL \comb_222|Selector12~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector15~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector15~1_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|data_count~0_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|data_count~2_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|data_count~3_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|Selector0~0_combout\ : std_logic;
SIGNAL \comb_222|Selector19~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector22~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector22~1_combout\ : std_logic;
SIGNAL \comb_225|Selector38~0_combout\ : std_logic;
SIGNAL \comb_222|Selector18~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector21~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector21~1_combout\ : std_logic;
SIGNAL \comb_222|Selector17~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector20~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector20~1_combout\ : std_logic;
SIGNAL \comb_222|Selector16~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector19~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector19~1_combout\ : std_logic;
SIGNAL \comb_225|Selector43~0_combout\ : std_logic;
SIGNAL \comb_222|Selector23~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector26~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector26~1_combout\ : std_logic;
SIGNAL \comb_225|Selector42~0_combout\ : std_logic;
SIGNAL \comb_222|Selector22~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector25~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector25~1_combout\ : std_logic;
SIGNAL \comb_225|Selector41~0_combout\ : std_logic;
SIGNAL \comb_222|Selector21~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector24~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector24~1_combout\ : std_logic;
SIGNAL \comb_225|Selector40~0_combout\ : std_logic;
SIGNAL \comb_222|Selector20~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector23~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector23~1_combout\ : std_logic;
SIGNAL \comb_225|Selector47~0_combout\ : std_logic;
SIGNAL \comb_222|Selector27~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector30~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector30~1_combout\ : std_logic;
SIGNAL \comb_225|Selector46~0_combout\ : std_logic;
SIGNAL \comb_222|Selector26~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector29~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector29~1_combout\ : std_logic;
SIGNAL \comb_225|Selector45~0_combout\ : std_logic;
SIGNAL \comb_222|Selector25~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector28~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector28~1_combout\ : std_logic;
SIGNAL \comb_225|Selector44~0_combout\ : std_logic;
SIGNAL \comb_222|Selector24~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector27~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector27~1_combout\ : std_logic;
SIGNAL \comb_222|Selector31~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector34~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector34~1_combout\ : std_logic;
SIGNAL \comb_222|Selector30~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector33~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector33~1_combout\ : std_logic;
SIGNAL \comb_225|Selector21~0_combout\ : std_logic;
SIGNAL \comb_222|Selector29~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector32~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector32~1_combout\ : std_logic;
SIGNAL \comb_222|Selector28~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector31~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector31~1_combout\ : std_logic;
SIGNAL \comb_222|Selector35~1_combout\ : std_logic;
SIGNAL \comb_225|Selector26~0_combout\ : std_logic;
SIGNAL \comb_222|Selector34~0_combout\ : std_logic;
SIGNAL \comb_225|Selector53~0_combout\ : std_logic;
SIGNAL \comb_222|Selector33~0_combout\ : std_logic;
SIGNAL \comb_222|Selector32~0_combout\ : std_logic;
SIGNAL \comb_225|Selector59~0_combout\ : std_logic;
SIGNAL \comb_225|Selector58~0_combout\ : std_logic;
SIGNAL \comb_225|Selector56~0_combout\ : std_logic;
SIGNAL \comb_224|data_out~33_combout\ : std_logic;
SIGNAL \PS2_CLK~0\ : std_logic;
SIGNAL \PS2_DAT~0\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|_clk0\ : std_logic;
SIGNAL \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \VGA|controller|Add0~0_combout\ : std_logic;
SIGNAL \VGA|controller|Add0~1\ : std_logic;
SIGNAL \VGA|controller|Add0~3\ : std_logic;
SIGNAL \VGA|controller|Add0~4_combout\ : std_logic;
SIGNAL \VGA|controller|Add0~5\ : std_logic;
SIGNAL \VGA|controller|Add0~7\ : std_logic;
SIGNAL \VGA|controller|Add0~9\ : std_logic;
SIGNAL \VGA|controller|Add0~10_combout\ : std_logic;
SIGNAL \VGA|controller|xCounter~2_combout\ : std_logic;
SIGNAL \VGA|controller|Add0~11\ : std_logic;
SIGNAL \VGA|controller|Add0~12_combout\ : std_logic;
SIGNAL \VGA|controller|Add0~2_combout\ : std_logic;
SIGNAL \VGA|controller|Equal0~0_combout\ : std_logic;
SIGNAL \VGA|controller|Add0~6_combout\ : std_logic;
SIGNAL \VGA|controller|Equal0~2_combout\ : std_logic;
SIGNAL \VGA|controller|Add0~13\ : std_logic;
SIGNAL \VGA|controller|Add0~14_combout\ : std_logic;
SIGNAL \VGA|controller|Add0~15\ : std_logic;
SIGNAL \VGA|controller|Add0~16_combout\ : std_logic;
SIGNAL \VGA|controller|xCounter~1_combout\ : std_logic;
SIGNAL \VGA|controller|Add0~8_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS1~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS1~1_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS1~2_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS1~regout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS~feeder_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_HS~regout\ : std_logic;
SIGNAL \VGA|controller|Add1~0_combout\ : std_logic;
SIGNAL \VGA|controller|Add1~1\ : std_logic;
SIGNAL \VGA|controller|Add1~3\ : std_logic;
SIGNAL \VGA|controller|Add1~4_combout\ : std_logic;
SIGNAL \VGA|controller|yCounter[2]~6_combout\ : std_logic;
SIGNAL \VGA|controller|Add1~5\ : std_logic;
SIGNAL \VGA|controller|Add1~7\ : std_logic;
SIGNAL \VGA|controller|Add1~8_combout\ : std_logic;
SIGNAL \VGA|controller|yCounter[4]~4_combout\ : std_logic;
SIGNAL \VGA|controller|Add1~9\ : std_logic;
SIGNAL \VGA|controller|Add1~10_combout\ : std_logic;
SIGNAL \VGA|controller|yCounter[5]~3_combout\ : std_logic;
SIGNAL \VGA|controller|Add1~11\ : std_logic;
SIGNAL \VGA|controller|Add1~12_combout\ : std_logic;
SIGNAL \VGA|controller|yCounter[6]~2_combout\ : std_logic;
SIGNAL \VGA|controller|Add1~13\ : std_logic;
SIGNAL \VGA|controller|Add1~15\ : std_logic;
SIGNAL \VGA|controller|Add1~16_combout\ : std_logic;
SIGNAL \VGA|controller|yCounter[8]~0_combout\ : std_logic;
SIGNAL \VGA|controller|Add1~17\ : std_logic;
SIGNAL \VGA|controller|Add1~18_combout\ : std_logic;
SIGNAL \VGA|controller|yCounter[9]~7_combout\ : std_logic;
SIGNAL \VGA|controller|always1~0_combout\ : std_logic;
SIGNAL \VGA|controller|Add1~14_combout\ : std_logic;
SIGNAL \VGA|controller|yCounter[7]~1_combout\ : std_logic;
SIGNAL \VGA|controller|always1~1_combout\ : std_logic;
SIGNAL \VGA|controller|always1~2_combout\ : std_logic;
SIGNAL \VGA|controller|yCounter[0]~9_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS1~1_combout\ : std_logic;
SIGNAL \VGA|controller|Add1~2_combout\ : std_logic;
SIGNAL \VGA|controller|yCounter[1]~8_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS1~2_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS1~regout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS~feeder_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_VS~regout\ : std_logic;
SIGNAL \VGA|controller|Add0~17\ : std_logic;
SIGNAL \VGA|controller|Add0~18_combout\ : std_logic;
SIGNAL \VGA|controller|xCounter~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK1~0_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK1~1_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK1~regout\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK~feeder_combout\ : std_logic;
SIGNAL \VGA|controller|VGA_BLANK~regout\ : std_logic;
SIGNAL \VGA|controller|Add1~6_combout\ : std_logic;
SIGNAL \VGA|controller|yCounter[3]~5_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add0~1\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add0~3\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add0~5\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add0~7\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add0~9\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add0~11\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add0~13\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add0~14_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add0~10_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add0~8_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add0~6_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add0~4_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|Add0~0_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[5]~1\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[6]~3\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[7]~5\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[8]~7\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[9]~9\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[10]~11\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[11]~13\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[12]~15\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[13]~17\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[14]~18_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a[2]~feeder_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[2]~feeder_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|shiftEnable_D~2_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|shiftEnable_D~3_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|shiftEnable_Q~regout\ : std_logic;
SIGNAL \comb_222|inst|hexHS_Q~feeder_combout\ : std_logic;
SIGNAL \comb_222|inst|counter_D[0]~2_combout\ : std_logic;
SIGNAL \comb_222|inst|counter_Q[1]~0_combout\ : std_logic;
SIGNAL \comb_222|inst|counter_D[1]~1_combout\ : std_logic;
SIGNAL \comb_222|inst|always0~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector2~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector2~1_combout\ : std_logic;
SIGNAL \comb_222|inst|states_Q.11~regout\ : std_logic;
SIGNAL \comb_222|inst|acknowledge~combout\ : std_logic;
SIGNAL \comb_222|states_D.011~0_combout\ : std_logic;
SIGNAL \comb_222|states_Q.011~regout\ : std_logic;
SIGNAL \comb_222|count_D~0_combout\ : std_logic;
SIGNAL \comb_222|Selector38~2_combout\ : std_logic;
SIGNAL \comb_222|Selector39~0_combout\ : std_logic;
SIGNAL \comb_222|Add0~3_combout\ : std_logic;
SIGNAL \comb_222|Selector37~0_combout\ : std_logic;
SIGNAL \comb_222|Add0~1_combout\ : std_logic;
SIGNAL \comb_222|Selector36~0_combout\ : std_logic;
SIGNAL \comb_224|PS2|ps2_data_reg~regout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|data_shift_reg[7]~feeder_combout\ : std_logic;
SIGNAL \comb_224|PS2|ps2_clk_reg~feeder_combout\ : std_logic;
SIGNAL \comb_224|PS2|ps2_clk_reg~regout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|data_count~4_combout\ : std_logic;
SIGNAL \comb_224|PS2|last_ps2_clk~regout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|data_count~1_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|always1~1_combout\ : std_logic;
SIGNAL \comb_224|PS2|ps2_clk_posedge~combout\ : std_logic;
SIGNAL \comb_224|PS2|Selector0~2_combout\ : std_logic;
SIGNAL \comb_224|PS2|s_ps2_transceiver.PS2_STATE_0_IDLE~regout\ : std_logic;
SIGNAL \comb_224|PS2|Selector1~0_combout\ : std_logic;
SIGNAL \comb_224|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~regout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~0_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|always5~0_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|received_data_en~regout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|Selector2~0_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|Selector2~1_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~regout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|always2~0_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|data_shift_reg[6]~feeder_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|data_shift_reg[5]~feeder_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|data_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|received_data[3]~feeder_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|data_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|data_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|received_data[0]~feeder_combout\ : std_logic;
SIGNAL \comb_224|Equal0~0_combout\ : std_logic;
SIGNAL \comb_224|Equal0~1_combout\ : std_logic;
SIGNAL \comb_224|Equal0~2_combout\ : std_logic;
SIGNAL \comb_224|Selector0~0_combout\ : std_logic;
SIGNAL \comb_224|state.00~regout\ : std_logic;
SIGNAL \comb_224|state.01~0_combout\ : std_logic;
SIGNAL \comb_224|state.01~regout\ : std_logic;
SIGNAL \comb_224|Selector2~0_combout\ : std_logic;
SIGNAL \comb_224|state.10~regout\ : std_logic;
SIGNAL \comb_224|Equal1~0_combout\ : std_logic;
SIGNAL \comb_224|Equal1~1_combout\ : std_logic;
SIGNAL \comb_224|PS2|PS2_Data_In|received_data[6]~feeder_combout\ : std_logic;
SIGNAL \comb_224|Selector4~0_combout\ : std_logic;
SIGNAL \comb_224|Selector4~1_combout\ : std_logic;
SIGNAL \comb_224|Selector4~2_combout\ : std_logic;
SIGNAL \comb_224|enter~regout\ : std_logic;
SIGNAL \comb_224|Selector3~0_combout\ : std_logic;
SIGNAL \comb_224|converter|WideOr4~5_combout\ : std_logic;
SIGNAL \comb_224|converter|WideOr4~6_combout\ : std_logic;
SIGNAL \comb_224|converter|WideOr4~7_combout\ : std_logic;
SIGNAL \comb_224|converter|WideOr4~3_combout\ : std_logic;
SIGNAL \comb_224|converter|WideOr4~0_combout\ : std_logic;
SIGNAL \comb_224|converter|WideOr4~1_combout\ : std_logic;
SIGNAL \comb_224|converter|WideOr4~8_combout\ : std_logic;
SIGNAL \comb_224|Selector3~1_combout\ : std_logic;
SIGNAL \comb_224|did_change~regout\ : std_logic;
SIGNAL \comb_225|states_Q.011~0_combout\ : std_logic;
SIGNAL \comb_225|states_Q.011~regout\ : std_logic;
SIGNAL \comb_225|Selector70~0_combout\ : std_logic;
SIGNAL \comb_225|states_Q.101~clkctrl_outclk\ : std_logic;
SIGNAL \comb_225|Selector74~0_combout\ : std_logic;
SIGNAL \comb_225|Selector72~0_combout\ : std_logic;
SIGNAL \comb_225|Add1~0_combout\ : std_logic;
SIGNAL \comb_225|Selector74~1_combout\ : std_logic;
SIGNAL \comb_225|Selector3~0_combout\ : std_logic;
SIGNAL \comb_225|Selector1~1_combout\ : std_logic;
SIGNAL \comb_225|states_Q.010~regout\ : std_logic;
SIGNAL \comb_225|Selector69~0_combout\ : std_logic;
SIGNAL \comb_225|states_D.100~0_combout\ : std_logic;
SIGNAL \comb_225|states_Q.100~regout\ : std_logic;
SIGNAL \comb_225|Selector3~1_combout\ : std_logic;
SIGNAL \comb_225|states_Q.101~regout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector45~1_combout\ : std_logic;
SIGNAL \states_Q.001~regout\ : std_logic;
SIGNAL \Selector46~2_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \states_Q.011~regout\ : std_logic;
SIGNAL \Selector44~2_combout\ : std_logic;
SIGNAL \states_Q.000~regout\ : std_logic;
SIGNAL \Selector48~2_combout\ : std_logic;
SIGNAL \wait_D[1]~1_combout\ : std_logic;
SIGNAL \Selector48~3_combout\ : std_logic;
SIGNAL \states_Q.100~regout\ : std_logic;
SIGNAL \Selector46~3_combout\ : std_logic;
SIGNAL \states_Q.010~regout\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \comb_222|Selector3~1_combout\ : std_logic;
SIGNAL \comb_222|states_Q.100~regout\ : std_logic;
SIGNAL \comb_222|Selector0~0_combout\ : std_logic;
SIGNAL \comb_222|states_Q.000~regout\ : std_logic;
SIGNAL \comb_222|Selector1~0_combout\ : std_logic;
SIGNAL \comb_222|Selector1~1_combout\ : std_logic;
SIGNAL \comb_222|states_Q.001~regout\ : std_logic;
SIGNAL \comb_222|wait_D[0]~0_combout\ : std_logic;
SIGNAL \comb_222|wait_D[1]~1_combout\ : std_logic;
SIGNAL \comb_222|Selector2~0_combout\ : std_logic;
SIGNAL \comb_222|Selector2~1_combout\ : std_logic;
SIGNAL \comb_222|states_Q.010~regout\ : std_logic;
SIGNAL \comb_222|inst|states_D.00~0_combout\ : std_logic;
SIGNAL \comb_222|inst|states_Q.00~regout\ : std_logic;
SIGNAL \comb_222|inst|states_D.01~0_combout\ : std_logic;
SIGNAL \comb_222|inst|states_Q.01~regout\ : std_logic;
SIGNAL \comb_222|inst|Selector1~0_combout\ : std_logic;
SIGNAL \comb_222|inst|states_Q.10~regout\ : std_logic;
SIGNAL \comb_222|inst|hexHS_Q~regout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|waiter_D~0_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|waiter_D~1_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|waiter_D~2_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|comb_3|Add0~0_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|comb_3|counter_Q[2]~0_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|comb_3|Add0~1_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|comb_3|counter_Q[0]~1_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|comb_3|counterEnable_D~0_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|comb_3|counterEnable_D~1_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|comb_3|counterEnable_Q~regout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|always0~0_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|counter_Q[0]~1_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|Add0~1_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|counter_Q[1]~0_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|Add0~0_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~1\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~3\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~4_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~2_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[5]~1\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[6]~3\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[7]~5\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[8]~7\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[9]~9\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[10]~11\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[11]~13\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[12]~15\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[13]~16_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[12]~14_combout\ : std_logic;
SIGNAL \VGA|writeEn~0_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|comb_3|always0~0_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|comb_3|writeEnable~combout\ : std_logic;
SIGNAL \VGA|writeEn~1_combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[12]~14_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[13]~16_combout\ : std_logic;
SIGNAL \comb_222|Selector3~0_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~5\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~7\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~9\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~11\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~13\ : std_logic;
SIGNAL \VGA|user_input_translator|Add0~14_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[13]~17\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[14]~18_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[5]~0_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[6]~2_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[7]~4_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[8]~6_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[9]~8_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[10]~10_combout\ : std_logic;
SIGNAL \VGA|controller|controller_translator|mem_address[11]~12_combout\ : std_logic;
SIGNAL \comb_225|WideOr4~combout\ : std_logic;
SIGNAL \comb_225|Selector35~0_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \comb_225|Selector73~0_combout\ : std_logic;
SIGNAL \comb_225|Selector73~1_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \comb_224|data_out~13_combout\ : std_logic;
SIGNAL \comb_224|data_out~14_combout\ : std_logic;
SIGNAL \comb_224|data_out~36_combout\ : std_logic;
SIGNAL \comb_224|data_out~37_combout\ : std_logic;
SIGNAL \comb_224|data_out[1]~feeder_combout\ : std_logic;
SIGNAL \comb_224|data_out[28]~8_combout\ : std_logic;
SIGNAL \comb_224|data_out[3]~31_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \comb_224|converter|WideOr1~1_combout\ : std_logic;
SIGNAL \comb_224|converter|WideOr1~0_combout\ : std_logic;
SIGNAL \comb_224|data_out~11_combout\ : std_logic;
SIGNAL \comb_224|data_out~12_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \comb_224|data_out~32_combout\ : std_logic;
SIGNAL \comb_224|data_out~4_combout\ : std_logic;
SIGNAL \comb_224|data_out~5_combout\ : std_logic;
SIGNAL \comb_224|data_out~7_combout\ : std_logic;
SIGNAL \comb_224|data_out[3]~feeder_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \comb_225|WideOr5~combout\ : std_logic;
SIGNAL \comb_225|Selector63~0_combout\ : std_logic;
SIGNAL \comb_225|Selector31~0_combout\ : std_logic;
SIGNAL \comb_224|converter|WideOr3~0_combout\ : std_logic;
SIGNAL \comb_224|data_out~15_combout\ : std_logic;
SIGNAL \comb_224|data_out~16_combout\ : std_logic;
SIGNAL \comb_224|data_out~34_combout\ : std_logic;
SIGNAL \comb_224|data_out~35_combout\ : std_logic;
SIGNAL \comb_224|data_out~17_combout\ : std_logic;
SIGNAL \comb_224|data_out[7]~29_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \comb_225|Selector61~0_combout\ : std_logic;
SIGNAL \comb_225|Selector29~0_combout\ : std_logic;
SIGNAL \comb_224|data_out[6]~feeder_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \comb_225|Selector60~0_combout\ : std_logic;
SIGNAL \comb_225|Selector28~0_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \comb_224|count~2_combout\ : std_logic;
SIGNAL \comb_224|count~3_combout\ : std_logic;
SIGNAL \comb_224|count~5_combout\ : std_logic;
SIGNAL \comb_224|count~0_combout\ : std_logic;
SIGNAL \comb_224|count~1_combout\ : std_logic;
SIGNAL \comb_224|data_out[24]~18_combout\ : std_logic;
SIGNAL \comb_224|data_out[24]~19_combout\ : std_logic;
SIGNAL \comb_225|Selector11~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \comb_225|Selector10~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \comb_224|data_out[28]~10_combout\ : std_logic;
SIGNAL \comb_225|Selector6~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \comb_225|Selector37~0_combout\ : std_logic;
SIGNAL \comb_225|Selector5~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \comb_225|Selector36~0_combout\ : std_logic;
SIGNAL \comb_225|Selector4~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \comb_225|Selector39~0_combout\ : std_logic;
SIGNAL \comb_225|Selector7~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \comb_225|Selector62~0_combout\ : std_logic;
SIGNAL \comb_225|Selector30~0_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \comb_222|Selector11~0_combout\ : std_logic;
SIGNAL \comb_222|Selector35~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector10~1_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector6~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector6~1_combout\ : std_logic;
SIGNAL \comb_222|Selector6~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector13~0_combout\ : std_logic;
SIGNAL \comb_225|Selector27~0_combout\ : std_logic;
SIGNAL \comb_224|data_out[11]~27_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \comb_225|Selector57~0_combout\ : std_logic;
SIGNAL \comb_225|Selector25~0_combout\ : std_logic;
SIGNAL \comb_224|data_out[10]~feeder_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \comb_224|data_out[11]~feeder_combout\ : std_logic;
SIGNAL \comb_225|Selector24~0_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \comb_225|Selector55~0_combout\ : std_logic;
SIGNAL \comb_225|Selector23~0_combout\ : std_logic;
SIGNAL \comb_224|data_out[12]~24_combout\ : std_logic;
SIGNAL \comb_224|data_out[12]~25_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \comb_225|Selector51~0_combout\ : std_logic;
SIGNAL \comb_225|Selector19~0_combout\ : std_logic;
SIGNAL \comb_224|data_out[16]~22_combout\ : std_logic;
SIGNAL \comb_224|data_out[16]~23_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \comb_225|Selector49~0_combout\ : std_logic;
SIGNAL \comb_225|Selector17~0_combout\ : std_logic;
SIGNAL \comb_224|data_out[18]~feeder_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \comb_225|Selector48~0_combout\ : std_logic;
SIGNAL \comb_225|Selector16~0_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \comb_225|Selector15~0_combout\ : std_logic;
SIGNAL \comb_224|data_out[20]~20_combout\ : std_logic;
SIGNAL \comb_224|data_out[20]~21_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \comb_225|Selector14~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \comb_225|Selector13~0_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \comb_225|Selector12~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \comb_225|Selector9~0_combout\ : std_logic;
SIGNAL \comb_224|data_out[26]~feeder_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \comb_225|Selector8~0_combout\ : std_logic;
SIGNAL \comb_224|data_out[27]~feeder_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \comb_225|Selector50~0_combout\ : std_logic;
SIGNAL \comb_225|Selector18~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \comb_225|Selector52~0_combout\ : std_logic;
SIGNAL \comb_225|Selector20~0_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \comb_225|Selector54~0_combout\ : std_logic;
SIGNAL \comb_225|Selector22~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \comb_222|Selector14~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector13~1_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector9~0_combout\ : std_logic;
SIGNAL \comb_222|Selector10~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector9~1_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector5~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector5~1_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector4~0_combout\ : std_logic;
SIGNAL \comb_222|Selector5~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector4~1_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector7~0_combout\ : std_logic;
SIGNAL \comb_222|Selector8~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector7~1_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector3~0_combout\ : std_logic;
SIGNAL \comb_222|Selector4~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Selector3~1_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|comb_3|Mux0~3_combout\ : std_logic;
SIGNAL \comb_222|inst|comb_18|comb_3|colorBit~0_combout\ : std_logic;
SIGNAL \comb_222|inst|Add0~2_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[5]~0_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[6]~2_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[7]~4_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[8]~6_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[9]~8_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[10]~10_combout\ : std_logic;
SIGNAL \VGA|user_input_translator|mem_address[11]~12_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11~portadataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[1]~feeder_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8~portadataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14~portadataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result2w~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[0]~feeder_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10~portadataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7~portadataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13~portadataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result1w~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9~portadataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6~portadataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1_combout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12~portadataout\ : std_logic;
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result0w~0_combout\ : std_logic;
SIGNAL \wait_D[0]~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \LEDR~1_combout\ : std_logic;
SIGNAL \WideAnd0~combout\ : std_logic;
SIGNAL \comb_224|Segment0|seven_seg_display[0]~9_combout\ : std_logic;
SIGNAL \comb_224|Segment0|seven_seg_display[1]~4_combout\ : std_logic;
SIGNAL \comb_224|Segment0|seven_seg_display[2]~5_combout\ : std_logic;
SIGNAL \comb_224|Segment0|seven_seg_display[3]~10_combout\ : std_logic;
SIGNAL \comb_224|Segment0|seven_seg_display[4]~6_combout\ : std_logic;
SIGNAL \comb_224|Segment0|seven_seg_display[5]~7_combout\ : std_logic;
SIGNAL \comb_224|Segment0|seven_seg_display[6]~8_combout\ : std_logic;
SIGNAL \comb_224|Segment1|seven_seg_display[0]~9_combout\ : std_logic;
SIGNAL \comb_224|Segment1|seven_seg_display[1]~4_combout\ : std_logic;
SIGNAL \comb_224|Segment1|seven_seg_display[2]~5_combout\ : std_logic;
SIGNAL \comb_224|Segment1|seven_seg_display[3]~10_combout\ : std_logic;
SIGNAL \comb_224|Segment1|seven_seg_display[4]~6_combout\ : std_logic;
SIGNAL \comb_224|Segment1|seven_seg_display[5]~7_combout\ : std_logic;
SIGNAL \comb_224|Segment1|seven_seg_display[6]~8_combout\ : std_logic;
SIGNAL \comb_224|Segment2|seven_seg_display[0]~9_combout\ : std_logic;
SIGNAL \comb_224|Segment2|seven_seg_display[1]~4_combout\ : std_logic;
SIGNAL \comb_224|Segment2|seven_seg_display[2]~5_combout\ : std_logic;
SIGNAL \comb_224|Segment2|seven_seg_display[3]~10_combout\ : std_logic;
SIGNAL \comb_224|Segment2|seven_seg_display[4]~6_combout\ : std_logic;
SIGNAL \comb_224|Segment2|seven_seg_display[5]~7_combout\ : std_logic;
SIGNAL \comb_224|Segment2|seven_seg_display[6]~8_combout\ : std_logic;
SIGNAL \comb_224|Segment3|seven_seg_display[0]~9_combout\ : std_logic;
SIGNAL \comb_224|Segment3|seven_seg_display[1]~4_combout\ : std_logic;
SIGNAL \comb_224|Segment3|seven_seg_display[2]~5_combout\ : std_logic;
SIGNAL \comb_224|Segment3|seven_seg_display[3]~10_combout\ : std_logic;
SIGNAL \comb_224|Segment3|seven_seg_display[4]~6_combout\ : std_logic;
SIGNAL \comb_224|Segment3|seven_seg_display[5]~7_combout\ : std_logic;
SIGNAL \comb_224|Segment3|seven_seg_display[6]~8_combout\ : std_logic;
SIGNAL \comb_224|Segment4|seven_seg_display[0]~9_combout\ : std_logic;
SIGNAL \comb_224|Segment4|seven_seg_display[1]~4_combout\ : std_logic;
SIGNAL \comb_224|Segment4|seven_seg_display[2]~5_combout\ : std_logic;
SIGNAL \comb_224|Segment4|seven_seg_display[3]~10_combout\ : std_logic;
SIGNAL \comb_224|Segment4|seven_seg_display[4]~6_combout\ : std_logic;
SIGNAL \comb_224|Segment4|seven_seg_display[5]~7_combout\ : std_logic;
SIGNAL \comb_224|Segment4|seven_seg_display[6]~8_combout\ : std_logic;
SIGNAL \comb_224|Segment5|seven_seg_display[0]~9_combout\ : std_logic;
SIGNAL \comb_224|Segment5|seven_seg_display[1]~4_combout\ : std_logic;
SIGNAL \comb_224|Segment5|seven_seg_display[2]~5_combout\ : std_logic;
SIGNAL \comb_224|Segment5|seven_seg_display[3]~10_combout\ : std_logic;
SIGNAL \comb_224|Segment5|seven_seg_display[4]~6_combout\ : std_logic;
SIGNAL \comb_224|Segment5|seven_seg_display[5]~7_combout\ : std_logic;
SIGNAL \comb_224|Segment5|seven_seg_display[6]~8_combout\ : std_logic;
SIGNAL \comb_224|Segment6|seven_seg_display[0]~9_combout\ : std_logic;
SIGNAL \comb_224|Segment6|seven_seg_display[1]~4_combout\ : std_logic;
SIGNAL \comb_224|Segment6|seven_seg_display[2]~5_combout\ : std_logic;
SIGNAL \comb_224|Segment6|seven_seg_display[3]~10_combout\ : std_logic;
SIGNAL \comb_224|Segment6|seven_seg_display[4]~6_combout\ : std_logic;
SIGNAL \comb_224|Segment6|seven_seg_display[5]~7_combout\ : std_logic;
SIGNAL \comb_224|Segment6|seven_seg_display[6]~8_combout\ : std_logic;
SIGNAL \comb_224|data_out[0]~feeder_combout\ : std_logic;
SIGNAL \comb_224|Segment7|seven_seg_display[0]~9_combout\ : std_logic;
SIGNAL \comb_224|Segment7|seven_seg_display[1]~4_combout\ : std_logic;
SIGNAL \comb_224|Segment7|seven_seg_display[2]~5_combout\ : std_logic;
SIGNAL \comb_224|Segment7|seven_seg_display[3]~10_combout\ : std_logic;
SIGNAL \comb_224|Segment7|seven_seg_display[4]~6_combout\ : std_logic;
SIGNAL \comb_224|Segment7|seven_seg_display[5]~7_combout\ : std_logic;
SIGNAL \comb_224|Segment7|seven_seg_display[6]~8_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL wait_Q : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_221|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \comb_222|wait_Q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_222|dataRead_Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \comb_222|count_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_222|inst|mainRegistor_Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \comb_222|inst|counter_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \comb_222|inst|comb_18|waiter_Q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_222|inst|comb_18|waiter_D\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_222|inst|comb_18|counter_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \comb_222|inst|comb_18|comb_3|counter_Q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_224|last_data_received\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_224|data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \comb_224|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \comb_224|PS2|PS2_Data_In|received_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_224|PS2|PS2_Data_In|data_shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_224|PS2|PS2_Data_In|data_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_225|wait_Q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \comb_225|dataWrite_Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \comb_225|dataRead_Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \comb_225|count_Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_225|count_D\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|controller|yCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|controller|xCounter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_222|ALT_INV_states_Q.001~regout\ : std_logic;
SIGNAL \comb_224|Segment7|ALT_INV_seven_seg_display[6]~8_combout\ : std_logic;
SIGNAL \comb_224|Segment6|ALT_INV_seven_seg_display[6]~8_combout\ : std_logic;
SIGNAL \comb_224|Segment5|ALT_INV_seven_seg_display[6]~8_combout\ : std_logic;
SIGNAL \comb_224|Segment4|ALT_INV_seven_seg_display[6]~8_combout\ : std_logic;
SIGNAL \comb_224|Segment3|ALT_INV_seven_seg_display[6]~8_combout\ : std_logic;
SIGNAL \comb_224|Segment2|ALT_INV_seven_seg_display[6]~8_combout\ : std_logic;
SIGNAL \comb_224|Segment1|ALT_INV_seven_seg_display[6]~8_combout\ : std_logic;
SIGNAL \comb_224|Segment0|ALT_INV_seven_seg_display[6]~8_combout\ : std_logic;
SIGNAL \ALT_INV_states_Q.100~regout\ : std_logic;
SIGNAL \comb_222|inst|ALT_INV_states_Q.10~regout\ : std_logic;

BEGIN

\LEDR[0]__duplicate\ <= \ww_LEDR[0]__duplicate\;
\LEDR[1]__duplicate\ <= \ww_LEDR[1]__duplicate\;
\LEDR[2]__duplicate\ <= \ww_LEDR[2]__duplicate\;
\LEDR[3]__duplicate\ <= \ww_LEDR[3]__duplicate\;
\LEDR[4]__duplicate\ <= \ww_LEDR[4]__duplicate\;
\LEDR[5]__duplicate\ <= \ww_LEDR[5]__duplicate\;
\LEDR[6]__duplicate\ <= \ww_LEDR[6]__duplicate\;
\LEDR[7]__duplicate\ <= \ww_LEDR[7]__duplicate\;
\LEDR[8]__duplicate\ <= \ww_LEDR[8]__duplicate\;
\LEDR[9]__duplicate\ <= \ww_LEDR[9]__duplicate\;
\LEDR[10]__duplicate\ <= \ww_LEDR[10]__duplicate\;
\LEDR[11]__duplicate\ <= \ww_LEDR[11]__duplicate\;
\LEDR[12]__duplicate\ <= \ww_LEDR[12]__duplicate\;
\LEDR[13]__duplicate\ <= \ww_LEDR[13]__duplicate\;
\LEDR[14]__duplicate\ <= \ww_LEDR[14]__duplicate\;
\LEDR[15]__duplicate\ <= \ww_LEDR[15]__duplicate\;
\LEDR[16]__duplicate\ <= \ww_LEDR[16]__duplicate\;
\LEDR[17]__duplicate\ <= \ww_LEDR[17]__duplicate\;
\LEDG[0]__duplicate\ <= \ww_LEDG[0]__duplicate\;
\LEDG[1]__duplicate\ <= \ww_LEDG[1]__duplicate\;
\LEDG[2]__duplicate\ <= \ww_LEDG[2]__duplicate\;
\LEDG[3]__duplicate\ <= \ww_LEDG[3]__duplicate\;
\LEDG[4]__duplicate\ <= \ww_LEDG[4]__duplicate\;
\LEDG[5]__duplicate\ <= \ww_LEDG[5]__duplicate\;
\LEDG[6]__duplicate\ <= \ww_LEDG[6]__duplicate\;
\LEDG[7]__duplicate\ <= \ww_LEDG[7]__duplicate\;
ww_CLOCK_50 <= CLOCK_50;
VGA_CLK <= ww_VGA_CLK;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_BLANK <= ww_VGA_BLANK;
VGA_SYNC <= ww_VGA_SYNC;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\VGA|mypll|altpll_component|pll_INCLK_bus\ <= (gnd & \CLOCK_50~combout\);

\VGA|mypll|altpll_component|_clk0\ <= \VGA|mypll|altpll_component|pll_CLK_bus\(0);
\VGA|mypll|altpll_component|_clk1\ <= \VGA|mypll|altpll_component|pll_CLK_bus\(1);
\VGA|mypll|altpll_component|_clk2\ <= \VGA|mypll|altpll_component|pll_CLK_bus\(2);

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAIN_bus\(0) <= vcc;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBDATAIN_bus\(0) <= \comb_222|inst|comb_18|comb_3|colorBit~0_combout\;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTAADDR_bus\ <= (\VGA|controller|controller_translator|mem_address[11]~12_combout\ & \VGA|controller|controller_translator|mem_address[10]~10_combout\ & 
\VGA|controller|controller_translator|mem_address[9]~8_combout\ & \VGA|controller|controller_translator|mem_address[8]~6_combout\ & \VGA|controller|controller_translator|mem_address[7]~4_combout\ & 
\VGA|controller|controller_translator|mem_address[6]~2_combout\ & \VGA|controller|controller_translator|mem_address[5]~0_combout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & 
\VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBADDR_bus\ <= (\VGA|user_input_translator|mem_address[11]~12_combout\ & \VGA|user_input_translator|mem_address[10]~10_combout\ & \VGA|user_input_translator|mem_address[9]~8_combout\ & 
\VGA|user_input_translator|mem_address[8]~6_combout\ & \VGA|user_input_translator|mem_address[7]~4_combout\ & \VGA|user_input_translator|mem_address[6]~2_combout\ & \VGA|user_input_translator|mem_address[5]~0_combout\ & \comb_222|inst|Add0~2_combout\ & 
\comb_222|inst|counter_Q\(0) & \comb_222|inst|comb_18|comb_3|counter_Q\(2) & \comb_222|inst|comb_18|comb_3|counter_Q\(1) & \comb_222|inst|comb_18|comb_3|counter_Q\(0));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14~portadataout\ <= \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAIN_bus\(0) <= vcc;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBDATAIN_bus\(0) <= \comb_222|inst|comb_18|comb_3|colorBit~0_combout\;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTAADDR_bus\ <= (\VGA|controller|controller_translator|mem_address[11]~12_combout\ & \VGA|controller|controller_translator|mem_address[10]~10_combout\ & 
\VGA|controller|controller_translator|mem_address[9]~8_combout\ & \VGA|controller|controller_translator|mem_address[8]~6_combout\ & \VGA|controller|controller_translator|mem_address[7]~4_combout\ & 
\VGA|controller|controller_translator|mem_address[6]~2_combout\ & \VGA|controller|controller_translator|mem_address[5]~0_combout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & 
\VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBADDR_bus\ <= (\VGA|user_input_translator|mem_address[11]~12_combout\ & \VGA|user_input_translator|mem_address[10]~10_combout\ & \VGA|user_input_translator|mem_address[9]~8_combout\ & 
\VGA|user_input_translator|mem_address[8]~6_combout\ & \VGA|user_input_translator|mem_address[7]~4_combout\ & \VGA|user_input_translator|mem_address[6]~2_combout\ & \VGA|user_input_translator|mem_address[5]~0_combout\ & \comb_222|inst|Add0~2_combout\ & 
\comb_222|inst|counter_Q\(0) & \comb_222|inst|comb_18|comb_3|counter_Q\(2) & \comb_222|inst|comb_18|comb_3|counter_Q\(1) & \comb_222|inst|comb_18|comb_3|counter_Q\(0));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8~portadataout\ <= \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAIN_bus\(0) <= vcc;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBDATAIN_bus\(0) <= \comb_222|inst|comb_18|comb_3|colorBit~0_combout\;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTAADDR_bus\ <= (\VGA|controller|controller_translator|mem_address[11]~12_combout\ & \VGA|controller|controller_translator|mem_address[10]~10_combout\ & 
\VGA|controller|controller_translator|mem_address[9]~8_combout\ & \VGA|controller|controller_translator|mem_address[8]~6_combout\ & \VGA|controller|controller_translator|mem_address[7]~4_combout\ & 
\VGA|controller|controller_translator|mem_address[6]~2_combout\ & \VGA|controller|controller_translator|mem_address[5]~0_combout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & 
\VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBADDR_bus\ <= (\VGA|user_input_translator|mem_address[11]~12_combout\ & \VGA|user_input_translator|mem_address[10]~10_combout\ & \VGA|user_input_translator|mem_address[9]~8_combout\ & 
\VGA|user_input_translator|mem_address[8]~6_combout\ & \VGA|user_input_translator|mem_address[7]~4_combout\ & \VGA|user_input_translator|mem_address[6]~2_combout\ & \VGA|user_input_translator|mem_address[5]~0_combout\ & \comb_222|inst|Add0~2_combout\ & 
\comb_222|inst|counter_Q\(0) & \comb_222|inst|comb_18|comb_3|counter_Q\(2) & \comb_222|inst|comb_18|comb_3|counter_Q\(1) & \comb_222|inst|comb_18|comb_3|counter_Q\(0));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5~portadataout\ <= \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAIN_bus\(0) <= vcc;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBDATAIN_bus\(0) <= \comb_222|inst|comb_18|comb_3|colorBit~0_combout\;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTAADDR_bus\ <= (\VGA|controller|controller_translator|mem_address[11]~12_combout\ & \VGA|controller|controller_translator|mem_address[10]~10_combout\ & 
\VGA|controller|controller_translator|mem_address[9]~8_combout\ & \VGA|controller|controller_translator|mem_address[8]~6_combout\ & \VGA|controller|controller_translator|mem_address[7]~4_combout\ & 
\VGA|controller|controller_translator|mem_address[6]~2_combout\ & \VGA|controller|controller_translator|mem_address[5]~0_combout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & 
\VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBADDR_bus\ <= (\VGA|user_input_translator|mem_address[11]~12_combout\ & \VGA|user_input_translator|mem_address[10]~10_combout\ & \VGA|user_input_translator|mem_address[9]~8_combout\ & 
\VGA|user_input_translator|mem_address[8]~6_combout\ & \VGA|user_input_translator|mem_address[7]~4_combout\ & \VGA|user_input_translator|mem_address[6]~2_combout\ & \VGA|user_input_translator|mem_address[5]~0_combout\ & \comb_222|inst|Add0~2_combout\ & 
\comb_222|inst|counter_Q\(0) & \comb_222|inst|comb_18|comb_3|counter_Q\(2) & \comb_222|inst|comb_18|comb_3|counter_Q\(1) & \comb_222|inst|comb_18|comb_3|counter_Q\(0));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\ <= \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAIN_bus\(0) <= vcc;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBDATAIN_bus\(0) <= \comb_222|inst|comb_18|comb_3|colorBit~0_combout\;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTAADDR_bus\ <= (\VGA|controller|controller_translator|mem_address[11]~12_combout\ & \VGA|controller|controller_translator|mem_address[10]~10_combout\ & 
\VGA|controller|controller_translator|mem_address[9]~8_combout\ & \VGA|controller|controller_translator|mem_address[8]~6_combout\ & \VGA|controller|controller_translator|mem_address[7]~4_combout\ & 
\VGA|controller|controller_translator|mem_address[6]~2_combout\ & \VGA|controller|controller_translator|mem_address[5]~0_combout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & 
\VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBADDR_bus\ <= (\VGA|user_input_translator|mem_address[11]~12_combout\ & \VGA|user_input_translator|mem_address[10]~10_combout\ & \VGA|user_input_translator|mem_address[9]~8_combout\ & 
\VGA|user_input_translator|mem_address[8]~6_combout\ & \VGA|user_input_translator|mem_address[7]~4_combout\ & \VGA|user_input_translator|mem_address[6]~2_combout\ & \VGA|user_input_translator|mem_address[5]~0_combout\ & \comb_222|inst|Add0~2_combout\ & 
\comb_222|inst|counter_Q\(0) & \comb_222|inst|comb_18|comb_3|counter_Q\(2) & \comb_222|inst|comb_18|comb_3|counter_Q\(1) & \comb_222|inst|comb_18|comb_3|counter_Q\(0));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11~portadataout\ <= \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAIN_bus\(0) <= vcc;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBDATAIN_bus\(0) <= \comb_222|inst|comb_18|comb_3|colorBit~0_combout\;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTAADDR_bus\ <= (\VGA|controller|controller_translator|mem_address[11]~12_combout\ & \VGA|controller|controller_translator|mem_address[10]~10_combout\ & 
\VGA|controller|controller_translator|mem_address[9]~8_combout\ & \VGA|controller|controller_translator|mem_address[8]~6_combout\ & \VGA|controller|controller_translator|mem_address[7]~4_combout\ & 
\VGA|controller|controller_translator|mem_address[6]~2_combout\ & \VGA|controller|controller_translator|mem_address[5]~0_combout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & 
\VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBADDR_bus\ <= (\VGA|user_input_translator|mem_address[11]~12_combout\ & \VGA|user_input_translator|mem_address[10]~10_combout\ & \VGA|user_input_translator|mem_address[9]~8_combout\ & 
\VGA|user_input_translator|mem_address[8]~6_combout\ & \VGA|user_input_translator|mem_address[7]~4_combout\ & \VGA|user_input_translator|mem_address[6]~2_combout\ & \VGA|user_input_translator|mem_address[5]~0_combout\ & \comb_222|inst|Add0~2_combout\ & 
\comb_222|inst|counter_Q\(0) & \comb_222|inst|comb_18|comb_3|counter_Q\(2) & \comb_222|inst|comb_18|comb_3|counter_Q\(1) & \comb_222|inst|comb_18|comb_3|counter_Q\(0));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13~portadataout\ <= \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAIN_bus\(0) <= vcc;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBDATAIN_bus\(0) <= \comb_222|inst|comb_18|comb_3|colorBit~0_combout\;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTAADDR_bus\ <= (\VGA|controller|controller_translator|mem_address[11]~12_combout\ & \VGA|controller|controller_translator|mem_address[10]~10_combout\ & 
\VGA|controller|controller_translator|mem_address[9]~8_combout\ & \VGA|controller|controller_translator|mem_address[8]~6_combout\ & \VGA|controller|controller_translator|mem_address[7]~4_combout\ & 
\VGA|controller|controller_translator|mem_address[6]~2_combout\ & \VGA|controller|controller_translator|mem_address[5]~0_combout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & 
\VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBADDR_bus\ <= (\VGA|user_input_translator|mem_address[11]~12_combout\ & \VGA|user_input_translator|mem_address[10]~10_combout\ & \VGA|user_input_translator|mem_address[9]~8_combout\ & 
\VGA|user_input_translator|mem_address[8]~6_combout\ & \VGA|user_input_translator|mem_address[7]~4_combout\ & \VGA|user_input_translator|mem_address[6]~2_combout\ & \VGA|user_input_translator|mem_address[5]~0_combout\ & \comb_222|inst|Add0~2_combout\ & 
\comb_222|inst|counter_Q\(0) & \comb_222|inst|comb_18|comb_3|counter_Q\(2) & \comb_222|inst|comb_18|comb_3|counter_Q\(1) & \comb_222|inst|comb_18|comb_3|counter_Q\(0));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4~portadataout\ <= \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAIN_bus\(0) <= vcc;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBDATAIN_bus\(0) <= \comb_222|inst|comb_18|comb_3|colorBit~0_combout\;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTAADDR_bus\ <= (\VGA|controller|controller_translator|mem_address[11]~12_combout\ & \VGA|controller|controller_translator|mem_address[10]~10_combout\ & 
\VGA|controller|controller_translator|mem_address[9]~8_combout\ & \VGA|controller|controller_translator|mem_address[8]~6_combout\ & \VGA|controller|controller_translator|mem_address[7]~4_combout\ & 
\VGA|controller|controller_translator|mem_address[6]~2_combout\ & \VGA|controller|controller_translator|mem_address[5]~0_combout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & 
\VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBADDR_bus\ <= (\VGA|user_input_translator|mem_address[11]~12_combout\ & \VGA|user_input_translator|mem_address[10]~10_combout\ & \VGA|user_input_translator|mem_address[9]~8_combout\ & 
\VGA|user_input_translator|mem_address[8]~6_combout\ & \VGA|user_input_translator|mem_address[7]~4_combout\ & \VGA|user_input_translator|mem_address[6]~2_combout\ & \VGA|user_input_translator|mem_address[5]~0_combout\ & \comb_222|inst|Add0~2_combout\ & 
\comb_222|inst|counter_Q\(0) & \comb_222|inst|comb_18|comb_3|counter_Q\(2) & \comb_222|inst|comb_18|comb_3|counter_Q\(1) & \comb_222|inst|comb_18|comb_3|counter_Q\(0));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7~portadataout\ <= \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\(0) <= vcc;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\(0) <= \comb_222|inst|comb_18|comb_3|colorBit~0_combout\;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\ <= (\VGA|controller|controller_translator|mem_address[11]~12_combout\ & \VGA|controller|controller_translator|mem_address[10]~10_combout\ & 
\VGA|controller|controller_translator|mem_address[9]~8_combout\ & \VGA|controller|controller_translator|mem_address[8]~6_combout\ & \VGA|controller|controller_translator|mem_address[7]~4_combout\ & 
\VGA|controller|controller_translator|mem_address[6]~2_combout\ & \VGA|controller|controller_translator|mem_address[5]~0_combout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & 
\VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\ <= (\VGA|user_input_translator|mem_address[11]~12_combout\ & \VGA|user_input_translator|mem_address[10]~10_combout\ & \VGA|user_input_translator|mem_address[9]~8_combout\ & 
\VGA|user_input_translator|mem_address[8]~6_combout\ & \VGA|user_input_translator|mem_address[7]~4_combout\ & \VGA|user_input_translator|mem_address[6]~2_combout\ & \VGA|user_input_translator|mem_address[5]~0_combout\ & \comb_222|inst|Add0~2_combout\ & 
\comb_222|inst|counter_Q\(0) & \comb_222|inst|comb_18|comb_3|counter_Q\(2) & \comb_222|inst|comb_18|comb_3|counter_Q\(1) & \comb_222|inst|comb_18|comb_3|counter_Q\(0));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\ <= \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAIN_bus\(0) <= vcc;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBDATAIN_bus\(0) <= \comb_222|inst|comb_18|comb_3|colorBit~0_combout\;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTAADDR_bus\ <= (\VGA|controller|controller_translator|mem_address[11]~12_combout\ & \VGA|controller|controller_translator|mem_address[10]~10_combout\ & 
\VGA|controller|controller_translator|mem_address[9]~8_combout\ & \VGA|controller|controller_translator|mem_address[8]~6_combout\ & \VGA|controller|controller_translator|mem_address[7]~4_combout\ & 
\VGA|controller|controller_translator|mem_address[6]~2_combout\ & \VGA|controller|controller_translator|mem_address[5]~0_combout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & 
\VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBADDR_bus\ <= (\VGA|user_input_translator|mem_address[11]~12_combout\ & \VGA|user_input_translator|mem_address[10]~10_combout\ & \VGA|user_input_translator|mem_address[9]~8_combout\ & 
\VGA|user_input_translator|mem_address[8]~6_combout\ & \VGA|user_input_translator|mem_address[7]~4_combout\ & \VGA|user_input_translator|mem_address[6]~2_combout\ & \VGA|user_input_translator|mem_address[5]~0_combout\ & \comb_222|inst|Add0~2_combout\ & 
\comb_222|inst|counter_Q\(0) & \comb_222|inst|comb_18|comb_3|counter_Q\(2) & \comb_222|inst|comb_18|comb_3|counter_Q\(1) & \comb_222|inst|comb_18|comb_3|counter_Q\(0));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10~portadataout\ <= \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAIN_bus\(0) <= vcc;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBDATAIN_bus\(0) <= \comb_222|inst|comb_18|comb_3|colorBit~0_combout\;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTAADDR_bus\ <= (\VGA|controller|controller_translator|mem_address[11]~12_combout\ & \VGA|controller|controller_translator|mem_address[10]~10_combout\ & 
\VGA|controller|controller_translator|mem_address[9]~8_combout\ & \VGA|controller|controller_translator|mem_address[8]~6_combout\ & \VGA|controller|controller_translator|mem_address[7]~4_combout\ & 
\VGA|controller|controller_translator|mem_address[6]~2_combout\ & \VGA|controller|controller_translator|mem_address[5]~0_combout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & 
\VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBADDR_bus\ <= (\VGA|user_input_translator|mem_address[11]~12_combout\ & \VGA|user_input_translator|mem_address[10]~10_combout\ & \VGA|user_input_translator|mem_address[9]~8_combout\ & 
\VGA|user_input_translator|mem_address[8]~6_combout\ & \VGA|user_input_translator|mem_address[7]~4_combout\ & \VGA|user_input_translator|mem_address[6]~2_combout\ & \VGA|user_input_translator|mem_address[5]~0_combout\ & \comb_222|inst|Add0~2_combout\ & 
\comb_222|inst|counter_Q\(0) & \comb_222|inst|comb_18|comb_3|counter_Q\(2) & \comb_222|inst|comb_18|comb_3|counter_Q\(1) & \comb_222|inst|comb_18|comb_3|counter_Q\(0));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12~portadataout\ <= \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAIN_bus\(0) <= vcc;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBDATAIN_bus\(0) <= \comb_222|inst|comb_18|comb_3|colorBit~0_combout\;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTAADDR_bus\ <= (\VGA|controller|controller_translator|mem_address[11]~12_combout\ & \VGA|controller|controller_translator|mem_address[10]~10_combout\ & 
\VGA|controller|controller_translator|mem_address[9]~8_combout\ & \VGA|controller|controller_translator|mem_address[8]~6_combout\ & \VGA|controller|controller_translator|mem_address[7]~4_combout\ & 
\VGA|controller|controller_translator|mem_address[6]~2_combout\ & \VGA|controller|controller_translator|mem_address[5]~0_combout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & 
\VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBADDR_bus\ <= (\VGA|user_input_translator|mem_address[11]~12_combout\ & \VGA|user_input_translator|mem_address[10]~10_combout\ & \VGA|user_input_translator|mem_address[9]~8_combout\ & 
\VGA|user_input_translator|mem_address[8]~6_combout\ & \VGA|user_input_translator|mem_address[7]~4_combout\ & \VGA|user_input_translator|mem_address[6]~2_combout\ & \VGA|user_input_translator|mem_address[5]~0_combout\ & \comb_222|inst|Add0~2_combout\ & 
\comb_222|inst|counter_Q\(0) & \comb_222|inst|comb_18|comb_3|counter_Q\(2) & \comb_222|inst|comb_18|comb_3|counter_Q\(1) & \comb_222|inst|comb_18|comb_3|counter_Q\(0));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6~portadataout\ <= \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAIN_bus\(0) <= vcc;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBDATAIN_bus\(0) <= \comb_222|inst|comb_18|comb_3|colorBit~0_combout\;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTAADDR_bus\ <= (\VGA|controller|controller_translator|mem_address[11]~12_combout\ & \VGA|controller|controller_translator|mem_address[10]~10_combout\ & 
\VGA|controller|controller_translator|mem_address[9]~8_combout\ & \VGA|controller|controller_translator|mem_address[8]~6_combout\ & \VGA|controller|controller_translator|mem_address[7]~4_combout\ & 
\VGA|controller|controller_translator|mem_address[6]~2_combout\ & \VGA|controller|controller_translator|mem_address[5]~0_combout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & 
\VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBADDR_bus\ <= (\VGA|user_input_translator|mem_address[11]~12_combout\ & \VGA|user_input_translator|mem_address[10]~10_combout\ & \VGA|user_input_translator|mem_address[9]~8_combout\ & 
\VGA|user_input_translator|mem_address[8]~6_combout\ & \VGA|user_input_translator|mem_address[7]~4_combout\ & \VGA|user_input_translator|mem_address[6]~2_combout\ & \VGA|user_input_translator|mem_address[5]~0_combout\ & \comb_222|inst|Add0~2_combout\ & 
\comb_222|inst|counter_Q\(0) & \comb_222|inst|comb_18|comb_3|counter_Q\(2) & \comb_222|inst|comb_18|comb_3|counter_Q\(1) & \comb_222|inst|comb_18|comb_3|counter_Q\(0));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3~portadataout\ <= \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\(0) <= vcc;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\(0) <= \comb_222|inst|comb_18|comb_3|colorBit~0_combout\;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\ <= (\VGA|controller|controller_translator|mem_address[11]~12_combout\ & \VGA|controller|controller_translator|mem_address[10]~10_combout\ & 
\VGA|controller|controller_translator|mem_address[9]~8_combout\ & \VGA|controller|controller_translator|mem_address[8]~6_combout\ & \VGA|controller|controller_translator|mem_address[7]~4_combout\ & 
\VGA|controller|controller_translator|mem_address[6]~2_combout\ & \VGA|controller|controller_translator|mem_address[5]~0_combout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & 
\VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\ <= (\VGA|user_input_translator|mem_address[11]~12_combout\ & \VGA|user_input_translator|mem_address[10]~10_combout\ & \VGA|user_input_translator|mem_address[9]~8_combout\ & 
\VGA|user_input_translator|mem_address[8]~6_combout\ & \VGA|user_input_translator|mem_address[7]~4_combout\ & \VGA|user_input_translator|mem_address[6]~2_combout\ & \VGA|user_input_translator|mem_address[5]~0_combout\ & \comb_222|inst|Add0~2_combout\ & 
\comb_222|inst|counter_Q\(0) & \comb_222|inst|comb_18|comb_3|counter_Q\(2) & \comb_222|inst|comb_18|comb_3|counter_Q\(1) & \comb_222|inst|comb_18|comb_3|counter_Q\(0));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\ <= \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\(0);

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\(0) <= vcc;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\(0) <= \comb_222|inst|comb_18|comb_3|colorBit~0_combout\;

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\ <= (\VGA|controller|controller_translator|mem_address[11]~12_combout\ & \VGA|controller|controller_translator|mem_address[10]~10_combout\ & 
\VGA|controller|controller_translator|mem_address[9]~8_combout\ & \VGA|controller|controller_translator|mem_address[8]~6_combout\ & \VGA|controller|controller_translator|mem_address[7]~4_combout\ & 
\VGA|controller|controller_translator|mem_address[6]~2_combout\ & \VGA|controller|controller_translator|mem_address[5]~0_combout\ & \VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(5) & \VGA|controller|xCounter\(4) & 
\VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\ <= (\VGA|user_input_translator|mem_address[11]~12_combout\ & \VGA|user_input_translator|mem_address[10]~10_combout\ & \VGA|user_input_translator|mem_address[9]~8_combout\ & 
\VGA|user_input_translator|mem_address[8]~6_combout\ & \VGA|user_input_translator|mem_address[7]~4_combout\ & \VGA|user_input_translator|mem_address[6]~2_combout\ & \VGA|user_input_translator|mem_address[5]~0_combout\ & \comb_222|inst|Add0~2_combout\ & 
\comb_222|inst|counter_Q\(0) & \comb_222|inst|comb_18|comb_3|counter_Q\(2) & \comb_222|inst|comb_18|comb_3|counter_Q\(1) & \comb_222|inst|comb_18|comb_3|counter_Q\(0));

\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9~portadataout\ <= \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\(0);

\comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\Selector12~0_combout\ & \Selector13~0_combout\ & \Selector14~0_combout\ & \Selector15~0_combout\ & \Selector18~0_combout\ & \Selector19~0_combout\ & \Selector36~0_combout\ & 
\Selector37~0_combout\ & \Selector38~0_combout\ & \Selector39~0_combout\ & \Selector40~0_combout\ & \Selector41~0_combout\ & \Selector42~0_combout\ & \Selector43~0_combout\);

\comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Selector4~0_combout\ & \Selector5~0_combout\ & \Selector6~0_combout\ & \Selector7~1_combout\ & \Selector8~1_combout\ & \Selector9~1_combout\ & \Selector10~1_combout\);

\comb_221|altsyncram_component|auto_generated|q_a\(0) <= \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\comb_221|altsyncram_component|auto_generated|q_a\(1) <= \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\comb_221|altsyncram_component|auto_generated|q_a\(2) <= \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\comb_221|altsyncram_component|auto_generated|q_a\(3) <= \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\comb_221|altsyncram_component|auto_generated|q_a\(4) <= \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\comb_221|altsyncram_component|auto_generated|q_a\(5) <= \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\comb_221|altsyncram_component|auto_generated|q_a\(6) <= \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\comb_221|altsyncram_component|auto_generated|q_a\(7) <= \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\comb_221|altsyncram_component|auto_generated|q_a\(24) <= \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\comb_221|altsyncram_component|auto_generated|q_a\(25) <= \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\comb_221|altsyncram_component|auto_generated|q_a\(28) <= \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\comb_221|altsyncram_component|auto_generated|q_a\(29) <= \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\comb_221|altsyncram_component|auto_generated|q_a\(30) <= \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\comb_221|altsyncram_component|auto_generated|q_a\(31) <= \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\comb_222|inst|mainRegistor_Q\(31) & \comb_222|inst|mainRegistor_Q\(30) & \comb_222|inst|mainRegistor_Q\(29) & \comb_222|inst|mainRegistor_Q\(28) & 
\comb_222|inst|comb_18|counter_Q\(2) & \comb_222|inst|comb_18|counter_Q\(1) & \comb_222|inst|comb_18|counter_Q\(0));

\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(0) <= \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(1) <= \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(2) <= \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(3) <= \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(4) <= \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(5) <= \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(6) <= \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(7) <= \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (\Selector16~0_combout\ & \Selector17~0_combout\ & \Selector20~0_combout\ & \Selector21~0_combout\ & \Selector22~0_combout\ & \Selector23~0_combout\ & \Selector24~0_combout\ & 
\Selector25~0_combout\ & \Selector26~0_combout\ & \Selector27~0_combout\ & \Selector28~0_combout\ & \Selector29~0_combout\ & \Selector30~0_combout\ & \Selector31~0_combout\ & \Selector32~0_combout\ & \Selector33~0_combout\ & \Selector34~0_combout\ & 
\Selector35~0_combout\);

\comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\Selector4~0_combout\ & \Selector5~0_combout\ & \Selector6~0_combout\ & \Selector7~1_combout\ & \Selector8~1_combout\ & \Selector9~1_combout\ & \Selector10~1_combout\);

\comb_221|altsyncram_component|auto_generated|q_a\(8) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\comb_221|altsyncram_component|auto_generated|q_a\(9) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\comb_221|altsyncram_component|auto_generated|q_a\(10) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\comb_221|altsyncram_component|auto_generated|q_a\(11) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);
\comb_221|altsyncram_component|auto_generated|q_a\(12) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(4);
\comb_221|altsyncram_component|auto_generated|q_a\(13) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(5);
\comb_221|altsyncram_component|auto_generated|q_a\(14) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(6);
\comb_221|altsyncram_component|auto_generated|q_a\(15) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(7);
\comb_221|altsyncram_component|auto_generated|q_a\(16) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(8);
\comb_221|altsyncram_component|auto_generated|q_a\(17) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(9);
\comb_221|altsyncram_component|auto_generated|q_a\(18) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(10);
\comb_221|altsyncram_component|auto_generated|q_a\(19) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(11);
\comb_221|altsyncram_component|auto_generated|q_a\(20) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(12);
\comb_221|altsyncram_component|auto_generated|q_a\(21) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(13);
\comb_221|altsyncram_component|auto_generated|q_a\(22) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(14);
\comb_221|altsyncram_component|auto_generated|q_a\(23) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(15);
\comb_221|altsyncram_component|auto_generated|q_a\(26) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(16);
\comb_221|altsyncram_component|auto_generated|q_a\(27) <= \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(17);

\VGA|mypll|altpll_component|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \VGA|mypll|altpll_component|_clk0\);

\comb_225|states_Q.101~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \comb_225|states_Q.101~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\comb_222|ALT_INV_states_Q.001~regout\ <= NOT \comb_222|states_Q.001~regout\;
\comb_224|Segment7|ALT_INV_seven_seg_display[6]~8_combout\ <= NOT \comb_224|Segment7|seven_seg_display[6]~8_combout\;
\comb_224|Segment6|ALT_INV_seven_seg_display[6]~8_combout\ <= NOT \comb_224|Segment6|seven_seg_display[6]~8_combout\;
\comb_224|Segment5|ALT_INV_seven_seg_display[6]~8_combout\ <= NOT \comb_224|Segment5|seven_seg_display[6]~8_combout\;
\comb_224|Segment4|ALT_INV_seven_seg_display[6]~8_combout\ <= NOT \comb_224|Segment4|seven_seg_display[6]~8_combout\;
\comb_224|Segment3|ALT_INV_seven_seg_display[6]~8_combout\ <= NOT \comb_224|Segment3|seven_seg_display[6]~8_combout\;
\comb_224|Segment2|ALT_INV_seven_seg_display[6]~8_combout\ <= NOT \comb_224|Segment2|seven_seg_display[6]~8_combout\;
\comb_224|Segment1|ALT_INV_seven_seg_display[6]~8_combout\ <= NOT \comb_224|Segment1|seven_seg_display[6]~8_combout\;
\comb_224|Segment0|ALT_INV_seven_seg_display[6]~8_combout\ <= NOT \comb_224|Segment0|seven_seg_display[6]~8_combout\;
\ALT_INV_states_Q.100~regout\ <= NOT \states_Q.100~regout\;
\comb_222|inst|ALT_INV_states_Q.10~regout\ <= NOT \comb_222|inst|states_Q.10~regout\;

-- Location: M4K_X52_Y25
\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "backgroundMemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_g1h1:auto_generated|altsyncram_grr1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\(3),
	clk0 => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAIN_bus\,
	portbdatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBDATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y27
\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "backgroundMemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_g1h1:auto_generated|altsyncram_grr1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\(3),
	clk0 => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAIN_bus\,
	portbdatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBDATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y27
\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "backgroundMemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_g1h1:auto_generated|altsyncram_grr1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\(3),
	clk0 => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAIN_bus\,
	portbdatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBDATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y24
\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "backgroundMemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_g1h1:auto_generated|altsyncram_grr1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\(3),
	clk0 => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAIN_bus\,
	portbdatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBDATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y21_N2
\VGA|user_input_translator|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~0_combout\ = (\comb_222|inst|comb_18|counter_Q\(0) & (\comb_222|inst|comb_18|counter_Q\(2) $ (VCC))) # (!\comb_222|inst|comb_18|counter_Q\(0) & (\comb_222|inst|comb_18|counter_Q\(2) & VCC))
-- \VGA|user_input_translator|Add0~1\ = CARRY((\comb_222|inst|comb_18|counter_Q\(0) & \comb_222|inst|comb_18|counter_Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|counter_Q\(0),
	datab => \comb_222|inst|comb_18|counter_Q\(2),
	datad => VCC,
	combout => \VGA|user_input_translator|Add0~0_combout\,
	cout => \VGA|user_input_translator|Add0~1\);

-- Location: LCCOMB_X30_Y21_N8
\VGA|user_input_translator|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~6_combout\ = (\comb_222|count_Q\(0) & ((\comb_222|Add0~3_combout\ & (\VGA|user_input_translator|Add0~5\ & VCC)) # (!\comb_222|Add0~3_combout\ & (!\VGA|user_input_translator|Add0~5\)))) # (!\comb_222|count_Q\(0) & 
-- ((\comb_222|Add0~3_combout\ & (!\VGA|user_input_translator|Add0~5\)) # (!\comb_222|Add0~3_combout\ & ((\VGA|user_input_translator|Add0~5\) # (GND)))))
-- \VGA|user_input_translator|Add0~7\ = CARRY((\comb_222|count_Q\(0) & (!\comb_222|Add0~3_combout\ & !\VGA|user_input_translator|Add0~5\)) # (!\comb_222|count_Q\(0) & ((!\VGA|user_input_translator|Add0~5\) # (!\comb_222|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|count_Q\(0),
	datab => \comb_222|Add0~3_combout\,
	datad => VCC,
	cin => \VGA|user_input_translator|Add0~5\,
	combout => \VGA|user_input_translator|Add0~6_combout\,
	cout => \VGA|user_input_translator|Add0~7\);

-- Location: LCCOMB_X30_Y21_N10
\VGA|user_input_translator|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~8_combout\ = ((\comb_222|Add0~2_combout\ $ (\comb_222|Add0~1_combout\ $ (\VGA|user_input_translator|Add0~7\)))) # (GND)
-- \VGA|user_input_translator|Add0~9\ = CARRY((\comb_222|Add0~2_combout\ & (\comb_222|Add0~1_combout\ & !\VGA|user_input_translator|Add0~7\)) # (!\comb_222|Add0~2_combout\ & ((\comb_222|Add0~1_combout\) # (!\VGA|user_input_translator|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|Add0~2_combout\,
	datab => \comb_222|Add0~1_combout\,
	datad => VCC,
	cin => \VGA|user_input_translator|Add0~7\,
	combout => \VGA|user_input_translator|Add0~8_combout\,
	cout => \VGA|user_input_translator|Add0~9\);

-- Location: LCCOMB_X30_Y21_N12
\VGA|user_input_translator|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~10_combout\ = (\VGA|user_input_translator|Add0~9\ & (\comb_222|Add0~0_combout\ $ ((\comb_222|count_Q\(2))))) # (!\VGA|user_input_translator|Add0~9\ & ((\comb_222|Add0~0_combout\ $ (!\comb_222|count_Q\(2))) # (GND)))
-- \VGA|user_input_translator|Add0~11\ = CARRY((\comb_222|Add0~0_combout\ $ (\comb_222|count_Q\(2))) # (!\VGA|user_input_translator|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|Add0~0_combout\,
	datab => \comb_222|count_Q\(2),
	datad => VCC,
	cin => \VGA|user_input_translator|Add0~9\,
	combout => \VGA|user_input_translator|Add0~10_combout\,
	cout => \VGA|user_input_translator|Add0~11\);

-- Location: LCCOMB_X30_Y21_N14
\VGA|user_input_translator|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~12_combout\ = (\VGA|user_input_translator|Add0~11\ & ((\comb_222|count_Q\(3) $ (!\comb_222|Selector3~0_combout\)))) # (!\VGA|user_input_translator|Add0~11\ & (\comb_222|count_Q\(3) $ (\comb_222|Selector3~0_combout\ $ 
-- (GND))))
-- \VGA|user_input_translator|Add0~13\ = CARRY((!\VGA|user_input_translator|Add0~11\ & (\comb_222|count_Q\(3) $ (!\comb_222|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|count_Q\(3),
	datab => \comb_222|Selector3~0_combout\,
	datad => VCC,
	cin => \VGA|user_input_translator|Add0~11\,
	combout => \VGA|user_input_translator|Add0~12_combout\,
	cout => \VGA|user_input_translator|Add0~13\);

-- Location: LCCOMB_X55_Y27_N10
\VGA|controller|controller_translator|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add0~2_combout\ = (\VGA|controller|yCounter\(5) & ((\VGA|controller|yCounter\(3) & (\VGA|controller|controller_translator|Add0~1\ & VCC)) # (!\VGA|controller|yCounter\(3) & 
-- (!\VGA|controller|controller_translator|Add0~1\)))) # (!\VGA|controller|yCounter\(5) & ((\VGA|controller|yCounter\(3) & (!\VGA|controller|controller_translator|Add0~1\)) # (!\VGA|controller|yCounter\(3) & ((\VGA|controller|controller_translator|Add0~1\) # 
-- (GND)))))
-- \VGA|controller|controller_translator|Add0~3\ = CARRY((\VGA|controller|yCounter\(5) & (!\VGA|controller|yCounter\(3) & !\VGA|controller|controller_translator|Add0~1\)) # (!\VGA|controller|yCounter\(5) & ((!\VGA|controller|controller_translator|Add0~1\) # 
-- (!\VGA|controller|yCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(5),
	datab => \VGA|controller|yCounter\(3),
	datad => VCC,
	cin => \VGA|controller|controller_translator|Add0~1\,
	combout => \VGA|controller|controller_translator|Add0~2_combout\,
	cout => \VGA|controller|controller_translator|Add0~3\);

-- Location: LCCOMB_X55_Y27_N20
\VGA|controller|controller_translator|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add0~12_combout\ = (\VGA|controller|yCounter\(8) & (\VGA|controller|controller_translator|Add0~11\ $ (GND))) # (!\VGA|controller|yCounter\(8) & (!\VGA|controller|controller_translator|Add0~11\ & VCC))
-- \VGA|controller|controller_translator|Add0~13\ = CARRY((\VGA|controller|yCounter\(8) & !\VGA|controller|controller_translator|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(8),
	datad => VCC,
	cin => \VGA|controller|controller_translator|Add0~11\,
	combout => \VGA|controller|controller_translator|Add0~12_combout\,
	cout => \VGA|controller|controller_translator|Add0~13\);

-- Location: M4K_X52_Y22
\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000F06161E16467F007F46161E16467F001F36666666361F003C66030303663C003F66663E66663F0033333F33331E0C000E18303E33331E001E33331E33331E000C0C0C1830333F001E33331F03061C001E3330301F033F0078307F33363C38001E33301C30331E003F33061C30331E003F0C0C0C0C0E0C003E676F7B73633E",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "hexaLetters.mif",
	init_file_layout => "port_a",
	logical_ram_name => "drawToVGA:comb_222|mainOutPut:inst|hexaOutPutManager:comb_18|hexaRoom:comb_15|altsyncram:altsyncram_component|altsyncram_sk71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \CLOCK_50~clkctrl_outclk\,
	portaaddr => \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X30_Y20_N7
\comb_222|inst|mainRegistor_Q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector8~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(26));

-- Location: LCFF_X28_Y19_N9
\comb_222|inst|mainRegistor_Q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector14~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(20));

-- Location: LCFF_X30_Y20_N29
\comb_222|inst|mainRegistor_Q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector12~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(22));

-- Location: LCFF_X30_Y19_N17
\comb_222|inst|mainRegistor_Q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector11~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(23));

-- Location: LCFF_X31_Y19_N29
\comb_222|inst|mainRegistor_Q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector18~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(16));

-- Location: LCFF_X29_Y20_N11
\comb_222|inst|mainRegistor_Q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector17~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(17));

-- Location: LCFF_X30_Y20_N11
\comb_222|inst|mainRegistor_Q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector16~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(18));

-- Location: LCFF_X30_Y19_N31
\comb_222|inst|mainRegistor_Q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector15~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(19));

-- Location: LCFF_X31_Y19_N31
\comb_222|inst|mainRegistor_Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector22~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(12));

-- Location: LCFF_X28_Y20_N21
\comb_222|inst|mainRegistor_Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector21~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(13));

-- Location: LCFF_X31_Y19_N1
\comb_222|inst|mainRegistor_Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector20~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(14));

-- Location: LCFF_X29_Y19_N17
\comb_222|inst|mainRegistor_Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector19~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(15));

-- Location: LCFF_X28_Y19_N23
\comb_222|inst|mainRegistor_Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector26~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(8));

-- Location: LCFF_X28_Y20_N23
\comb_222|inst|mainRegistor_Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector25~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(9));

-- Location: LCFF_X31_Y19_N23
\comb_222|inst|mainRegistor_Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector24~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(10));

-- Location: LCFF_X29_Y19_N11
\comb_222|inst|mainRegistor_Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector23~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(11));

-- Location: LCFF_X28_Y19_N29
\comb_222|inst|mainRegistor_Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector30~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(4));

-- Location: LCFF_X28_Y20_N29
\comb_222|inst|mainRegistor_Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector29~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(5));

-- Location: LCFF_X31_Y19_N5
\comb_222|inst|mainRegistor_Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector28~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(6));

-- Location: LCFF_X29_Y19_N1
\comb_222|inst|mainRegistor_Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector27~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(7));

-- Location: M4K_X26_Y16
\comb_221|altsyncram_component|auto_generated|ram_block1a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "mainMemory:comb_221|altsyncram:altsyncram_component|altsyncram_39a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_width => 7,
	port_b_data_width => 18,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \Selector11~0_combout\,
	clk0 => \CLOCK_50~clkctrl_outclk\,
	portadatain => \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_221|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCFF_X28_Y19_N31
\comb_222|inst|mainRegistor_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector34~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(0));

-- Location: LCFF_X28_Y20_N15
\comb_222|inst|mainRegistor_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector33~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(1));

-- Location: LCFF_X31_Y19_N27
\comb_222|inst|mainRegistor_Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector32~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(2));

-- Location: LCFF_X30_Y19_N13
\comb_222|inst|mainRegistor_Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector31~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(3));

-- Location: LCCOMB_X27_Y27_N12
\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\ = (\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & (\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0))) # 
-- (!\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5~portadataout\))) # 
-- (!\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & (\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a2~portadataout\,
	datad => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a5~portadataout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\);

-- Location: LCCOMB_X30_Y21_N24
\comb_222|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Add0~0_combout\ = (\comb_222|count_Q\(1) & \comb_222|count_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|count_Q\(1),
	datac => \comb_222|count_Q\(0),
	combout => \comb_222|Add0~0_combout\);

-- Location: LCCOMB_X30_Y21_N20
\comb_222|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Add0~2_combout\ = \comb_222|count_Q\(1) $ (\comb_222|count_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|count_Q\(1),
	datac => \comb_222|count_Q\(0),
	combout => \comb_222|Add0~2_combout\);

-- Location: LCFF_X36_Y27_N7
\comb_222|inst|counter_Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|counter_D[2]~0_combout\,
	ena => \comb_222|inst|counter_Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|counter_Q\(2));

-- Location: LCCOMB_X36_Y27_N12
\comb_222|inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Add0~0_combout\ = (\comb_222|inst|counter_Q\(2)) # ((\comb_222|inst|counter_Q\(1)) # (\comb_222|inst|counter_Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|counter_Q\(2),
	datab => \comb_222|inst|counter_Q\(1),
	datad => \comb_222|inst|counter_Q\(0),
	combout => \comb_222|inst|Add0~0_combout\);

-- Location: LCCOMB_X36_Y27_N22
\comb_222|inst|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Add0~1_combout\ = \comb_222|inst|counter_Q\(2) $ (((\comb_222|inst|counter_Q\(1)) # (\comb_222|inst|counter_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|counter_Q\(2),
	datab => \comb_222|inst|counter_Q\(1),
	datad => \comb_222|inst|counter_Q\(0),
	combout => \comb_222|inst|Add0~1_combout\);

-- Location: LCCOMB_X51_Y22_N0
\comb_222|inst|comb_18|comb_3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|comb_3|Mux0~0_combout\ = (\comb_222|inst|comb_18|comb_3|counter_Q\(1) & (((\comb_222|inst|comb_18|comb_3|counter_Q\(0))))) # (!\comb_222|inst|comb_18|comb_3|counter_Q\(1) & ((\comb_222|inst|comb_18|comb_3|counter_Q\(0) & 
-- ((\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(5)))) # (!\comb_222|inst|comb_18|comb_3|counter_Q\(0) & (\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(4),
	datab => \comb_222|inst|comb_18|comb_3|counter_Q\(1),
	datac => \comb_222|inst|comb_18|comb_3|counter_Q\(0),
	datad => \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(5),
	combout => \comb_222|inst|comb_18|comb_3|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y22_N2
\comb_222|inst|comb_18|comb_3|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|comb_3|Mux0~1_combout\ = (\comb_222|inst|comb_18|comb_3|counter_Q\(1) & ((\comb_222|inst|comb_18|comb_3|Mux0~0_combout\ & (\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(7))) # 
-- (!\comb_222|inst|comb_18|comb_3|Mux0~0_combout\ & ((\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(6)))))) # (!\comb_222|inst|comb_18|comb_3|counter_Q\(1) & (((\comb_222|inst|comb_18|comb_3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(7),
	datab => \comb_222|inst|comb_18|comb_3|counter_Q\(1),
	datac => \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(6),
	datad => \comb_222|inst|comb_18|comb_3|Mux0~0_combout\,
	combout => \comb_222|inst|comb_18|comb_3|Mux0~1_combout\);

-- Location: LCCOMB_X51_Y22_N12
\comb_222|inst|comb_18|comb_3|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|comb_3|Mux0~2_combout\ = (\comb_222|inst|comb_18|comb_3|counter_Q\(1) & (((\comb_222|inst|comb_18|comb_3|counter_Q\(0))))) # (!\comb_222|inst|comb_18|comb_3|counter_Q\(1) & ((\comb_222|inst|comb_18|comb_3|counter_Q\(0) & 
-- ((\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(1)))) # (!\comb_222|inst|comb_18|comb_3|counter_Q\(0) & (\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(0),
	datab => \comb_222|inst|comb_18|comb_3|counter_Q\(1),
	datac => \comb_222|inst|comb_18|comb_3|counter_Q\(0),
	datad => \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(1),
	combout => \comb_222|inst|comb_18|comb_3|Mux0~2_combout\);

-- Location: LCCOMB_X30_Y24_N10
\VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\(3) = (!\VGA|user_input_translator|mem_address[14]~18_combout\ & (!\VGA|user_input_translator|mem_address[13]~16_combout\ & (\VGA|user_input_translator|mem_address[12]~14_combout\ & 
-- \VGA|writeEn~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|mem_address[14]~18_combout\,
	datab => \VGA|user_input_translator|mem_address[13]~16_combout\,
	datac => \VGA|user_input_translator|mem_address[12]~14_combout\,
	datad => \VGA|writeEn~1_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode252w\(3));

-- Location: LCCOMB_X51_Y27_N22
\VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\(3) = (\VGA|controller|controller_translator|mem_address[12]~14_combout\ & (!\VGA|controller|controller_translator|mem_address[13]~16_combout\ & 
-- !\VGA|controller|controller_translator|mem_address[14]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|controller_translator|mem_address[12]~14_combout\,
	datac => \VGA|controller|controller_translator|mem_address[13]~16_combout\,
	datad => \VGA|controller|controller_translator|mem_address[14]~18_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode252w\(3));

-- Location: LCCOMB_X30_Y24_N4
\VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\ = (!\VGA|user_input_translator|mem_address[13]~16_combout\ & (\VGA|user_input_translator|mem_address[12]~14_combout\ & !\VGA|user_input_translator|mem_address[14]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|user_input_translator|mem_address[13]~16_combout\,
	datac => \VGA|user_input_translator|mem_address[12]~14_combout\,
	datad => \VGA|user_input_translator|mem_address[14]~18_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode252w[3]~0_combout\);

-- Location: LCFF_X32_Y16_N3
\comb_225|wait_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector68~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|wait_Q\(1));

-- Location: LCFF_X27_Y17_N19
\comb_225|dataWrite_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector34~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(1));

-- Location: LCFF_X27_Y19_N13
\comb_225|dataWrite_Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(2));

-- Location: LCFF_X29_Y16_N17
\comb_225|dataWrite_Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector32~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(3));

-- Location: LCCOMB_X31_Y17_N22
\comb_224|converter|WideOr4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|converter|WideOr4~2_combout\ = (!\comb_224|last_data_received\(0) & (\comb_224|last_data_received\(4) & ((\comb_224|last_data_received\(3)) # (\comb_224|last_data_received\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(3),
	datab => \comb_224|last_data_received\(0),
	datac => \comb_224|last_data_received\(4),
	datad => \comb_224|last_data_received\(1),
	combout => \comb_224|converter|WideOr4~2_combout\);

-- Location: LCCOMB_X31_Y17_N6
\comb_224|converter|WideOr4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|converter|WideOr4~4_combout\ = (!\comb_224|last_data_received\(6) & \comb_224|last_data_received\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|last_data_received\(6),
	datac => \comb_224|last_data_received\(5),
	combout => \comb_224|converter|WideOr4~4_combout\);

-- Location: LCCOMB_X32_Y17_N8
\comb_224|data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~6_combout\ = (\comb_224|last_data_received\(3) & (\comb_224|last_data_received\(4) & (\comb_224|last_data_received\(1) $ (!\comb_224|data_out~4_combout\)))) # (!\comb_224|last_data_received\(3) & ((\comb_224|data_out~4_combout\ & 
-- ((!\comb_224|last_data_received\(4)))) # (!\comb_224|data_out~4_combout\ & (\comb_224|last_data_received\(1) & \comb_224|last_data_received\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(1),
	datab => \comb_224|last_data_received\(3),
	datac => \comb_224|data_out~4_combout\,
	datad => \comb_224|last_data_received\(4),
	combout => \comb_224|data_out~6_combout\);

-- Location: LCCOMB_X28_Y17_N10
\comb_224|data_out[28]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[28]~9_combout\ = (\comb_224|count\(1) & (\comb_224|count\(0) & \comb_224|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|count\(1),
	datac => \comb_224|count\(0),
	datad => \comb_224|count\(2),
	combout => \comb_224|data_out[28]~9_combout\);

-- Location: LCCOMB_X28_Y17_N20
\comb_224|data_out[11]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[11]~26_combout\ = (\comb_224|count\(1) & (!\comb_224|count\(0) & !\comb_224|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|count\(1),
	datac => \comb_224|count\(0),
	datad => \comb_224|count\(2),
	combout => \comb_224|data_out[11]~26_combout\);

-- Location: LCCOMB_X28_Y17_N24
\comb_224|data_out[7]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[7]~28_combout\ = (!\comb_224|count\(1) & (\comb_224|count\(0) & !\comb_224|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|count\(1),
	datac => \comb_224|count\(0),
	datad => \comb_224|count\(2),
	combout => \comb_224|data_out[7]~28_combout\);

-- Location: LCCOMB_X28_Y17_N12
\comb_224|data_out[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[3]~30_combout\ = (!\comb_224|count\(1) & (!\comb_224|count\(0) & !\comb_224|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|count\(1),
	datac => \comb_224|count\(0),
	datad => \comb_224|count\(2),
	combout => \comb_224|data_out[3]~30_combout\);

-- Location: LCCOMB_X63_Y27_N4
\VGA|controller|VGA_VS1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_VS1~0_combout\ = ((\VGA|controller|yCounter\(4)) # ((\VGA|controller|yCounter\(9)) # (!\VGA|controller|yCounter\(2)))) # (!\VGA|controller|yCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(3),
	datab => \VGA|controller|yCounter\(4),
	datac => \VGA|controller|yCounter\(9),
	datad => \VGA|controller|yCounter\(2),
	combout => \VGA|controller|VGA_VS1~0_combout\);

-- Location: LCCOMB_X36_Y27_N18
\comb_222|inst|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Add1~0_combout\ = \comb_222|inst|counter_Q\(2) $ (((\comb_222|inst|counter_Q\(1) & \comb_222|inst|counter_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|counter_Q\(2),
	datab => \comb_222|inst|counter_Q\(1),
	datad => \comb_222|inst|counter_Q\(0),
	combout => \comb_222|inst|Add1~0_combout\);

-- Location: LCCOMB_X36_Y27_N6
\comb_222|inst|counter_D[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|counter_D[2]~0_combout\ = (\comb_222|inst|states_Q.10~regout\ & (\comb_222|inst|Add1~0_combout\ & \KEY~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.10~regout\,
	datab => \comb_222|inst|Add1~0_combout\,
	datad => \KEY~combout\(0),
	combout => \comb_222|inst|counter_D[2]~0_combout\);

-- Location: LCCOMB_X61_Y27_N12
\VGA|controller|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Equal0~1_combout\ = (\VGA|controller|xCounter\(9) & (\VGA|controller|xCounter\(4) & (\VGA|controller|xCounter\(8) & !\VGA|controller|xCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|xCounter\(9),
	datab => \VGA|controller|xCounter\(4),
	datac => \VGA|controller|xCounter\(8),
	datad => \VGA|controller|xCounter\(7),
	combout => \VGA|controller|Equal0~1_combout\);

-- Location: LCFF_X32_Y16_N13
\comb_225|states_Q.001\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|states_D.001~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|states_Q.001~regout\);

-- Location: LCCOMB_X31_Y16_N18
\comb_225|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector1~0_combout\ = (\comb_225|states_Q.001~regout\) # ((\comb_225|states_Q.010~regout\ & ((!\comb_225|wait_Q\(0)) # (!\comb_225|wait_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|wait_Q\(1),
	datab => \comb_225|states_Q.001~regout\,
	datac => \comb_225|states_Q.010~regout\,
	datad => \comb_225|wait_Q\(0),
	combout => \comb_225|Selector1~0_combout\);

-- Location: LCCOMB_X32_Y16_N2
\comb_225|Selector68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector68~0_combout\ = (\comb_225|states_Q.010~regout\ & (\comb_225|wait_Q\(0) $ ((\comb_225|wait_Q\(1))))) # (!\comb_225|states_Q.010~regout\ & (\comb_225|states_Q.011~regout\ & (\comb_225|wait_Q\(0) $ (\comb_225|wait_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.010~regout\,
	datab => \comb_225|wait_Q\(0),
	datac => \comb_225|wait_Q\(1),
	datad => \comb_225|states_Q.011~regout\,
	combout => \comb_225|Selector68~0_combout\);

-- Location: LCFF_X28_Y19_N17
\comb_225|dataRead_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector67~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(0));

-- Location: LCFF_X28_Y16_N15
\comb_225|dataRead_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector66~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(1));

-- Location: LCCOMB_X27_Y17_N18
\comb_225|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector34~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(1)) # ((\comb_225|WideOr4~combout\ & \comb_225|dataWrite_Q\(1))))) # (!\comb_225|states_Q.100~regout\ & (\comb_225|WideOr4~combout\ & (\comb_225|dataWrite_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|WideOr4~combout\,
	datac => \comb_225|dataWrite_Q\(1),
	datad => \comb_225|dataRead_Q\(1),
	combout => \comb_225|Selector34~0_combout\);

-- Location: LCFF_X31_Y19_N17
\comb_225|dataRead_Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector65~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(2));

-- Location: LCCOMB_X27_Y19_N12
\comb_225|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector33~0_combout\ = (\comb_225|dataRead_Q\(2) & ((\comb_225|states_Q.100~regout\) # ((\comb_225|WideOr4~combout\ & \comb_225|dataWrite_Q\(2))))) # (!\comb_225|dataRead_Q\(2) & (\comb_225|WideOr4~combout\ & (\comb_225|dataWrite_Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataRead_Q\(2),
	datab => \comb_225|WideOr4~combout\,
	datac => \comb_225|dataWrite_Q\(2),
	datad => \comb_225|states_Q.100~regout\,
	combout => \comb_225|Selector33~0_combout\);

-- Location: LCFF_X29_Y16_N21
\comb_225|dataRead_Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector64~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(3));

-- Location: LCCOMB_X29_Y16_N16
\comb_225|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector32~0_combout\ = (\comb_225|dataRead_Q\(3) & ((\comb_225|states_Q.100~regout\) # ((\comb_225|WideOr4~combout\ & \comb_225|dataWrite_Q\(3))))) # (!\comb_225|dataRead_Q\(3) & (\comb_225|WideOr4~combout\ & (\comb_225|dataWrite_Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataRead_Q\(3),
	datab => \comb_225|WideOr4~combout\,
	datac => \comb_225|dataWrite_Q\(3),
	datad => \comb_225|states_Q.100~regout\,
	combout => \comb_225|Selector32~0_combout\);

-- Location: LCCOMB_X27_Y17_N14
\comb_224|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|WideOr0~0_combout\ = \comb_224|count\(2) $ (((\comb_224|count\(1) & \comb_224|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|count\(1),
	datac => \comb_224|count\(0),
	datad => \comb_224|count\(2),
	combout => \comb_224|WideOr0~0_combout\);

-- Location: LCCOMB_X32_Y17_N6
\comb_224|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|count~4_combout\ = \comb_224|last_data_received\(0) $ (!\comb_224|last_data_received\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(0),
	datad => \comb_224|last_data_received\(6),
	combout => \comb_224|count~4_combout\);

-- Location: LCFF_X28_Y19_N11
\comb_222|dataRead_Q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector7~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(28));

-- Location: LCFF_X32_Y16_N23
\comb_225|states_Q.000\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|states_Q.000~regout\);

-- Location: LCCOMB_X32_Y16_N12
\comb_225|states_D.001~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|states_D.001~0_combout\ = (\states_Q.001~regout\ & !\comb_225|states_Q.000~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \states_Q.001~regout\,
	datad => \comb_225|states_Q.000~regout\,
	combout => \comb_225|states_D.001~0_combout\);

-- Location: LCCOMB_X28_Y19_N16
\comb_225|Selector67~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector67~0_combout\ = (\comb_225|WideOr5~combout\ & ((\comb_225|dataRead_Q\(0)) # ((\comb_221|altsyncram_component|auto_generated|q_a\(0) & \comb_225|states_Q.010~regout\)))) # (!\comb_225|WideOr5~combout\ & 
-- (\comb_221|altsyncram_component|auto_generated|q_a\(0) & ((\comb_225|states_Q.010~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|WideOr5~combout\,
	datab => \comb_221|altsyncram_component|auto_generated|q_a\(0),
	datac => \comb_225|dataRead_Q\(0),
	datad => \comb_225|states_Q.010~regout\,
	combout => \comb_225|Selector67~0_combout\);

-- Location: LCCOMB_X28_Y16_N14
\comb_225|Selector66~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector66~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(1) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|dataRead_Q\(1) & \comb_225|WideOr5~combout\)))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(1) & 
-- (((\comb_225|dataRead_Q\(1) & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(1),
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|dataRead_Q\(1),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector66~0_combout\);

-- Location: LCCOMB_X31_Y19_N16
\comb_225|Selector65~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector65~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(2) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|dataRead_Q\(2) & \comb_225|WideOr5~combout\)))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(2) & 
-- (((\comb_225|dataRead_Q\(2) & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(2),
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|dataRead_Q\(2),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector65~0_combout\);

-- Location: LCCOMB_X29_Y16_N20
\comb_225|Selector64~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector64~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(3) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|WideOr5~combout\ & \comb_225|dataRead_Q\(3))))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(3) & 
-- (\comb_225|WideOr5~combout\ & (\comb_225|dataRead_Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(3),
	datab => \comb_225|WideOr5~combout\,
	datac => \comb_225|dataRead_Q\(3),
	datad => \comb_225|states_Q.010~regout\,
	combout => \comb_225|Selector64~0_combout\);

-- Location: LCCOMB_X28_Y19_N10
\comb_222|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector7~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(28) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_221|altsyncram_component|auto_generated|q_a\(28),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector7~0_combout\);

-- Location: LCCOMB_X28_Y19_N6
\comb_222|inst|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector10~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(24)))) # (!\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(20))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datab => \comb_222|inst|hexHS_Q~regout\,
	datac => \comb_222|inst|mainRegistor_Q\(20),
	datad => \comb_222|inst|mainRegistor_Q\(24),
	combout => \comb_222|inst|Selector10~0_combout\);

-- Location: LCFF_X30_Y20_N31
\comb_222|dataRead_Q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector9~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(26));

-- Location: LCCOMB_X30_Y20_N12
\comb_222|inst|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector8~0_combout\ = (\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(26))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(22)))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(26),
	datab => \comb_222|inst|hexHS_Q~regout\,
	datac => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(22),
	combout => \comb_222|inst|Selector8~0_combout\);

-- Location: LCCOMB_X30_Y20_N6
\comb_222|inst|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector8~1_combout\ = (\comb_222|inst|Selector8~0_combout\ & ((\comb_222|inst|states_Q.10~regout\) # ((\comb_222|inst|states_Q.01~regout\ & \comb_222|dataRead_Q\(26))))) # (!\comb_222|inst|Selector8~0_combout\ & 
-- (((\comb_222|inst|states_Q.01~regout\ & \comb_222|dataRead_Q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|Selector8~0_combout\,
	datab => \comb_222|inst|states_Q.10~regout\,
	datac => \comb_222|inst|states_Q.01~regout\,
	datad => \comb_222|dataRead_Q\(26),
	combout => \comb_222|inst|Selector8~1_combout\);

-- Location: LCFF_X30_Y18_N7
\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_3_PARITY_IN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_3_PARITY_IN~regout\);

-- Location: LCCOMB_X32_Y16_N22
\comb_225|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector0~0_combout\ = (\states_Q.001~regout\) # ((!\comb_225|states_Q.101~regout\ & \comb_225|states_Q.000~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.101~regout\,
	datab => \states_Q.001~regout\,
	datac => \comb_225|states_Q.000~regout\,
	combout => \comb_225|Selector0~0_combout\);

-- Location: LCFF_X27_Y19_N1
\comb_222|dataRead_Q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector15~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(20));

-- Location: LCCOMB_X28_Y19_N4
\comb_222|inst|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector14~0_combout\ = (\comb_222|inst|hexHS_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(20))))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(16))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(16),
	datab => \comb_222|inst|mainRegistor_Q\(20),
	datac => \comb_222|inst|hexHS_Q~regout\,
	datad => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	combout => \comb_222|inst|Selector14~0_combout\);

-- Location: LCCOMB_X28_Y19_N8
\comb_222|inst|Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector14~1_combout\ = (\comb_222|dataRead_Q\(20) & ((\comb_222|inst|states_Q.01~regout\) # ((\comb_222|inst|Selector14~0_combout\ & \comb_222|inst|states_Q.10~regout\)))) # (!\comb_222|dataRead_Q\(20) & 
-- (((\comb_222|inst|Selector14~0_combout\ & \comb_222|inst|states_Q.10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|dataRead_Q\(20),
	datab => \comb_222|inst|states_Q.01~regout\,
	datac => \comb_222|inst|Selector14~0_combout\,
	datad => \comb_222|inst|states_Q.10~regout\,
	combout => \comb_222|inst|Selector14~1_combout\);

-- Location: LCCOMB_X30_Y20_N30
\comb_222|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector9~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(26) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(26),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector9~0_combout\);

-- Location: LCFF_X30_Y20_N19
\comb_222|dataRead_Q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector13~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(22));

-- Location: LCCOMB_X30_Y20_N20
\comb_222|inst|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector12~0_combout\ = (\comb_222|inst|hexHS_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(22))))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(18))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(18),
	datab => \comb_222|inst|hexHS_Q~regout\,
	datac => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(22),
	combout => \comb_222|inst|Selector12~0_combout\);

-- Location: LCCOMB_X30_Y20_N28
\comb_222|inst|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector12~1_combout\ = (\comb_222|inst|Selector12~0_combout\ & ((\comb_222|inst|states_Q.10~regout\) # ((\comb_222|inst|states_Q.01~regout\ & \comb_222|dataRead_Q\(22))))) # (!\comb_222|inst|Selector12~0_combout\ & 
-- (((\comb_222|inst|states_Q.01~regout\ & \comb_222|dataRead_Q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|Selector12~0_combout\,
	datab => \comb_222|inst|states_Q.10~regout\,
	datac => \comb_222|inst|states_Q.01~regout\,
	datad => \comb_222|dataRead_Q\(22),
	combout => \comb_222|inst|Selector12~1_combout\);

-- Location: LCFF_X30_Y19_N21
\comb_222|dataRead_Q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector12~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(23));

-- Location: LCCOMB_X30_Y19_N18
\comb_222|inst|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector11~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(23))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(19)))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(23),
	datab => \comb_222|inst|mainRegistor_Q\(19),
	datac => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datad => \comb_222|inst|hexHS_Q~regout\,
	combout => \comb_222|inst|Selector11~0_combout\);

-- Location: LCCOMB_X30_Y19_N16
\comb_222|inst|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector11~1_combout\ = (\comb_222|inst|states_Q.10~regout\ & ((\comb_222|inst|Selector11~0_combout\) # ((\comb_222|dataRead_Q\(23) & \comb_222|inst|states_Q.01~regout\)))) # (!\comb_222|inst|states_Q.10~regout\ & 
-- (((\comb_222|dataRead_Q\(23) & \comb_222|inst|states_Q.01~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.10~regout\,
	datab => \comb_222|inst|Selector11~0_combout\,
	datac => \comb_222|dataRead_Q\(23),
	datad => \comb_222|inst|states_Q.01~regout\,
	combout => \comb_222|inst|Selector11~1_combout\);

-- Location: LCFF_X30_Y18_N25
\comb_224|PS2|PS2_Data_In|data_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|data_count~0_combout\,
	ena => \comb_224|PS2|PS2_Data_In|data_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|data_count\(2));

-- Location: LCFF_X30_Y18_N27
\comb_224|PS2|PS2_Data_In|data_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|data_count~2_combout\,
	ena => \comb_224|PS2|PS2_Data_In|data_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|data_count\(0));

-- Location: LCFF_X30_Y18_N1
\comb_224|PS2|PS2_Data_In|data_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|data_count~3_combout\,
	ena => \comb_224|PS2|PS2_Data_In|data_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|data_count\(1));

-- Location: LCCOMB_X30_Y18_N10
\comb_224|PS2|PS2_Data_In|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|always1~0_combout\ = (\comb_224|PS2|PS2_Data_In|data_count\(2) & (\comb_224|PS2|PS2_Data_In|data_count\(1) & \comb_224|PS2|PS2_Data_In|data_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|PS2_Data_In|data_count\(2),
	datab => \comb_224|PS2|PS2_Data_In|data_count\(1),
	datad => \comb_224|PS2|PS2_Data_In|data_count\(0),
	combout => \comb_224|PS2|PS2_Data_In|always1~0_combout\);

-- Location: LCCOMB_X30_Y18_N6
\comb_224|PS2|PS2_Data_In|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|Selector3~0_combout\ = (\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~regout\ & ((\comb_224|PS2|PS2_Data_In|always1~1_combout\) # ((\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_3_PARITY_IN~regout\ & 
-- !\comb_224|PS2|ps2_clk_posedge~combout\)))) # (!\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~regout\ & (((\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_3_PARITY_IN~regout\ & !\comb_224|PS2|ps2_clk_posedge~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~regout\,
	datab => \comb_224|PS2|PS2_Data_In|always1~1_combout\,
	datac => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_3_PARITY_IN~regout\,
	datad => \comb_224|PS2|ps2_clk_posedge~combout\,
	combout => \comb_224|PS2|PS2_Data_In|Selector3~0_combout\);

-- Location: LCFF_X30_Y18_N13
\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE~regout\);

-- Location: LCCOMB_X27_Y19_N0
\comb_222|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector15~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(20) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(20),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector15~0_combout\);

-- Location: LCFF_X27_Y19_N11
\comb_222|dataRead_Q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector19~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(16));

-- Location: LCCOMB_X31_Y19_N18
\comb_222|inst|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector18~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(16)))) # (!\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(12))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datab => \comb_222|inst|mainRegistor_Q\(12),
	datac => \comb_222|inst|hexHS_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(16),
	combout => \comb_222|inst|Selector18~0_combout\);

-- Location: LCCOMB_X31_Y19_N28
\comb_222|inst|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector18~1_combout\ = (\comb_222|inst|states_Q.10~regout\ & ((\comb_222|inst|Selector18~0_combout\) # ((\comb_222|dataRead_Q\(16) & \comb_222|inst|states_Q.01~regout\)))) # (!\comb_222|inst|states_Q.10~regout\ & 
-- (((\comb_222|dataRead_Q\(16) & \comb_222|inst|states_Q.01~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.10~regout\,
	datab => \comb_222|inst|Selector18~0_combout\,
	datac => \comb_222|dataRead_Q\(16),
	datad => \comb_222|inst|states_Q.01~regout\,
	combout => \comb_222|inst|Selector18~1_combout\);

-- Location: LCFF_X29_Y16_N7
\comb_225|dataRead_Q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(29));

-- Location: LCFF_X29_Y20_N21
\comb_222|dataRead_Q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector18~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(17));

-- Location: LCCOMB_X29_Y20_N2
\comb_222|inst|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector17~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(17)))) # (!\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(13))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(13),
	datab => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datac => \comb_222|inst|hexHS_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(17),
	combout => \comb_222|inst|Selector17~0_combout\);

-- Location: LCCOMB_X29_Y20_N10
\comb_222|inst|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector17~1_combout\ = (\comb_222|inst|states_Q.01~regout\ & ((\comb_222|dataRead_Q\(17)) # ((\comb_222|inst|Selector17~0_combout\ & \comb_222|inst|states_Q.10~regout\)))) # (!\comb_222|inst|states_Q.01~regout\ & 
-- (\comb_222|inst|Selector17~0_combout\ & ((\comb_222|inst|states_Q.10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.01~regout\,
	datab => \comb_222|inst|Selector17~0_combout\,
	datac => \comb_222|dataRead_Q\(17),
	datad => \comb_222|inst|states_Q.10~regout\,
	combout => \comb_222|inst|Selector17~1_combout\);

-- Location: LCCOMB_X30_Y20_N18
\comb_222|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector13~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(22) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(22),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector13~0_combout\);

-- Location: LCFF_X30_Y20_N3
\comb_222|dataRead_Q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector17~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(18));

-- Location: LCCOMB_X30_Y20_N4
\comb_222|inst|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector16~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(18))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(14)))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(18),
	datab => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datac => \comb_222|inst|mainRegistor_Q\(14),
	datad => \comb_222|inst|hexHS_Q~regout\,
	combout => \comb_222|inst|Selector16~0_combout\);

-- Location: LCCOMB_X30_Y20_N10
\comb_222|inst|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector16~1_combout\ = (\comb_222|inst|Selector16~0_combout\ & ((\comb_222|inst|states_Q.10~regout\) # ((\comb_222|inst|states_Q.01~regout\ & \comb_222|dataRead_Q\(18))))) # (!\comb_222|inst|Selector16~0_combout\ & 
-- (((\comb_222|inst|states_Q.01~regout\ & \comb_222|dataRead_Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|Selector16~0_combout\,
	datab => \comb_222|inst|states_Q.10~regout\,
	datac => \comb_222|inst|states_Q.01~regout\,
	datad => \comb_222|dataRead_Q\(18),
	combout => \comb_222|inst|Selector16~1_combout\);

-- Location: LCCOMB_X30_Y19_N20
\comb_222|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector12~0_combout\ = (\comb_222|states_Q.001~regout\ & \comb_221|altsyncram_component|auto_generated|q_a\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|states_Q.001~regout\,
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(23),
	combout => \comb_222|Selector12~0_combout\);

-- Location: LCFF_X30_Y19_N7
\comb_222|dataRead_Q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector16~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(19));

-- Location: LCCOMB_X30_Y19_N8
\comb_222|inst|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector15~0_combout\ = (\comb_222|inst|hexHS_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(19))))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(15))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|hexHS_Q~regout\,
	datab => \comb_222|inst|mainRegistor_Q\(15),
	datac => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(19),
	combout => \comb_222|inst|Selector15~0_combout\);

-- Location: LCCOMB_X30_Y19_N30
\comb_222|inst|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector15~1_combout\ = (\comb_222|dataRead_Q\(19) & ((\comb_222|inst|states_Q.01~regout\) # ((\comb_222|inst|Selector15~0_combout\ & \comb_222|inst|states_Q.10~regout\)))) # (!\comb_222|dataRead_Q\(19) & 
-- (\comb_222|inst|Selector15~0_combout\ & (\comb_222|inst|states_Q.10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|dataRead_Q\(19),
	datab => \comb_222|inst|Selector15~0_combout\,
	datac => \comb_222|inst|states_Q.10~regout\,
	datad => \comb_222|inst|states_Q.01~regout\,
	combout => \comb_222|inst|Selector15~1_combout\);

-- Location: LCCOMB_X30_Y18_N24
\comb_224|PS2|PS2_Data_In|data_count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|data_count~0_combout\ = (\comb_224|PS2|PS2_Data_In|always2~0_combout\ & (\comb_224|PS2|PS2_Data_In|data_count\(2) $ (((\comb_224|PS2|PS2_Data_In|data_count\(0) & \comb_224|PS2|PS2_Data_In|data_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|PS2_Data_In|always2~0_combout\,
	datab => \comb_224|PS2|PS2_Data_In|data_count\(0),
	datac => \comb_224|PS2|PS2_Data_In|data_count\(2),
	datad => \comb_224|PS2|PS2_Data_In|data_count\(1),
	combout => \comb_224|PS2|PS2_Data_In|data_count~0_combout\);

-- Location: LCCOMB_X30_Y18_N26
\comb_224|PS2|PS2_Data_In|data_count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|data_count~2_combout\ = (!\comb_224|PS2|last_ps2_clk~regout\ & (\comb_224|PS2|ps2_clk_reg~regout\ & (!\comb_224|PS2|PS2_Data_In|data_count\(0) & \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|last_ps2_clk~regout\,
	datab => \comb_224|PS2|ps2_clk_reg~regout\,
	datac => \comb_224|PS2|PS2_Data_In|data_count\(0),
	datad => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~regout\,
	combout => \comb_224|PS2|PS2_Data_In|data_count~2_combout\);

-- Location: LCCOMB_X30_Y18_N0
\comb_224|PS2|PS2_Data_In|data_count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|data_count~3_combout\ = (\comb_224|PS2|PS2_Data_In|always2~0_combout\ & (\comb_224|PS2|PS2_Data_In|data_count\(0) $ (\comb_224|PS2|PS2_Data_In|data_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|PS2|PS2_Data_In|data_count\(0),
	datac => \comb_224|PS2|PS2_Data_In|data_count\(1),
	datad => \comb_224|PS2|PS2_Data_In|always2~0_combout\,
	combout => \comb_224|PS2|PS2_Data_In|data_count~3_combout\);

-- Location: LCCOMB_X30_Y18_N12
\comb_224|PS2|PS2_Data_In|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|Selector0~0_combout\ = (\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\ & (!\comb_224|PS2|ps2_clk_posedge~combout\ & ((\comb_224|PS2|PS2_Data_In|Selector2~0_combout\) # 
-- (\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE~regout\)))) # (!\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\ & ((\comb_224|PS2|PS2_Data_In|Selector2~0_combout\) # 
-- ((\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\,
	datab => \comb_224|PS2|PS2_Data_In|Selector2~0_combout\,
	datac => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE~regout\,
	datad => \comb_224|PS2|ps2_clk_posedge~combout\,
	combout => \comb_224|PS2|PS2_Data_In|Selector0~0_combout\);

-- Location: LCFF_X27_Y19_N25
\comb_225|dataRead_Q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(24));

-- Location: LCCOMB_X27_Y19_N10
\comb_222|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector19~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(16) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(16),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector19~0_combout\);

-- Location: LCFF_X27_Y19_N3
\comb_222|dataRead_Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector23~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(12));

-- Location: LCCOMB_X31_Y19_N12
\comb_222|inst|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector22~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(12)))) # (!\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(8))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datab => \comb_222|inst|mainRegistor_Q\(8),
	datac => \comb_222|inst|hexHS_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(12),
	combout => \comb_222|inst|Selector22~0_combout\);

-- Location: LCCOMB_X31_Y19_N30
\comb_222|inst|Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector22~1_combout\ = (\comb_222|inst|states_Q.01~regout\ & ((\comb_222|dataRead_Q\(12)) # ((\comb_222|inst|states_Q.10~regout\ & \comb_222|inst|Selector22~0_combout\)))) # (!\comb_222|inst|states_Q.01~regout\ & 
-- (((\comb_222|inst|states_Q.10~regout\ & \comb_222|inst|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.01~regout\,
	datab => \comb_222|dataRead_Q\(12),
	datac => \comb_222|inst|states_Q.10~regout\,
	datad => \comb_222|inst|Selector22~0_combout\,
	combout => \comb_222|inst|Selector22~1_combout\);

-- Location: LCCOMB_X29_Y16_N6
\comb_225|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector38~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(29) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|WideOr5~combout\ & \comb_225|dataRead_Q\(29))))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(29) & 
-- (\comb_225|WideOr5~combout\ & (\comb_225|dataRead_Q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(29),
	datab => \comb_225|WideOr5~combout\,
	datac => \comb_225|dataRead_Q\(29),
	datad => \comb_225|states_Q.010~regout\,
	combout => \comb_225|Selector38~0_combout\);

-- Location: LCFF_X29_Y16_N25
\comb_225|dataRead_Q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(25));

-- Location: LCCOMB_X29_Y20_N20
\comb_222|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector18~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(17) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(17),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector18~0_combout\);

-- Location: LCFF_X28_Y20_N13
\comb_222|dataRead_Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector22~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(13));

-- Location: LCCOMB_X28_Y20_N30
\comb_222|inst|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector21~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(13))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(9)))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(13),
	datab => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datac => \comb_222|inst|hexHS_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(9),
	combout => \comb_222|inst|Selector21~0_combout\);

-- Location: LCCOMB_X28_Y20_N20
\comb_222|inst|Selector21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector21~1_combout\ = (\comb_222|dataRead_Q\(13) & ((\comb_222|inst|states_Q.01~regout\) # ((\comb_222|inst|states_Q.10~regout\ & \comb_222|inst|Selector21~0_combout\)))) # (!\comb_222|dataRead_Q\(13) & 
-- (((\comb_222|inst|states_Q.10~regout\ & \comb_222|inst|Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|dataRead_Q\(13),
	datab => \comb_222|inst|states_Q.01~regout\,
	datac => \comb_222|inst|states_Q.10~regout\,
	datad => \comb_222|inst|Selector21~0_combout\,
	combout => \comb_222|inst|Selector21~1_combout\);

-- Location: LCFF_X30_Y20_N27
\comb_225|dataRead_Q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector41~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(26));

-- Location: LCCOMB_X30_Y20_N2
\comb_222|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector17~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(18) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(18),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector17~0_combout\);

-- Location: LCFF_X27_Y19_N17
\comb_222|dataRead_Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector21~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(14));

-- Location: LCCOMB_X31_Y19_N2
\comb_222|inst|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector20~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(14)))) # (!\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(10))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datab => \comb_222|inst|mainRegistor_Q\(10),
	datac => \comb_222|inst|hexHS_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(14),
	combout => \comb_222|inst|Selector20~0_combout\);

-- Location: LCCOMB_X31_Y19_N0
\comb_222|inst|Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector20~1_combout\ = (\comb_222|inst|states_Q.01~regout\ & ((\comb_222|dataRead_Q\(14)) # ((\comb_222|inst|states_Q.10~regout\ & \comb_222|inst|Selector20~0_combout\)))) # (!\comb_222|inst|states_Q.01~regout\ & 
-- (((\comb_222|inst|states_Q.10~regout\ & \comb_222|inst|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.01~regout\,
	datab => \comb_222|dataRead_Q\(14),
	datac => \comb_222|inst|states_Q.10~regout\,
	datad => \comb_222|inst|Selector20~0_combout\,
	combout => \comb_222|inst|Selector20~1_combout\);

-- Location: LCFF_X30_Y19_N11
\comb_225|dataRead_Q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector40~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(27));

-- Location: LCCOMB_X30_Y19_N6
\comb_222|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector16~0_combout\ = (\comb_222|states_Q.001~regout\ & \comb_221|altsyncram_component|auto_generated|q_a\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|states_Q.001~regout\,
	datad => \comb_221|altsyncram_component|auto_generated|q_a\(19),
	combout => \comb_222|Selector16~0_combout\);

-- Location: LCFF_X29_Y19_N23
\comb_222|dataRead_Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector20~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(15));

-- Location: LCCOMB_X29_Y19_N20
\comb_222|inst|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector19~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(15))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(11)))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datab => \comb_222|inst|hexHS_Q~regout\,
	datac => \comb_222|inst|mainRegistor_Q\(15),
	datad => \comb_222|inst|mainRegistor_Q\(11),
	combout => \comb_222|inst|Selector19~0_combout\);

-- Location: LCCOMB_X29_Y19_N16
\comb_222|inst|Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector19~1_combout\ = (\comb_222|inst|Selector19~0_combout\ & ((\comb_222|inst|states_Q.10~regout\) # ((\comb_222|dataRead_Q\(15) & \comb_222|inst|states_Q.01~regout\)))) # (!\comb_222|inst|Selector19~0_combout\ & 
-- (\comb_222|dataRead_Q\(15) & ((\comb_222|inst|states_Q.01~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|Selector19~0_combout\,
	datab => \comb_222|dataRead_Q\(15),
	datac => \comb_222|inst|states_Q.10~regout\,
	datad => \comb_222|inst|states_Q.01~regout\,
	combout => \comb_222|inst|Selector19~1_combout\);

-- Location: LCCOMB_X27_Y19_N24
\comb_225|Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector43~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(24) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|dataRead_Q\(24) & \comb_225|WideOr5~combout\)))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(24) & 
-- (((\comb_225|dataRead_Q\(24) & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(24),
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|dataRead_Q\(24),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector43~0_combout\);

-- Location: LCFF_X30_Y16_N25
\comb_225|dataRead_Q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(20));

-- Location: LCCOMB_X27_Y19_N2
\comb_222|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector23~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(12) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(12),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector23~0_combout\);

-- Location: LCFF_X28_Y19_N27
\comb_222|dataRead_Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector27~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(8));

-- Location: LCCOMB_X28_Y19_N24
\comb_222|inst|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector26~0_combout\ = (\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(8))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(4)))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(8),
	datab => \comb_222|inst|mainRegistor_Q\(4),
	datac => \comb_222|inst|hexHS_Q~regout\,
	datad => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	combout => \comb_222|inst|Selector26~0_combout\);

-- Location: LCCOMB_X28_Y19_N22
\comb_222|inst|Selector26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector26~1_combout\ = (\comb_222|inst|Selector26~0_combout\ & ((\comb_222|inst|states_Q.10~regout\) # ((\comb_222|inst|states_Q.01~regout\ & \comb_222|dataRead_Q\(8))))) # (!\comb_222|inst|Selector26~0_combout\ & 
-- (((\comb_222|inst|states_Q.01~regout\ & \comb_222|dataRead_Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|Selector26~0_combout\,
	datab => \comb_222|inst|states_Q.10~regout\,
	datac => \comb_222|inst|states_Q.01~regout\,
	datad => \comb_222|dataRead_Q\(8),
	combout => \comb_222|inst|Selector26~1_combout\);

-- Location: LCCOMB_X29_Y16_N24
\comb_225|Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector42~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(25) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|WideOr5~combout\ & \comb_225|dataRead_Q\(25))))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(25) & 
-- (\comb_225|WideOr5~combout\ & (\comb_225|dataRead_Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(25),
	datab => \comb_225|WideOr5~combout\,
	datac => \comb_225|dataRead_Q\(25),
	datad => \comb_225|states_Q.010~regout\,
	combout => \comb_225|Selector42~0_combout\);

-- Location: LCFF_X29_Y16_N13
\comb_225|dataRead_Q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector46~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(21));

-- Location: LCCOMB_X28_Y20_N12
\comb_222|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector22~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(13) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_221|altsyncram_component|auto_generated|q_a\(13),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector22~0_combout\);

-- Location: LCFF_X28_Y20_N1
\comb_222|dataRead_Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector26~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(9));

-- Location: LCCOMB_X28_Y20_N6
\comb_222|inst|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector25~0_combout\ = (\comb_222|inst|hexHS_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(9))))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(5))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|hexHS_Q~regout\,
	datab => \comb_222|inst|mainRegistor_Q\(5),
	datac => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(9),
	combout => \comb_222|inst|Selector25~0_combout\);

-- Location: LCCOMB_X28_Y20_N22
\comb_222|inst|Selector25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector25~1_combout\ = (\comb_222|inst|states_Q.10~regout\ & ((\comb_222|inst|Selector25~0_combout\) # ((\comb_222|inst|states_Q.01~regout\ & \comb_222|dataRead_Q\(9))))) # (!\comb_222|inst|states_Q.10~regout\ & 
-- (((\comb_222|inst|states_Q.01~regout\ & \comb_222|dataRead_Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.10~regout\,
	datab => \comb_222|inst|Selector25~0_combout\,
	datac => \comb_222|inst|states_Q.01~regout\,
	datad => \comb_222|dataRead_Q\(9),
	combout => \comb_222|inst|Selector25~1_combout\);

-- Location: LCCOMB_X30_Y20_N26
\comb_225|Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector41~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(26) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|dataRead_Q\(26) & \comb_225|WideOr5~combout\)))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(26) & 
-- (((\comb_225|dataRead_Q\(26) & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(26),
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|dataRead_Q\(26),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector41~0_combout\);

-- Location: LCFF_X30_Y20_N25
\comb_225|dataRead_Q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(22));

-- Location: LCCOMB_X27_Y19_N16
\comb_222|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector21~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(14) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(14),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector21~0_combout\);

-- Location: LCFF_X27_Y19_N7
\comb_222|dataRead_Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector25~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(10));

-- Location: LCCOMB_X31_Y19_N24
\comb_222|inst|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector24~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(10)))) # (!\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(6))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datab => \comb_222|inst|mainRegistor_Q\(6),
	datac => \comb_222|inst|hexHS_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(10),
	combout => \comb_222|inst|Selector24~0_combout\);

-- Location: LCCOMB_X31_Y19_N22
\comb_222|inst|Selector24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector24~1_combout\ = (\comb_222|inst|states_Q.10~regout\ & ((\comb_222|inst|Selector24~0_combout\) # ((\comb_222|dataRead_Q\(10) & \comb_222|inst|states_Q.01~regout\)))) # (!\comb_222|inst|states_Q.10~regout\ & (\comb_222|dataRead_Q\(10) 
-- & ((\comb_222|inst|states_Q.01~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.10~regout\,
	datab => \comb_222|dataRead_Q\(10),
	datac => \comb_222|inst|Selector24~0_combout\,
	datad => \comb_222|inst|states_Q.01~regout\,
	combout => \comb_222|inst|Selector24~1_combout\);

-- Location: LCCOMB_X30_Y19_N10
\comb_225|Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector40~0_combout\ = (\comb_225|states_Q.010~regout\ & ((\comb_221|altsyncram_component|auto_generated|q_a\(27)) # ((\comb_225|dataRead_Q\(27) & \comb_225|WideOr5~combout\)))) # (!\comb_225|states_Q.010~regout\ & (((\comb_225|dataRead_Q\(27) 
-- & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.010~regout\,
	datab => \comb_221|altsyncram_component|auto_generated|q_a\(27),
	datac => \comb_225|dataRead_Q\(27),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector40~0_combout\);

-- Location: LCFF_X30_Y16_N27
\comb_225|dataRead_Q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(23));

-- Location: LCCOMB_X29_Y19_N22
\comb_222|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector20~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(15) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_221|altsyncram_component|auto_generated|q_a\(15),
	datac => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector20~0_combout\);

-- Location: LCFF_X29_Y19_N31
\comb_222|dataRead_Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector24~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(11));

-- Location: LCCOMB_X29_Y19_N24
\comb_222|inst|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector23~0_combout\ = (\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(11))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(7)))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(11),
	datab => \comb_222|inst|hexHS_Q~regout\,
	datac => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(7),
	combout => \comb_222|inst|Selector23~0_combout\);

-- Location: LCCOMB_X29_Y19_N10
\comb_222|inst|Selector23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector23~1_combout\ = (\comb_222|inst|Selector23~0_combout\ & ((\comb_222|inst|states_Q.10~regout\) # ((\comb_222|dataRead_Q\(11) & \comb_222|inst|states_Q.01~regout\)))) # (!\comb_222|inst|Selector23~0_combout\ & 
-- (\comb_222|dataRead_Q\(11) & ((\comb_222|inst|states_Q.01~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|Selector23~0_combout\,
	datab => \comb_222|dataRead_Q\(11),
	datac => \comb_222|inst|states_Q.10~regout\,
	datad => \comb_222|inst|states_Q.01~regout\,
	combout => \comb_222|inst|Selector23~1_combout\);

-- Location: LCCOMB_X30_Y16_N24
\comb_225|Selector47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector47~0_combout\ = (\comb_225|states_Q.010~regout\ & ((\comb_221|altsyncram_component|auto_generated|q_a\(20)) # ((\comb_225|dataRead_Q\(20) & \comb_225|WideOr5~combout\)))) # (!\comb_225|states_Q.010~regout\ & (((\comb_225|dataRead_Q\(20) 
-- & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.010~regout\,
	datab => \comb_221|altsyncram_component|auto_generated|q_a\(20),
	datac => \comb_225|dataRead_Q\(20),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector47~0_combout\);

-- Location: LCCOMB_X28_Y19_N26
\comb_222|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector27~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(8) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(8),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector27~0_combout\);

-- Location: LCFF_X27_Y19_N15
\comb_222|dataRead_Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector31~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(4));

-- Location: LCCOMB_X28_Y19_N14
\comb_222|inst|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector30~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(4)))) # (!\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(0))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datab => \comb_222|inst|mainRegistor_Q\(0),
	datac => \comb_222|inst|hexHS_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(4),
	combout => \comb_222|inst|Selector30~0_combout\);

-- Location: LCCOMB_X28_Y19_N28
\comb_222|inst|Selector30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector30~1_combout\ = (\comb_222|dataRead_Q\(4) & ((\comb_222|inst|states_Q.01~regout\) # ((\comb_222|inst|Selector30~0_combout\ & \comb_222|inst|states_Q.10~regout\)))) # (!\comb_222|dataRead_Q\(4) & 
-- (((\comb_222|inst|Selector30~0_combout\ & \comb_222|inst|states_Q.10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|dataRead_Q\(4),
	datab => \comb_222|inst|states_Q.01~regout\,
	datac => \comb_222|inst|Selector30~0_combout\,
	datad => \comb_222|inst|states_Q.10~regout\,
	combout => \comb_222|inst|Selector30~1_combout\);

-- Location: LCCOMB_X29_Y16_N12
\comb_225|Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector46~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(21) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|WideOr5~combout\ & \comb_225|dataRead_Q\(21))))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(21) & 
-- (\comb_225|WideOr5~combout\ & (\comb_225|dataRead_Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(21),
	datab => \comb_225|WideOr5~combout\,
	datac => \comb_225|dataRead_Q\(21),
	datad => \comb_225|states_Q.010~regout\,
	combout => \comb_225|Selector46~0_combout\);

-- Location: LCCOMB_X28_Y20_N0
\comb_222|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector26~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(9) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_221|altsyncram_component|auto_generated|q_a\(9),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector26~0_combout\);

-- Location: LCFF_X28_Y20_N19
\comb_222|dataRead_Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector30~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(5));

-- Location: LCCOMB_X28_Y20_N4
\comb_222|inst|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector29~0_combout\ = (\comb_222|inst|hexHS_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(5))))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(1))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|hexHS_Q~regout\,
	datab => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datac => \comb_222|inst|mainRegistor_Q\(1),
	datad => \comb_222|inst|mainRegistor_Q\(5),
	combout => \comb_222|inst|Selector29~0_combout\);

-- Location: LCCOMB_X28_Y20_N28
\comb_222|inst|Selector29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector29~1_combout\ = (\comb_222|inst|states_Q.10~regout\ & ((\comb_222|inst|Selector29~0_combout\) # ((\comb_222|inst|states_Q.01~regout\ & \comb_222|dataRead_Q\(5))))) # (!\comb_222|inst|states_Q.10~regout\ & 
-- (((\comb_222|inst|states_Q.01~regout\ & \comb_222|dataRead_Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.10~regout\,
	datab => \comb_222|inst|Selector29~0_combout\,
	datac => \comb_222|inst|states_Q.01~regout\,
	datad => \comb_222|dataRead_Q\(5),
	combout => \comb_222|inst|Selector29~1_combout\);

-- Location: LCCOMB_X30_Y20_N24
\comb_225|Selector45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector45~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(22) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|dataRead_Q\(22) & \comb_225|WideOr5~combout\)))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(22) & 
-- (((\comb_225|dataRead_Q\(22) & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(22),
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|dataRead_Q\(22),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector45~0_combout\);

-- Location: LCFF_X27_Y16_N25
\comb_225|dataWrite_Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(14));

-- Location: LCCOMB_X27_Y19_N6
\comb_222|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector25~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(10) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(10),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector25~0_combout\);

-- Location: LCFF_X31_Y19_N11
\comb_222|dataRead_Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector29~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(6));

-- Location: LCCOMB_X31_Y19_N8
\comb_222|inst|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector28~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(6))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(2)))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datab => \comb_222|inst|mainRegistor_Q\(6),
	datac => \comb_222|inst|hexHS_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(2),
	combout => \comb_222|inst|Selector28~0_combout\);

-- Location: LCCOMB_X31_Y19_N4
\comb_222|inst|Selector28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector28~1_combout\ = (\comb_222|inst|states_Q.01~regout\ & ((\comb_222|dataRead_Q\(6)) # ((\comb_222|inst|Selector28~0_combout\ & \comb_222|inst|states_Q.10~regout\)))) # (!\comb_222|inst|states_Q.01~regout\ & 
-- (\comb_222|inst|Selector28~0_combout\ & (\comb_222|inst|states_Q.10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.01~regout\,
	datab => \comb_222|inst|Selector28~0_combout\,
	datac => \comb_222|inst|states_Q.10~regout\,
	datad => \comb_222|dataRead_Q\(6),
	combout => \comb_222|inst|Selector28~1_combout\);

-- Location: LCCOMB_X30_Y16_N26
\comb_225|Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector44~0_combout\ = (\comb_225|WideOr5~combout\ & ((\comb_225|dataRead_Q\(23)) # ((\comb_221|altsyncram_component|auto_generated|q_a\(23) & \comb_225|states_Q.010~regout\)))) # (!\comb_225|WideOr5~combout\ & 
-- (\comb_221|altsyncram_component|auto_generated|q_a\(23) & ((\comb_225|states_Q.010~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|WideOr5~combout\,
	datab => \comb_221|altsyncram_component|auto_generated|q_a\(23),
	datac => \comb_225|dataRead_Q\(23),
	datad => \comb_225|states_Q.010~regout\,
	combout => \comb_225|Selector44~0_combout\);

-- Location: LCCOMB_X29_Y19_N30
\comb_222|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector24~0_combout\ = (\comb_222|states_Q.001~regout\ & \comb_221|altsyncram_component|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_222|states_Q.001~regout\,
	datad => \comb_221|altsyncram_component|auto_generated|q_a\(11),
	combout => \comb_222|Selector24~0_combout\);

-- Location: LCFF_X29_Y19_N7
\comb_222|dataRead_Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector28~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(7));

-- Location: LCCOMB_X29_Y19_N28
\comb_222|inst|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector27~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(7)))) # (!\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(3))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datab => \comb_222|inst|hexHS_Q~regout\,
	datac => \comb_222|inst|mainRegistor_Q\(3),
	datad => \comb_222|inst|mainRegistor_Q\(7),
	combout => \comb_222|inst|Selector27~0_combout\);

-- Location: LCCOMB_X29_Y19_N0
\comb_222|inst|Selector27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector27~1_combout\ = (\comb_222|dataRead_Q\(7) & ((\comb_222|inst|states_Q.01~regout\) # ((\comb_222|inst|Selector27~0_combout\ & \comb_222|inst|states_Q.10~regout\)))) # (!\comb_222|dataRead_Q\(7) & (\comb_222|inst|Selector27~0_combout\ 
-- & (\comb_222|inst|states_Q.10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|dataRead_Q\(7),
	datab => \comb_222|inst|Selector27~0_combout\,
	datac => \comb_222|inst|states_Q.10~regout\,
	datad => \comb_222|inst|states_Q.01~regout\,
	combout => \comb_222|inst|Selector27~1_combout\);

-- Location: LCCOMB_X27_Y19_N14
\comb_222|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector31~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(4) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(4),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector31~0_combout\);

-- Location: LCFF_X28_Y19_N13
\comb_222|dataRead_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector35~1_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(0));

-- Location: LCCOMB_X28_Y19_N18
\comb_222|inst|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector34~0_combout\ = (\comb_222|inst|hexHS_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(0))))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(28))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(28),
	datab => \comb_222|inst|mainRegistor_Q\(0),
	datac => \comb_222|inst|hexHS_Q~regout\,
	datad => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	combout => \comb_222|inst|Selector34~0_combout\);

-- Location: LCCOMB_X28_Y19_N30
\comb_222|inst|Selector34~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector34~1_combout\ = (\comb_222|dataRead_Q\(0) & ((\comb_222|inst|states_Q.01~regout\) # ((\comb_222|inst|Selector34~0_combout\ & \comb_222|inst|states_Q.10~regout\)))) # (!\comb_222|dataRead_Q\(0) & (\comb_222|inst|Selector34~0_combout\ 
-- & ((\comb_222|inst|states_Q.10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|dataRead_Q\(0),
	datab => \comb_222|inst|Selector34~0_combout\,
	datac => \comb_222|inst|states_Q.01~regout\,
	datad => \comb_222|inst|states_Q.10~regout\,
	combout => \comb_222|inst|Selector34~1_combout\);

-- Location: LCFF_X28_Y20_N9
\comb_225|dataWrite_Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(9));

-- Location: LCCOMB_X28_Y20_N18
\comb_222|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector30~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(5) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(5),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector30~0_combout\);

-- Location: LCFF_X28_Y20_N11
\comb_222|dataRead_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector34~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(1));

-- Location: LCCOMB_X29_Y20_N4
\comb_222|inst|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector33~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(1))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(29)))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(1),
	datab => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datac => \comb_222|inst|hexHS_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(29),
	combout => \comb_222|inst|Selector33~0_combout\);

-- Location: LCCOMB_X28_Y20_N14
\comb_222|inst|Selector33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector33~1_combout\ = (\comb_222|dataRead_Q\(1) & ((\comb_222|inst|states_Q.01~regout\) # ((\comb_222|inst|states_Q.10~regout\ & \comb_222|inst|Selector33~0_combout\)))) # (!\comb_222|dataRead_Q\(1) & (((\comb_222|inst|states_Q.10~regout\ 
-- & \comb_222|inst|Selector33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|dataRead_Q\(1),
	datab => \comb_222|inst|states_Q.01~regout\,
	datac => \comb_222|inst|states_Q.10~regout\,
	datad => \comb_222|inst|Selector33~0_combout\,
	combout => \comb_222|inst|Selector33~1_combout\);

-- Location: LCFF_X27_Y16_N15
\comb_225|dataRead_Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector53~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(14));

-- Location: LCCOMB_X27_Y16_N24
\comb_225|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector21~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(14)) # ((\comb_225|dataWrite_Q\(14) & \comb_225|WideOr4~combout\)))) # (!\comb_225|states_Q.100~regout\ & (((\comb_225|dataWrite_Q\(14) & 
-- \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|dataRead_Q\(14),
	datac => \comb_225|dataWrite_Q\(14),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector21~0_combout\);

-- Location: LCCOMB_X31_Y19_N10
\comb_222|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector29~0_combout\ = (\comb_222|states_Q.001~regout\ & \comb_221|altsyncram_component|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|states_Q.001~regout\,
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(6),
	combout => \comb_222|Selector29~0_combout\);

-- Location: LCFF_X31_Y19_N15
\comb_222|dataRead_Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector33~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(2));

-- Location: LCCOMB_X31_Y19_N20
\comb_222|inst|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector32~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(2)))) # (!\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(30))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datab => \comb_222|inst|mainRegistor_Q\(30),
	datac => \comb_222|inst|hexHS_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(2),
	combout => \comb_222|inst|Selector32~0_combout\);

-- Location: LCCOMB_X31_Y19_N26
\comb_222|inst|Selector32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector32~1_combout\ = (\comb_222|inst|states_Q.10~regout\ & ((\comb_222|inst|Selector32~0_combout\) # ((\comb_222|dataRead_Q\(2) & \comb_222|inst|states_Q.01~regout\)))) # (!\comb_222|inst|states_Q.10~regout\ & (\comb_222|dataRead_Q\(2) & 
-- ((\comb_222|inst|states_Q.01~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.10~regout\,
	datab => \comb_222|dataRead_Q\(2),
	datac => \comb_222|inst|Selector32~0_combout\,
	datad => \comb_222|inst|states_Q.01~regout\,
	combout => \comb_222|inst|Selector32~1_combout\);

-- Location: LCCOMB_X29_Y19_N6
\comb_222|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector28~0_combout\ = (\comb_222|states_Q.001~regout\ & \comb_221|altsyncram_component|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|states_Q.001~regout\,
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(7),
	combout => \comb_222|Selector28~0_combout\);

-- Location: LCFF_X30_Y19_N5
\comb_222|dataRead_Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector32~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(3));

-- Location: LCCOMB_X30_Y19_N14
\comb_222|inst|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector31~0_combout\ = (\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(3))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(31)))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(3),
	datab => \comb_222|inst|hexHS_Q~regout\,
	datac => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(31),
	combout => \comb_222|inst|Selector31~0_combout\);

-- Location: LCCOMB_X30_Y19_N12
\comb_222|inst|Selector31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector31~1_combout\ = (\comb_222|inst|states_Q.10~regout\ & ((\comb_222|inst|Selector31~0_combout\) # ((\comb_222|dataRead_Q\(3) & \comb_222|inst|states_Q.01~regout\)))) # (!\comb_222|inst|states_Q.10~regout\ & (\comb_222|dataRead_Q\(3) & 
-- ((\comb_222|inst|states_Q.01~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.10~regout\,
	datab => \comb_222|dataRead_Q\(3),
	datac => \comb_222|inst|Selector31~0_combout\,
	datad => \comb_222|inst|states_Q.01~regout\,
	combout => \comb_222|inst|Selector31~1_combout\);

-- Location: LCFF_X28_Y16_N9
\comb_225|dataRead_Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector59~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(8));

-- Location: LCCOMB_X28_Y19_N12
\comb_222|Selector35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector35~1_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(0) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_221|altsyncram_component|auto_generated|q_a\(0),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector35~1_combout\);

-- Location: LCFF_X28_Y20_N17
\comb_225|dataRead_Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector58~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(9));

-- Location: LCCOMB_X28_Y20_N8
\comb_225|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector26~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(9)) # ((\comb_225|dataWrite_Q\(9) & \comb_225|WideOr4~combout\)))) # (!\comb_225|states_Q.100~regout\ & (((\comb_225|dataWrite_Q\(9) & 
-- \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|dataRead_Q\(9),
	datac => \comb_225|dataWrite_Q\(9),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector26~0_combout\);

-- Location: LCCOMB_X28_Y20_N10
\comb_222|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector34~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(1) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(1),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector34~0_combout\);

-- Location: LCCOMB_X27_Y16_N14
\comb_225|Selector53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector53~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(14) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|dataRead_Q\(14) & \comb_225|WideOr5~combout\)))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(14) & 
-- (((\comb_225|dataRead_Q\(14) & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(14),
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|dataRead_Q\(14),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector53~0_combout\);

-- Location: LCCOMB_X31_Y19_N14
\comb_222|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector33~0_combout\ = (\comb_222|states_Q.001~regout\ & \comb_221|altsyncram_component|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|states_Q.001~regout\,
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(2),
	combout => \comb_222|Selector33~0_combout\);

-- Location: LCFF_X29_Y19_N13
\comb_225|dataRead_Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector56~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(11));

-- Location: LCCOMB_X30_Y19_N4
\comb_222|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector32~0_combout\ = (\comb_222|states_Q.001~regout\ & \comb_221|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|states_Q.001~regout\,
	datad => \comb_221|altsyncram_component|auto_generated|q_a\(3),
	combout => \comb_222|Selector32~0_combout\);

-- Location: LCCOMB_X28_Y16_N8
\comb_225|Selector59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector59~0_combout\ = (\comb_225|states_Q.010~regout\ & ((\comb_221|altsyncram_component|auto_generated|q_a\(8)) # ((\comb_225|dataRead_Q\(8) & \comb_225|WideOr5~combout\)))) # (!\comb_225|states_Q.010~regout\ & (((\comb_225|dataRead_Q\(8) & 
-- \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.010~regout\,
	datab => \comb_221|altsyncram_component|auto_generated|q_a\(8),
	datac => \comb_225|dataRead_Q\(8),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector59~0_combout\);

-- Location: LCCOMB_X28_Y20_N16
\comb_225|Selector58~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector58~0_combout\ = (\comb_225|states_Q.010~regout\ & ((\comb_221|altsyncram_component|auto_generated|q_a\(9)) # ((\comb_225|WideOr5~combout\ & \comb_225|dataRead_Q\(9))))) # (!\comb_225|states_Q.010~regout\ & (\comb_225|WideOr5~combout\ & 
-- (\comb_225|dataRead_Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.010~regout\,
	datab => \comb_225|WideOr5~combout\,
	datac => \comb_225|dataRead_Q\(9),
	datad => \comb_221|altsyncram_component|auto_generated|q_a\(9),
	combout => \comb_225|Selector58~0_combout\);

-- Location: LCCOMB_X29_Y19_N12
\comb_225|Selector56~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector56~0_combout\ = (\comb_225|states_Q.010~regout\ & ((\comb_221|altsyncram_component|auto_generated|q_a\(11)) # ((\comb_225|dataRead_Q\(11) & \comb_225|WideOr5~combout\)))) # (!\comb_225|states_Q.010~regout\ & (((\comb_225|dataRead_Q\(11) 
-- & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.010~regout\,
	datab => \comb_221|altsyncram_component|auto_generated|q_a\(11),
	datac => \comb_225|dataRead_Q\(11),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector56~0_combout\);

-- Location: LCCOMB_X32_Y17_N2
\comb_224|data_out~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~33_combout\ = (\comb_224|data_out~6_combout\ & (\comb_224|data_out~32_combout\ $ (((\comb_224|last_data_received\(5) & !\comb_224|last_data_received\(6)))))) # (!\comb_224|data_out~6_combout\ & (\comb_224|last_data_received\(5) & 
-- (!\comb_224|last_data_received\(6) & \comb_224|data_out~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(5),
	datab => \comb_224|last_data_received\(6),
	datac => \comb_224|data_out~6_combout\,
	datad => \comb_224|data_out~32_combout\,
	combout => \comb_224|data_out~33_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[12]~I\ : cycloneii_io
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
	padio => ww_SW(12),
	combout => \SW~combout\(12));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PS2_CLK~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => PS2_CLK,
	combout => \PS2_CLK~0\);

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PS2_DAT~I\ : cycloneii_io
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
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => PS2_DAT,
	combout => \PS2_DAT~0\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
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
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: PLL_1
\VGA|mypll|altpll_component|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 16,
	c0_initial => 1,
	c0_low => 16,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 20000,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 16,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 5370,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	inclk => \VGA|mypll|altpll_component|pll_INCLK_bus\,
	clk => \VGA|mypll|altpll_component|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\VGA|mypll|altpll_component|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \VGA|mypll|altpll_component|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X64_Y27_N4
\VGA|controller|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~0_combout\ = \VGA|controller|xCounter\(0) $ (VCC)
-- \VGA|controller|Add0~1\ = CARRY(\VGA|controller|xCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|xCounter\(0),
	datad => VCC,
	combout => \VGA|controller|Add0~0_combout\,
	cout => \VGA|controller|Add0~1\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCFF_X64_Y27_N5
\VGA|controller|xCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|Add0~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|xCounter\(0));

-- Location: LCCOMB_X64_Y27_N6
\VGA|controller|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~2_combout\ = (\VGA|controller|xCounter\(1) & (!\VGA|controller|Add0~1\)) # (!\VGA|controller|xCounter\(1) & ((\VGA|controller|Add0~1\) # (GND)))
-- \VGA|controller|Add0~3\ = CARRY((!\VGA|controller|Add0~1\) # (!\VGA|controller|xCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|xCounter\(1),
	datad => VCC,
	cin => \VGA|controller|Add0~1\,
	combout => \VGA|controller|Add0~2_combout\,
	cout => \VGA|controller|Add0~3\);

-- Location: LCCOMB_X64_Y27_N8
\VGA|controller|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~4_combout\ = (\VGA|controller|xCounter\(2) & (\VGA|controller|Add0~3\ $ (GND))) # (!\VGA|controller|xCounter\(2) & (!\VGA|controller|Add0~3\ & VCC))
-- \VGA|controller|Add0~5\ = CARRY((\VGA|controller|xCounter\(2) & !\VGA|controller|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|xCounter\(2),
	datad => VCC,
	cin => \VGA|controller|Add0~3\,
	combout => \VGA|controller|Add0~4_combout\,
	cout => \VGA|controller|Add0~5\);

-- Location: LCFF_X64_Y27_N9
\VGA|controller|xCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|Add0~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|xCounter\(2));

-- Location: LCCOMB_X64_Y27_N10
\VGA|controller|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~6_combout\ = (\VGA|controller|xCounter\(3) & (!\VGA|controller|Add0~5\)) # (!\VGA|controller|xCounter\(3) & ((\VGA|controller|Add0~5\) # (GND)))
-- \VGA|controller|Add0~7\ = CARRY((!\VGA|controller|Add0~5\) # (!\VGA|controller|xCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|xCounter\(3),
	datad => VCC,
	cin => \VGA|controller|Add0~5\,
	combout => \VGA|controller|Add0~6_combout\,
	cout => \VGA|controller|Add0~7\);

-- Location: LCCOMB_X64_Y27_N12
\VGA|controller|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~8_combout\ = (\VGA|controller|xCounter\(4) & (\VGA|controller|Add0~7\ $ (GND))) # (!\VGA|controller|xCounter\(4) & (!\VGA|controller|Add0~7\ & VCC))
-- \VGA|controller|Add0~9\ = CARRY((\VGA|controller|xCounter\(4) & !\VGA|controller|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|xCounter\(4),
	datad => VCC,
	cin => \VGA|controller|Add0~7\,
	combout => \VGA|controller|Add0~8_combout\,
	cout => \VGA|controller|Add0~9\);

-- Location: LCCOMB_X64_Y27_N14
\VGA|controller|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~10_combout\ = (\VGA|controller|xCounter\(5) & (!\VGA|controller|Add0~9\)) # (!\VGA|controller|xCounter\(5) & ((\VGA|controller|Add0~9\) # (GND)))
-- \VGA|controller|Add0~11\ = CARRY((!\VGA|controller|Add0~9\) # (!\VGA|controller|xCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|xCounter\(5),
	datad => VCC,
	cin => \VGA|controller|Add0~9\,
	combout => \VGA|controller|Add0~10_combout\,
	cout => \VGA|controller|Add0~11\);

-- Location: LCCOMB_X64_Y27_N30
\VGA|controller|xCounter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|xCounter~2_combout\ = (\VGA|controller|Add0~10_combout\ & !\VGA|controller|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|controller|Add0~10_combout\,
	datad => \VGA|controller|Equal0~2_combout\,
	combout => \VGA|controller|xCounter~2_combout\);

-- Location: LCFF_X64_Y27_N31
\VGA|controller|xCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|xCounter~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|xCounter\(5));

-- Location: LCCOMB_X64_Y27_N16
\VGA|controller|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~12_combout\ = (\VGA|controller|xCounter\(6) & (\VGA|controller|Add0~11\ $ (GND))) # (!\VGA|controller|xCounter\(6) & (!\VGA|controller|Add0~11\ & VCC))
-- \VGA|controller|Add0~13\ = CARRY((\VGA|controller|xCounter\(6) & !\VGA|controller|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|xCounter\(6),
	datad => VCC,
	cin => \VGA|controller|Add0~11\,
	combout => \VGA|controller|Add0~12_combout\,
	cout => \VGA|controller|Add0~13\);

-- Location: LCFF_X64_Y27_N17
\VGA|controller|xCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|Add0~12_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|xCounter\(6));

-- Location: LCFF_X64_Y27_N7
\VGA|controller|xCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|Add0~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|xCounter\(1));

-- Location: LCCOMB_X61_Y27_N26
\VGA|controller|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Equal0~0_combout\ = (!\VGA|controller|xCounter\(5) & (\VGA|controller|xCounter\(0) & (!\VGA|controller|xCounter\(6) & \VGA|controller|xCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|xCounter\(5),
	datab => \VGA|controller|xCounter\(0),
	datac => \VGA|controller|xCounter\(6),
	datad => \VGA|controller|xCounter\(1),
	combout => \VGA|controller|Equal0~0_combout\);

-- Location: LCFF_X64_Y27_N11
\VGA|controller|xCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|Add0~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|xCounter\(3));

-- Location: LCCOMB_X61_Y27_N18
\VGA|controller|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Equal0~2_combout\ = (\VGA|controller|Equal0~1_combout\ & (\VGA|controller|Equal0~0_combout\ & (\VGA|controller|xCounter\(3) & \VGA|controller|xCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|Equal0~1_combout\,
	datab => \VGA|controller|Equal0~0_combout\,
	datac => \VGA|controller|xCounter\(3),
	datad => \VGA|controller|xCounter\(2),
	combout => \VGA|controller|Equal0~2_combout\);

-- Location: LCCOMB_X64_Y27_N18
\VGA|controller|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~14_combout\ = (\VGA|controller|xCounter\(7) & (!\VGA|controller|Add0~13\)) # (!\VGA|controller|xCounter\(7) & ((\VGA|controller|Add0~13\) # (GND)))
-- \VGA|controller|Add0~15\ = CARRY((!\VGA|controller|Add0~13\) # (!\VGA|controller|xCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|xCounter\(7),
	datad => VCC,
	cin => \VGA|controller|Add0~13\,
	combout => \VGA|controller|Add0~14_combout\,
	cout => \VGA|controller|Add0~15\);

-- Location: LCFF_X64_Y27_N19
\VGA|controller|xCounter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|Add0~14_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|xCounter\(7));

-- Location: LCCOMB_X64_Y27_N20
\VGA|controller|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~16_combout\ = (\VGA|controller|xCounter\(8) & (\VGA|controller|Add0~15\ $ (GND))) # (!\VGA|controller|xCounter\(8) & (!\VGA|controller|Add0~15\ & VCC))
-- \VGA|controller|Add0~17\ = CARRY((\VGA|controller|xCounter\(8) & !\VGA|controller|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|xCounter\(8),
	datad => VCC,
	cin => \VGA|controller|Add0~15\,
	combout => \VGA|controller|Add0~16_combout\,
	cout => \VGA|controller|Add0~17\);

-- Location: LCCOMB_X63_Y27_N8
\VGA|controller|xCounter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|xCounter~1_combout\ = (!\VGA|controller|Equal0~2_combout\ & \VGA|controller|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|Equal0~2_combout\,
	datac => \VGA|controller|Add0~16_combout\,
	combout => \VGA|controller|xCounter~1_combout\);

-- Location: LCFF_X62_Y27_N7
\VGA|controller|xCounter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \VGA|controller|xCounter~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|xCounter\(8));

-- Location: LCFF_X64_Y27_N13
\VGA|controller|xCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|Add0~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|xCounter\(4));

-- Location: LCCOMB_X61_Y27_N2
\VGA|controller|VGA_HS1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_HS1~0_combout\ = (\VGA|controller|xCounter\(2)) # ((\VGA|controller|xCounter\(3)) # ((\VGA|controller|xCounter\(0) & \VGA|controller|xCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|xCounter\(2),
	datab => \VGA|controller|xCounter\(0),
	datac => \VGA|controller|xCounter\(3),
	datad => \VGA|controller|xCounter\(1),
	combout => \VGA|controller|VGA_HS1~0_combout\);

-- Location: LCCOMB_X61_Y27_N20
\VGA|controller|VGA_HS1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_HS1~1_combout\ = (\VGA|controller|xCounter\(5) & (\VGA|controller|xCounter\(4) & (\VGA|controller|xCounter\(6) & \VGA|controller|VGA_HS1~0_combout\))) # (!\VGA|controller|xCounter\(5) & (!\VGA|controller|xCounter\(6) & 
-- ((!\VGA|controller|VGA_HS1~0_combout\) # (!\VGA|controller|xCounter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|xCounter\(5),
	datab => \VGA|controller|xCounter\(4),
	datac => \VGA|controller|xCounter\(6),
	datad => \VGA|controller|VGA_HS1~0_combout\,
	combout => \VGA|controller|VGA_HS1~1_combout\);

-- Location: LCCOMB_X61_Y27_N0
\VGA|controller|VGA_HS1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_HS1~2_combout\ = ((\VGA|controller|xCounter\(8)) # ((\VGA|controller|VGA_HS1~1_combout\) # (!\VGA|controller|xCounter\(7)))) # (!\VGA|controller|xCounter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|xCounter\(9),
	datab => \VGA|controller|xCounter\(8),
	datac => \VGA|controller|VGA_HS1~1_combout\,
	datad => \VGA|controller|xCounter\(7),
	combout => \VGA|controller|VGA_HS1~2_combout\);

-- Location: LCFF_X61_Y27_N1
\VGA|controller|VGA_HS1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|VGA_HS1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|VGA_HS1~regout\);

-- Location: LCCOMB_X57_Y28_N4
\VGA|controller|VGA_HS~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_HS~feeder_combout\ = \VGA|controller|VGA_HS1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|VGA_HS1~regout\,
	combout => \VGA|controller|VGA_HS~feeder_combout\);

-- Location: LCFF_X57_Y28_N5
\VGA|controller|VGA_HS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|VGA_HS~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|VGA_HS~regout\);

-- Location: LCCOMB_X63_Y27_N12
\VGA|controller|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~0_combout\ = \VGA|controller|yCounter\(0) $ (VCC)
-- \VGA|controller|Add1~1\ = CARRY(\VGA|controller|yCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(0),
	datad => VCC,
	combout => \VGA|controller|Add1~0_combout\,
	cout => \VGA|controller|Add1~1\);

-- Location: LCCOMB_X63_Y27_N14
\VGA|controller|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~2_combout\ = (\VGA|controller|yCounter\(1) & (!\VGA|controller|Add1~1\)) # (!\VGA|controller|yCounter\(1) & ((\VGA|controller|Add1~1\) # (GND)))
-- \VGA|controller|Add1~3\ = CARRY((!\VGA|controller|Add1~1\) # (!\VGA|controller|yCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(1),
	datad => VCC,
	cin => \VGA|controller|Add1~1\,
	combout => \VGA|controller|Add1~2_combout\,
	cout => \VGA|controller|Add1~3\);

-- Location: LCCOMB_X63_Y27_N16
\VGA|controller|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~4_combout\ = (\VGA|controller|yCounter\(2) & (\VGA|controller|Add1~3\ $ (GND))) # (!\VGA|controller|yCounter\(2) & (!\VGA|controller|Add1~3\ & VCC))
-- \VGA|controller|Add1~5\ = CARRY((\VGA|controller|yCounter\(2) & !\VGA|controller|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|yCounter\(2),
	datad => VCC,
	cin => \VGA|controller|Add1~3\,
	combout => \VGA|controller|Add1~4_combout\,
	cout => \VGA|controller|Add1~5\);

-- Location: LCCOMB_X63_Y27_N2
\VGA|controller|yCounter[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|yCounter[2]~6_combout\ = (\VGA|controller|Equal0~2_combout\ & (!\VGA|controller|always1~2_combout\ & (\VGA|controller|Add1~4_combout\))) # (!\VGA|controller|Equal0~2_combout\ & (((\VGA|controller|yCounter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|Equal0~2_combout\,
	datab => \VGA|controller|always1~2_combout\,
	datac => \VGA|controller|Add1~4_combout\,
	datad => \VGA|controller|yCounter\(2),
	combout => \VGA|controller|yCounter[2]~6_combout\);

-- Location: LCFF_X64_Y27_N21
\VGA|controller|yCounter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \VGA|controller|yCounter[2]~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|yCounter\(2));

-- Location: LCCOMB_X63_Y27_N18
\VGA|controller|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~6_combout\ = (\VGA|controller|yCounter\(3) & (!\VGA|controller|Add1~5\)) # (!\VGA|controller|yCounter\(3) & ((\VGA|controller|Add1~5\) # (GND)))
-- \VGA|controller|Add1~7\ = CARRY((!\VGA|controller|Add1~5\) # (!\VGA|controller|yCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(3),
	datad => VCC,
	cin => \VGA|controller|Add1~5\,
	combout => \VGA|controller|Add1~6_combout\,
	cout => \VGA|controller|Add1~7\);

-- Location: LCCOMB_X63_Y27_N20
\VGA|controller|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~8_combout\ = (\VGA|controller|yCounter\(4) & (\VGA|controller|Add1~7\ $ (GND))) # (!\VGA|controller|yCounter\(4) & (!\VGA|controller|Add1~7\ & VCC))
-- \VGA|controller|Add1~9\ = CARRY((\VGA|controller|yCounter\(4) & !\VGA|controller|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|yCounter\(4),
	datad => VCC,
	cin => \VGA|controller|Add1~7\,
	combout => \VGA|controller|Add1~8_combout\,
	cout => \VGA|controller|Add1~9\);

-- Location: LCCOMB_X64_Y27_N24
\VGA|controller|yCounter[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|yCounter[4]~4_combout\ = (\VGA|controller|Equal0~2_combout\ & (!\VGA|controller|always1~2_combout\ & ((\VGA|controller|Add1~8_combout\)))) # (!\VGA|controller|Equal0~2_combout\ & (((\VGA|controller|yCounter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|always1~2_combout\,
	datab => \VGA|controller|Equal0~2_combout\,
	datac => \VGA|controller|yCounter\(4),
	datad => \VGA|controller|Add1~8_combout\,
	combout => \VGA|controller|yCounter[4]~4_combout\);

-- Location: LCFF_X64_Y27_N25
\VGA|controller|yCounter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|yCounter[4]~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|yCounter\(4));

-- Location: LCCOMB_X63_Y27_N22
\VGA|controller|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~10_combout\ = (\VGA|controller|yCounter\(5) & (!\VGA|controller|Add1~9\)) # (!\VGA|controller|yCounter\(5) & ((\VGA|controller|Add1~9\) # (GND)))
-- \VGA|controller|Add1~11\ = CARRY((!\VGA|controller|Add1~9\) # (!\VGA|controller|yCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|yCounter\(5),
	datad => VCC,
	cin => \VGA|controller|Add1~9\,
	combout => \VGA|controller|Add1~10_combout\,
	cout => \VGA|controller|Add1~11\);

-- Location: LCCOMB_X63_Y27_N0
\VGA|controller|yCounter[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|yCounter[5]~3_combout\ = (\VGA|controller|Equal0~2_combout\ & (((\VGA|controller|Add1~10_combout\ & !\VGA|controller|always1~2_combout\)))) # (!\VGA|controller|Equal0~2_combout\ & (\VGA|controller|yCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|Equal0~2_combout\,
	datab => \VGA|controller|yCounter\(5),
	datac => \VGA|controller|Add1~10_combout\,
	datad => \VGA|controller|always1~2_combout\,
	combout => \VGA|controller|yCounter[5]~3_combout\);

-- Location: LCFF_X64_Y27_N23
\VGA|controller|yCounter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \VGA|controller|yCounter[5]~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|yCounter\(5));

-- Location: LCCOMB_X63_Y27_N24
\VGA|controller|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~12_combout\ = (\VGA|controller|yCounter\(6) & (\VGA|controller|Add1~11\ $ (GND))) # (!\VGA|controller|yCounter\(6) & (!\VGA|controller|Add1~11\ & VCC))
-- \VGA|controller|Add1~13\ = CARRY((\VGA|controller|yCounter\(6) & !\VGA|controller|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|yCounter\(6),
	datad => VCC,
	cin => \VGA|controller|Add1~11\,
	combout => \VGA|controller|Add1~12_combout\,
	cout => \VGA|controller|Add1~13\);

-- Location: LCCOMB_X62_Y27_N20
\VGA|controller|yCounter[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|yCounter[6]~2_combout\ = (\VGA|controller|Equal0~2_combout\ & (!\VGA|controller|always1~2_combout\ & ((\VGA|controller|Add1~12_combout\)))) # (!\VGA|controller|Equal0~2_combout\ & (((\VGA|controller|yCounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|Equal0~2_combout\,
	datab => \VGA|controller|always1~2_combout\,
	datac => \VGA|controller|yCounter\(6),
	datad => \VGA|controller|Add1~12_combout\,
	combout => \VGA|controller|yCounter[6]~2_combout\);

-- Location: LCFF_X62_Y27_N21
\VGA|controller|yCounter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|yCounter[6]~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|yCounter\(6));

-- Location: LCCOMB_X63_Y27_N26
\VGA|controller|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~14_combout\ = (\VGA|controller|yCounter\(7) & (!\VGA|controller|Add1~13\)) # (!\VGA|controller|yCounter\(7) & ((\VGA|controller|Add1~13\) # (GND)))
-- \VGA|controller|Add1~15\ = CARRY((!\VGA|controller|Add1~13\) # (!\VGA|controller|yCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(7),
	datad => VCC,
	cin => \VGA|controller|Add1~13\,
	combout => \VGA|controller|Add1~14_combout\,
	cout => \VGA|controller|Add1~15\);

-- Location: LCCOMB_X63_Y27_N28
\VGA|controller|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~16_combout\ = (\VGA|controller|yCounter\(8) & (\VGA|controller|Add1~15\ $ (GND))) # (!\VGA|controller|yCounter\(8) & (!\VGA|controller|Add1~15\ & VCC))
-- \VGA|controller|Add1~17\ = CARRY((\VGA|controller|yCounter\(8) & !\VGA|controller|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|yCounter\(8),
	datad => VCC,
	cin => \VGA|controller|Add1~15\,
	combout => \VGA|controller|Add1~16_combout\,
	cout => \VGA|controller|Add1~17\);

-- Location: LCCOMB_X64_Y27_N0
\VGA|controller|yCounter[8]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|yCounter[8]~0_combout\ = (\VGA|controller|Equal0~2_combout\ & (!\VGA|controller|always1~2_combout\ & ((\VGA|controller|Add1~16_combout\)))) # (!\VGA|controller|Equal0~2_combout\ & (((\VGA|controller|yCounter\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|always1~2_combout\,
	datab => \VGA|controller|Equal0~2_combout\,
	datac => \VGA|controller|yCounter\(8),
	datad => \VGA|controller|Add1~16_combout\,
	combout => \VGA|controller|yCounter[8]~0_combout\);

-- Location: LCFF_X64_Y27_N1
\VGA|controller|yCounter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|yCounter[8]~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|yCounter\(8));

-- Location: LCCOMB_X63_Y27_N30
\VGA|controller|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add1~18_combout\ = \VGA|controller|Add1~17\ $ (\VGA|controller|yCounter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|yCounter\(9),
	cin => \VGA|controller|Add1~17\,
	combout => \VGA|controller|Add1~18_combout\);

-- Location: LCCOMB_X62_Y27_N28
\VGA|controller|yCounter[9]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|yCounter[9]~7_combout\ = (\VGA|controller|Equal0~2_combout\ & (!\VGA|controller|always1~2_combout\ & ((\VGA|controller|Add1~18_combout\)))) # (!\VGA|controller|Equal0~2_combout\ & (((\VGA|controller|yCounter\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|Equal0~2_combout\,
	datab => \VGA|controller|always1~2_combout\,
	datac => \VGA|controller|yCounter\(9),
	datad => \VGA|controller|Add1~18_combout\,
	combout => \VGA|controller|yCounter[9]~7_combout\);

-- Location: LCFF_X62_Y27_N29
\VGA|controller|yCounter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|yCounter[9]~7_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|yCounter\(9));

-- Location: LCCOMB_X63_Y27_N10
\VGA|controller|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~0_combout\ = (\VGA|controller|yCounter\(3) & (!\VGA|controller|yCounter\(4) & (\VGA|controller|yCounter\(9) & \VGA|controller|yCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(3),
	datab => \VGA|controller|yCounter\(4),
	datac => \VGA|controller|yCounter\(9),
	datad => \VGA|controller|yCounter\(2),
	combout => \VGA|controller|always1~0_combout\);

-- Location: LCCOMB_X64_Y27_N26
\VGA|controller|yCounter[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|yCounter[7]~1_combout\ = (\VGA|controller|Equal0~2_combout\ & (!\VGA|controller|always1~2_combout\ & ((\VGA|controller|Add1~14_combout\)))) # (!\VGA|controller|Equal0~2_combout\ & (((\VGA|controller|yCounter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|always1~2_combout\,
	datab => \VGA|controller|Equal0~2_combout\,
	datac => \VGA|controller|yCounter\(7),
	datad => \VGA|controller|Add1~14_combout\,
	combout => \VGA|controller|yCounter[7]~1_combout\);

-- Location: LCFF_X64_Y27_N27
\VGA|controller|yCounter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|yCounter[7]~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|yCounter\(7));

-- Location: LCCOMB_X62_Y27_N12
\VGA|controller|always1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~1_combout\ = (!\VGA|controller|yCounter\(1) & (!\VGA|controller|yCounter\(0) & (!\VGA|controller|yCounter\(8) & !\VGA|controller|yCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(1),
	datab => \VGA|controller|yCounter\(0),
	datac => \VGA|controller|yCounter\(8),
	datad => \VGA|controller|yCounter\(7),
	combout => \VGA|controller|always1~1_combout\);

-- Location: LCCOMB_X62_Y27_N22
\VGA|controller|always1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|always1~2_combout\ = (!\VGA|controller|yCounter\(6) & (\VGA|controller|always1~0_combout\ & (!\VGA|controller|yCounter\(5) & \VGA|controller|always1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(6),
	datab => \VGA|controller|always1~0_combout\,
	datac => \VGA|controller|yCounter\(5),
	datad => \VGA|controller|always1~1_combout\,
	combout => \VGA|controller|always1~2_combout\);

-- Location: LCCOMB_X62_Y27_N30
\VGA|controller|yCounter[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|yCounter[0]~9_combout\ = (\VGA|controller|Equal0~2_combout\ & (\VGA|controller|Add1~0_combout\ & ((!\VGA|controller|always1~2_combout\)))) # (!\VGA|controller|Equal0~2_combout\ & (((\VGA|controller|yCounter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|Equal0~2_combout\,
	datab => \VGA|controller|Add1~0_combout\,
	datac => \VGA|controller|yCounter\(0),
	datad => \VGA|controller|always1~2_combout\,
	combout => \VGA|controller|yCounter[0]~9_combout\);

-- Location: LCFF_X62_Y27_N31
\VGA|controller|yCounter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|yCounter[0]~9_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|yCounter\(0));

-- Location: LCCOMB_X62_Y27_N24
\VGA|controller|VGA_VS1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_VS1~1_combout\ = (\VGA|controller|yCounter\(5) & (\VGA|controller|yCounter\(8) & (\VGA|controller|yCounter\(6) & \VGA|controller|yCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(5),
	datab => \VGA|controller|yCounter\(8),
	datac => \VGA|controller|yCounter\(6),
	datad => \VGA|controller|yCounter\(7),
	combout => \VGA|controller|VGA_VS1~1_combout\);

-- Location: LCCOMB_X63_Y27_N6
\VGA|controller|yCounter[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|yCounter[1]~8_combout\ = (\VGA|controller|Equal0~2_combout\ & (((\VGA|controller|Add1~2_combout\ & !\VGA|controller|always1~2_combout\)))) # (!\VGA|controller|Equal0~2_combout\ & (\VGA|controller|yCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(1),
	datab => \VGA|controller|Equal0~2_combout\,
	datac => \VGA|controller|Add1~2_combout\,
	datad => \VGA|controller|always1~2_combout\,
	combout => \VGA|controller|yCounter[1]~8_combout\);

-- Location: LCFF_X64_Y27_N15
\VGA|controller|yCounter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \VGA|controller|yCounter[1]~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|yCounter\(1));

-- Location: LCCOMB_X62_Y27_N8
\VGA|controller|VGA_VS1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_VS1~2_combout\ = (\VGA|controller|VGA_VS1~0_combout\) # ((\VGA|controller|yCounter\(0) $ (!\VGA|controller|yCounter\(1))) # (!\VGA|controller|VGA_VS1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|VGA_VS1~0_combout\,
	datab => \VGA|controller|yCounter\(0),
	datac => \VGA|controller|VGA_VS1~1_combout\,
	datad => \VGA|controller|yCounter\(1),
	combout => \VGA|controller|VGA_VS1~2_combout\);

-- Location: LCFF_X62_Y27_N9
\VGA|controller|VGA_VS1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|VGA_VS1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|VGA_VS1~regout\);

-- Location: LCCOMB_X61_Y28_N16
\VGA|controller|VGA_VS~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_VS~feeder_combout\ = \VGA|controller|VGA_VS1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|VGA_VS1~regout\,
	combout => \VGA|controller|VGA_VS~feeder_combout\);

-- Location: LCFF_X61_Y28_N17
\VGA|controller|VGA_VS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|VGA_VS~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|VGA_VS~regout\);

-- Location: LCCOMB_X64_Y27_N22
\VGA|controller|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|Add0~18_combout\ = \VGA|controller|Add0~17\ $ (\VGA|controller|xCounter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|xCounter\(9),
	cin => \VGA|controller|Add0~17\,
	combout => \VGA|controller|Add0~18_combout\);

-- Location: LCCOMB_X64_Y27_N28
\VGA|controller|xCounter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|xCounter~0_combout\ = (!\VGA|controller|Equal0~2_combout\ & \VGA|controller|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|Equal0~2_combout\,
	datad => \VGA|controller|Add0~18_combout\,
	combout => \VGA|controller|xCounter~0_combout\);

-- Location: LCFF_X64_Y27_N29
\VGA|controller|xCounter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|xCounter~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|xCounter\(9));

-- Location: LCCOMB_X62_Y27_N18
\VGA|controller|VGA_BLANK1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_BLANK1~0_combout\ = (!\VGA|controller|yCounter\(9) & (((!\VGA|controller|xCounter\(8) & !\VGA|controller|xCounter\(7))) # (!\VGA|controller|xCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|xCounter\(8),
	datab => \VGA|controller|yCounter\(9),
	datac => \VGA|controller|xCounter\(9),
	datad => \VGA|controller|xCounter\(7),
	combout => \VGA|controller|VGA_BLANK1~0_combout\);

-- Location: LCCOMB_X62_Y27_N2
\VGA|controller|VGA_BLANK1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_BLANK1~1_combout\ = (!\VGA|controller|VGA_VS1~1_combout\ & \VGA|controller|VGA_BLANK1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|controller|VGA_VS1~1_combout\,
	datad => \VGA|controller|VGA_BLANK1~0_combout\,
	combout => \VGA|controller|VGA_BLANK1~1_combout\);

-- Location: LCFF_X62_Y27_N3
\VGA|controller|VGA_BLANK1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|VGA_BLANK1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|VGA_BLANK1~regout\);

-- Location: LCCOMB_X61_Y28_N30
\VGA|controller|VGA_BLANK~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|VGA_BLANK~feeder_combout\ = \VGA|controller|VGA_BLANK1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|VGA_BLANK1~regout\,
	combout => \VGA|controller|VGA_BLANK~feeder_combout\);

-- Location: LCFF_X61_Y28_N31
\VGA|controller|VGA_BLANK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|VGA_BLANK~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|VGA_BLANK~regout\);

-- Location: LCCOMB_X64_Y27_N2
\VGA|controller|yCounter[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|yCounter[3]~5_combout\ = (\VGA|controller|Equal0~2_combout\ & (!\VGA|controller|always1~2_combout\ & ((\VGA|controller|Add1~6_combout\)))) # (!\VGA|controller|Equal0~2_combout\ & (((\VGA|controller|yCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|always1~2_combout\,
	datab => \VGA|controller|Equal0~2_combout\,
	datac => \VGA|controller|yCounter\(3),
	datad => \VGA|controller|Add1~6_combout\,
	combout => \VGA|controller|yCounter[3]~5_combout\);

-- Location: LCFF_X64_Y27_N3
\VGA|controller|yCounter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|controller|yCounter[3]~5_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|controller|yCounter\(3));

-- Location: LCCOMB_X55_Y27_N8
\VGA|controller|controller_translator|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add0~0_combout\ = (\VGA|controller|yCounter\(4) & (\VGA|controller|yCounter\(2) $ (VCC))) # (!\VGA|controller|yCounter\(4) & (\VGA|controller|yCounter\(2) & VCC))
-- \VGA|controller|controller_translator|Add0~1\ = CARRY((\VGA|controller|yCounter\(4) & \VGA|controller|yCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(4),
	datab => \VGA|controller|yCounter\(2),
	datad => VCC,
	combout => \VGA|controller|controller_translator|Add0~0_combout\,
	cout => \VGA|controller|controller_translator|Add0~1\);

-- Location: LCCOMB_X55_Y27_N12
\VGA|controller|controller_translator|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add0~4_combout\ = ((\VGA|controller|yCounter\(4) $ (\VGA|controller|yCounter\(6) $ (!\VGA|controller|controller_translator|Add0~3\)))) # (GND)
-- \VGA|controller|controller_translator|Add0~5\ = CARRY((\VGA|controller|yCounter\(4) & ((\VGA|controller|yCounter\(6)) # (!\VGA|controller|controller_translator|Add0~3\))) # (!\VGA|controller|yCounter\(4) & (\VGA|controller|yCounter\(6) & 
-- !\VGA|controller|controller_translator|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(4),
	datab => \VGA|controller|yCounter\(6),
	datad => VCC,
	cin => \VGA|controller|controller_translator|Add0~3\,
	combout => \VGA|controller|controller_translator|Add0~4_combout\,
	cout => \VGA|controller|controller_translator|Add0~5\);

-- Location: LCCOMB_X55_Y27_N14
\VGA|controller|controller_translator|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add0~6_combout\ = (\VGA|controller|yCounter\(5) & ((\VGA|controller|yCounter\(7) & (\VGA|controller|controller_translator|Add0~5\ & VCC)) # (!\VGA|controller|yCounter\(7) & 
-- (!\VGA|controller|controller_translator|Add0~5\)))) # (!\VGA|controller|yCounter\(5) & ((\VGA|controller|yCounter\(7) & (!\VGA|controller|controller_translator|Add0~5\)) # (!\VGA|controller|yCounter\(7) & ((\VGA|controller|controller_translator|Add0~5\) # 
-- (GND)))))
-- \VGA|controller|controller_translator|Add0~7\ = CARRY((\VGA|controller|yCounter\(5) & (!\VGA|controller|yCounter\(7) & !\VGA|controller|controller_translator|Add0~5\)) # (!\VGA|controller|yCounter\(5) & ((!\VGA|controller|controller_translator|Add0~5\) # 
-- (!\VGA|controller|yCounter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(5),
	datab => \VGA|controller|yCounter\(7),
	datad => VCC,
	cin => \VGA|controller|controller_translator|Add0~5\,
	combout => \VGA|controller|controller_translator|Add0~6_combout\,
	cout => \VGA|controller|controller_translator|Add0~7\);

-- Location: LCCOMB_X55_Y27_N16
\VGA|controller|controller_translator|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add0~8_combout\ = ((\VGA|controller|yCounter\(8) $ (\VGA|controller|yCounter\(6) $ (!\VGA|controller|controller_translator|Add0~7\)))) # (GND)
-- \VGA|controller|controller_translator|Add0~9\ = CARRY((\VGA|controller|yCounter\(8) & ((\VGA|controller|yCounter\(6)) # (!\VGA|controller|controller_translator|Add0~7\))) # (!\VGA|controller|yCounter\(8) & (\VGA|controller|yCounter\(6) & 
-- !\VGA|controller|controller_translator|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(8),
	datab => \VGA|controller|yCounter\(6),
	datad => VCC,
	cin => \VGA|controller|controller_translator|Add0~7\,
	combout => \VGA|controller|controller_translator|Add0~8_combout\,
	cout => \VGA|controller|controller_translator|Add0~9\);

-- Location: LCCOMB_X55_Y27_N18
\VGA|controller|controller_translator|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add0~10_combout\ = (\VGA|controller|yCounter\(7) & (!\VGA|controller|controller_translator|Add0~9\)) # (!\VGA|controller|yCounter\(7) & ((\VGA|controller|controller_translator|Add0~9\) # (GND)))
-- \VGA|controller|controller_translator|Add0~11\ = CARRY((!\VGA|controller|controller_translator|Add0~9\) # (!\VGA|controller|yCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(7),
	datad => VCC,
	cin => \VGA|controller|controller_translator|Add0~9\,
	combout => \VGA|controller|controller_translator|Add0~10_combout\,
	cout => \VGA|controller|controller_translator|Add0~11\);

-- Location: LCCOMB_X55_Y27_N22
\VGA|controller|controller_translator|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|Add0~14_combout\ = \VGA|controller|controller_translator|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \VGA|controller|controller_translator|Add0~13\,
	combout => \VGA|controller|controller_translator|Add0~14_combout\);

-- Location: LCCOMB_X51_Y27_N0
\VGA|controller|controller_translator|mem_address[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|mem_address[5]~0_combout\ = (\VGA|controller|yCounter\(2) & (\VGA|controller|xCounter\(7) $ (VCC))) # (!\VGA|controller|yCounter\(2) & (\VGA|controller|xCounter\(7) & VCC))
-- \VGA|controller|controller_translator|mem_address[5]~1\ = CARRY((\VGA|controller|yCounter\(2) & \VGA|controller|xCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|yCounter\(2),
	datab => \VGA|controller|xCounter\(7),
	datad => VCC,
	combout => \VGA|controller|controller_translator|mem_address[5]~0_combout\,
	cout => \VGA|controller|controller_translator|mem_address[5]~1\);

-- Location: LCCOMB_X51_Y27_N2
\VGA|controller|controller_translator|mem_address[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|mem_address[6]~2_combout\ = (\VGA|controller|xCounter\(8) & ((\VGA|controller|yCounter\(3) & (\VGA|controller|controller_translator|mem_address[5]~1\ & VCC)) # (!\VGA|controller|yCounter\(3) & 
-- (!\VGA|controller|controller_translator|mem_address[5]~1\)))) # (!\VGA|controller|xCounter\(8) & ((\VGA|controller|yCounter\(3) & (!\VGA|controller|controller_translator|mem_address[5]~1\)) # (!\VGA|controller|yCounter\(3) & 
-- ((\VGA|controller|controller_translator|mem_address[5]~1\) # (GND)))))
-- \VGA|controller|controller_translator|mem_address[6]~3\ = CARRY((\VGA|controller|xCounter\(8) & (!\VGA|controller|yCounter\(3) & !\VGA|controller|controller_translator|mem_address[5]~1\)) # (!\VGA|controller|xCounter\(8) & 
-- ((!\VGA|controller|controller_translator|mem_address[5]~1\) # (!\VGA|controller|yCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|xCounter\(8),
	datab => \VGA|controller|yCounter\(3),
	datad => VCC,
	cin => \VGA|controller|controller_translator|mem_address[5]~1\,
	combout => \VGA|controller|controller_translator|mem_address[6]~2_combout\,
	cout => \VGA|controller|controller_translator|mem_address[6]~3\);

-- Location: LCCOMB_X51_Y27_N4
\VGA|controller|controller_translator|mem_address[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|mem_address[7]~4_combout\ = ((\VGA|controller|xCounter\(9) $ (\VGA|controller|controller_translator|Add0~0_combout\ $ (!\VGA|controller|controller_translator|mem_address[6]~3\)))) # (GND)
-- \VGA|controller|controller_translator|mem_address[7]~5\ = CARRY((\VGA|controller|xCounter\(9) & ((\VGA|controller|controller_translator|Add0~0_combout\) # (!\VGA|controller|controller_translator|mem_address[6]~3\))) # (!\VGA|controller|xCounter\(9) & 
-- (\VGA|controller|controller_translator|Add0~0_combout\ & !\VGA|controller|controller_translator|mem_address[6]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|xCounter\(9),
	datab => \VGA|controller|controller_translator|Add0~0_combout\,
	datad => VCC,
	cin => \VGA|controller|controller_translator|mem_address[6]~3\,
	combout => \VGA|controller|controller_translator|mem_address[7]~4_combout\,
	cout => \VGA|controller|controller_translator|mem_address[7]~5\);

-- Location: LCCOMB_X51_Y27_N6
\VGA|controller|controller_translator|mem_address[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|mem_address[8]~6_combout\ = (\VGA|controller|controller_translator|Add0~2_combout\ & (!\VGA|controller|controller_translator|mem_address[7]~5\)) # (!\VGA|controller|controller_translator|Add0~2_combout\ & 
-- ((\VGA|controller|controller_translator|mem_address[7]~5\) # (GND)))
-- \VGA|controller|controller_translator|mem_address[8]~7\ = CARRY((!\VGA|controller|controller_translator|mem_address[7]~5\) # (!\VGA|controller|controller_translator|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|Add0~2_combout\,
	datad => VCC,
	cin => \VGA|controller|controller_translator|mem_address[7]~5\,
	combout => \VGA|controller|controller_translator|mem_address[8]~6_combout\,
	cout => \VGA|controller|controller_translator|mem_address[8]~7\);

-- Location: LCCOMB_X51_Y27_N8
\VGA|controller|controller_translator|mem_address[9]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|mem_address[9]~8_combout\ = (\VGA|controller|controller_translator|Add0~4_combout\ & (\VGA|controller|controller_translator|mem_address[8]~7\ $ (GND))) # (!\VGA|controller|controller_translator|Add0~4_combout\ & 
-- (!\VGA|controller|controller_translator|mem_address[8]~7\ & VCC))
-- \VGA|controller|controller_translator|mem_address[9]~9\ = CARRY((\VGA|controller|controller_translator|Add0~4_combout\ & !\VGA|controller|controller_translator|mem_address[8]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|controller_translator|Add0~4_combout\,
	datad => VCC,
	cin => \VGA|controller|controller_translator|mem_address[8]~7\,
	combout => \VGA|controller|controller_translator|mem_address[9]~8_combout\,
	cout => \VGA|controller|controller_translator|mem_address[9]~9\);

-- Location: LCCOMB_X51_Y27_N10
\VGA|controller|controller_translator|mem_address[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|mem_address[10]~10_combout\ = (\VGA|controller|controller_translator|Add0~6_combout\ & (!\VGA|controller|controller_translator|mem_address[9]~9\)) # (!\VGA|controller|controller_translator|Add0~6_combout\ & 
-- ((\VGA|controller|controller_translator|mem_address[9]~9\) # (GND)))
-- \VGA|controller|controller_translator|mem_address[10]~11\ = CARRY((!\VGA|controller|controller_translator|mem_address[9]~9\) # (!\VGA|controller|controller_translator|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|controller_translator|Add0~6_combout\,
	datad => VCC,
	cin => \VGA|controller|controller_translator|mem_address[9]~9\,
	combout => \VGA|controller|controller_translator|mem_address[10]~10_combout\,
	cout => \VGA|controller|controller_translator|mem_address[10]~11\);

-- Location: LCCOMB_X51_Y27_N12
\VGA|controller|controller_translator|mem_address[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|mem_address[11]~12_combout\ = (\VGA|controller|controller_translator|Add0~8_combout\ & (\VGA|controller|controller_translator|mem_address[10]~11\ $ (GND))) # (!\VGA|controller|controller_translator|Add0~8_combout\ & 
-- (!\VGA|controller|controller_translator|mem_address[10]~11\ & VCC))
-- \VGA|controller|controller_translator|mem_address[11]~13\ = CARRY((\VGA|controller|controller_translator|Add0~8_combout\ & !\VGA|controller|controller_translator|mem_address[10]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|controller_translator|Add0~8_combout\,
	datad => VCC,
	cin => \VGA|controller|controller_translator|mem_address[10]~11\,
	combout => \VGA|controller|controller_translator|mem_address[11]~12_combout\,
	cout => \VGA|controller|controller_translator|mem_address[11]~13\);

-- Location: LCCOMB_X51_Y27_N14
\VGA|controller|controller_translator|mem_address[12]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|mem_address[12]~14_combout\ = (\VGA|controller|controller_translator|Add0~10_combout\ & (!\VGA|controller|controller_translator|mem_address[11]~13\)) # (!\VGA|controller|controller_translator|Add0~10_combout\ & 
-- ((\VGA|controller|controller_translator|mem_address[11]~13\) # (GND)))
-- \VGA|controller|controller_translator|mem_address[12]~15\ = CARRY((!\VGA|controller|controller_translator|mem_address[11]~13\) # (!\VGA|controller|controller_translator|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|controller_translator|Add0~10_combout\,
	datad => VCC,
	cin => \VGA|controller|controller_translator|mem_address[11]~13\,
	combout => \VGA|controller|controller_translator|mem_address[12]~14_combout\,
	cout => \VGA|controller|controller_translator|mem_address[12]~15\);

-- Location: LCCOMB_X51_Y27_N16
\VGA|controller|controller_translator|mem_address[13]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|mem_address[13]~16_combout\ = (\VGA|controller|controller_translator|Add0~12_combout\ & (\VGA|controller|controller_translator|mem_address[12]~15\ $ (GND))) # (!\VGA|controller|controller_translator|Add0~12_combout\ & 
-- (!\VGA|controller|controller_translator|mem_address[12]~15\ & VCC))
-- \VGA|controller|controller_translator|mem_address[13]~17\ = CARRY((\VGA|controller|controller_translator|Add0~12_combout\ & !\VGA|controller|controller_translator|mem_address[12]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|controller|controller_translator|Add0~12_combout\,
	datad => VCC,
	cin => \VGA|controller|controller_translator|mem_address[12]~15\,
	combout => \VGA|controller|controller_translator|mem_address[13]~16_combout\,
	cout => \VGA|controller|controller_translator|mem_address[13]~17\);

-- Location: LCCOMB_X51_Y27_N18
\VGA|controller|controller_translator|mem_address[14]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|controller|controller_translator|mem_address[14]~18_combout\ = \VGA|controller|controller_translator|mem_address[13]~17\ $ (\VGA|controller|controller_translator|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|controller_translator|Add0~14_combout\,
	cin => \VGA|controller|controller_translator|mem_address[13]~17\,
	combout => \VGA|controller|controller_translator|mem_address[14]~18_combout\);

-- Location: LCCOMB_X50_Y27_N12
\VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a[2]~feeder_combout\ = \VGA|controller|controller_translator|mem_address[14]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|controller|controller_translator|mem_address[14]~18_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a[2]~feeder_combout\);

-- Location: LCFF_X50_Y27_N13
\VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a\(2));

-- Location: LCCOMB_X50_Y27_N16
\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[2]~feeder_combout\ = \VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a\(2),
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[2]~feeder_combout\);

-- Location: LCFF_X50_Y27_N17
\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2));

-- Location: LCCOMB_X37_Y23_N0
\comb_222|inst|comb_18|shiftEnable_D~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|shiftEnable_D~2_combout\ = (\comb_222|inst|comb_18|counter_Q\(0) & (\comb_222|inst|comb_18|counter_Q\(2) & \comb_222|inst|comb_18|counter_Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|counter_Q\(0),
	datac => \comb_222|inst|comb_18|counter_Q\(2),
	datad => \comb_222|inst|comb_18|counter_Q\(1),
	combout => \comb_222|inst|comb_18|shiftEnable_D~2_combout\);

-- Location: LCCOMB_X35_Y24_N12
\comb_222|inst|comb_18|shiftEnable_D~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|shiftEnable_D~3_combout\ = (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|comb_18|shiftEnable_Q~regout\) # ((!\comb_222|inst|comb_18|always0~0_combout\ & \comb_222|inst|comb_18|shiftEnable_D~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|always0~0_combout\,
	datab => \comb_222|inst|hexHS_Q~regout\,
	datac => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datad => \comb_222|inst|comb_18|shiftEnable_D~2_combout\,
	combout => \comb_222|inst|comb_18|shiftEnable_D~3_combout\);

-- Location: LCFF_X35_Y24_N13
\comb_222|inst|comb_18|shiftEnable_Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|comb_18|shiftEnable_D~3_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|comb_18|shiftEnable_Q~regout\);

-- Location: LCCOMB_X36_Y27_N24
\comb_222|inst|hexHS_Q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|hexHS_Q~feeder_combout\ = \comb_222|inst|comb_18|shiftEnable_Q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	combout => \comb_222|inst|hexHS_Q~feeder_combout\);

-- Location: LCCOMB_X36_Y27_N26
\comb_222|inst|counter_D[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|counter_D[0]~2_combout\ = (\comb_222|inst|states_Q.10~regout\ & (!\comb_222|inst|counter_Q\(0) & \KEY~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|inst|states_Q.10~regout\,
	datac => \comb_222|inst|counter_Q\(0),
	datad => \KEY~combout\(0),
	combout => \comb_222|inst|counter_D[0]~2_combout\);

-- Location: LCCOMB_X36_Y27_N8
\comb_222|inst|counter_Q[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|counter_Q[1]~0_combout\ = (((!\comb_222|inst|hexHS_Q~regout\ & \comb_222|inst|comb_18|shiftEnable_Q~regout\)) # (!\comb_222|inst|states_Q.10~regout\)) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|hexHS_Q~regout\,
	datab => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datac => \KEY~combout\(0),
	datad => \comb_222|inst|states_Q.10~regout\,
	combout => \comb_222|inst|counter_Q[1]~0_combout\);

-- Location: LCFF_X36_Y27_N27
\comb_222|inst|counter_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|counter_D[0]~2_combout\,
	ena => \comb_222|inst|counter_Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|counter_Q\(0));

-- Location: LCCOMB_X36_Y27_N0
\comb_222|inst|counter_D[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|counter_D[1]~1_combout\ = (\comb_222|inst|states_Q.10~regout\ & (\KEY~combout\(0) & (\comb_222|inst|counter_Q\(0) $ (\comb_222|inst|counter_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.10~regout\,
	datab => \comb_222|inst|counter_Q\(0),
	datac => \comb_222|inst|counter_Q\(1),
	datad => \KEY~combout\(0),
	combout => \comb_222|inst|counter_D[1]~1_combout\);

-- Location: LCFF_X36_Y27_N1
\comb_222|inst|counter_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|counter_D[1]~1_combout\,
	ena => \comb_222|inst|counter_Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|counter_Q\(1));

-- Location: LCCOMB_X36_Y27_N14
\comb_222|inst|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|always0~0_combout\ = (\comb_222|inst|hexHS_Q~regout\) # (!\comb_222|inst|comb_18|shiftEnable_Q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datac => \comb_222|inst|hexHS_Q~regout\,
	combout => \comb_222|inst|always0~0_combout\);

-- Location: LCCOMB_X36_Y27_N4
\comb_222|inst|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector2~0_combout\ = (\comb_222|inst|counter_Q\(2) & (\comb_222|inst|counter_Q\(1) & (!\comb_222|inst|always0~0_combout\ & \comb_222|inst|counter_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|counter_Q\(2),
	datab => \comb_222|inst|counter_Q\(1),
	datac => \comb_222|inst|always0~0_combout\,
	datad => \comb_222|inst|counter_Q\(0),
	combout => \comb_222|inst|Selector2~0_combout\);

-- Location: LCCOMB_X30_Y24_N2
\comb_222|inst|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector2~1_combout\ = (\comb_222|inst|states_Q.10~regout\ & ((\comb_222|inst|Selector2~0_combout\) # ((\comb_222|states_Q.010~regout\ & \comb_222|inst|states_Q.11~regout\)))) # (!\comb_222|inst|states_Q.10~regout\ & 
-- (\comb_222|states_Q.010~regout\ & (\comb_222|inst|states_Q.11~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.10~regout\,
	datab => \comb_222|states_Q.010~regout\,
	datac => \comb_222|inst|states_Q.11~regout\,
	datad => \comb_222|inst|Selector2~0_combout\,
	combout => \comb_222|inst|Selector2~1_combout\);

-- Location: LCFF_X30_Y24_N3
\comb_222|inst|states_Q.11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector2~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|states_Q.11~regout\);

-- Location: LCCOMB_X30_Y24_N18
\comb_222|inst|acknowledge\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|acknowledge~combout\ = (\KEY~combout\(0) & ((\comb_222|inst|states_Q.11~regout\))) # (!\KEY~combout\(0) & (\comb_222|inst|acknowledge~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|inst|acknowledge~combout\,
	datac => \KEY~combout\(0),
	datad => \comb_222|inst|states_Q.11~regout\,
	combout => \comb_222|inst|acknowledge~combout\);

-- Location: LCCOMB_X30_Y24_N14
\comb_222|states_D.011~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|states_D.011~0_combout\ = (\comb_222|states_Q.010~regout\ & \comb_222|inst|acknowledge~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_222|states_Q.010~regout\,
	datad => \comb_222|inst|acknowledge~combout\,
	combout => \comb_222|states_D.011~0_combout\);

-- Location: LCFF_X30_Y24_N15
\comb_222|states_Q.011\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|states_D.011~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|states_Q.011~regout\);

-- Location: LCCOMB_X31_Y20_N22
\comb_222|count_D~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|count_D~0_combout\ = (\comb_222|states_Q.010~regout\) # (\comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|states_Q.010~regout\,
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|count_D~0_combout\);

-- Location: LCCOMB_X30_Y21_N28
\comb_222|Selector38~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector38~2_combout\ = (\comb_222|count_Q\(1) & ((\comb_222|count_D~0_combout\) # ((!\comb_222|count_Q\(0) & \comb_222|states_Q.011~regout\)))) # (!\comb_222|count_Q\(1) & (\comb_222|count_Q\(0) & (\comb_222|states_Q.011~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|count_Q\(0),
	datab => \comb_222|states_Q.011~regout\,
	datac => \comb_222|count_Q\(1),
	datad => \comb_222|count_D~0_combout\,
	combout => \comb_222|Selector38~2_combout\);

-- Location: LCFF_X30_Y21_N29
\comb_222|count_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector38~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|count_Q\(1));

-- Location: LCCOMB_X31_Y20_N0
\comb_222|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector39~0_combout\ = (\comb_222|count_Q\(0) & ((\comb_222|states_Q.010~regout\) # ((\comb_222|states_Q.001~regout\)))) # (!\comb_222|count_Q\(0) & (((\comb_222|states_Q.011~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|states_Q.010~regout\,
	datab => \comb_222|states_Q.011~regout\,
	datac => \comb_222|count_Q\(0),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector39~0_combout\);

-- Location: LCFF_X31_Y20_N1
\comb_222|count_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|count_Q\(0));

-- Location: LCCOMB_X30_Y21_N18
\comb_222|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Add0~3_combout\ = \comb_222|count_Q\(2) $ (((!\comb_222|count_Q\(0)) # (!\comb_222|count_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|count_Q\(1),
	datac => \comb_222|count_Q\(0),
	datad => \comb_222|count_Q\(2),
	combout => \comb_222|Add0~3_combout\);

-- Location: LCCOMB_X30_Y21_N26
\comb_222|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector37~0_combout\ = (\comb_222|count_D~0_combout\ & ((\comb_222|count_Q\(2)) # ((!\comb_222|Add0~3_combout\ & \comb_222|states_Q.011~regout\)))) # (!\comb_222|count_D~0_combout\ & (!\comb_222|Add0~3_combout\ & 
-- ((\comb_222|states_Q.011~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|count_D~0_combout\,
	datab => \comb_222|Add0~3_combout\,
	datac => \comb_222|count_Q\(2),
	datad => \comb_222|states_Q.011~regout\,
	combout => \comb_222|Selector37~0_combout\);

-- Location: LCFF_X30_Y21_N27
\comb_222|count_Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|count_Q\(2));

-- Location: LCCOMB_X30_Y21_N30
\comb_222|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Add0~1_combout\ = \comb_222|count_Q\(3) $ ((((!\comb_222|count_Q\(1)) # (!\comb_222|count_Q\(2))) # (!\comb_222|count_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|count_Q\(0),
	datab => \comb_222|count_Q\(2),
	datac => \comb_222|count_Q\(3),
	datad => \comb_222|count_Q\(1),
	combout => \comb_222|Add0~1_combout\);

-- Location: LCCOMB_X30_Y21_N0
\comb_222|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector36~0_combout\ = (\comb_222|count_D~0_combout\ & ((\comb_222|count_Q\(3)) # ((!\comb_222|Add0~1_combout\ & \comb_222|states_Q.011~regout\)))) # (!\comb_222|count_D~0_combout\ & (!\comb_222|Add0~1_combout\ & 
-- ((\comb_222|states_Q.011~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|count_D~0_combout\,
	datab => \comb_222|Add0~1_combout\,
	datac => \comb_222|count_Q\(3),
	datad => \comb_222|states_Q.011~regout\,
	combout => \comb_222|Selector36~0_combout\);

-- Location: LCFF_X30_Y21_N1
\comb_222|count_Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|count_Q\(3));

-- Location: LCFF_X30_Y18_N19
\comb_224|PS2|ps2_data_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \PS2_DAT~0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|ps2_data_reg~regout\);

-- Location: LCCOMB_X30_Y17_N14
\comb_224|PS2|PS2_Data_In|data_shift_reg[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|data_shift_reg[7]~feeder_combout\ = \comb_224|PS2|ps2_data_reg~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|PS2|ps2_data_reg~regout\,
	combout => \comb_224|PS2|PS2_Data_In|data_shift_reg[7]~feeder_combout\);

-- Location: LCCOMB_X31_Y18_N8
\comb_224|PS2|ps2_clk_reg~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|ps2_clk_reg~feeder_combout\ = \PS2_CLK~0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS2_CLK~0\,
	combout => \comb_224|PS2|ps2_clk_reg~feeder_combout\);

-- Location: LCFF_X31_Y18_N9
\comb_224|PS2|ps2_clk_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|ps2_clk_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|ps2_clk_reg~regout\);

-- Location: LCCOMB_X30_Y18_N16
\comb_224|PS2|PS2_Data_In|data_count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|data_count~4_combout\ = (\comb_224|PS2|PS2_Data_In|always2~0_combout\ & (\comb_224|PS2|PS2_Data_In|always1~0_combout\ $ (\comb_224|PS2|PS2_Data_In|data_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|PS2_Data_In|always1~0_combout\,
	datac => \comb_224|PS2|PS2_Data_In|data_count\(3),
	datad => \comb_224|PS2|PS2_Data_In|always2~0_combout\,
	combout => \comb_224|PS2|PS2_Data_In|data_count~4_combout\);

-- Location: LCFF_X30_Y18_N5
\comb_224|PS2|last_ps2_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|PS2|ps2_clk_reg~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|last_ps2_clk~regout\);

-- Location: LCCOMB_X30_Y18_N4
\comb_224|PS2|PS2_Data_In|data_count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|data_count~1_combout\ = ((\comb_224|PS2|ps2_clk_reg~regout\ & !\comb_224|PS2|last_ps2_clk~regout\)) # (!\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|PS2|ps2_clk_reg~regout\,
	datac => \comb_224|PS2|last_ps2_clk~regout\,
	datad => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~regout\,
	combout => \comb_224|PS2|PS2_Data_In|data_count~1_combout\);

-- Location: LCFF_X30_Y18_N17
\comb_224|PS2|PS2_Data_In|data_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|data_count~4_combout\,
	ena => \comb_224|PS2|PS2_Data_In|data_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|data_count\(3));

-- Location: LCCOMB_X30_Y18_N30
\comb_224|PS2|PS2_Data_In|always1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|always1~1_combout\ = (\comb_224|PS2|PS2_Data_In|always1~0_combout\ & (\comb_224|PS2|ps2_clk_reg~regout\ & (!\comb_224|PS2|PS2_Data_In|data_count\(3) & !\comb_224|PS2|last_ps2_clk~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|PS2_Data_In|always1~0_combout\,
	datab => \comb_224|PS2|ps2_clk_reg~regout\,
	datac => \comb_224|PS2|PS2_Data_In|data_count\(3),
	datad => \comb_224|PS2|last_ps2_clk~regout\,
	combout => \comb_224|PS2|PS2_Data_In|always1~1_combout\);

-- Location: LCCOMB_X31_Y18_N30
\comb_224|PS2|ps2_clk_posedge\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|ps2_clk_posedge~combout\ = (\comb_224|PS2|ps2_clk_reg~regout\ & !\comb_224|PS2|last_ps2_clk~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|PS2|ps2_clk_reg~regout\,
	datac => \comb_224|PS2|last_ps2_clk~regout\,
	combout => \comb_224|PS2|ps2_clk_posedge~combout\);

-- Location: LCCOMB_X30_Y18_N14
\comb_224|PS2|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|Selector0~2_combout\ = (\comb_224|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~regout\ & (!\comb_224|PS2|PS2_Data_In|received_data_en~regout\)) # (!\comb_224|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~regout\ & 
-- (((!\comb_224|PS2|ps2_data_reg~regout\ & \comb_224|PS2|ps2_clk_posedge~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|PS2_Data_In|received_data_en~regout\,
	datab => \comb_224|PS2|ps2_data_reg~regout\,
	datac => \comb_224|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~regout\,
	datad => \comb_224|PS2|ps2_clk_posedge~combout\,
	combout => \comb_224|PS2|Selector0~2_combout\);

-- Location: LCFF_X30_Y18_N15
\comb_224|PS2|s_ps2_transceiver.PS2_STATE_0_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|s_ps2_transceiver.PS2_STATE_0_IDLE~regout\);

-- Location: LCCOMB_X30_Y18_N20
\comb_224|PS2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|Selector1~0_combout\ = (\comb_224|PS2|PS2_Data_In|Selector2~0_combout\) # ((!\comb_224|PS2|ps2_data_reg~regout\ & (!\comb_224|PS2|s_ps2_transceiver.PS2_STATE_0_IDLE~regout\ & \comb_224|PS2|ps2_clk_posedge~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|PS2_Data_In|Selector2~0_combout\,
	datab => \comb_224|PS2|ps2_data_reg~regout\,
	datac => \comb_224|PS2|s_ps2_transceiver.PS2_STATE_0_IDLE~regout\,
	datad => \comb_224|PS2|ps2_clk_posedge~combout\,
	combout => \comb_224|PS2|Selector1~0_combout\);

-- Location: LCFF_X30_Y18_N21
\comb_224|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~regout\);

-- Location: LCCOMB_X30_Y18_N22
\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~0_combout\ = (\comb_224|PS2|ps2_clk_reg~regout\ & ((\comb_224|PS2|last_ps2_clk~regout\ & ((\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\))) # 
-- (!\comb_224|PS2|last_ps2_clk~regout\ & (\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_3_PARITY_IN~regout\)))) # (!\comb_224|PS2|ps2_clk_reg~regout\ & (((\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_3_PARITY_IN~regout\,
	datab => \comb_224|PS2|ps2_clk_reg~regout\,
	datac => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\,
	datad => \comb_224|PS2|last_ps2_clk~regout\,
	combout => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~0_combout\);

-- Location: LCFF_X30_Y18_N23
\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\);

-- Location: LCCOMB_X30_Y18_N8
\comb_224|PS2|PS2_Data_In|always5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|always5~0_combout\ = (!\comb_224|PS2|last_ps2_clk~regout\ & (\comb_224|PS2|ps2_clk_reg~regout\ & \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|last_ps2_clk~regout\,
	datab => \comb_224|PS2|ps2_clk_reg~regout\,
	datac => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\,
	combout => \comb_224|PS2|PS2_Data_In|always5~0_combout\);

-- Location: LCFF_X30_Y18_N9
\comb_224|PS2|PS2_Data_In|received_data_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|always5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|received_data_en~regout\);

-- Location: LCCOMB_X30_Y18_N2
\comb_224|PS2|PS2_Data_In|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|Selector2~0_combout\ = (\comb_224|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~regout\ & !\comb_224|PS2|PS2_Data_In|received_data_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_224|PS2|s_ps2_transceiver.PS2_STATE_1_DATA_IN~regout\,
	datad => \comb_224|PS2|PS2_Data_In|received_data_en~regout\,
	combout => \comb_224|PS2|PS2_Data_In|Selector2~0_combout\);

-- Location: LCCOMB_X30_Y18_N28
\comb_224|PS2|PS2_Data_In|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|Selector2~1_combout\ = (\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE~regout\ & (!\comb_224|PS2|PS2_Data_In|always1~1_combout\ & (\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~regout\))) # 
-- (!\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE~regout\ & ((\comb_224|PS2|PS2_Data_In|Selector2~0_combout\) # ((!\comb_224|PS2|PS2_Data_In|always1~1_combout\ & \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_0_IDLE~regout\,
	datab => \comb_224|PS2|PS2_Data_In|always1~1_combout\,
	datac => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~regout\,
	datad => \comb_224|PS2|PS2_Data_In|Selector2~0_combout\,
	combout => \comb_224|PS2|PS2_Data_In|Selector2~1_combout\);

-- Location: LCFF_X30_Y18_N29
\comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~regout\);

-- Location: LCCOMB_X30_Y18_N18
\comb_224|PS2|PS2_Data_In|always2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|always2~0_combout\ = (!\comb_224|PS2|last_ps2_clk~regout\ & (\comb_224|PS2|ps2_clk_reg~regout\ & \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|last_ps2_clk~regout\,
	datab => \comb_224|PS2|ps2_clk_reg~regout\,
	datad => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_2_DATA_IN~regout\,
	combout => \comb_224|PS2|PS2_Data_In|always2~0_combout\);

-- Location: LCFF_X30_Y17_N15
\comb_224|PS2|PS2_Data_In|data_shift_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|data_shift_reg[7]~feeder_combout\,
	ena => \comb_224|PS2|PS2_Data_In|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|data_shift_reg\(7));

-- Location: LCCOMB_X30_Y17_N18
\comb_224|PS2|PS2_Data_In|data_shift_reg[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|data_shift_reg[6]~feeder_combout\ = \comb_224|PS2|PS2_Data_In|data_shift_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|PS2|PS2_Data_In|data_shift_reg\(7),
	combout => \comb_224|PS2|PS2_Data_In|data_shift_reg[6]~feeder_combout\);

-- Location: LCFF_X30_Y17_N19
\comb_224|PS2|PS2_Data_In|data_shift_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|data_shift_reg[6]~feeder_combout\,
	ena => \comb_224|PS2|PS2_Data_In|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|data_shift_reg\(6));

-- Location: LCCOMB_X30_Y17_N16
\comb_224|PS2|PS2_Data_In|data_shift_reg[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|data_shift_reg[5]~feeder_combout\ = \comb_224|PS2|PS2_Data_In|data_shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|PS2|PS2_Data_In|data_shift_reg\(6),
	combout => \comb_224|PS2|PS2_Data_In|data_shift_reg[5]~feeder_combout\);

-- Location: LCFF_X30_Y17_N17
\comb_224|PS2|PS2_Data_In|data_shift_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|data_shift_reg[5]~feeder_combout\,
	ena => \comb_224|PS2|PS2_Data_In|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|data_shift_reg\(5));

-- Location: LCFF_X30_Y17_N31
\comb_224|PS2|PS2_Data_In|data_shift_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|PS2|PS2_Data_In|data_shift_reg\(5),
	sload => VCC,
	ena => \comb_224|PS2|PS2_Data_In|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|data_shift_reg\(4));

-- Location: LCCOMB_X30_Y17_N12
\comb_224|PS2|PS2_Data_In|data_shift_reg[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|data_shift_reg[3]~feeder_combout\ = \comb_224|PS2|PS2_Data_In|data_shift_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|PS2|PS2_Data_In|data_shift_reg\(4),
	combout => \comb_224|PS2|PS2_Data_In|data_shift_reg[3]~feeder_combout\);

-- Location: LCFF_X30_Y17_N13
\comb_224|PS2|PS2_Data_In|data_shift_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|data_shift_reg[3]~feeder_combout\,
	ena => \comb_224|PS2|PS2_Data_In|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|data_shift_reg\(3));

-- Location: LCCOMB_X30_Y17_N0
\comb_224|PS2|PS2_Data_In|received_data[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|received_data[3]~feeder_combout\ = \comb_224|PS2|PS2_Data_In|data_shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|PS2|PS2_Data_In|data_shift_reg\(3),
	combout => \comb_224|PS2|PS2_Data_In|received_data[3]~feeder_combout\);

-- Location: LCFF_X30_Y17_N1
\comb_224|PS2|PS2_Data_In|received_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|received_data[3]~feeder_combout\,
	ena => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|received_data\(3));

-- Location: LCCOMB_X30_Y17_N8
\comb_224|PS2|PS2_Data_In|data_shift_reg[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|data_shift_reg[2]~feeder_combout\ = \comb_224|PS2|PS2_Data_In|data_shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|PS2|PS2_Data_In|data_shift_reg\(3),
	combout => \comb_224|PS2|PS2_Data_In|data_shift_reg[2]~feeder_combout\);

-- Location: LCFF_X30_Y17_N9
\comb_224|PS2|PS2_Data_In|data_shift_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|data_shift_reg[2]~feeder_combout\,
	ena => \comb_224|PS2|PS2_Data_In|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|data_shift_reg\(2));

-- Location: LCFF_X30_Y17_N3
\comb_224|PS2|PS2_Data_In|received_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|PS2|PS2_Data_In|data_shift_reg\(2),
	sload => VCC,
	ena => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|received_data\(2));

-- Location: LCFF_X30_Y17_N27
\comb_224|PS2|PS2_Data_In|data_shift_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|PS2|PS2_Data_In|data_shift_reg\(2),
	sload => VCC,
	ena => \comb_224|PS2|PS2_Data_In|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|data_shift_reg\(1));

-- Location: LCCOMB_X30_Y17_N22
\comb_224|PS2|PS2_Data_In|data_shift_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|data_shift_reg[0]~feeder_combout\ = \comb_224|PS2|PS2_Data_In|data_shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|PS2|PS2_Data_In|data_shift_reg\(1),
	combout => \comb_224|PS2|PS2_Data_In|data_shift_reg[0]~feeder_combout\);

-- Location: LCFF_X30_Y17_N23
\comb_224|PS2|PS2_Data_In|data_shift_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|data_shift_reg[0]~feeder_combout\,
	ena => \comb_224|PS2|PS2_Data_In|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|data_shift_reg\(0));

-- Location: LCCOMB_X30_Y17_N28
\comb_224|PS2|PS2_Data_In|received_data[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|received_data[0]~feeder_combout\ = \comb_224|PS2|PS2_Data_In|data_shift_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|PS2|PS2_Data_In|data_shift_reg\(0),
	combout => \comb_224|PS2|PS2_Data_In|received_data[0]~feeder_combout\);

-- Location: LCFF_X30_Y17_N29
\comb_224|PS2|PS2_Data_In|received_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|received_data[0]~feeder_combout\,
	ena => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|received_data\(0));

-- Location: LCCOMB_X30_Y17_N2
\comb_224|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Equal0~0_combout\ = (\comb_224|PS2|PS2_Data_In|received_data\(1)) # ((\comb_224|PS2|PS2_Data_In|received_data\(3)) # ((\comb_224|PS2|PS2_Data_In|received_data\(2)) # (\comb_224|PS2|PS2_Data_In|received_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|PS2_Data_In|received_data\(1),
	datab => \comb_224|PS2|PS2_Data_In|received_data\(3),
	datac => \comb_224|PS2|PS2_Data_In|received_data\(2),
	datad => \comb_224|PS2|PS2_Data_In|received_data\(0),
	combout => \comb_224|Equal0~0_combout\);

-- Location: LCFF_X30_Y17_N5
\comb_224|PS2|PS2_Data_In|received_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|PS2|PS2_Data_In|data_shift_reg\(5),
	sload => VCC,
	ena => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|received_data\(5));

-- Location: LCFF_X30_Y17_N11
\comb_224|PS2|PS2_Data_In|received_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|PS2|PS2_Data_In|data_shift_reg\(7),
	sload => VCC,
	ena => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|received_data\(7));

-- Location: LCFF_X30_Y17_N7
\comb_224|PS2|PS2_Data_In|received_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|PS2|PS2_Data_In|data_shift_reg\(4),
	sload => VCC,
	ena => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|received_data\(4));

-- Location: LCCOMB_X30_Y17_N10
\comb_224|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Equal0~1_combout\ = (((!\comb_224|PS2|PS2_Data_In|received_data\(4)) # (!\comb_224|PS2|PS2_Data_In|received_data\(7))) # (!\comb_224|PS2|PS2_Data_In|received_data\(5))) # (!\comb_224|PS2|PS2_Data_In|received_data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|PS2_Data_In|received_data\(6),
	datab => \comb_224|PS2|PS2_Data_In|received_data\(5),
	datac => \comb_224|PS2|PS2_Data_In|received_data\(7),
	datad => \comb_224|PS2|PS2_Data_In|received_data\(4),
	combout => \comb_224|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y17_N20
\comb_224|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Equal0~2_combout\ = (\comb_224|Equal0~0_combout\) # (\comb_224|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|Equal0~0_combout\,
	datad => \comb_224|Equal0~1_combout\,
	combout => \comb_224|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y17_N22
\comb_224|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Selector0~0_combout\ = (!\comb_224|state.10~regout\ & ((\comb_224|state.00~regout\) # ((\comb_224|PS2|PS2_Data_In|received_data_en~regout\ & !\comb_224|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|PS2_Data_In|received_data_en~regout\,
	datab => \comb_224|state.10~regout\,
	datac => \comb_224|state.00~regout\,
	datad => \comb_224|Equal0~2_combout\,
	combout => \comb_224|Selector0~0_combout\);

-- Location: LCFF_X29_Y17_N23
\comb_224|state.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|state.00~regout\);

-- Location: LCCOMB_X29_Y17_N20
\comb_224|state.01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|state.01~0_combout\ = (\comb_224|PS2|PS2_Data_In|received_data_en~regout\ & (!\comb_224|state.00~regout\ & ((!\comb_224|Equal0~2_combout\)))) # (!\comb_224|PS2|PS2_Data_In|received_data_en~regout\ & (((\comb_224|state.01~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|PS2_Data_In|received_data_en~regout\,
	datab => \comb_224|state.00~regout\,
	datac => \comb_224|state.01~regout\,
	datad => \comb_224|Equal0~2_combout\,
	combout => \comb_224|state.01~0_combout\);

-- Location: LCFF_X29_Y17_N21
\comb_224|state.01\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|state.01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|state.01~regout\);

-- Location: LCCOMB_X29_Y17_N26
\comb_224|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Selector2~0_combout\ = (\comb_224|state.01~regout\ & \comb_224|PS2|PS2_Data_In|received_data_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_224|state.01~regout\,
	datad => \comb_224|PS2|PS2_Data_In|received_data_en~regout\,
	combout => \comb_224|Selector2~0_combout\);

-- Location: LCFF_X29_Y17_N27
\comb_224|state.10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|state.10~regout\);

-- Location: LCFF_X31_Y17_N1
\comb_224|last_data_received[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|PS2|PS2_Data_In|received_data\(5),
	sload => VCC,
	ena => \comb_224|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|last_data_received\(5));

-- Location: LCFF_X31_Y17_N21
\comb_224|last_data_received[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|PS2|PS2_Data_In|received_data\(7),
	sload => VCC,
	ena => \comb_224|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|last_data_received\(7));

-- Location: LCFF_X31_Y17_N23
\comb_224|last_data_received[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|PS2|PS2_Data_In|received_data\(4),
	sload => VCC,
	ena => \comb_224|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|last_data_received\(4));

-- Location: LCFF_X31_Y17_N19
\comb_224|last_data_received[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|PS2|PS2_Data_In|received_data\(2),
	sload => VCC,
	ena => \comb_224|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|last_data_received\(2));

-- Location: LCFF_X30_Y17_N21
\comb_224|PS2|PS2_Data_In|received_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|PS2|PS2_Data_In|data_shift_reg\(1),
	sload => VCC,
	ena => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|received_data\(1));

-- Location: LCFF_X31_Y17_N9
\comb_224|last_data_received[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|PS2|PS2_Data_In|received_data\(1),
	sload => VCC,
	ena => \comb_224|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|last_data_received\(1));

-- Location: LCCOMB_X31_Y17_N18
\comb_224|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Equal1~0_combout\ = (\comb_224|last_data_received\(3) & (\comb_224|last_data_received\(4) & (!\comb_224|last_data_received\(2) & \comb_224|last_data_received\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(3),
	datab => \comb_224|last_data_received\(4),
	datac => \comb_224|last_data_received\(2),
	datad => \comb_224|last_data_received\(1),
	combout => \comb_224|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y17_N20
\comb_224|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Equal1~1_combout\ = (!\comb_224|last_data_received\(5) & (!\comb_224|last_data_received\(7) & \comb_224|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|last_data_received\(5),
	datac => \comb_224|last_data_received\(7),
	datad => \comb_224|Equal1~0_combout\,
	combout => \comb_224|Equal1~1_combout\);

-- Location: LCCOMB_X30_Y17_N24
\comb_224|PS2|PS2_Data_In|received_data[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|PS2|PS2_Data_In|received_data[6]~feeder_combout\ = \comb_224|PS2|PS2_Data_In|data_shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|PS2|PS2_Data_In|data_shift_reg\(6),
	combout => \comb_224|PS2|PS2_Data_In|received_data[6]~feeder_combout\);

-- Location: LCFF_X30_Y17_N25
\comb_224|PS2|PS2_Data_In|received_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|PS2|PS2_Data_In|received_data[6]~feeder_combout\,
	ena => \comb_224|PS2|PS2_Data_In|s_ps2_receiver.PS2_STATE_4_STOP_IN~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|PS2|PS2_Data_In|received_data\(6));

-- Location: LCFF_X31_Y17_N25
\comb_224|last_data_received[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|PS2|PS2_Data_In|received_data\(6),
	sload => VCC,
	ena => \comb_224|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|last_data_received\(6));

-- Location: LCCOMB_X31_Y17_N12
\comb_224|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Selector4~0_combout\ = (!\comb_224|last_data_received\(0) & (\comb_224|state.10~regout\ & (\comb_224|Equal1~1_combout\ & \comb_224|last_data_received\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(0),
	datab => \comb_224|state.10~regout\,
	datac => \comb_224|Equal1~1_combout\,
	datad => \comb_224|last_data_received\(6),
	combout => \comb_224|Selector4~0_combout\);

-- Location: LCCOMB_X29_Y17_N6
\comb_224|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Selector4~1_combout\ = (!\comb_224|state.10~regout\ & (\comb_224|enter~regout\ & ((\comb_224|PS2|PS2_Data_In|received_data_en~regout\) # (\comb_224|state.01~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|PS2|PS2_Data_In|received_data_en~regout\,
	datab => \comb_224|state.10~regout\,
	datac => \comb_224|state.01~regout\,
	datad => \comb_224|enter~regout\,
	combout => \comb_224|Selector4~1_combout\);

-- Location: LCCOMB_X29_Y17_N0
\comb_224|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Selector4~2_combout\ = (\comb_224|converter|WideOr4~8_combout\ & (!\comb_224|state.10~regout\ & ((\comb_224|Selector4~0_combout\) # (\comb_224|Selector4~1_combout\)))) # (!\comb_224|converter|WideOr4~8_combout\ & 
-- (((\comb_224|Selector4~0_combout\) # (\comb_224|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|converter|WideOr4~8_combout\,
	datab => \comb_224|state.10~regout\,
	datac => \comb_224|Selector4~0_combout\,
	datad => \comb_224|Selector4~1_combout\,
	combout => \comb_224|Selector4~2_combout\);

-- Location: LCFF_X29_Y17_N1
\comb_224|enter\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|enter~regout\);

-- Location: LCCOMB_X29_Y17_N4
\comb_224|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Selector3~0_combout\ = (!\comb_224|state.10~regout\ & (\comb_224|did_change~regout\ & ((\comb_224|state.01~regout\) # (\comb_224|PS2|PS2_Data_In|received_data_en~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|state.01~regout\,
	datab => \comb_224|state.10~regout\,
	datac => \comb_224|did_change~regout\,
	datad => \comb_224|PS2|PS2_Data_In|received_data_en~regout\,
	combout => \comb_224|Selector3~0_combout\);

-- Location: LCFF_X31_Y17_N29
\comb_224|last_data_received[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|PS2|PS2_Data_In|received_data\(3),
	sload => VCC,
	ena => \comb_224|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|last_data_received\(3));

-- Location: LCFF_X31_Y17_N11
\comb_224|last_data_received[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|PS2|PS2_Data_In|received_data\(0),
	sload => VCC,
	ena => \comb_224|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|last_data_received\(0));

-- Location: LCCOMB_X31_Y17_N4
\comb_224|converter|WideOr4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|converter|WideOr4~5_combout\ = (\comb_224|last_data_received\(4) & (\comb_224|last_data_received\(1) & (!\comb_224|last_data_received\(3) & !\comb_224|last_data_received\(0)))) # (!\comb_224|last_data_received\(4) & 
-- (\comb_224|last_data_received\(0) & ((\comb_224|last_data_received\(1)) # (!\comb_224|last_data_received\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(1),
	datab => \comb_224|last_data_received\(4),
	datac => \comb_224|last_data_received\(3),
	datad => \comb_224|last_data_received\(0),
	combout => \comb_224|converter|WideOr4~5_combout\);

-- Location: LCCOMB_X31_Y17_N8
\comb_224|converter|WideOr4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|converter|WideOr4~6_combout\ = (\comb_224|last_data_received\(1) & (((\comb_224|last_data_received\(0))))) # (!\comb_224|last_data_received\(1) & ((\comb_224|last_data_received\(3) & ((!\comb_224|last_data_received\(4)) # 
-- (!\comb_224|last_data_received\(0)))) # (!\comb_224|last_data_received\(3) & ((\comb_224|last_data_received\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(3),
	datab => \comb_224|last_data_received\(0),
	datac => \comb_224|last_data_received\(1),
	datad => \comb_224|last_data_received\(4),
	combout => \comb_224|converter|WideOr4~6_combout\);

-- Location: LCCOMB_X31_Y17_N14
\comb_224|converter|WideOr4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|converter|WideOr4~7_combout\ = (\comb_224|converter|WideOr4~4_combout\ & ((\comb_224|last_data_received\(2) & ((!\comb_224|converter|WideOr4~6_combout\))) # (!\comb_224|last_data_received\(2) & (\comb_224|converter|WideOr4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|converter|WideOr4~4_combout\,
	datab => \comb_224|converter|WideOr4~5_combout\,
	datac => \comb_224|converter|WideOr4~6_combout\,
	datad => \comb_224|last_data_received\(2),
	combout => \comb_224|converter|WideOr4~7_combout\);

-- Location: LCCOMB_X31_Y17_N24
\comb_224|converter|WideOr4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|converter|WideOr4~3_combout\ = (\comb_224|converter|WideOr4~2_combout\ & (!\comb_224|last_data_received\(5) & (!\comb_224|last_data_received\(6) & \comb_224|last_data_received\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|converter|WideOr4~2_combout\,
	datab => \comb_224|last_data_received\(5),
	datac => \comb_224|last_data_received\(6),
	datad => \comb_224|last_data_received\(2),
	combout => \comb_224|converter|WideOr4~3_combout\);

-- Location: LCCOMB_X31_Y17_N28
\comb_224|converter|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|converter|WideOr4~0_combout\ = (\comb_224|last_data_received\(2) & (!\comb_224|last_data_received\(3) & (\comb_224|last_data_received\(0) $ (\comb_224|last_data_received\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(0),
	datab => \comb_224|last_data_received\(2),
	datac => \comb_224|last_data_received\(3),
	datad => \comb_224|last_data_received\(1),
	combout => \comb_224|converter|WideOr4~0_combout\);

-- Location: LCCOMB_X31_Y17_N0
\comb_224|converter|WideOr4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|converter|WideOr4~1_combout\ = (\comb_224|last_data_received\(6) & (\comb_224|converter|WideOr4~0_combout\ & (!\comb_224|last_data_received\(5) & !\comb_224|last_data_received\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(6),
	datab => \comb_224|converter|WideOr4~0_combout\,
	datac => \comb_224|last_data_received\(5),
	datad => \comb_224|last_data_received\(4),
	combout => \comb_224|converter|WideOr4~1_combout\);

-- Location: LCCOMB_X31_Y17_N2
\comb_224|converter|WideOr4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|converter|WideOr4~8_combout\ = (!\comb_224|last_data_received\(7) & ((\comb_224|converter|WideOr4~7_combout\) # ((\comb_224|converter|WideOr4~3_combout\) # (\comb_224|converter|WideOr4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(7),
	datab => \comb_224|converter|WideOr4~7_combout\,
	datac => \comb_224|converter|WideOr4~3_combout\,
	datad => \comb_224|converter|WideOr4~1_combout\,
	combout => \comb_224|converter|WideOr4~8_combout\);

-- Location: LCCOMB_X29_Y17_N14
\comb_224|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Selector3~1_combout\ = (\comb_224|Selector3~0_combout\) # ((\comb_224|state.10~regout\ & \comb_224|converter|WideOr4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|state.10~regout\,
	datac => \comb_224|Selector3~0_combout\,
	datad => \comb_224|converter|WideOr4~8_combout\,
	combout => \comb_224|Selector3~1_combout\);

-- Location: LCFF_X29_Y17_N15
\comb_224|did_change\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|did_change~regout\);

-- Location: LCCOMB_X31_Y16_N8
\comb_225|states_Q.011~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|states_Q.011~0_combout\ = (\comb_225|wait_Q\(1) & ((\comb_225|wait_Q\(0) & (\comb_225|states_Q.010~regout\)) # (!\comb_225|wait_Q\(0) & ((\comb_225|states_Q.011~regout\))))) # (!\comb_225|wait_Q\(1) & (((\comb_225|states_Q.011~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|wait_Q\(1),
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|states_Q.011~regout\,
	datad => \comb_225|wait_Q\(0),
	combout => \comb_225|states_Q.011~0_combout\);

-- Location: LCFF_X31_Y16_N9
\comb_225|states_Q.011\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|states_Q.011~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|states_Q.011~regout\);

-- Location: LCCOMB_X31_Y16_N26
\comb_225|Selector70~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector70~0_combout\ = (\comb_225|count_Q\(0) & (!\comb_225|states_Q.100~regout\ & ((\comb_225|states_Q.010~regout\) # (\comb_225|states_Q.011~regout\)))) # (!\comb_225|count_Q\(0) & (((\comb_225|states_Q.100~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|count_Q\(0),
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|states_Q.100~regout\,
	datad => \comb_225|states_Q.011~regout\,
	combout => \comb_225|Selector70~0_combout\);

-- Location: CLKCTRL_G14
\comb_225|states_Q.101~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_225|states_Q.101~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_225|states_Q.101~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y16_N16
\comb_225|count_D[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|count_D\(0) = (GLOBAL(\comb_225|states_Q.101~clkctrl_outclk\) & ((\comb_225|count_D\(0)))) # (!GLOBAL(\comb_225|states_Q.101~clkctrl_outclk\) & (\comb_225|Selector70~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_225|Selector70~0_combout\,
	datac => \comb_225|count_D\(0),
	datad => \comb_225|states_Q.101~clkctrl_outclk\,
	combout => \comb_225|count_D\(0));

-- Location: LCFF_X31_Y16_N17
\comb_225|count_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|count_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|count_Q\(0));

-- Location: LCCOMB_X31_Y16_N2
\comb_225|Selector74~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector74~0_combout\ = (!\comb_225|states_Q.100~regout\ & ((\comb_225|states_Q.011~regout\) # (\comb_225|states_Q.010~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_225|states_Q.100~regout\,
	datac => \comb_225|states_Q.011~regout\,
	datad => \comb_225|states_Q.010~regout\,
	combout => \comb_225|Selector74~0_combout\);

-- Location: LCCOMB_X31_Y16_N12
\comb_225|Selector72~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector72~0_combout\ = (\comb_225|count_Q\(1) & ((\comb_225|Selector74~0_combout\) # ((!\comb_225|count_Q\(0) & \comb_225|states_Q.100~regout\)))) # (!\comb_225|count_Q\(1) & (\comb_225|count_Q\(0) & (\comb_225|states_Q.100~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|count_Q\(0),
	datab => \comb_225|states_Q.100~regout\,
	datac => \comb_225|count_Q\(1),
	datad => \comb_225|Selector74~0_combout\,
	combout => \comb_225|Selector72~0_combout\);

-- Location: LCCOMB_X31_Y16_N30
\comb_225|count_D[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|count_D\(1) = (GLOBAL(\comb_225|states_Q.101~clkctrl_outclk\) & (\comb_225|count_D\(1))) # (!GLOBAL(\comb_225|states_Q.101~clkctrl_outclk\) & ((\comb_225|Selector72~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_225|count_D\(1),
	datac => \comb_225|states_Q.101~clkctrl_outclk\,
	datad => \comb_225|Selector72~0_combout\,
	combout => \comb_225|count_D\(1));

-- Location: LCFF_X31_Y16_N31
\comb_225|count_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|count_D\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|count_Q\(1));

-- Location: LCCOMB_X31_Y16_N14
\comb_225|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Add1~0_combout\ = \comb_225|count_Q\(3) $ (((\comb_225|count_Q\(2) & (\comb_225|count_Q\(1) & \comb_225|count_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|count_Q\(2),
	datab => \comb_225|count_Q\(1),
	datac => \comb_225|count_Q\(0),
	datad => \comb_225|count_Q\(3),
	combout => \comb_225|Add1~0_combout\);

-- Location: LCCOMB_X31_Y16_N28
\comb_225|Selector74~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector74~1_combout\ = (\comb_225|count_Q\(3) & ((\comb_225|Selector74~0_combout\) # ((\comb_225|states_Q.100~regout\ & \comb_225|Add1~0_combout\)))) # (!\comb_225|count_Q\(3) & (\comb_225|states_Q.100~regout\ & (\comb_225|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|count_Q\(3),
	datab => \comb_225|states_Q.100~regout\,
	datac => \comb_225|Add1~0_combout\,
	datad => \comb_225|Selector74~0_combout\,
	combout => \comb_225|Selector74~1_combout\);

-- Location: LCCOMB_X31_Y16_N6
\comb_225|count_D[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|count_D\(3) = (GLOBAL(\comb_225|states_Q.101~clkctrl_outclk\) & (\comb_225|count_D\(3))) # (!GLOBAL(\comb_225|states_Q.101~clkctrl_outclk\) & ((\comb_225|Selector74~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_225|count_D\(3),
	datac => \comb_225|states_Q.101~clkctrl_outclk\,
	datad => \comb_225|Selector74~1_combout\,
	combout => \comb_225|count_D\(3));

-- Location: LCFF_X31_Y16_N7
\comb_225|count_Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|count_D\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|count_Q\(3));

-- Location: LCCOMB_X31_Y16_N24
\comb_225|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector3~0_combout\ = (\comb_225|count_Q\(2) & (\comb_225|count_Q\(0) & (\comb_225|count_Q\(1) & \comb_225|count_Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|count_Q\(2),
	datab => \comb_225|count_Q\(0),
	datac => \comb_225|count_Q\(1),
	datad => \comb_225|count_Q\(3),
	combout => \comb_225|Selector3~0_combout\);

-- Location: LCCOMB_X31_Y16_N22
\comb_225|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector1~1_combout\ = (\comb_225|Selector1~0_combout\) # ((\comb_225|states_Q.100~regout\ & !\comb_225|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|Selector1~0_combout\,
	datab => \comb_225|states_Q.100~regout\,
	datad => \comb_225|Selector3~0_combout\,
	combout => \comb_225|Selector1~1_combout\);

-- Location: LCFF_X31_Y16_N23
\comb_225|states_Q.010\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|states_Q.010~regout\);

-- Location: LCCOMB_X32_Y16_N4
\comb_225|Selector69~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector69~0_combout\ = (!\comb_225|wait_Q\(0) & ((\comb_225|states_Q.010~regout\) # (\comb_225|states_Q.011~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|wait_Q\(0),
	datad => \comb_225|states_Q.011~regout\,
	combout => \comb_225|Selector69~0_combout\);

-- Location: LCFF_X32_Y16_N5
\comb_225|wait_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector69~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|wait_Q\(0));

-- Location: LCCOMB_X31_Y16_N4
\comb_225|states_D.100~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|states_D.100~0_combout\ = (\comb_225|wait_Q\(1) & (\comb_225|wait_Q\(0) & \comb_225|states_Q.011~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|wait_Q\(1),
	datac => \comb_225|wait_Q\(0),
	datad => \comb_225|states_Q.011~regout\,
	combout => \comb_225|states_D.100~0_combout\);

-- Location: LCFF_X31_Y16_N5
\comb_225|states_Q.100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|states_D.100~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|states_Q.100~regout\);

-- Location: LCCOMB_X29_Y16_N28
\comb_225|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector3~1_combout\ = (\comb_225|Selector3~0_combout\ & ((\comb_225|states_Q.100~regout\) # ((\states_Q.001~regout\ & \comb_225|states_Q.101~regout\)))) # (!\comb_225|Selector3~0_combout\ & (\states_Q.001~regout\ & 
-- (\comb_225|states_Q.101~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|Selector3~0_combout\,
	datab => \states_Q.001~regout\,
	datac => \comb_225|states_Q.101~regout\,
	datad => \comb_225|states_Q.100~regout\,
	combout => \comb_225|Selector3~1_combout\);

-- Location: LCFF_X29_Y16_N29
\comb_225|states_Q.101\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|states_Q.101~regout\);

-- Location: LCCOMB_X29_Y16_N0
\Selector45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\states_Q.001~regout\ & !\comb_225|states_Q.101~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \states_Q.001~regout\,
	datad => \comb_225|states_Q.101~regout\,
	combout => \Selector45~0_combout\);

-- Location: LCCOMB_X29_Y17_N28
\Selector45~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~1_combout\ = (\Selector45~0_combout\) # ((!\states_Q.000~regout\ & (\comb_224|enter~regout\ & !\comb_224|did_change~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.000~regout\,
	datab => \comb_224|enter~regout\,
	datac => \comb_224|did_change~regout\,
	datad => \Selector45~0_combout\,
	combout => \Selector45~1_combout\);

-- Location: LCFF_X29_Y17_N29
\states_Q.001\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Selector45~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \states_Q.001~regout\);

-- Location: LCCOMB_X32_Y16_N18
\Selector46~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~2_combout\ = (\comb_222|states_Q.100~regout\ & (\states_Q.001~regout\ & (\comb_225|states_Q.101~regout\))) # (!\comb_222|states_Q.100~regout\ & ((\states_Q.010~regout\) # ((\states_Q.001~regout\ & \comb_225|states_Q.101~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|states_Q.100~regout\,
	datab => \states_Q.001~regout\,
	datac => \comb_225|states_Q.101~regout\,
	datad => \states_Q.010~regout\,
	combout => \Selector46~2_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[17]~I\ : cycloneii_io
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
	padio => ww_SW(17),
	combout => \SW~combout\(17));

-- Location: LCCOMB_X29_Y17_N10
\Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (!\states_Q.000~regout\ & (\comb_224|enter~regout\ $ (!\comb_224|did_change~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|enter~regout\,
	datac => \comb_224|did_change~regout\,
	datad => \states_Q.000~regout\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X29_Y17_N18
\Selector47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\SW~combout\(17) & ((\states_Q.011~regout\) # (\Selector44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(17),
	datac => \states_Q.011~regout\,
	datad => \Selector44~0_combout\,
	combout => \Selector47~0_combout\);

-- Location: LCFF_X29_Y17_N19
\states_Q.011\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \states_Q.011~regout\);

-- Location: LCCOMB_X29_Y17_N12
\Selector44~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~2_combout\ = (!\Selector44~1_combout\ & ((\SW~combout\(17)) # ((!\states_Q.011~regout\ & !\Selector44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~1_combout\,
	datab => \states_Q.011~regout\,
	datac => \SW~combout\(17),
	datad => \Selector44~0_combout\,
	combout => \Selector44~2_combout\);

-- Location: LCFF_X29_Y17_N13
\states_Q.000\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Selector44~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \states_Q.000~regout\);

-- Location: LCCOMB_X29_Y17_N8
\Selector48~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector48~2_combout\ = (!\comb_224|enter~regout\ & (\comb_224|did_change~regout\ & !\states_Q.000~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|enter~regout\,
	datac => \comb_224|did_change~regout\,
	datad => \states_Q.000~regout\,
	combout => \Selector48~2_combout\);

-- Location: LCCOMB_X32_Y16_N8
\wait_D[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \wait_D[1]~1_combout\ = wait_Q(0) $ (wait_Q(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wait_Q(0),
	datac => wait_Q(1),
	combout => \wait_D[1]~1_combout\);

-- Location: LCFF_X32_Y16_N9
\wait_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \wait_D[1]~1_combout\,
	sclr => \ALT_INV_states_Q.100~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => wait_Q(1));

-- Location: LCCOMB_X32_Y16_N26
\Selector48~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector48~3_combout\ = (\Selector48~2_combout\) # ((\states_Q.100~regout\ & ((!wait_Q(1)) # (!wait_Q(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wait_Q(0),
	datab => \Selector48~2_combout\,
	datac => \states_Q.100~regout\,
	datad => wait_Q(1),
	combout => \Selector48~3_combout\);

-- Location: LCFF_X32_Y16_N27
\states_Q.100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Selector48~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \states_Q.100~regout\);

-- Location: LCCOMB_X32_Y16_N6
\Selector46~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~3_combout\ = (\Selector46~2_combout\) # ((wait_Q(0) & (\states_Q.100~regout\ & wait_Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wait_Q(0),
	datab => \Selector46~2_combout\,
	datac => \states_Q.100~regout\,
	datad => wait_Q(1),
	combout => \Selector46~3_combout\);

-- Location: LCFF_X32_Y16_N7
\states_Q.010\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Selector46~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \states_Q.010~regout\);

-- Location: LCCOMB_X31_Y20_N28
\Selector44~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = (\comb_222|states_Q.100~regout\ & \states_Q.010~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_222|states_Q.100~regout\,
	datad => \states_Q.010~regout\,
	combout => \Selector44~1_combout\);

-- Location: LCCOMB_X31_Y20_N8
\comb_222|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector3~1_combout\ = (\Selector44~1_combout\) # ((\comb_222|Selector3~0_combout\ & (\comb_222|count_Q\(3) & \comb_222|states_Q.011~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|Selector3~0_combout\,
	datab => \comb_222|count_Q\(3),
	datac => \comb_222|states_Q.011~regout\,
	datad => \Selector44~1_combout\,
	combout => \comb_222|Selector3~1_combout\);

-- Location: LCFF_X31_Y20_N9
\comb_222|states_Q.100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|states_Q.100~regout\);

-- Location: LCCOMB_X31_Y20_N24
\comb_222|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector0~0_combout\ = (\states_Q.010~regout\) # ((!\comb_222|states_Q.100~regout\ & \comb_222|states_Q.000~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|states_Q.100~regout\,
	datac => \comb_222|states_Q.000~regout\,
	datad => \states_Q.010~regout\,
	combout => \comb_222|Selector0~0_combout\);

-- Location: LCFF_X31_Y20_N25
\comb_222|states_Q.000\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|states_Q.000~regout\);

-- Location: LCCOMB_X31_Y20_N6
\comb_222|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector1~0_combout\ = (\comb_222|Selector2~0_combout\ & (((!\comb_222|states_Q.000~regout\ & \states_Q.010~regout\)))) # (!\comb_222|Selector2~0_combout\ & ((\comb_222|states_Q.001~regout\) # ((!\comb_222|states_Q.000~regout\ & 
-- \states_Q.010~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|Selector2~0_combout\,
	datab => \comb_222|states_Q.001~regout\,
	datac => \comb_222|states_Q.000~regout\,
	datad => \states_Q.010~regout\,
	combout => \comb_222|Selector1~0_combout\);

-- Location: LCCOMB_X31_Y20_N18
\comb_222|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector1~1_combout\ = (\comb_222|Selector1~0_combout\) # ((\comb_222|states_Q.011~regout\ & ((!\comb_222|count_Q\(3)) # (!\comb_222|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|Selector3~0_combout\,
	datab => \comb_222|count_Q\(3),
	datac => \comb_222|states_Q.011~regout\,
	datad => \comb_222|Selector1~0_combout\,
	combout => \comb_222|Selector1~1_combout\);

-- Location: LCFF_X31_Y20_N19
\comb_222|states_Q.001\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|states_Q.001~regout\);

-- Location: LCCOMB_X31_Y22_N2
\comb_222|wait_D[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|wait_D[0]~0_combout\ = (\comb_222|states_Q.001~regout\ & !\comb_222|wait_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|states_Q.001~regout\,
	datac => \comb_222|wait_Q\(0),
	combout => \comb_222|wait_D[0]~0_combout\);

-- Location: LCFF_X31_Y22_N3
\comb_222|wait_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|wait_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|wait_Q\(0));

-- Location: LCCOMB_X31_Y22_N0
\comb_222|wait_D[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|wait_D[1]~1_combout\ = \comb_222|wait_Q\(1) $ (\comb_222|wait_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_222|wait_Q\(1),
	datad => \comb_222|wait_Q\(0),
	combout => \comb_222|wait_D[1]~1_combout\);

-- Location: LCFF_X31_Y22_N1
\comb_222|wait_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|wait_D[1]~1_combout\,
	sclr => \comb_222|ALT_INV_states_Q.001~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|wait_Q\(1));

-- Location: LCCOMB_X31_Y22_N12
\comb_222|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector2~0_combout\ = (\comb_222|wait_Q\(1) & \comb_222|wait_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|wait_Q\(1),
	datad => \comb_222|wait_Q\(0),
	combout => \comb_222|Selector2~0_combout\);

-- Location: LCCOMB_X30_Y24_N8
\comb_222|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector2~1_combout\ = (\comb_222|states_Q.001~regout\ & ((\comb_222|Selector2~0_combout\) # ((\comb_222|states_Q.010~regout\ & !\comb_222|inst|acknowledge~combout\)))) # (!\comb_222|states_Q.001~regout\ & (((\comb_222|states_Q.010~regout\ & 
-- !\comb_222|inst|acknowledge~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|states_Q.001~regout\,
	datab => \comb_222|Selector2~0_combout\,
	datac => \comb_222|states_Q.010~regout\,
	datad => \comb_222|inst|acknowledge~combout\,
	combout => \comb_222|Selector2~1_combout\);

-- Location: LCFF_X30_Y24_N9
\comb_222|states_Q.010\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|states_Q.010~regout\);

-- Location: LCCOMB_X30_Y24_N30
\comb_222|inst|states_D.00~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|states_D.00~0_combout\ = (\KEY~combout\(0) & ((\comb_222|states_Q.010~regout\) # ((\comb_222|inst|states_Q.01~regout\) # (\comb_222|inst|states_Q.10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|states_Q.010~regout\,
	datab => \comb_222|inst|states_Q.01~regout\,
	datac => \KEY~combout\(0),
	datad => \comb_222|inst|states_Q.10~regout\,
	combout => \comb_222|inst|states_D.00~0_combout\);

-- Location: LCFF_X30_Y24_N31
\comb_222|inst|states_Q.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|states_D.00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|states_Q.00~regout\);

-- Location: LCCOMB_X30_Y24_N16
\comb_222|inst|states_D.01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|states_D.01~0_combout\ = (\KEY~combout\(0) & (\comb_222|states_Q.010~regout\ & !\comb_222|inst|states_Q.00~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \comb_222|states_Q.010~regout\,
	datad => \comb_222|inst|states_Q.00~regout\,
	combout => \comb_222|inst|states_D.01~0_combout\);

-- Location: LCFF_X30_Y24_N17
\comb_222|inst|states_Q.01\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|states_D.01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|states_Q.01~regout\);

-- Location: LCCOMB_X30_Y24_N20
\comb_222|inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector1~0_combout\ = (\comb_222|inst|states_Q.01~regout\) # ((\comb_222|inst|states_Q.10~regout\ & !\comb_222|inst|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|inst|states_Q.01~regout\,
	datac => \comb_222|inst|states_Q.10~regout\,
	datad => \comb_222|inst|Selector2~0_combout\,
	combout => \comb_222|inst|Selector1~0_combout\);

-- Location: LCFF_X30_Y24_N21
\comb_222|inst|states_Q.10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector1~0_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|states_Q.10~regout\);

-- Location: LCFF_X36_Y27_N25
\comb_222|inst|hexHS_Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|hexHS_Q~feeder_combout\,
	sdata => VCC,
	sclr => \ALT_INV_KEY~combout\(0),
	sload => \comb_222|inst|ALT_INV_states_Q.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|hexHS_Q~regout\);

-- Location: LCCOMB_X35_Y24_N28
\comb_222|inst|comb_18|waiter_D~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|waiter_D~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (((\comb_222|inst|comb_18|waiter_Q\(0))))) # (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|comb_18|comb_3|counterEnable_Q~regout\ & 
-- (\comb_222|inst|comb_18|waiter_Q\(1) $ (!\comb_222|inst|comb_18|waiter_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datab => \comb_222|inst|comb_18|waiter_Q\(1),
	datac => \comb_222|inst|comb_18|waiter_Q\(0),
	datad => \comb_222|inst|comb_18|comb_3|counterEnable_Q~regout\,
	combout => \comb_222|inst|comb_18|waiter_D~0_combout\);

-- Location: LCCOMB_X35_Y24_N18
\comb_222|inst|comb_18|waiter_D~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|waiter_D~1_combout\ = (\comb_222|inst|comb_18|waiter_D~0_combout\) # ((!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (!\comb_222|inst|hexHS_Q~regout\ & !\comb_222|inst|comb_18|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datab => \comb_222|inst|hexHS_Q~regout\,
	datac => \comb_222|inst|comb_18|always0~0_combout\,
	datad => \comb_222|inst|comb_18|waiter_D~0_combout\,
	combout => \comb_222|inst|comb_18|waiter_D~1_combout\);

-- Location: LCCOMB_X35_Y24_N16
\comb_222|inst|comb_18|waiter_D[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|waiter_D\(0) = (\KEY~combout\(0) & ((\comb_222|inst|comb_18|waiter_D~1_combout\))) # (!\KEY~combout\(0) & (\comb_222|inst|comb_18|waiter_D\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|inst|comb_18|waiter_D\(0),
	datac => \KEY~combout\(0),
	datad => \comb_222|inst|comb_18|waiter_D~1_combout\,
	combout => \comb_222|inst|comb_18|waiter_D\(0));

-- Location: LCFF_X35_Y24_N17
\comb_222|inst|comb_18|waiter_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|comb_18|waiter_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|comb_18|waiter_Q\(0));

-- Location: LCCOMB_X35_Y24_N24
\comb_222|inst|comb_18|waiter_D~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|waiter_D~2_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (((\comb_222|inst|comb_18|waiter_Q\(1))))) # (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|comb_18|comb_3|counterEnable_Q~regout\ & 
-- ((\comb_222|inst|comb_18|waiter_Q\(1)) # (\comb_222|inst|comb_18|waiter_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|comb_3|counterEnable_Q~regout\,
	datab => \comb_222|inst|comb_18|waiter_Q\(1),
	datac => \comb_222|inst|comb_18|waiter_Q\(0),
	datad => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	combout => \comb_222|inst|comb_18|waiter_D~2_combout\);

-- Location: LCCOMB_X35_Y24_N14
\comb_222|inst|comb_18|waiter_D[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|waiter_D\(1) = (\KEY~combout\(0) & ((\comb_222|inst|comb_18|waiter_D~2_combout\))) # (!\KEY~combout\(0) & (\comb_222|inst|comb_18|waiter_D\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|waiter_D\(1),
	datac => \comb_222|inst|comb_18|waiter_D~2_combout\,
	datad => \KEY~combout\(0),
	combout => \comb_222|inst|comb_18|waiter_D\(1));

-- Location: LCFF_X35_Y24_N15
\comb_222|inst|comb_18|waiter_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|comb_18|waiter_D\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|comb_18|waiter_Q\(1));

-- Location: LCCOMB_X36_Y24_N0
\comb_222|inst|comb_18|comb_3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|comb_3|Add0~0_combout\ = \comb_222|inst|comb_18|comb_3|counter_Q\(0) $ (\comb_222|inst|comb_18|comb_3|counter_Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|comb_3|counter_Q\(0),
	datac => \comb_222|inst|comb_18|comb_3|counter_Q\(1),
	combout => \comb_222|inst|comb_18|comb_3|Add0~0_combout\);

-- Location: LCCOMB_X36_Y24_N18
\comb_222|inst|comb_18|comb_3|counter_Q[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|comb_3|counter_Q[2]~0_combout\ = ((!\comb_222|inst|comb_18|comb_3|counterEnable_Q~regout\ & !\comb_222|inst|comb_18|waiter_Q\(1))) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|comb_3|counterEnable_Q~regout\,
	datac => \KEY~combout\(0),
	datad => \comb_222|inst|comb_18|waiter_Q\(1),
	combout => \comb_222|inst|comb_18|comb_3|counter_Q[2]~0_combout\);

-- Location: LCFF_X36_Y24_N1
\comb_222|inst|comb_18|comb_3|counter_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|comb_18|comb_3|Add0~0_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_222|inst|comb_18|comb_3|counter_Q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|comb_18|comb_3|counter_Q\(1));

-- Location: LCCOMB_X36_Y24_N2
\comb_222|inst|comb_18|comb_3|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|comb_3|Add0~1_combout\ = \comb_222|inst|comb_18|comb_3|counter_Q\(2) $ (((\comb_222|inst|comb_18|comb_3|counter_Q\(0) & \comb_222|inst|comb_18|comb_3|counter_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|comb_3|counter_Q\(0),
	datac => \comb_222|inst|comb_18|comb_3|counter_Q\(2),
	datad => \comb_222|inst|comb_18|comb_3|counter_Q\(1),
	combout => \comb_222|inst|comb_18|comb_3|Add0~1_combout\);

-- Location: LCFF_X36_Y24_N3
\comb_222|inst|comb_18|comb_3|counter_Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|comb_18|comb_3|Add0~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_222|inst|comb_18|comb_3|counter_Q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|comb_18|comb_3|counter_Q\(2));

-- Location: LCCOMB_X36_Y24_N20
\comb_222|inst|comb_18|comb_3|counter_Q[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|comb_3|counter_Q[0]~1_combout\ = (\KEY~combout\(0) & (\comb_222|inst|comb_18|comb_3|counter_Q\(0) $ (((!\comb_222|inst|comb_18|comb_3|counterEnable_Q~regout\ & !\comb_222|inst|comb_18|waiter_Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|comb_3|counterEnable_Q~regout\,
	datab => \KEY~combout\(0),
	datac => \comb_222|inst|comb_18|comb_3|counter_Q\(0),
	datad => \comb_222|inst|comb_18|waiter_Q\(1),
	combout => \comb_222|inst|comb_18|comb_3|counter_Q[0]~1_combout\);

-- Location: LCFF_X36_Y24_N21
\comb_222|inst|comb_18|comb_3|counter_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|comb_18|comb_3|counter_Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|comb_18|comb_3|counter_Q\(0));

-- Location: LCCOMB_X36_Y24_N4
\comb_222|inst|comb_18|comb_3|counterEnable_D~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|comb_3|counterEnable_D~0_combout\ = (\comb_222|inst|comb_18|comb_3|counterEnable_Q~regout\) # ((\comb_222|inst|comb_18|comb_3|counter_Q\(2) & (\comb_222|inst|comb_18|comb_3|counter_Q\(0) & 
-- \comb_222|inst|comb_18|comb_3|counter_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|comb_3|counterEnable_Q~regout\,
	datab => \comb_222|inst|comb_18|comb_3|counter_Q\(2),
	datac => \comb_222|inst|comb_18|comb_3|counter_Q\(0),
	datad => \comb_222|inst|comb_18|comb_3|counter_Q\(1),
	combout => \comb_222|inst|comb_18|comb_3|counterEnable_D~0_combout\);

-- Location: LCCOMB_X35_Y24_N30
\comb_222|inst|comb_18|comb_3|counterEnable_D~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|comb_3|counterEnable_D~1_combout\ = (!\comb_222|inst|comb_18|waiter_Q\(1) & \comb_222|inst|comb_18|comb_3|counterEnable_D~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_222|inst|comb_18|waiter_Q\(1),
	datad => \comb_222|inst|comb_18|comb_3|counterEnable_D~0_combout\,
	combout => \comb_222|inst|comb_18|comb_3|counterEnable_D~1_combout\);

-- Location: LCFF_X35_Y24_N31
\comb_222|inst|comb_18|comb_3|counterEnable_Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|comb_18|comb_3|counterEnable_D~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|comb_18|comb_3|counterEnable_Q~regout\);

-- Location: LCCOMB_X35_Y24_N20
\comb_222|inst|comb_18|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|always0~0_combout\ = (\comb_222|inst|comb_18|waiter_Q\(0)) # (((\comb_222|inst|comb_18|waiter_Q\(1)) # (\comb_222|inst|comb_18|shiftEnable_Q~regout\)) # (!\comb_222|inst|comb_18|comb_3|counterEnable_Q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|waiter_Q\(0),
	datab => \comb_222|inst|comb_18|comb_3|counterEnable_Q~regout\,
	datac => \comb_222|inst|comb_18|waiter_Q\(1),
	datad => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	combout => \comb_222|inst|comb_18|always0~0_combout\);

-- Location: LCCOMB_X37_Y23_N12
\comb_222|inst|comb_18|counter_Q[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|counter_Q[0]~1_combout\ = (\KEY~combout\(0) & (\comb_222|inst|comb_18|counter_Q\(0) $ (((!\comb_222|inst|hexHS_Q~regout\ & !\comb_222|inst|comb_18|always0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|hexHS_Q~regout\,
	datab => \comb_222|inst|comb_18|always0~0_combout\,
	datac => \comb_222|inst|comb_18|counter_Q\(0),
	datad => \KEY~combout\(0),
	combout => \comb_222|inst|comb_18|counter_Q[0]~1_combout\);

-- Location: LCFF_X37_Y23_N13
\comb_222|inst|comb_18|counter_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|comb_18|counter_Q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|comb_18|counter_Q\(0));

-- Location: LCCOMB_X37_Y23_N10
\comb_222|inst|comb_18|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|Add0~1_combout\ = \comb_222|inst|comb_18|counter_Q\(1) $ (\comb_222|inst|comb_18|counter_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_222|inst|comb_18|counter_Q\(1),
	datad => \comb_222|inst|comb_18|counter_Q\(0),
	combout => \comb_222|inst|comb_18|Add0~1_combout\);

-- Location: LCCOMB_X37_Y23_N18
\comb_222|inst|comb_18|counter_Q[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|counter_Q[1]~0_combout\ = ((!\comb_222|inst|comb_18|always0~0_combout\ & !\comb_222|inst|hexHS_Q~regout\)) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|inst|comb_18|always0~0_combout\,
	datac => \KEY~combout\(0),
	datad => \comb_222|inst|hexHS_Q~regout\,
	combout => \comb_222|inst|comb_18|counter_Q[1]~0_combout\);

-- Location: LCFF_X37_Y23_N11
\comb_222|inst|comb_18|counter_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|comb_18|Add0~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_222|inst|comb_18|counter_Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|comb_18|counter_Q\(1));

-- Location: LCCOMB_X37_Y23_N16
\comb_222|inst|comb_18|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|Add0~0_combout\ = \comb_222|inst|comb_18|counter_Q\(2) $ (((\comb_222|inst|comb_18|counter_Q\(0) & \comb_222|inst|comb_18|counter_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|counter_Q\(0),
	datac => \comb_222|inst|comb_18|counter_Q\(2),
	datad => \comb_222|inst|comb_18|counter_Q\(1),
	combout => \comb_222|inst|comb_18|Add0~0_combout\);

-- Location: LCFF_X37_Y23_N17
\comb_222|inst|comb_18|counter_Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|comb_18|Add0~0_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	ena => \comb_222|inst|comb_18|counter_Q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|comb_18|counter_Q\(2));

-- Location: LCCOMB_X30_Y21_N4
\VGA|user_input_translator|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~2_combout\ = (\comb_222|count_Q\(0) & ((\comb_222|inst|comb_18|counter_Q\(1) & (\VGA|user_input_translator|Add0~1\ & VCC)) # (!\comb_222|inst|comb_18|counter_Q\(1) & (!\VGA|user_input_translator|Add0~1\)))) # 
-- (!\comb_222|count_Q\(0) & ((\comb_222|inst|comb_18|counter_Q\(1) & (!\VGA|user_input_translator|Add0~1\)) # (!\comb_222|inst|comb_18|counter_Q\(1) & ((\VGA|user_input_translator|Add0~1\) # (GND)))))
-- \VGA|user_input_translator|Add0~3\ = CARRY((\comb_222|count_Q\(0) & (!\comb_222|inst|comb_18|counter_Q\(1) & !\VGA|user_input_translator|Add0~1\)) # (!\comb_222|count_Q\(0) & ((!\VGA|user_input_translator|Add0~1\) # 
-- (!\comb_222|inst|comb_18|counter_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|count_Q\(0),
	datab => \comb_222|inst|comb_18|counter_Q\(1),
	datad => VCC,
	cin => \VGA|user_input_translator|Add0~1\,
	combout => \VGA|user_input_translator|Add0~2_combout\,
	cout => \VGA|user_input_translator|Add0~3\);

-- Location: LCCOMB_X30_Y21_N6
\VGA|user_input_translator|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~4_combout\ = ((\comb_222|Add0~2_combout\ $ (\comb_222|inst|comb_18|counter_Q\(2) $ (\VGA|user_input_translator|Add0~3\)))) # (GND)
-- \VGA|user_input_translator|Add0~5\ = CARRY((\comb_222|Add0~2_combout\ & (\comb_222|inst|comb_18|counter_Q\(2) & !\VGA|user_input_translator|Add0~3\)) # (!\comb_222|Add0~2_combout\ & ((\comb_222|inst|comb_18|counter_Q\(2)) # 
-- (!\VGA|user_input_translator|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|Add0~2_combout\,
	datab => \comb_222|inst|comb_18|counter_Q\(2),
	datad => VCC,
	cin => \VGA|user_input_translator|Add0~3\,
	combout => \VGA|user_input_translator|Add0~4_combout\,
	cout => \VGA|user_input_translator|Add0~5\);

-- Location: LCCOMB_X31_Y21_N4
\VGA|user_input_translator|mem_address[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|mem_address[5]~0_combout\ = (\comb_222|inst|Add0~1_combout\ & (\comb_222|inst|comb_18|counter_Q\(0) $ (VCC))) # (!\comb_222|inst|Add0~1_combout\ & (\comb_222|inst|comb_18|counter_Q\(0) & VCC))
-- \VGA|user_input_translator|mem_address[5]~1\ = CARRY((\comb_222|inst|Add0~1_combout\ & \comb_222|inst|comb_18|counter_Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|Add0~1_combout\,
	datab => \comb_222|inst|comb_18|counter_Q\(0),
	datad => VCC,
	combout => \VGA|user_input_translator|mem_address[5]~0_combout\,
	cout => \VGA|user_input_translator|mem_address[5]~1\);

-- Location: LCCOMB_X31_Y21_N6
\VGA|user_input_translator|mem_address[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|mem_address[6]~2_combout\ = (\comb_222|inst|Add0~0_combout\ & ((\comb_222|inst|comb_18|counter_Q\(1) & (!\VGA|user_input_translator|mem_address[5]~1\)) # (!\comb_222|inst|comb_18|counter_Q\(1) & 
-- ((\VGA|user_input_translator|mem_address[5]~1\) # (GND))))) # (!\comb_222|inst|Add0~0_combout\ & ((\comb_222|inst|comb_18|counter_Q\(1) & (\VGA|user_input_translator|mem_address[5]~1\ & VCC)) # (!\comb_222|inst|comb_18|counter_Q\(1) & 
-- (!\VGA|user_input_translator|mem_address[5]~1\))))
-- \VGA|user_input_translator|mem_address[6]~3\ = CARRY((\comb_222|inst|Add0~0_combout\ & ((!\VGA|user_input_translator|mem_address[5]~1\) # (!\comb_222|inst|comb_18|counter_Q\(1)))) # (!\comb_222|inst|Add0~0_combout\ & (!\comb_222|inst|comb_18|counter_Q\(1) 
-- & !\VGA|user_input_translator|mem_address[5]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|Add0~0_combout\,
	datab => \comb_222|inst|comb_18|counter_Q\(1),
	datad => VCC,
	cin => \VGA|user_input_translator|mem_address[5]~1\,
	combout => \VGA|user_input_translator|mem_address[6]~2_combout\,
	cout => \VGA|user_input_translator|mem_address[6]~3\);

-- Location: LCCOMB_X31_Y21_N8
\VGA|user_input_translator|mem_address[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|mem_address[7]~4_combout\ = (\VGA|user_input_translator|Add0~0_combout\ & (\VGA|user_input_translator|mem_address[6]~3\ $ (GND))) # (!\VGA|user_input_translator|Add0~0_combout\ & (!\VGA|user_input_translator|mem_address[6]~3\ & 
-- VCC))
-- \VGA|user_input_translator|mem_address[7]~5\ = CARRY((\VGA|user_input_translator|Add0~0_combout\ & !\VGA|user_input_translator|mem_address[6]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|Add0~0_combout\,
	datad => VCC,
	cin => \VGA|user_input_translator|mem_address[6]~3\,
	combout => \VGA|user_input_translator|mem_address[7]~4_combout\,
	cout => \VGA|user_input_translator|mem_address[7]~5\);

-- Location: LCCOMB_X31_Y21_N10
\VGA|user_input_translator|mem_address[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|mem_address[8]~6_combout\ = (\VGA|user_input_translator|Add0~2_combout\ & (!\VGA|user_input_translator|mem_address[7]~5\)) # (!\VGA|user_input_translator|Add0~2_combout\ & ((\VGA|user_input_translator|mem_address[7]~5\) # 
-- (GND)))
-- \VGA|user_input_translator|mem_address[8]~7\ = CARRY((!\VGA|user_input_translator|mem_address[7]~5\) # (!\VGA|user_input_translator|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|user_input_translator|Add0~2_combout\,
	datad => VCC,
	cin => \VGA|user_input_translator|mem_address[7]~5\,
	combout => \VGA|user_input_translator|mem_address[8]~6_combout\,
	cout => \VGA|user_input_translator|mem_address[8]~7\);

-- Location: LCCOMB_X31_Y21_N12
\VGA|user_input_translator|mem_address[9]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|mem_address[9]~8_combout\ = (\VGA|user_input_translator|Add0~4_combout\ & (\VGA|user_input_translator|mem_address[8]~7\ $ (GND))) # (!\VGA|user_input_translator|Add0~4_combout\ & (!\VGA|user_input_translator|mem_address[8]~7\ & 
-- VCC))
-- \VGA|user_input_translator|mem_address[9]~9\ = CARRY((\VGA|user_input_translator|Add0~4_combout\ & !\VGA|user_input_translator|mem_address[8]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|user_input_translator|Add0~4_combout\,
	datad => VCC,
	cin => \VGA|user_input_translator|mem_address[8]~7\,
	combout => \VGA|user_input_translator|mem_address[9]~8_combout\,
	cout => \VGA|user_input_translator|mem_address[9]~9\);

-- Location: LCCOMB_X31_Y21_N14
\VGA|user_input_translator|mem_address[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|mem_address[10]~10_combout\ = (\VGA|user_input_translator|Add0~6_combout\ & (!\VGA|user_input_translator|mem_address[9]~9\)) # (!\VGA|user_input_translator|Add0~6_combout\ & ((\VGA|user_input_translator|mem_address[9]~9\) # 
-- (GND)))
-- \VGA|user_input_translator|mem_address[10]~11\ = CARRY((!\VGA|user_input_translator|mem_address[9]~9\) # (!\VGA|user_input_translator|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|Add0~6_combout\,
	datad => VCC,
	cin => \VGA|user_input_translator|mem_address[9]~9\,
	combout => \VGA|user_input_translator|mem_address[10]~10_combout\,
	cout => \VGA|user_input_translator|mem_address[10]~11\);

-- Location: LCCOMB_X31_Y21_N16
\VGA|user_input_translator|mem_address[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|mem_address[11]~12_combout\ = (\VGA|user_input_translator|Add0~8_combout\ & (\VGA|user_input_translator|mem_address[10]~11\ $ (GND))) # (!\VGA|user_input_translator|Add0~8_combout\ & 
-- (!\VGA|user_input_translator|mem_address[10]~11\ & VCC))
-- \VGA|user_input_translator|mem_address[11]~13\ = CARRY((\VGA|user_input_translator|Add0~8_combout\ & !\VGA|user_input_translator|mem_address[10]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|Add0~8_combout\,
	datad => VCC,
	cin => \VGA|user_input_translator|mem_address[10]~11\,
	combout => \VGA|user_input_translator|mem_address[11]~12_combout\,
	cout => \VGA|user_input_translator|mem_address[11]~13\);

-- Location: LCCOMB_X31_Y21_N18
\VGA|user_input_translator|mem_address[12]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|mem_address[12]~14_combout\ = (\VGA|user_input_translator|Add0~10_combout\ & (!\VGA|user_input_translator|mem_address[11]~13\)) # (!\VGA|user_input_translator|Add0~10_combout\ & ((\VGA|user_input_translator|mem_address[11]~13\) 
-- # (GND)))
-- \VGA|user_input_translator|mem_address[12]~15\ = CARRY((!\VGA|user_input_translator|mem_address[11]~13\) # (!\VGA|user_input_translator|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|Add0~10_combout\,
	datad => VCC,
	cin => \VGA|user_input_translator|mem_address[11]~13\,
	combout => \VGA|user_input_translator|mem_address[12]~14_combout\,
	cout => \VGA|user_input_translator|mem_address[12]~15\);

-- Location: LCCOMB_X31_Y21_N20
\VGA|user_input_translator|mem_address[13]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|mem_address[13]~16_combout\ = (\VGA|user_input_translator|Add0~12_combout\ & (\VGA|user_input_translator|mem_address[12]~15\ $ (GND))) # (!\VGA|user_input_translator|Add0~12_combout\ & 
-- (!\VGA|user_input_translator|mem_address[12]~15\ & VCC))
-- \VGA|user_input_translator|mem_address[13]~17\ = CARRY((\VGA|user_input_translator|Add0~12_combout\ & !\VGA|user_input_translator|mem_address[12]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|Add0~12_combout\,
	datad => VCC,
	cin => \VGA|user_input_translator|mem_address[12]~15\,
	combout => \VGA|user_input_translator|mem_address[13]~16_combout\,
	cout => \VGA|user_input_translator|mem_address[13]~17\);

-- Location: LCCOMB_X30_Y16_N8
\VGA|writeEn~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|writeEn~0_combout\ = (((!\comb_222|count_Q\(1)) # (!\comb_222|count_Q\(0))) # (!\comb_222|count_Q\(2))) # (!\comb_222|count_Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|count_Q\(3),
	datab => \comb_222|count_Q\(2),
	datac => \comb_222|count_Q\(0),
	datad => \comb_222|count_Q\(1),
	combout => \VGA|writeEn~0_combout\);

-- Location: LCCOMB_X35_Y24_N22
\comb_222|inst|comb_18|comb_3|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|comb_3|always0~0_combout\ = (\comb_222|inst|comb_18|waiter_Q\(1)) # (\comb_222|inst|comb_18|comb_3|counterEnable_Q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_222|inst|comb_18|waiter_Q\(1),
	datad => \comb_222|inst|comb_18|comb_3|counterEnable_Q~regout\,
	combout => \comb_222|inst|comb_18|comb_3|always0~0_combout\);

-- Location: LCCOMB_X30_Y24_N28
\comb_222|inst|comb_18|comb_3|writeEnable\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|comb_3|writeEnable~combout\ = (\KEY~combout\(0) & ((!\comb_222|inst|comb_18|comb_3|always0~0_combout\))) # (!\KEY~combout\(0) & (\comb_222|inst|comb_18|comb_3|writeEnable~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|inst|comb_18|comb_3|writeEnable~combout\,
	datac => \KEY~combout\(0),
	datad => \comb_222|inst|comb_18|comb_3|always0~0_combout\,
	combout => \comb_222|inst|comb_18|comb_3|writeEnable~combout\);

-- Location: LCCOMB_X30_Y24_N6
\VGA|writeEn~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|writeEn~1_combout\ = (\comb_222|states_Q.010~regout\ & (\VGA|writeEn~0_combout\ & \comb_222|inst|comb_18|comb_3|writeEnable~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|states_Q.010~regout\,
	datac => \VGA|writeEn~0_combout\,
	datad => \comb_222|inst|comb_18|comb_3|writeEnable~combout\,
	combout => \VGA|writeEn~1_combout\);

-- Location: LCCOMB_X30_Y24_N22
\VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\(3) = (!\VGA|user_input_translator|mem_address[14]~18_combout\ & (\VGA|user_input_translator|mem_address[13]~16_combout\ & (\VGA|user_input_translator|mem_address[12]~14_combout\ & 
-- \VGA|writeEn~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|mem_address[14]~18_combout\,
	datab => \VGA|user_input_translator|mem_address[13]~16_combout\,
	datac => \VGA|user_input_translator|mem_address[12]~14_combout\,
	datad => \VGA|writeEn~1_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\(3));

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y27_N26
\VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\(3) = (\VGA|controller|controller_translator|mem_address[12]~14_combout\ & (\VGA|controller|controller_translator|mem_address[13]~16_combout\ & 
-- !\VGA|controller|controller_translator|mem_address[14]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|controller_translator|mem_address[12]~14_combout\,
	datac => \VGA|controller|controller_translator|mem_address[13]~16_combout\,
	datad => \VGA|controller|controller_translator|mem_address[14]~18_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\(3));

-- Location: LCCOMB_X30_Y21_N22
\comb_222|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector3~0_combout\ = (\comb_222|count_Q\(1) & (\comb_222|count_Q\(0) & \comb_222|count_Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|count_Q\(1),
	datac => \comb_222|count_Q\(0),
	datad => \comb_222|count_Q\(2),
	combout => \comb_222|Selector3~0_combout\);

-- Location: LCCOMB_X30_Y21_N16
\VGA|user_input_translator|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|Add0~14_combout\ = \VGA|user_input_translator|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \VGA|user_input_translator|Add0~13\,
	combout => \VGA|user_input_translator|Add0~14_combout\);

-- Location: LCCOMB_X31_Y21_N22
\VGA|user_input_translator|mem_address[14]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|user_input_translator|mem_address[14]~18_combout\ = \VGA|user_input_translator|mem_address[13]~17\ $ (\VGA|user_input_translator|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA|user_input_translator|Add0~14_combout\,
	cin => \VGA|user_input_translator|mem_address[13]~17\,
	combout => \VGA|user_input_translator|mem_address[14]~18_combout\);

-- Location: LCCOMB_X30_Y24_N12
\VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\ = (\VGA|user_input_translator|mem_address[13]~16_combout\ & (\VGA|user_input_translator|mem_address[12]~14_combout\ & !\VGA|user_input_translator|mem_address[14]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|user_input_translator|mem_address[13]~16_combout\,
	datac => \VGA|user_input_translator|mem_address[12]~14_combout\,
	datad => \VGA|user_input_translator|mem_address[14]~18_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\);

-- Location: LCCOMB_X29_Y16_N26
\comb_225|WideOr4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|WideOr4~combout\ = (\comb_225|states_Q.010~regout\) # ((\comb_225|states_Q.011~regout\) # (\comb_225|states_Q.101~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|states_Q.011~regout\,
	datad => \comb_225|states_Q.101~regout\,
	combout => \comb_225|WideOr4~combout\);

-- Location: LCCOMB_X25_Y17_N26
\comb_225|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector35~0_combout\ = (\comb_225|dataRead_Q\(0) & ((\comb_225|states_Q.100~regout\) # ((\comb_225|dataWrite_Q\(0) & \comb_225|WideOr4~combout\)))) # (!\comb_225|dataRead_Q\(0) & (((\comb_225|dataWrite_Q\(0) & \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataRead_Q\(0),
	datab => \comb_225|states_Q.100~regout\,
	datac => \comb_225|dataWrite_Q\(0),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector35~0_combout\);

-- Location: LCFF_X25_Y17_N27
\comb_225|dataWrite_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(0));

-- Location: LCCOMB_X25_Y17_N16
\Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\comb_224|data_out\(0) & ((\states_Q.100~regout\) # ((\comb_225|dataWrite_Q\(0) & \states_Q.001~regout\)))) # (!\comb_224|data_out\(0) & (\comb_225|dataWrite_Q\(0) & ((\states_Q.001~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(0),
	datab => \comb_225|dataWrite_Q\(0),
	datac => \states_Q.100~regout\,
	datad => \states_Q.001~regout\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X30_Y16_N20
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\states_Q.010~regout\ & (((\comb_222|count_Q\(0))))) # (!\states_Q.010~regout\ & (\comb_225|count_Q\(0) & (\states_Q.001~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|count_Q\(0),
	datab => \states_Q.001~regout\,
	datac => \comb_222|count_Q\(0),
	datad => \states_Q.010~regout\,
	combout => \Selector10~0_combout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[10]~I\ : cycloneii_io
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
	padio => ww_SW(10),
	combout => \SW~combout\(10));

-- Location: LCCOMB_X30_Y16_N22
\Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\states_Q.011~regout\ & ((\SW~combout\(10)))) # (!\states_Q.011~regout\ & (\Selector10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.011~regout\,
	datac => \Selector10~0_combout\,
	datad => \SW~combout\(10),
	combout => \Selector10~1_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[11]~I\ : cycloneii_io
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
	padio => ww_SW(11),
	combout => \SW~combout\(11));

-- Location: LCCOMB_X30_Y16_N28
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\states_Q.010~regout\ & (\comb_222|count_Q\(1))) # (!\states_Q.010~regout\ & (((\comb_225|count_Q\(1) & \states_Q.001~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|count_Q\(1),
	datab => \comb_225|count_Q\(1),
	datac => \states_Q.001~regout\,
	datad => \states_Q.010~regout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X30_Y16_N6
\Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\states_Q.011~regout\ & (\SW~combout\(11))) # (!\states_Q.011~regout\ & ((\Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.011~regout\,
	datab => \SW~combout\(11),
	datad => \Selector9~0_combout\,
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X31_Y16_N10
\comb_225|Selector73~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector73~0_combout\ = (\comb_225|states_Q.100~regout\ & (\comb_225|count_Q\(2) $ (((\comb_225|count_Q\(0) & \comb_225|count_Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|count_Q\(2),
	datab => \comb_225|states_Q.100~regout\,
	datac => \comb_225|count_Q\(0),
	datad => \comb_225|count_Q\(1),
	combout => \comb_225|Selector73~0_combout\);

-- Location: LCCOMB_X31_Y16_N0
\comb_225|Selector73~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector73~1_combout\ = (\comb_225|Selector73~0_combout\) # ((\comb_225|count_Q\(2) & \comb_225|Selector74~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|count_Q\(2),
	datac => \comb_225|Selector73~0_combout\,
	datad => \comb_225|Selector74~0_combout\,
	combout => \comb_225|Selector73~1_combout\);

-- Location: LCCOMB_X31_Y16_N20
\comb_225|count_D[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|count_D\(2) = (GLOBAL(\comb_225|states_Q.101~clkctrl_outclk\) & (\comb_225|count_D\(2))) # (!GLOBAL(\comb_225|states_Q.101~clkctrl_outclk\) & ((\comb_225|Selector73~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_225|count_D\(2),
	datac => \comb_225|states_Q.101~clkctrl_outclk\,
	datad => \comb_225|Selector73~1_combout\,
	combout => \comb_225|count_D\(2));

-- Location: LCFF_X31_Y16_N21
\comb_225|count_Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|count_D\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|count_Q\(2));

-- Location: LCCOMB_X30_Y16_N4
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\states_Q.010~regout\ & (\comb_222|count_Q\(2))) # (!\states_Q.010~regout\ & (((\states_Q.001~regout\ & \comb_225|count_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.010~regout\,
	datab => \comb_222|count_Q\(2),
	datac => \states_Q.001~regout\,
	datad => \comb_225|count_Q\(2),
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X30_Y16_N18
\Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\states_Q.011~regout\ & (\SW~combout\(12))) # (!\states_Q.011~regout\ & ((\Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(12),
	datac => \Selector8~0_combout\,
	datad => \states_Q.011~regout\,
	combout => \Selector8~1_combout\);

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[13]~I\ : cycloneii_io
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
	padio => ww_SW(13),
	combout => \SW~combout\(13));

-- Location: LCCOMB_X30_Y16_N0
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\states_Q.010~regout\ & (\comb_222|count_Q\(3))) # (!\states_Q.010~regout\ & (((\states_Q.001~regout\ & \comb_225|count_Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|count_Q\(3),
	datab => \states_Q.001~regout\,
	datac => \comb_225|count_Q\(3),
	datad => \states_Q.010~regout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X30_Y16_N30
\Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\states_Q.011~regout\ & (\SW~combout\(13))) # (!\states_Q.011~regout\ & ((\Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.011~regout\,
	datac => \SW~combout\(13),
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[14]~I\ : cycloneii_io
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
	padio => ww_SW(14),
	combout => \SW~combout\(14));

-- Location: LCCOMB_X25_Y12_N24
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\SW~combout\(14) & \states_Q.011~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(14),
	datad => \states_Q.011~regout\,
	combout => \Selector6~0_combout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[15]~I\ : cycloneii_io
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
	padio => ww_SW(15),
	combout => \SW~combout\(15));

-- Location: LCCOMB_X25_Y12_N22
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\SW~combout\(15) & \states_Q.011~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(15),
	datad => \states_Q.011~regout\,
	combout => \Selector5~0_combout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[16]~I\ : cycloneii_io
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
	padio => ww_SW(16),
	combout => \SW~combout\(16));

-- Location: LCCOMB_X25_Y16_N22
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\SW~combout\(16) & \states_Q.011~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(16),
	datad => \states_Q.011~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X32_Y17_N20
\comb_224|data_out~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~13_combout\ = (\comb_224|last_data_received\(5) & ((\comb_224|last_data_received\(4) & ((\comb_224|last_data_received\(1)))) # (!\comb_224|last_data_received\(4) & (\comb_224|last_data_received\(2))))) # 
-- (!\comb_224|last_data_received\(5) & (\comb_224|last_data_received\(2) & (\comb_224|last_data_received\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(5),
	datab => \comb_224|last_data_received\(2),
	datac => \comb_224|last_data_received\(4),
	datad => \comb_224|last_data_received\(1),
	combout => \comb_224|data_out~13_combout\);

-- Location: LCCOMB_X32_Y17_N26
\comb_224|data_out~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~14_combout\ = (\comb_224|last_data_received\(2) & (\comb_224|last_data_received\(4) & ((!\comb_224|last_data_received\(1)) # (!\comb_224|last_data_received\(5))))) # (!\comb_224|last_data_received\(2) & (\comb_224|last_data_received\(5) 
-- & (!\comb_224|last_data_received\(4) & \comb_224|last_data_received\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(5),
	datab => \comb_224|last_data_received\(2),
	datac => \comb_224|last_data_received\(4),
	datad => \comb_224|last_data_received\(1),
	combout => \comb_224|data_out~14_combout\);

-- Location: LCCOMB_X32_Y17_N16
\comb_224|data_out~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~36_combout\ = (\comb_224|last_data_received\(6)) # ((\comb_224|last_data_received\(0) & ((\comb_224|data_out~13_combout\) # (!\comb_224|data_out~14_combout\))) # (!\comb_224|last_data_received\(0) & (!\comb_224|data_out~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(0),
	datab => \comb_224|last_data_received\(6),
	datac => \comb_224|data_out~13_combout\,
	datad => \comb_224|data_out~14_combout\,
	combout => \comb_224|data_out~36_combout\);

-- Location: LCCOMB_X32_Y17_N30
\comb_224|data_out~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~37_combout\ = (\comb_224|converter|WideOr4~8_combout\ & (!\comb_224|data_out~36_combout\ & (\comb_224|last_data_received\(3) $ (!\comb_224|data_out~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|converter|WideOr4~8_combout\,
	datab => \comb_224|last_data_received\(3),
	datac => \comb_224|data_out~36_combout\,
	datad => \comb_224|data_out~14_combout\,
	combout => \comb_224|data_out~37_combout\);

-- Location: LCCOMB_X25_Y17_N30
\comb_224|data_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[1]~feeder_combout\ = \comb_224|data_out~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|data_out~37_combout\,
	combout => \comb_224|data_out[1]~feeder_combout\);

-- Location: LCCOMB_X29_Y17_N24
\comb_224|data_out[28]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[28]~8_combout\ = (\comb_224|Equal1~1_combout\ & (\comb_224|last_data_received\(6) $ (\comb_224|last_data_received\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|last_data_received\(6),
	datac => \comb_224|last_data_received\(0),
	datad => \comb_224|Equal1~1_combout\,
	combout => \comb_224|data_out[28]~8_combout\);

-- Location: LCCOMB_X28_Y17_N26
\comb_224|data_out[3]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[3]~31_combout\ = (\comb_224|state.10~regout\ & ((\comb_224|converter|WideOr4~8_combout\ & (\comb_224|data_out[3]~30_combout\)) # (!\comb_224|converter|WideOr4~8_combout\ & ((\comb_224|data_out[28]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out[3]~30_combout\,
	datab => \comb_224|data_out[28]~8_combout\,
	datac => \comb_224|converter|WideOr4~8_combout\,
	datad => \comb_224|state.10~regout\,
	combout => \comb_224|data_out[3]~31_combout\);

-- Location: LCFF_X25_Y17_N31
\comb_224|data_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|data_out[1]~feeder_combout\,
	ena => \comb_224|data_out[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(1));

-- Location: LCCOMB_X25_Y17_N22
\Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\comb_225|dataWrite_Q\(1) & ((\states_Q.001~regout\) # ((\comb_224|data_out\(1) & \states_Q.100~regout\)))) # (!\comb_225|dataWrite_Q\(1) & (\comb_224|data_out\(1) & (\states_Q.100~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataWrite_Q\(1),
	datab => \comb_224|data_out\(1),
	datac => \states_Q.100~regout\,
	datad => \states_Q.001~regout\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X32_Y17_N14
\comb_224|converter|WideOr1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|converter|WideOr1~1_combout\ = (\comb_224|last_data_received\(2) & ((\comb_224|last_data_received\(1) & (!\comb_224|last_data_received\(0) & !\comb_224|last_data_received\(3))) # (!\comb_224|last_data_received\(1) & 
-- (\comb_224|last_data_received\(0) & \comb_224|last_data_received\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(1),
	datab => \comb_224|last_data_received\(2),
	datac => \comb_224|last_data_received\(0),
	datad => \comb_224|last_data_received\(3),
	combout => \comb_224|converter|WideOr1~1_combout\);

-- Location: LCCOMB_X31_Y17_N16
\comb_224|converter|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|converter|WideOr1~0_combout\ = (\comb_224|last_data_received\(0) & ((\comb_224|last_data_received\(1) & ((!\comb_224|last_data_received\(2)))) # (!\comb_224|last_data_received\(1) & (!\comb_224|last_data_received\(3))))) # 
-- (!\comb_224|last_data_received\(0) & (\comb_224|last_data_received\(2) & (\comb_224|last_data_received\(1) $ (!\comb_224|last_data_received\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(1),
	datab => \comb_224|last_data_received\(0),
	datac => \comb_224|last_data_received\(3),
	datad => \comb_224|last_data_received\(2),
	combout => \comb_224|converter|WideOr1~0_combout\);

-- Location: LCCOMB_X31_Y17_N30
\comb_224|data_out~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~11_combout\ = ((\comb_224|last_data_received\(4) & (!\comb_224|converter|WideOr1~1_combout\)) # (!\comb_224|last_data_received\(4) & ((!\comb_224|converter|WideOr1~0_combout\)))) # (!\comb_224|converter|WideOr4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|converter|WideOr4~4_combout\,
	datab => \comb_224|last_data_received\(4),
	datac => \comb_224|converter|WideOr1~1_combout\,
	datad => \comb_224|converter|WideOr1~0_combout\,
	combout => \comb_224|data_out~11_combout\);

-- Location: LCCOMB_X30_Y17_N6
\comb_224|data_out~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~12_combout\ = (\comb_224|converter|WideOr4~8_combout\ & !\comb_224|data_out~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|converter|WideOr4~8_combout\,
	datad => \comb_224|data_out~11_combout\,
	combout => \comb_224|data_out~12_combout\);

-- Location: LCFF_X25_Y17_N1
\comb_224|data_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~12_combout\,
	sload => VCC,
	ena => \comb_224|data_out[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(2));

-- Location: LCCOMB_X25_Y17_N24
\Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\comb_225|dataWrite_Q\(2) & ((\states_Q.001~regout\) # ((\comb_224|data_out\(2) & \states_Q.100~regout\)))) # (!\comb_225|dataWrite_Q\(2) & (\comb_224|data_out\(2) & (\states_Q.100~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataWrite_Q\(2),
	datab => \comb_224|data_out\(2),
	datac => \states_Q.100~regout\,
	datad => \states_Q.001~regout\,
	combout => \Selector41~0_combout\);

-- Location: LCCOMB_X32_Y17_N28
\comb_224|data_out~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~32_combout\ = (\comb_224|last_data_received\(0) & (\comb_224|last_data_received\(5))) # (!\comb_224|last_data_received\(0) & (!\comb_224|last_data_received\(5) & \comb_224|last_data_received\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(0),
	datac => \comb_224|last_data_received\(5),
	datad => \comb_224|last_data_received\(2),
	combout => \comb_224|data_out~32_combout\);

-- Location: LCCOMB_X32_Y17_N4
\comb_224|data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~4_combout\ = (\comb_224|last_data_received\(6) & ((\comb_224|last_data_received\(4)) # ((!\comb_224|last_data_received\(5))))) # (!\comb_224|last_data_received\(6) & (((\comb_224|last_data_received\(5) & 
-- \comb_224|last_data_received\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(4),
	datab => \comb_224|last_data_received\(6),
	datac => \comb_224|last_data_received\(5),
	datad => \comb_224|last_data_received\(2),
	combout => \comb_224|data_out~4_combout\);

-- Location: LCCOMB_X32_Y17_N18
\comb_224|data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~5_combout\ = (\comb_224|last_data_received\(1) & ((\comb_224|last_data_received\(4)) # ((\comb_224|last_data_received\(3) & \comb_224|data_out~4_combout\)))) # (!\comb_224|last_data_received\(1) & ((\comb_224|data_out~4_combout\) # 
-- (\comb_224|last_data_received\(3) $ (\comb_224|last_data_received\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(1),
	datab => \comb_224|last_data_received\(3),
	datac => \comb_224|data_out~4_combout\,
	datad => \comb_224|last_data_received\(4),
	combout => \comb_224|data_out~5_combout\);

-- Location: LCCOMB_X33_Y17_N10
\comb_224|data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~7_combout\ = (\comb_224|data_out~33_combout\ & (\comb_224|converter|WideOr4~8_combout\ & (\comb_224|data_out~32_combout\ $ (\comb_224|data_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out~33_combout\,
	datab => \comb_224|data_out~32_combout\,
	datac => \comb_224|converter|WideOr4~8_combout\,
	datad => \comb_224|data_out~5_combout\,
	combout => \comb_224|data_out~7_combout\);

-- Location: LCCOMB_X25_Y17_N14
\comb_224|data_out[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[3]~feeder_combout\ = \comb_224|data_out~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|data_out~7_combout\,
	combout => \comb_224|data_out[3]~feeder_combout\);

-- Location: LCFF_X25_Y17_N15
\comb_224|data_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|data_out[3]~feeder_combout\,
	ena => \comb_224|data_out[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(3));

-- Location: LCCOMB_X25_Y17_N2
\Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\comb_225|dataWrite_Q\(3) & ((\states_Q.001~regout\) # ((\comb_224|data_out\(3) & \states_Q.100~regout\)))) # (!\comb_225|dataWrite_Q\(3) & (\comb_224|data_out\(3) & (\states_Q.100~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataWrite_Q\(3),
	datab => \comb_224|data_out\(3),
	datac => \states_Q.100~regout\,
	datad => \states_Q.001~regout\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X29_Y16_N8
\comb_225|WideOr5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|WideOr5~combout\ = (\comb_225|states_Q.100~regout\) # ((\comb_225|states_Q.011~regout\) # (\comb_225|states_Q.101~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_225|states_Q.100~regout\,
	datac => \comb_225|states_Q.011~regout\,
	datad => \comb_225|states_Q.101~regout\,
	combout => \comb_225|WideOr5~combout\);

-- Location: LCCOMB_X27_Y19_N4
\comb_225|Selector63~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector63~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(4) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|dataRead_Q\(4) & \comb_225|WideOr5~combout\)))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(4) & 
-- (((\comb_225|dataRead_Q\(4) & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(4),
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|dataRead_Q\(4),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector63~0_combout\);

-- Location: LCFF_X27_Y19_N5
\comb_225|dataRead_Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector63~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(4));

-- Location: LCCOMB_X27_Y19_N22
\comb_225|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector31~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(4)) # ((\comb_225|dataWrite_Q\(4) & \comb_225|WideOr4~combout\)))) # (!\comb_225|states_Q.100~regout\ & (((\comb_225|dataWrite_Q\(4) & 
-- \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|dataRead_Q\(4),
	datac => \comb_225|dataWrite_Q\(4),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector31~0_combout\);

-- Location: LCFF_X27_Y19_N23
\comb_225|dataWrite_Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(4));

-- Location: LCCOMB_X32_Y17_N22
\comb_224|converter|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|converter|WideOr3~0_combout\ = (\comb_224|last_data_received\(4) & (!\comb_224|last_data_received\(0) & (!\comb_224|last_data_received\(3) & !\comb_224|last_data_received\(2)))) # (!\comb_224|last_data_received\(4) & 
-- (\comb_224|last_data_received\(0) $ (((\comb_224|last_data_received\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(0),
	datab => \comb_224|last_data_received\(3),
	datac => \comb_224|last_data_received\(4),
	datad => \comb_224|last_data_received\(2),
	combout => \comb_224|converter|WideOr3~0_combout\);

-- Location: LCCOMB_X32_Y17_N0
\comb_224|data_out~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~15_combout\ = (((!\comb_224|last_data_received\(2)) # (!\comb_224|last_data_received\(4))) # (!\comb_224|last_data_received\(3))) # (!\comb_224|last_data_received\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(0),
	datab => \comb_224|last_data_received\(3),
	datac => \comb_224|last_data_received\(4),
	datad => \comb_224|last_data_received\(2),
	combout => \comb_224|data_out~15_combout\);

-- Location: LCCOMB_X32_Y17_N24
\comb_224|data_out~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~16_combout\ = (\comb_224|last_data_received\(1) & (!\comb_224|converter|WideOr3~0_combout\ & (\comb_224|last_data_received\(5)))) # (!\comb_224|last_data_received\(1) & (((\comb_224|data_out~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(1),
	datab => \comb_224|converter|WideOr3~0_combout\,
	datac => \comb_224|last_data_received\(5),
	datad => \comb_224|data_out~15_combout\,
	combout => \comb_224|data_out~16_combout\);

-- Location: LCCOMB_X32_Y17_N12
\comb_224|data_out~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~34_combout\ = (\comb_224|last_data_received\(0)) # ((\comb_224|last_data_received\(3)) # (!\comb_224|last_data_received\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(0),
	datab => \comb_224|last_data_received\(3),
	datad => \comb_224|last_data_received\(2),
	combout => \comb_224|data_out~34_combout\);

-- Location: LCCOMB_X32_Y17_N10
\comb_224|data_out~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~35_combout\ = (\comb_224|last_data_received\(5) & (\comb_224|last_data_received\(6))) # (!\comb_224|last_data_received\(5) & ((\comb_224|data_out~34_combout\) # (\comb_224|last_data_received\(6) $ (!\comb_224|last_data_received\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(5),
	datab => \comb_224|last_data_received\(6),
	datac => \comb_224|last_data_received\(4),
	datad => \comb_224|data_out~34_combout\,
	combout => \comb_224|data_out~35_combout\);

-- Location: LCCOMB_X33_Y17_N12
\comb_224|data_out~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out~17_combout\ = (\comb_224|converter|WideOr4~8_combout\ & (!\comb_224|data_out~16_combout\ & !\comb_224|data_out~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|converter|WideOr4~8_combout\,
	datab => \comb_224|data_out~16_combout\,
	datad => \comb_224|data_out~35_combout\,
	combout => \comb_224|data_out~17_combout\);

-- Location: LCCOMB_X28_Y17_N14
\comb_224|data_out[7]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[7]~29_combout\ = (\comb_224|state.10~regout\ & ((\comb_224|converter|WideOr4~8_combout\ & (\comb_224|data_out[7]~28_combout\)) # (!\comb_224|converter|WideOr4~8_combout\ & ((\comb_224|data_out[28]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out[7]~28_combout\,
	datab => \comb_224|data_out[28]~8_combout\,
	datac => \comb_224|converter|WideOr4~8_combout\,
	datad => \comb_224|state.10~regout\,
	combout => \comb_224|data_out[7]~29_combout\);

-- Location: LCFF_X27_Y17_N21
\comb_224|data_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~17_combout\,
	sload => VCC,
	ena => \comb_224|data_out[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(4));

-- Location: LCCOMB_X27_Y17_N20
\Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\states_Q.100~regout\ & ((\comb_224|data_out\(4)) # ((\comb_225|dataWrite_Q\(4) & \states_Q.001~regout\)))) # (!\states_Q.100~regout\ & (\comb_225|dataWrite_Q\(4) & ((\states_Q.001~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.100~regout\,
	datab => \comb_225|dataWrite_Q\(4),
	datac => \comb_224|data_out\(4),
	datad => \states_Q.001~regout\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X29_Y16_N30
\comb_225|Selector61~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector61~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(6) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|WideOr5~combout\ & \comb_225|dataRead_Q\(6))))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(6) & 
-- (\comb_225|WideOr5~combout\ & (\comb_225|dataRead_Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(6),
	datab => \comb_225|WideOr5~combout\,
	datac => \comb_225|dataRead_Q\(6),
	datad => \comb_225|states_Q.010~regout\,
	combout => \comb_225|Selector61~0_combout\);

-- Location: LCFF_X29_Y16_N31
\comb_225|dataRead_Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector61~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(6));

-- Location: LCCOMB_X29_Y16_N18
\comb_225|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector29~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(6)) # ((\comb_225|dataWrite_Q\(6) & \comb_225|WideOr4~combout\)))) # (!\comb_225|states_Q.100~regout\ & (((\comb_225|dataWrite_Q\(6) & 
-- \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|dataRead_Q\(6),
	datac => \comb_225|dataWrite_Q\(6),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector29~0_combout\);

-- Location: LCFF_X29_Y16_N19
\comb_225|dataWrite_Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(6));

-- Location: LCCOMB_X27_Y17_N16
\comb_224|data_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[6]~feeder_combout\ = \comb_224|data_out~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|data_out~12_combout\,
	combout => \comb_224|data_out[6]~feeder_combout\);

-- Location: LCFF_X27_Y17_N17
\comb_224|data_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|data_out[6]~feeder_combout\,
	ena => \comb_224|data_out[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(6));

-- Location: LCCOMB_X27_Y16_N22
\Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(6)) # ((\comb_224|data_out\(6) & \states_Q.100~regout\)))) # (!\states_Q.001~regout\ & (((\comb_224|data_out\(6) & \states_Q.100~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.001~regout\,
	datab => \comb_225|dataWrite_Q\(6),
	datac => \comb_224|data_out\(6),
	datad => \states_Q.100~regout\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X29_Y19_N2
\comb_225|Selector60~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector60~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(7) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|dataRead_Q\(7) & \comb_225|WideOr5~combout\)))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(7) & 
-- (((\comb_225|dataRead_Q\(7) & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(7),
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|dataRead_Q\(7),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector60~0_combout\);

-- Location: LCFF_X29_Y19_N3
\comb_225|dataRead_Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector60~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(7));

-- Location: LCCOMB_X27_Y17_N30
\comb_225|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector28~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(7)) # ((\comb_225|WideOr4~combout\ & \comb_225|dataWrite_Q\(7))))) # (!\comb_225|states_Q.100~regout\ & (\comb_225|WideOr4~combout\ & (\comb_225|dataWrite_Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|WideOr4~combout\,
	datac => \comb_225|dataWrite_Q\(7),
	datad => \comb_225|dataRead_Q\(7),
	combout => \comb_225|Selector28~0_combout\);

-- Location: LCFF_X27_Y17_N31
\comb_225|dataWrite_Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(7));

-- Location: LCFF_X27_Y17_N7
\comb_224|data_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~7_combout\,
	sload => VCC,
	ena => \comb_224|data_out[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(7));

-- Location: LCCOMB_X27_Y17_N6
\Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\states_Q.100~regout\ & ((\comb_224|data_out\(7)) # ((\comb_225|dataWrite_Q\(7) & \states_Q.001~regout\)))) # (!\states_Q.100~regout\ & (\comb_225|dataWrite_Q\(7) & ((\states_Q.001~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.100~regout\,
	datab => \comb_225|dataWrite_Q\(7),
	datac => \comb_224|data_out\(7),
	datad => \states_Q.001~regout\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X31_Y17_N10
\comb_224|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|count~2_combout\ = (\comb_224|last_data_received\(0) $ (!\comb_224|last_data_received\(6))) # (!\comb_224|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|Equal1~1_combout\,
	datac => \comb_224|last_data_received\(0),
	datad => \comb_224|last_data_received\(6),
	combout => \comb_224|count~2_combout\);

-- Location: LCCOMB_X28_Y17_N30
\comb_224|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|count~3_combout\ = (\comb_224|converter|WideOr4~8_combout\ & (\comb_224|count\(0) $ ((\comb_224|count\(1))))) # (!\comb_224|converter|WideOr4~8_combout\ & (((\comb_224|count\(1) & \comb_224|count~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|count\(0),
	datab => \comb_224|converter|WideOr4~8_combout\,
	datac => \comb_224|count\(1),
	datad => \comb_224|count~2_combout\,
	combout => \comb_224|count~3_combout\);

-- Location: LCFF_X28_Y17_N31
\comb_224|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|count~3_combout\,
	ena => \comb_224|state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|count\(1));

-- Location: LCCOMB_X28_Y17_N4
\comb_224|count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|count~5_combout\ = (\comb_224|converter|WideOr4~8_combout\ & (((!\comb_224|count\(0))))) # (!\comb_224|converter|WideOr4~8_combout\ & (\comb_224|count\(0) & ((\comb_224|count~4_combout\) # (!\comb_224|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|count~4_combout\,
	datab => \comb_224|converter|WideOr4~8_combout\,
	datac => \comb_224|count\(0),
	datad => \comb_224|Equal1~1_combout\,
	combout => \comb_224|count~5_combout\);

-- Location: LCFF_X28_Y17_N5
\comb_224|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|count~5_combout\,
	ena => \comb_224|state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|count\(0));

-- Location: LCCOMB_X31_Y17_N26
\comb_224|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|count~0_combout\ = (!\comb_224|converter|WideOr4~8_combout\ & ((\comb_224|last_data_received\(0) $ (!\comb_224|last_data_received\(6))) # (!\comb_224|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|last_data_received\(0),
	datab => \comb_224|converter|WideOr4~8_combout\,
	datac => \comb_224|Equal1~1_combout\,
	datad => \comb_224|last_data_received\(6),
	combout => \comb_224|count~0_combout\);

-- Location: LCCOMB_X28_Y17_N28
\comb_224|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|count~1_combout\ = (\comb_224|WideOr0~0_combout\ & ((\comb_224|converter|WideOr4~8_combout\) # ((\comb_224|count\(2) & \comb_224|count~0_combout\)))) # (!\comb_224|WideOr0~0_combout\ & (((\comb_224|count\(2) & \comb_224|count~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|WideOr0~0_combout\,
	datab => \comb_224|converter|WideOr4~8_combout\,
	datac => \comb_224|count\(2),
	datad => \comb_224|count~0_combout\,
	combout => \comb_224|count~1_combout\);

-- Location: LCFF_X28_Y17_N29
\comb_224|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|count~1_combout\,
	ena => \comb_224|state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|count\(2));

-- Location: LCCOMB_X28_Y17_N6
\comb_224|data_out[24]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[24]~18_combout\ = (\comb_224|count\(1) & (!\comb_224|count\(0) & \comb_224|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|count\(1),
	datac => \comb_224|count\(0),
	datad => \comb_224|count\(2),
	combout => \comb_224|data_out[24]~18_combout\);

-- Location: LCCOMB_X29_Y17_N2
\comb_224|data_out[24]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[24]~19_combout\ = (\comb_224|state.10~regout\ & ((\comb_224|converter|WideOr4~8_combout\ & ((\comb_224|data_out[24]~18_combout\))) # (!\comb_224|converter|WideOr4~8_combout\ & (\comb_224|data_out[28]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out[28]~8_combout\,
	datab => \comb_224|state.10~regout\,
	datac => \comb_224|data_out[24]~18_combout\,
	datad => \comb_224|converter|WideOr4~8_combout\,
	combout => \comb_224|data_out[24]~19_combout\);

-- Location: LCFF_X33_Y17_N15
\comb_224|data_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~17_combout\,
	sload => VCC,
	ena => \comb_224|data_out[24]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(24));

-- Location: LCCOMB_X33_Y17_N28
\comb_225|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector11~0_combout\ = (\comb_225|dataRead_Q\(24) & ((\comb_225|states_Q.100~regout\) # ((\comb_225|dataWrite_Q\(24) & \comb_225|WideOr4~combout\)))) # (!\comb_225|dataRead_Q\(24) & (((\comb_225|dataWrite_Q\(24) & \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataRead_Q\(24),
	datab => \comb_225|states_Q.100~regout\,
	datac => \comb_225|dataWrite_Q\(24),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector11~0_combout\);

-- Location: LCFF_X33_Y17_N29
\comb_225|dataWrite_Q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(24));

-- Location: LCCOMB_X33_Y17_N14
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\states_Q.100~regout\ & ((\comb_224|data_out\(24)) # ((\states_Q.001~regout\ & \comb_225|dataWrite_Q\(24))))) # (!\states_Q.100~regout\ & (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.100~regout\,
	datab => \states_Q.001~regout\,
	datac => \comb_224|data_out\(24),
	datad => \comb_225|dataWrite_Q\(24),
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X29_Y16_N2
\comb_225|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector10~0_combout\ = (\comb_225|dataRead_Q\(25) & ((\comb_225|states_Q.100~regout\) # ((\comb_225|WideOr4~combout\ & \comb_225|dataWrite_Q\(25))))) # (!\comb_225|dataRead_Q\(25) & (\comb_225|WideOr4~combout\ & (\comb_225|dataWrite_Q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataRead_Q\(25),
	datab => \comb_225|WideOr4~combout\,
	datac => \comb_225|dataWrite_Q\(25),
	datad => \comb_225|states_Q.100~regout\,
	combout => \comb_225|Selector10~0_combout\);

-- Location: LCFF_X29_Y16_N3
\comb_225|dataWrite_Q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(25));

-- Location: LCFF_X33_Y17_N13
\comb_224|data_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~37_combout\,
	sload => VCC,
	ena => \comb_224|data_out[24]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(25));

-- Location: LCCOMB_X33_Y16_N22
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(25)) # ((\states_Q.100~regout\ & \comb_224|data_out\(25))))) # (!\states_Q.001~regout\ & (\states_Q.100~regout\ & ((\comb_224|data_out\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.001~regout\,
	datab => \states_Q.100~regout\,
	datac => \comb_225|dataWrite_Q\(25),
	datad => \comb_224|data_out\(25),
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X28_Y17_N16
\comb_224|data_out[28]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[28]~10_combout\ = (\comb_224|state.10~regout\ & ((\comb_224|converter|WideOr4~8_combout\ & (\comb_224|data_out[28]~9_combout\)) # (!\comb_224|converter|WideOr4~8_combout\ & ((\comb_224|data_out[28]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out[28]~9_combout\,
	datab => \comb_224|data_out[28]~8_combout\,
	datac => \comb_224|converter|WideOr4~8_combout\,
	datad => \comb_224|state.10~regout\,
	combout => \comb_224|data_out[28]~10_combout\);

-- Location: LCFF_X28_Y16_N3
\comb_224|data_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~17_combout\,
	sload => VCC,
	ena => \comb_224|data_out[28]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(28));

-- Location: LCCOMB_X29_Y16_N14
\comb_225|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector6~0_combout\ = (\comb_225|dataRead_Q\(29) & ((\comb_225|states_Q.100~regout\) # ((\comb_225|WideOr4~combout\ & \comb_225|dataWrite_Q\(29))))) # (!\comb_225|dataRead_Q\(29) & (\comb_225|WideOr4~combout\ & (\comb_225|dataWrite_Q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataRead_Q\(29),
	datab => \comb_225|WideOr4~combout\,
	datac => \comb_225|dataWrite_Q\(29),
	datad => \comb_225|states_Q.100~regout\,
	combout => \comb_225|Selector6~0_combout\);

-- Location: LCFF_X29_Y16_N15
\comb_225|dataWrite_Q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(29));

-- Location: LCFF_X28_Y16_N25
\comb_224|data_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~37_combout\,
	sload => VCC,
	ena => \comb_224|data_out[28]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(29));

-- Location: LCCOMB_X28_Y16_N24
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(29)) # ((\comb_224|data_out\(29) & \states_Q.100~regout\)))) # (!\states_Q.001~regout\ & (((\comb_224|data_out\(29) & \states_Q.100~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.001~regout\,
	datab => \comb_225|dataWrite_Q\(29),
	datac => \comb_224|data_out\(29),
	datad => \states_Q.100~regout\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X30_Y16_N2
\comb_225|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector37~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(30) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|dataRead_Q\(30) & \comb_225|WideOr5~combout\)))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(30) & 
-- (((\comb_225|dataRead_Q\(30) & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(30),
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|dataRead_Q\(30),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector37~0_combout\);

-- Location: LCFF_X30_Y16_N3
\comb_225|dataRead_Q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(30));

-- Location: LCCOMB_X29_Y16_N10
\comb_225|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector5~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(30)) # ((\comb_225|WideOr4~combout\ & \comb_225|dataWrite_Q\(30))))) # (!\comb_225|states_Q.100~regout\ & (\comb_225|WideOr4~combout\ & 
-- (\comb_225|dataWrite_Q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|WideOr4~combout\,
	datac => \comb_225|dataWrite_Q\(30),
	datad => \comb_225|dataRead_Q\(30),
	combout => \comb_225|Selector5~0_combout\);

-- Location: LCFF_X29_Y16_N11
\comb_225|dataWrite_Q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(30));

-- Location: LCFF_X28_Y16_N11
\comb_224|data_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~12_combout\,
	sload => VCC,
	ena => \comb_224|data_out[28]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(30));

-- Location: LCCOMB_X28_Y16_N10
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(30)) # ((\comb_224|data_out\(30) & \states_Q.100~regout\)))) # (!\states_Q.001~regout\ & (((\comb_224|data_out\(30) & \states_Q.100~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.001~regout\,
	datab => \comb_225|dataWrite_Q\(30),
	datac => \comb_224|data_out\(30),
	datad => \states_Q.100~regout\,
	combout => \Selector13~0_combout\);

-- Location: M4K_X26_Y16
\comb_221|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "mainMemory:comb_221|altsyncram:altsyncram_component|altsyncram_39a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 14,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_width => 7,
	port_b_data_width => 14,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \Selector11~0_combout\,
	clk0 => \CLOCK_50~clkctrl_outclk\,
	portadatain => \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \comb_221|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X28_Y16_N30
\comb_225|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector36~0_combout\ = (\comb_225|states_Q.010~regout\ & ((\comb_221|altsyncram_component|auto_generated|q_a\(31)) # ((\comb_225|dataRead_Q\(31) & \comb_225|WideOr5~combout\)))) # (!\comb_225|states_Q.010~regout\ & (((\comb_225|dataRead_Q\(31) 
-- & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.010~regout\,
	datab => \comb_221|altsyncram_component|auto_generated|q_a\(31),
	datac => \comb_225|dataRead_Q\(31),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector36~0_combout\);

-- Location: LCFF_X28_Y16_N31
\comb_225|dataRead_Q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(31));

-- Location: LCCOMB_X29_Y16_N22
\comb_225|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector4~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(31)) # ((\comb_225|WideOr4~combout\ & \comb_225|dataWrite_Q\(31))))) # (!\comb_225|states_Q.100~regout\ & (\comb_225|WideOr4~combout\ & 
-- (\comb_225|dataWrite_Q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|WideOr4~combout\,
	datac => \comb_225|dataWrite_Q\(31),
	datad => \comb_225|dataRead_Q\(31),
	combout => \comb_225|Selector4~0_combout\);

-- Location: LCFF_X29_Y16_N23
\comb_225|dataWrite_Q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(31));

-- Location: LCFF_X28_Y16_N29
\comb_224|data_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~7_combout\,
	sload => VCC,
	ena => \comb_224|data_out[28]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(31));

-- Location: LCCOMB_X28_Y16_N28
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(31)) # ((\comb_224|data_out\(31) & \states_Q.100~regout\)))) # (!\states_Q.001~regout\ & (((\comb_224|data_out\(31) & \states_Q.100~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.001~regout\,
	datab => \comb_225|dataWrite_Q\(31),
	datac => \comb_224|data_out\(31),
	datad => \states_Q.100~regout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X28_Y16_N16
\comb_225|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector39~0_combout\ = (\comb_225|states_Q.010~regout\ & ((\comb_221|altsyncram_component|auto_generated|q_a\(28)) # ((\comb_225|dataRead_Q\(28) & \comb_225|WideOr5~combout\)))) # (!\comb_225|states_Q.010~regout\ & (((\comb_225|dataRead_Q\(28) 
-- & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.010~regout\,
	datab => \comb_221|altsyncram_component|auto_generated|q_a\(28),
	datac => \comb_225|dataRead_Q\(28),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector39~0_combout\);

-- Location: LCFF_X28_Y16_N17
\comb_225|dataRead_Q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(28));

-- Location: LCCOMB_X29_Y16_N4
\comb_225|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector7~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(28)) # ((\comb_225|dataWrite_Q\(28) & \comb_225|WideOr4~combout\)))) # (!\comb_225|states_Q.100~regout\ & (((\comb_225|dataWrite_Q\(28) & 
-- \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|dataRead_Q\(28),
	datac => \comb_225|dataWrite_Q\(28),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector7~0_combout\);

-- Location: LCFF_X29_Y16_N5
\comb_225|dataWrite_Q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(28));

-- Location: LCCOMB_X28_Y16_N2
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(28)) # ((\states_Q.100~regout\ & \comb_224|data_out\(28))))) # (!\states_Q.001~regout\ & (\states_Q.100~regout\ & (\comb_224|data_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.001~regout\,
	datab => \states_Q.100~regout\,
	datac => \comb_224|data_out\(28),
	datad => \comb_225|dataWrite_Q\(28),
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X27_Y17_N0
\comb_225|Selector62~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector62~0_combout\ = (\comb_225|WideOr5~combout\ & ((\comb_225|dataRead_Q\(5)) # ((\comb_225|states_Q.010~regout\ & \comb_221|altsyncram_component|auto_generated|q_a\(5))))) # (!\comb_225|WideOr5~combout\ & (\comb_225|states_Q.010~regout\ & 
-- ((\comb_221|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|WideOr5~combout\,
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|dataRead_Q\(5),
	datad => \comb_221|altsyncram_component|auto_generated|q_a\(5),
	combout => \comb_225|Selector62~0_combout\);

-- Location: LCFF_X27_Y17_N1
\comb_225|dataRead_Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector62~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(5));

-- Location: LCCOMB_X27_Y17_N28
\comb_225|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector30~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(5)) # ((\comb_225|WideOr4~combout\ & \comb_225|dataWrite_Q\(5))))) # (!\comb_225|states_Q.100~regout\ & (\comb_225|WideOr4~combout\ & (\comb_225|dataWrite_Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|WideOr4~combout\,
	datac => \comb_225|dataWrite_Q\(5),
	datad => \comb_225|dataRead_Q\(5),
	combout => \comb_225|Selector30~0_combout\);

-- Location: LCFF_X27_Y17_N29
\comb_225|dataWrite_Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(5));

-- Location: LCFF_X27_Y17_N11
\comb_224|data_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~37_combout\,
	sload => VCC,
	ena => \comb_224|data_out[7]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(5));

-- Location: LCCOMB_X27_Y17_N10
\Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\states_Q.100~regout\ & ((\comb_224|data_out\(5)) # ((\comb_225|dataWrite_Q\(5) & \states_Q.001~regout\)))) # (!\states_Q.100~regout\ & (\comb_225|dataWrite_Q\(5) & ((\states_Q.001~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.100~regout\,
	datab => \comb_225|dataWrite_Q\(5),
	datac => \comb_224|data_out\(5),
	datad => \states_Q.001~regout\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X27_Y19_N18
\comb_222|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector11~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(24) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(24),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector11~0_combout\);

-- Location: LCCOMB_X30_Y20_N16
\comb_222|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector35~0_combout\ = (\comb_222|states_Q.001~regout\) # (!\comb_222|states_Q.000~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|states_Q.001~regout\,
	datad => \comb_222|states_Q.000~regout\,
	combout => \comb_222|Selector35~0_combout\);

-- Location: LCFF_X27_Y19_N19
\comb_222|dataRead_Q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector11~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(24));

-- Location: LCCOMB_X28_Y19_N2
\comb_222|inst|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector10~1_combout\ = (\comb_222|inst|Selector10~0_combout\ & ((\comb_222|inst|states_Q.10~regout\) # ((\comb_222|dataRead_Q\(24) & \comb_222|inst|states_Q.01~regout\)))) # (!\comb_222|inst|Selector10~0_combout\ & 
-- (\comb_222|dataRead_Q\(24) & (\comb_222|inst|states_Q.01~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|Selector10~0_combout\,
	datab => \comb_222|dataRead_Q\(24),
	datac => \comb_222|inst|states_Q.01~regout\,
	datad => \comb_222|inst|states_Q.10~regout\,
	combout => \comb_222|inst|Selector10~1_combout\);

-- Location: LCFF_X28_Y19_N3
\comb_222|inst|mainRegistor_Q[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector10~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(24));

-- Location: LCCOMB_X28_Y19_N20
\comb_222|inst|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector6~0_combout\ = (\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(28))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(24)))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(28),
	datab => \comb_222|inst|mainRegistor_Q\(24),
	datac => \comb_222|inst|hexHS_Q~regout\,
	datad => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	combout => \comb_222|inst|Selector6~0_combout\);

-- Location: LCCOMB_X28_Y19_N0
\comb_222|inst|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector6~1_combout\ = (\comb_222|dataRead_Q\(28) & ((\comb_222|inst|states_Q.01~regout\) # ((\comb_222|inst|Selector6~0_combout\ & \comb_222|inst|states_Q.10~regout\)))) # (!\comb_222|dataRead_Q\(28) & 
-- (((\comb_222|inst|Selector6~0_combout\ & \comb_222|inst|states_Q.10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|dataRead_Q\(28),
	datab => \comb_222|inst|states_Q.01~regout\,
	datac => \comb_222|inst|Selector6~0_combout\,
	datad => \comb_222|inst|states_Q.10~regout\,
	combout => \comb_222|inst|Selector6~1_combout\);

-- Location: LCFF_X28_Y19_N1
\comb_222|inst|mainRegistor_Q[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector6~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(28));

-- Location: LCCOMB_X29_Y20_N0
\comb_222|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector6~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(29) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(29),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector6~0_combout\);

-- Location: LCFF_X29_Y20_N1
\comb_222|dataRead_Q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector6~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(29));

-- Location: LCCOMB_X29_Y20_N18
\comb_222|inst|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector13~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(21)))) # (!\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(17))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(17),
	datab => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datac => \comb_222|inst|hexHS_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(21),
	combout => \comb_222|inst|Selector13~0_combout\);

-- Location: LCCOMB_X25_Y16_N4
\comb_225|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector27~0_combout\ = (\comb_225|dataRead_Q\(8) & ((\comb_225|states_Q.100~regout\) # ((\comb_225|dataWrite_Q\(8) & \comb_225|WideOr4~combout\)))) # (!\comb_225|dataRead_Q\(8) & (((\comb_225|dataWrite_Q\(8) & \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataRead_Q\(8),
	datab => \comb_225|states_Q.100~regout\,
	datac => \comb_225|dataWrite_Q\(8),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector27~0_combout\);

-- Location: LCFF_X25_Y16_N5
\comb_225|dataWrite_Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(8));

-- Location: LCCOMB_X28_Y17_N18
\comb_224|data_out[11]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[11]~27_combout\ = (\comb_224|state.10~regout\ & ((\comb_224|converter|WideOr4~8_combout\ & (\comb_224|data_out[11]~26_combout\)) # (!\comb_224|converter|WideOr4~8_combout\ & ((\comb_224|data_out[28]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out[11]~26_combout\,
	datab => \comb_224|data_out[28]~8_combout\,
	datac => \comb_224|converter|WideOr4~8_combout\,
	datad => \comb_224|state.10~regout\,
	combout => \comb_224|data_out[11]~27_combout\);

-- Location: LCFF_X25_Y16_N29
\comb_224|data_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~17_combout\,
	sload => VCC,
	ena => \comb_224|data_out[11]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(8));

-- Location: LCCOMB_X25_Y16_N6
\Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(8)) # ((\states_Q.100~regout\ & \comb_224|data_out\(8))))) # (!\states_Q.001~regout\ & (((\states_Q.100~regout\ & \comb_224|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.001~regout\,
	datab => \comb_225|dataWrite_Q\(8),
	datac => \states_Q.100~regout\,
	datad => \comb_224|data_out\(8),
	combout => \Selector35~0_combout\);

-- Location: LCFF_X25_Y16_N23
\comb_224|data_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~37_combout\,
	sload => VCC,
	ena => \comb_224|data_out[11]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(9));

-- Location: LCCOMB_X25_Y16_N0
\Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\comb_225|dataWrite_Q\(9) & ((\states_Q.001~regout\) # ((\comb_224|data_out\(9) & \states_Q.100~regout\)))) # (!\comb_225|dataWrite_Q\(9) & (\comb_224|data_out\(9) & (\states_Q.100~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataWrite_Q\(9),
	datab => \comb_224|data_out\(9),
	datac => \states_Q.100~regout\,
	datad => \states_Q.001~regout\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X27_Y19_N26
\comb_225|Selector57~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector57~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(10) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|dataRead_Q\(10) & \comb_225|WideOr5~combout\)))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(10) & 
-- (((\comb_225|dataRead_Q\(10) & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(10),
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|dataRead_Q\(10),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector57~0_combout\);

-- Location: LCFF_X27_Y19_N27
\comb_225|dataRead_Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector57~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(10));

-- Location: LCCOMB_X27_Y19_N28
\comb_225|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector25~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(10)) # ((\comb_225|dataWrite_Q\(10) & \comb_225|WideOr4~combout\)))) # (!\comb_225|states_Q.100~regout\ & (((\comb_225|dataWrite_Q\(10) & 
-- \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|dataRead_Q\(10),
	datac => \comb_225|dataWrite_Q\(10),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector25~0_combout\);

-- Location: LCFF_X27_Y19_N29
\comb_225|dataWrite_Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(10));

-- Location: LCCOMB_X25_Y16_N20
\comb_224|data_out[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[10]~feeder_combout\ = \comb_224|data_out~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|data_out~12_combout\,
	combout => \comb_224|data_out[10]~feeder_combout\);

-- Location: LCFF_X25_Y16_N21
\comb_224|data_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|data_out[10]~feeder_combout\,
	ena => \comb_224|data_out[11]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(10));

-- Location: LCCOMB_X25_Y16_N14
\Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\states_Q.100~regout\ & ((\comb_224|data_out\(10)) # ((\comb_225|dataWrite_Q\(10) & \states_Q.001~regout\)))) # (!\states_Q.100~regout\ & (\comb_225|dataWrite_Q\(10) & ((\states_Q.001~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.100~regout\,
	datab => \comb_225|dataWrite_Q\(10),
	datac => \comb_224|data_out\(10),
	datad => \states_Q.001~regout\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X25_Y16_N26
\comb_224|data_out[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[11]~feeder_combout\ = \comb_224|data_out~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|data_out~7_combout\,
	combout => \comb_224|data_out[11]~feeder_combout\);

-- Location: LCFF_X25_Y16_N27
\comb_224|data_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|data_out[11]~feeder_combout\,
	ena => \comb_224|data_out[11]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(11));

-- Location: LCCOMB_X25_Y16_N12
\comb_225|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector24~0_combout\ = (\comb_225|dataRead_Q\(11) & ((\comb_225|states_Q.100~regout\) # ((\comb_225|dataWrite_Q\(11) & \comb_225|WideOr4~combout\)))) # (!\comb_225|dataRead_Q\(11) & (((\comb_225|dataWrite_Q\(11) & \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataRead_Q\(11),
	datab => \comb_225|states_Q.100~regout\,
	datac => \comb_225|dataWrite_Q\(11),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector24~0_combout\);

-- Location: LCFF_X25_Y16_N13
\comb_225|dataWrite_Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(11));

-- Location: LCCOMB_X25_Y16_N18
\Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(11)) # ((\comb_224|data_out\(11) & \states_Q.100~regout\)))) # (!\states_Q.001~regout\ & (\comb_224|data_out\(11) & (\states_Q.100~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.001~regout\,
	datab => \comb_224|data_out\(11),
	datac => \states_Q.100~regout\,
	datad => \comb_225|dataWrite_Q\(11),
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X27_Y19_N30
\comb_225|Selector55~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector55~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(12) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|dataRead_Q\(12) & \comb_225|WideOr5~combout\)))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(12) & 
-- (((\comb_225|dataRead_Q\(12) & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(12),
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|dataRead_Q\(12),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector55~0_combout\);

-- Location: LCFF_X27_Y19_N31
\comb_225|dataRead_Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(12));

-- Location: LCCOMB_X27_Y19_N20
\comb_225|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector23~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(12)) # ((\comb_225|dataWrite_Q\(12) & \comb_225|WideOr4~combout\)))) # (!\comb_225|states_Q.100~regout\ & (((\comb_225|dataWrite_Q\(12) & 
-- \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|dataRead_Q\(12),
	datac => \comb_225|dataWrite_Q\(12),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector23~0_combout\);

-- Location: LCFF_X27_Y19_N21
\comb_225|dataWrite_Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(12));

-- Location: LCCOMB_X28_Y17_N8
\comb_224|data_out[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[12]~24_combout\ = (\comb_224|count\(1) & (\comb_224|count\(0) & !\comb_224|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|count\(1),
	datac => \comb_224|count\(0),
	datad => \comb_224|count\(2),
	combout => \comb_224|data_out[12]~24_combout\);

-- Location: LCCOMB_X28_Y17_N2
\comb_224|data_out[12]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[12]~25_combout\ = (\comb_224|state.10~regout\ & ((\comb_224|converter|WideOr4~8_combout\ & (\comb_224|data_out[12]~24_combout\)) # (!\comb_224|converter|WideOr4~8_combout\ & ((\comb_224|data_out[28]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|state.10~regout\,
	datab => \comb_224|data_out[12]~24_combout\,
	datac => \comb_224|converter|WideOr4~8_combout\,
	datad => \comb_224|data_out[28]~8_combout\,
	combout => \comb_224|data_out[12]~25_combout\);

-- Location: LCFF_X27_Y16_N27
\comb_224|data_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~17_combout\,
	sload => VCC,
	ena => \comb_224|data_out[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(12));

-- Location: LCCOMB_X27_Y16_N26
\Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(12)) # ((\comb_224|data_out\(12) & \states_Q.100~regout\)))) # (!\states_Q.001~regout\ & (((\comb_224|data_out\(12) & \states_Q.100~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.001~regout\,
	datab => \comb_225|dataWrite_Q\(12),
	datac => \comb_224|data_out\(12),
	datad => \states_Q.100~regout\,
	combout => \Selector31~0_combout\);

-- Location: LCFF_X27_Y16_N11
\comb_224|data_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~12_combout\,
	sload => VCC,
	ena => \comb_224|data_out[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(14));

-- Location: LCCOMB_X27_Y16_N10
\Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\comb_225|dataWrite_Q\(14) & ((\states_Q.001~regout\) # ((\states_Q.100~regout\ & \comb_224|data_out\(14))))) # (!\comb_225|dataWrite_Q\(14) & (\states_Q.100~regout\ & (\comb_224|data_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataWrite_Q\(14),
	datab => \states_Q.100~regout\,
	datac => \comb_224|data_out\(14),
	datad => \states_Q.001~regout\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X27_Y16_N30
\comb_225|Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector51~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(16) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|dataRead_Q\(16) & \comb_225|WideOr5~combout\)))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(16) & 
-- (((\comb_225|dataRead_Q\(16) & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(16),
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|dataRead_Q\(16),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector51~0_combout\);

-- Location: LCFF_X27_Y16_N31
\comb_225|dataRead_Q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector51~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(16));

-- Location: LCCOMB_X27_Y16_N12
\comb_225|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector19~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(16)) # ((\comb_225|dataWrite_Q\(16) & \comb_225|WideOr4~combout\)))) # (!\comb_225|states_Q.100~regout\ & (((\comb_225|dataWrite_Q\(16) & 
-- \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|dataRead_Q\(16),
	datac => \comb_225|dataWrite_Q\(16),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector19~0_combout\);

-- Location: LCFF_X27_Y16_N13
\comb_225|dataWrite_Q[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(16));

-- Location: LCCOMB_X28_Y17_N22
\comb_224|data_out[16]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[16]~22_combout\ = (!\comb_224|count\(1) & (!\comb_224|count\(0) & \comb_224|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|count\(1),
	datac => \comb_224|count\(0),
	datad => \comb_224|count\(2),
	combout => \comb_224|data_out[16]~22_combout\);

-- Location: LCCOMB_X29_Y17_N30
\comb_224|data_out[16]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[16]~23_combout\ = (\comb_224|state.10~regout\ & ((\comb_224|converter|WideOr4~8_combout\ & ((\comb_224|data_out[16]~22_combout\))) # (!\comb_224|converter|WideOr4~8_combout\ & (\comb_224|data_out[28]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|converter|WideOr4~8_combout\,
	datab => \comb_224|state.10~regout\,
	datac => \comb_224|data_out[28]~8_combout\,
	datad => \comb_224|data_out[16]~22_combout\,
	combout => \comb_224|data_out[16]~23_combout\);

-- Location: LCFF_X34_Y16_N11
\comb_224|data_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~17_combout\,
	sload => VCC,
	ena => \comb_224|data_out[16]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(16));

-- Location: LCCOMB_X34_Y16_N10
\Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\states_Q.100~regout\ & ((\comb_224|data_out\(16)) # ((\comb_225|dataWrite_Q\(16) & \states_Q.001~regout\)))) # (!\states_Q.100~regout\ & (\comb_225|dataWrite_Q\(16) & ((\states_Q.001~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.100~regout\,
	datab => \comb_225|dataWrite_Q\(16),
	datac => \comb_224|data_out\(16),
	datad => \states_Q.001~regout\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X30_Y20_N22
\comb_225|Selector49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector49~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(18) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|dataRead_Q\(18) & \comb_225|WideOr5~combout\)))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(18) & 
-- (((\comb_225|dataRead_Q\(18) & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(18),
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|dataRead_Q\(18),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector49~0_combout\);

-- Location: LCFF_X30_Y20_N23
\comb_225|dataRead_Q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector49~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(18));

-- Location: LCCOMB_X34_Y16_N8
\comb_225|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector17~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(18)) # ((\comb_225|dataWrite_Q\(18) & \comb_225|WideOr4~combout\)))) # (!\comb_225|states_Q.100~regout\ & (((\comb_225|dataWrite_Q\(18) & 
-- \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|dataRead_Q\(18),
	datac => \comb_225|dataWrite_Q\(18),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector17~0_combout\);

-- Location: LCFF_X34_Y16_N9
\comb_225|dataWrite_Q[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(18));

-- Location: LCCOMB_X34_Y16_N18
\comb_224|data_out[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[18]~feeder_combout\ = \comb_224|data_out~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|data_out~12_combout\,
	combout => \comb_224|data_out[18]~feeder_combout\);

-- Location: LCFF_X34_Y16_N19
\comb_224|data_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|data_out[18]~feeder_combout\,
	ena => \comb_224|data_out[16]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(18));

-- Location: LCCOMB_X34_Y16_N2
\Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(18)) # ((\states_Q.100~regout\ & \comb_224|data_out\(18))))) # (!\states_Q.001~regout\ & (((\states_Q.100~regout\ & \comb_224|data_out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.001~regout\,
	datab => \comb_225|dataWrite_Q\(18),
	datac => \states_Q.100~regout\,
	datad => \comb_224|data_out\(18),
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X30_Y16_N14
\comb_225|Selector48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector48~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(19) & ((\comb_225|states_Q.010~regout\) # ((\comb_225|dataRead_Q\(19) & \comb_225|WideOr5~combout\)))) # (!\comb_221|altsyncram_component|auto_generated|q_a\(19) & 
-- (((\comb_225|dataRead_Q\(19) & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_221|altsyncram_component|auto_generated|q_a\(19),
	datab => \comb_225|states_Q.010~regout\,
	datac => \comb_225|dataRead_Q\(19),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector48~0_combout\);

-- Location: LCFF_X30_Y16_N15
\comb_225|dataRead_Q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector48~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(19));

-- Location: LCCOMB_X34_Y16_N4
\comb_225|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector16~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(19)) # ((\comb_225|dataWrite_Q\(19) & \comb_225|WideOr4~combout\)))) # (!\comb_225|states_Q.100~regout\ & (((\comb_225|dataWrite_Q\(19) & 
-- \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|dataRead_Q\(19),
	datac => \comb_225|dataWrite_Q\(19),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector16~0_combout\);

-- Location: LCFF_X34_Y16_N5
\comb_225|dataWrite_Q[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(19));

-- Location: LCFF_X34_Y16_N21
\comb_224|data_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~7_combout\,
	sload => VCC,
	ena => \comb_224|data_out[16]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(19));

-- Location: LCCOMB_X34_Y16_N14
\Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\states_Q.100~regout\ & ((\comb_224|data_out\(19)) # ((\comb_225|dataWrite_Q\(19) & \states_Q.001~regout\)))) # (!\states_Q.100~regout\ & (\comb_225|dataWrite_Q\(19) & ((\states_Q.001~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.100~regout\,
	datab => \comb_225|dataWrite_Q\(19),
	datac => \comb_224|data_out\(19),
	datad => \states_Q.001~regout\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X33_Y16_N8
\comb_225|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector15~0_combout\ = (\comb_225|dataRead_Q\(20) & ((\comb_225|states_Q.100~regout\) # ((\comb_225|dataWrite_Q\(20) & \comb_225|WideOr4~combout\)))) # (!\comb_225|dataRead_Q\(20) & (((\comb_225|dataWrite_Q\(20) & \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataRead_Q\(20),
	datab => \comb_225|states_Q.100~regout\,
	datac => \comb_225|dataWrite_Q\(20),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector15~0_combout\);

-- Location: LCFF_X33_Y16_N9
\comb_225|dataWrite_Q[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(20));

-- Location: LCCOMB_X28_Y17_N0
\comb_224|data_out[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[20]~20_combout\ = (!\comb_224|count\(1) & (\comb_224|count\(0) & \comb_224|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_224|count\(1),
	datac => \comb_224|count\(0),
	datad => \comb_224|count\(2),
	combout => \comb_224|data_out[20]~20_combout\);

-- Location: LCCOMB_X29_Y17_N16
\comb_224|data_out[20]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[20]~21_combout\ = (\comb_224|state.10~regout\ & ((\comb_224|converter|WideOr4~8_combout\ & ((\comb_224|data_out[20]~20_combout\))) # (!\comb_224|converter|WideOr4~8_combout\ & (\comb_224|data_out[28]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out[28]~8_combout\,
	datab => \comb_224|state.10~regout\,
	datac => \comb_224|data_out[20]~20_combout\,
	datad => \comb_224|converter|WideOr4~8_combout\,
	combout => \comb_224|data_out[20]~21_combout\);

-- Location: LCFF_X33_Y16_N15
\comb_224|data_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~17_combout\,
	sload => VCC,
	ena => \comb_224|data_out[20]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(20));

-- Location: LCCOMB_X33_Y16_N14
\Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(20)) # ((\comb_224|data_out\(20) & \states_Q.100~regout\)))) # (!\states_Q.001~regout\ & (((\comb_224|data_out\(20) & \states_Q.100~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.001~regout\,
	datab => \comb_225|dataWrite_Q\(20),
	datac => \comb_224|data_out\(20),
	datad => \states_Q.100~regout\,
	combout => \Selector23~0_combout\);

-- Location: LCFF_X33_Y16_N29
\comb_224|data_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~37_combout\,
	sload => VCC,
	ena => \comb_224|data_out[20]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(21));

-- Location: LCCOMB_X33_Y16_N26
\comb_225|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector14~0_combout\ = (\comb_225|dataRead_Q\(21) & ((\comb_225|states_Q.100~regout\) # ((\comb_225|dataWrite_Q\(21) & \comb_225|WideOr4~combout\)))) # (!\comb_225|dataRead_Q\(21) & (((\comb_225|dataWrite_Q\(21) & \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataRead_Q\(21),
	datab => \comb_225|states_Q.100~regout\,
	datac => \comb_225|dataWrite_Q\(21),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector14~0_combout\);

-- Location: LCFF_X33_Y16_N27
\comb_225|dataWrite_Q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(21));

-- Location: LCCOMB_X33_Y16_N28
\Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(21)) # ((\states_Q.100~regout\ & \comb_224|data_out\(21))))) # (!\states_Q.001~regout\ & (\states_Q.100~regout\ & (\comb_224|data_out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.001~regout\,
	datab => \states_Q.100~regout\,
	datac => \comb_224|data_out\(21),
	datad => \comb_225|dataWrite_Q\(21),
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X33_Y16_N4
\comb_225|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector13~0_combout\ = (\comb_225|dataRead_Q\(22) & ((\comb_225|states_Q.100~regout\) # ((\comb_225|dataWrite_Q\(22) & \comb_225|WideOr4~combout\)))) # (!\comb_225|dataRead_Q\(22) & (((\comb_225|dataWrite_Q\(22) & \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataRead_Q\(22),
	datab => \comb_225|states_Q.100~regout\,
	datac => \comb_225|dataWrite_Q\(22),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector13~0_combout\);

-- Location: LCFF_X33_Y16_N5
\comb_225|dataWrite_Q[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(22));

-- Location: LCFF_X33_Y16_N7
\comb_224|data_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~12_combout\,
	sload => VCC,
	ena => \comb_224|data_out[20]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(22));

-- Location: LCCOMB_X33_Y16_N6
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(22)) # ((\comb_224|data_out\(22) & \states_Q.100~regout\)))) # (!\states_Q.001~regout\ & (((\comb_224|data_out\(22) & \states_Q.100~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.001~regout\,
	datab => \comb_225|dataWrite_Q\(22),
	datac => \comb_224|data_out\(22),
	datad => \states_Q.100~regout\,
	combout => \Selector21~0_combout\);

-- Location: LCFF_X33_Y16_N13
\comb_224|data_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~7_combout\,
	sload => VCC,
	ena => \comb_224|data_out[20]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(23));

-- Location: LCCOMB_X33_Y16_N30
\comb_225|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector12~0_combout\ = (\comb_225|dataRead_Q\(23) & ((\comb_225|states_Q.100~regout\) # ((\comb_225|dataWrite_Q\(23) & \comb_225|WideOr4~combout\)))) # (!\comb_225|dataRead_Q\(23) & (((\comb_225|dataWrite_Q\(23) & \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataRead_Q\(23),
	datab => \comb_225|states_Q.100~regout\,
	datac => \comb_225|dataWrite_Q\(23),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector12~0_combout\);

-- Location: LCFF_X33_Y16_N31
\comb_225|dataWrite_Q[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(23));

-- Location: LCCOMB_X33_Y16_N12
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(23)) # ((\states_Q.100~regout\ & \comb_224|data_out\(23))))) # (!\states_Q.001~regout\ & (\states_Q.100~regout\ & (\comb_224|data_out\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.001~regout\,
	datab => \states_Q.100~regout\,
	datac => \comb_224|data_out\(23),
	datad => \comb_225|dataWrite_Q\(23),
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X33_Y17_N2
\comb_225|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector9~0_combout\ = (\comb_225|dataRead_Q\(26) & ((\comb_225|states_Q.100~regout\) # ((\comb_225|dataWrite_Q\(26) & \comb_225|WideOr4~combout\)))) # (!\comb_225|dataRead_Q\(26) & (((\comb_225|dataWrite_Q\(26) & \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataRead_Q\(26),
	datab => \comb_225|states_Q.100~regout\,
	datac => \comb_225|dataWrite_Q\(26),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector9~0_combout\);

-- Location: LCFF_X33_Y17_N3
\comb_225|dataWrite_Q[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(26));

-- Location: LCCOMB_X33_Y17_N6
\comb_224|data_out[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[26]~feeder_combout\ = \comb_224|data_out~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|data_out~12_combout\,
	combout => \comb_224|data_out[26]~feeder_combout\);

-- Location: LCFF_X33_Y17_N7
\comb_224|data_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|data_out[26]~feeder_combout\,
	ena => \comb_224|data_out[24]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(26));

-- Location: LCCOMB_X33_Y17_N4
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\states_Q.100~regout\ & ((\comb_224|data_out\(26)) # ((\comb_225|dataWrite_Q\(26) & \states_Q.001~regout\)))) # (!\states_Q.100~regout\ & (\comb_225|dataWrite_Q\(26) & (\states_Q.001~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.100~regout\,
	datab => \comb_225|dataWrite_Q\(26),
	datac => \states_Q.001~regout\,
	datad => \comb_224|data_out\(26),
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X30_Y19_N28
\comb_225|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector8~0_combout\ = (\comb_225|dataRead_Q\(27) & ((\comb_225|states_Q.100~regout\) # ((\comb_225|dataWrite_Q\(27) & \comb_225|WideOr4~combout\)))) # (!\comb_225|dataRead_Q\(27) & (((\comb_225|dataWrite_Q\(27) & \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|dataRead_Q\(27),
	datab => \comb_225|states_Q.100~regout\,
	datac => \comb_225|dataWrite_Q\(27),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector8~0_combout\);

-- Location: LCFF_X30_Y19_N29
\comb_225|dataWrite_Q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(27));

-- Location: LCCOMB_X33_Y17_N0
\comb_224|data_out[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[27]~feeder_combout\ = \comb_224|data_out~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|data_out~7_combout\,
	combout => \comb_224|data_out[27]~feeder_combout\);

-- Location: LCFF_X33_Y17_N1
\comb_224|data_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|data_out[27]~feeder_combout\,
	ena => \comb_224|data_out[24]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(27));

-- Location: LCCOMB_X33_Y17_N26
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\states_Q.100~regout\ & ((\comb_224|data_out\(27)) # ((\states_Q.001~regout\ & \comb_225|dataWrite_Q\(27))))) # (!\states_Q.100~regout\ & (\states_Q.001~regout\ & (\comb_225|dataWrite_Q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.100~regout\,
	datab => \states_Q.001~regout\,
	datac => \comb_225|dataWrite_Q\(27),
	datad => \comb_224|data_out\(27),
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X30_Y16_N12
\comb_225|Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector50~0_combout\ = (\comb_225|WideOr5~combout\ & ((\comb_225|dataRead_Q\(17)) # ((\comb_221|altsyncram_component|auto_generated|q_a\(17) & \comb_225|states_Q.010~regout\)))) # (!\comb_225|WideOr5~combout\ & 
-- (\comb_221|altsyncram_component|auto_generated|q_a\(17) & ((\comb_225|states_Q.010~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|WideOr5~combout\,
	datab => \comb_221|altsyncram_component|auto_generated|q_a\(17),
	datac => \comb_225|dataRead_Q\(17),
	datad => \comb_225|states_Q.010~regout\,
	combout => \comb_225|Selector50~0_combout\);

-- Location: LCFF_X30_Y16_N13
\comb_225|dataRead_Q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(17));

-- Location: LCCOMB_X34_Y16_N26
\comb_225|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector18~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(17)) # ((\comb_225|dataWrite_Q\(17) & \comb_225|WideOr4~combout\)))) # (!\comb_225|states_Q.100~regout\ & (((\comb_225|dataWrite_Q\(17) & 
-- \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|dataRead_Q\(17),
	datac => \comb_225|dataWrite_Q\(17),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector18~0_combout\);

-- Location: LCFF_X34_Y16_N27
\comb_225|dataWrite_Q[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(17));

-- Location: LCFF_X34_Y16_N29
\comb_224|data_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~37_combout\,
	sload => VCC,
	ena => \comb_224|data_out[16]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(17));

-- Location: LCCOMB_X34_Y16_N28
\Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\states_Q.100~regout\ & ((\comb_224|data_out\(17)) # ((\comb_225|dataWrite_Q\(17) & \states_Q.001~regout\)))) # (!\states_Q.100~regout\ & (\comb_225|dataWrite_Q\(17) & ((\states_Q.001~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.100~regout\,
	datab => \comb_225|dataWrite_Q\(17),
	datac => \comb_224|data_out\(17),
	datad => \states_Q.001~regout\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X29_Y19_N18
\comb_225|Selector52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector52~0_combout\ = (\comb_225|states_Q.010~regout\ & ((\comb_221|altsyncram_component|auto_generated|q_a\(15)) # ((\comb_225|dataRead_Q\(15) & \comb_225|WideOr5~combout\)))) # (!\comb_225|states_Q.010~regout\ & (((\comb_225|dataRead_Q\(15) 
-- & \comb_225|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.010~regout\,
	datab => \comb_221|altsyncram_component|auto_generated|q_a\(15),
	datac => \comb_225|dataRead_Q\(15),
	datad => \comb_225|WideOr5~combout\,
	combout => \comb_225|Selector52~0_combout\);

-- Location: LCFF_X29_Y19_N19
\comb_225|dataRead_Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector52~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(15));

-- Location: LCCOMB_X27_Y19_N8
\comb_225|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector20~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(15)) # ((\comb_225|dataWrite_Q\(15) & \comb_225|WideOr4~combout\)))) # (!\comb_225|states_Q.100~regout\ & (((\comb_225|dataWrite_Q\(15) & 
-- \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|dataRead_Q\(15),
	datac => \comb_225|dataWrite_Q\(15),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector20~0_combout\);

-- Location: LCFF_X27_Y19_N9
\comb_225|dataWrite_Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(15));

-- Location: LCFF_X27_Y16_N5
\comb_224|data_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~7_combout\,
	sload => VCC,
	ena => \comb_224|data_out[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(15));

-- Location: LCCOMB_X27_Y16_N4
\Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(15)) # ((\comb_224|data_out\(15) & \states_Q.100~regout\)))) # (!\states_Q.001~regout\ & (((\comb_224|data_out\(15) & \states_Q.100~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.001~regout\,
	datab => \comb_225|dataWrite_Q\(15),
	datac => \comb_224|data_out\(15),
	datad => \states_Q.100~regout\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X28_Y20_N26
\comb_225|Selector54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector54~0_combout\ = (\comb_225|states_Q.010~regout\ & ((\comb_221|altsyncram_component|auto_generated|q_a\(13)) # ((\comb_225|WideOr5~combout\ & \comb_225|dataRead_Q\(13))))) # (!\comb_225|states_Q.010~regout\ & (\comb_225|WideOr5~combout\ & 
-- (\comb_225|dataRead_Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.010~regout\,
	datab => \comb_225|WideOr5~combout\,
	datac => \comb_225|dataRead_Q\(13),
	datad => \comb_221|altsyncram_component|auto_generated|q_a\(13),
	combout => \comb_225|Selector54~0_combout\);

-- Location: LCFF_X28_Y20_N27
\comb_225|dataRead_Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector54~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataRead_Q\(13));

-- Location: LCCOMB_X28_Y20_N24
\comb_225|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_225|Selector22~0_combout\ = (\comb_225|states_Q.100~regout\ & ((\comb_225|dataRead_Q\(13)) # ((\comb_225|dataWrite_Q\(13) & \comb_225|WideOr4~combout\)))) # (!\comb_225|states_Q.100~regout\ & (((\comb_225|dataWrite_Q\(13) & 
-- \comb_225|WideOr4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_225|states_Q.100~regout\,
	datab => \comb_225|dataRead_Q\(13),
	datac => \comb_225|dataWrite_Q\(13),
	datad => \comb_225|WideOr4~combout\,
	combout => \comb_225|Selector22~0_combout\);

-- Location: LCFF_X28_Y20_N25
\comb_225|dataWrite_Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_225|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_225|dataWrite_Q\(13));

-- Location: LCFF_X27_Y16_N29
\comb_224|data_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \comb_224|data_out~37_combout\,
	sload => VCC,
	ena => \comb_224|data_out[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(13));

-- Location: LCCOMB_X27_Y16_N28
\Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\states_Q.001~regout\ & ((\comb_225|dataWrite_Q\(13)) # ((\comb_224|data_out\(13) & \states_Q.100~regout\)))) # (!\states_Q.001~regout\ & (((\comb_224|data_out\(13) & \states_Q.100~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.001~regout\,
	datab => \comb_225|dataWrite_Q\(13),
	datac => \comb_224|data_out\(13),
	datad => \states_Q.100~regout\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X29_Y20_N16
\comb_222|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector14~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(21) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(21),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector14~0_combout\);

-- Location: LCFF_X29_Y20_N17
\comb_222|dataRead_Q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector14~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(21));

-- Location: LCCOMB_X29_Y20_N28
\comb_222|inst|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector13~1_combout\ = (\comb_222|inst|states_Q.01~regout\ & ((\comb_222|dataRead_Q\(21)) # ((\comb_222|inst|Selector13~0_combout\ & \comb_222|inst|states_Q.10~regout\)))) # (!\comb_222|inst|states_Q.01~regout\ & 
-- (\comb_222|inst|Selector13~0_combout\ & ((\comb_222|inst|states_Q.10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.01~regout\,
	datab => \comb_222|inst|Selector13~0_combout\,
	datac => \comb_222|dataRead_Q\(21),
	datad => \comb_222|inst|states_Q.10~regout\,
	combout => \comb_222|inst|Selector13~1_combout\);

-- Location: LCFF_X29_Y20_N29
\comb_222|inst|mainRegistor_Q[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector13~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(21));

-- Location: LCCOMB_X29_Y20_N30
\comb_222|inst|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector9~0_combout\ = (\comb_222|inst|hexHS_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(25))))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(21))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|hexHS_Q~regout\,
	datab => \comb_222|inst|mainRegistor_Q\(21),
	datac => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(25),
	combout => \comb_222|inst|Selector9~0_combout\);

-- Location: LCCOMB_X29_Y20_N24
\comb_222|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector10~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(25) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(25),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector10~0_combout\);

-- Location: LCFF_X29_Y20_N25
\comb_222|dataRead_Q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector10~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(25));

-- Location: LCCOMB_X29_Y20_N22
\comb_222|inst|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector9~1_combout\ = (\comb_222|inst|states_Q.01~regout\ & ((\comb_222|dataRead_Q\(25)) # ((\comb_222|inst|Selector9~0_combout\ & \comb_222|inst|states_Q.10~regout\)))) # (!\comb_222|inst|states_Q.01~regout\ & 
-- (\comb_222|inst|Selector9~0_combout\ & ((\comb_222|inst|states_Q.10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.01~regout\,
	datab => \comb_222|inst|Selector9~0_combout\,
	datac => \comb_222|dataRead_Q\(25),
	datad => \comb_222|inst|states_Q.10~regout\,
	combout => \comb_222|inst|Selector9~1_combout\);

-- Location: LCFF_X29_Y20_N23
\comb_222|inst|mainRegistor_Q[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector9~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(25));

-- Location: LCCOMB_X29_Y20_N14
\comb_222|inst|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector5~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(29))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(25)))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(29),
	datab => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datac => \comb_222|inst|hexHS_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(25),
	combout => \comb_222|inst|Selector5~0_combout\);

-- Location: LCCOMB_X29_Y20_N12
\comb_222|inst|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector5~1_combout\ = (\comb_222|inst|states_Q.01~regout\ & ((\comb_222|dataRead_Q\(29)) # ((\comb_222|inst|Selector5~0_combout\ & \comb_222|inst|states_Q.10~regout\)))) # (!\comb_222|inst|states_Q.01~regout\ & 
-- (((\comb_222|inst|Selector5~0_combout\ & \comb_222|inst|states_Q.10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.01~regout\,
	datab => \comb_222|dataRead_Q\(29),
	datac => \comb_222|inst|Selector5~0_combout\,
	datad => \comb_222|inst|states_Q.10~regout\,
	combout => \comb_222|inst|Selector5~1_combout\);

-- Location: LCFF_X29_Y20_N13
\comb_222|inst|mainRegistor_Q[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector5~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(29));

-- Location: LCCOMB_X30_Y20_N14
\comb_222|inst|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector4~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(30)))) # (!\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(26))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(26),
	datab => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datac => \comb_222|inst|mainRegistor_Q\(30),
	datad => \comb_222|inst|hexHS_Q~regout\,
	combout => \comb_222|inst|Selector4~0_combout\);

-- Location: LCCOMB_X30_Y20_N0
\comb_222|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector5~0_combout\ = (\comb_221|altsyncram_component|auto_generated|q_a\(30) & \comb_222|states_Q.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_221|altsyncram_component|auto_generated|q_a\(30),
	datad => \comb_222|states_Q.001~regout\,
	combout => \comb_222|Selector5~0_combout\);

-- Location: LCFF_X30_Y20_N1
\comb_222|dataRead_Q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector5~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(30));

-- Location: LCCOMB_X30_Y20_N8
\comb_222|inst|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector4~1_combout\ = (\comb_222|inst|states_Q.01~regout\ & ((\comb_222|dataRead_Q\(30)) # ((\comb_222|inst|states_Q.10~regout\ & \comb_222|inst|Selector4~0_combout\)))) # (!\comb_222|inst|states_Q.01~regout\ & 
-- (\comb_222|inst|states_Q.10~regout\ & (\comb_222|inst|Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.01~regout\,
	datab => \comb_222|inst|states_Q.10~regout\,
	datac => \comb_222|inst|Selector4~0_combout\,
	datad => \comb_222|dataRead_Q\(30),
	combout => \comb_222|inst|Selector4~1_combout\);

-- Location: LCFF_X30_Y20_N9
\comb_222|inst|mainRegistor_Q[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector4~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(30));

-- Location: LCCOMB_X30_Y19_N26
\comb_222|inst|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector7~0_combout\ = (\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(27)))) # (!\comb_222|inst|hexHS_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(23))))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|mainRegistor_Q\(23),
	datab => \comb_222|inst|mainRegistor_Q\(27),
	datac => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datad => \comb_222|inst|hexHS_Q~regout\,
	combout => \comb_222|inst|Selector7~0_combout\);

-- Location: LCCOMB_X30_Y19_N24
\comb_222|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector8~0_combout\ = (\comb_222|states_Q.001~regout\ & \comb_221|altsyncram_component|auto_generated|q_a\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|states_Q.001~regout\,
	datad => \comb_221|altsyncram_component|auto_generated|q_a\(27),
	combout => \comb_222|Selector8~0_combout\);

-- Location: LCFF_X30_Y19_N25
\comb_222|dataRead_Q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector8~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(27));

-- Location: LCCOMB_X30_Y19_N2
\comb_222|inst|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector7~1_combout\ = (\comb_222|inst|states_Q.10~regout\ & ((\comb_222|inst|Selector7~0_combout\) # ((\comb_222|dataRead_Q\(27) & \comb_222|inst|states_Q.01~regout\)))) # (!\comb_222|inst|states_Q.10~regout\ & (((\comb_222|dataRead_Q\(27) 
-- & \comb_222|inst|states_Q.01~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.10~regout\,
	datab => \comb_222|inst|Selector7~0_combout\,
	datac => \comb_222|dataRead_Q\(27),
	datad => \comb_222|inst|states_Q.01~regout\,
	combout => \comb_222|inst|Selector7~1_combout\);

-- Location: LCFF_X30_Y19_N3
\comb_222|inst|mainRegistor_Q[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector7~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(27));

-- Location: LCCOMB_X30_Y19_N22
\comb_222|inst|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector3~0_combout\ = (\comb_222|inst|hexHS_Q~regout\ & (((\comb_222|inst|mainRegistor_Q\(31))))) # (!\comb_222|inst|hexHS_Q~regout\ & ((\comb_222|inst|comb_18|shiftEnable_Q~regout\ & (\comb_222|inst|mainRegistor_Q\(27))) # 
-- (!\comb_222|inst|comb_18|shiftEnable_Q~regout\ & ((\comb_222|inst|mainRegistor_Q\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|hexHS_Q~regout\,
	datab => \comb_222|inst|mainRegistor_Q\(27),
	datac => \comb_222|inst|comb_18|shiftEnable_Q~regout\,
	datad => \comb_222|inst|mainRegistor_Q\(31),
	combout => \comb_222|inst|Selector3~0_combout\);

-- Location: LCCOMB_X29_Y19_N4
\comb_222|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|Selector4~0_combout\ = (\comb_222|states_Q.001~regout\ & \comb_221|altsyncram_component|auto_generated|q_a\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|states_Q.001~regout\,
	datad => \comb_221|altsyncram_component|auto_generated|q_a\(31),
	combout => \comb_222|Selector4~0_combout\);

-- Location: LCFF_X29_Y19_N5
\comb_222|dataRead_Q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|Selector4~0_combout\,
	ena => \comb_222|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|dataRead_Q\(31));

-- Location: LCCOMB_X30_Y19_N0
\comb_222|inst|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Selector3~1_combout\ = (\comb_222|inst|states_Q.10~regout\ & ((\comb_222|inst|Selector3~0_combout\) # ((\comb_222|dataRead_Q\(31) & \comb_222|inst|states_Q.01~regout\)))) # (!\comb_222|inst|states_Q.10~regout\ & (((\comb_222|dataRead_Q\(31) 
-- & \comb_222|inst|states_Q.01~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|states_Q.10~regout\,
	datab => \comb_222|inst|Selector3~0_combout\,
	datac => \comb_222|dataRead_Q\(31),
	datad => \comb_222|inst|states_Q.01~regout\,
	combout => \comb_222|inst|Selector3~1_combout\);

-- Location: LCFF_X30_Y19_N1
\comb_222|inst|mainRegistor_Q[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_222|inst|Selector3~1_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_222|inst|mainRegistor_Q\(31));

-- Location: LCCOMB_X51_Y22_N26
\comb_222|inst|comb_18|comb_3|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|comb_3|Mux0~3_combout\ = (\comb_222|inst|comb_18|comb_3|Mux0~2_combout\ & (((\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(3))) # (!\comb_222|inst|comb_18|comb_3|counter_Q\(1)))) # 
-- (!\comb_222|inst|comb_18|comb_3|Mux0~2_combout\ & (\comb_222|inst|comb_18|comb_3|counter_Q\(1) & (\comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|comb_3|Mux0~2_combout\,
	datab => \comb_222|inst|comb_18|comb_3|counter_Q\(1),
	datac => \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(2),
	datad => \comb_222|inst|comb_18|comb_15|altsyncram_component|auto_generated|q_a\(3),
	combout => \comb_222|inst|comb_18|comb_3|Mux0~3_combout\);

-- Location: LCCOMB_X51_Y24_N12
\comb_222|inst|comb_18|comb_3|colorBit~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|comb_18|comb_3|colorBit~0_combout\ = (\KEY~combout\(0) & ((\comb_222|inst|comb_18|comb_3|counter_Q\(2) & (\comb_222|inst|comb_18|comb_3|Mux0~1_combout\)) # (!\comb_222|inst|comb_18|comb_3|counter_Q\(2) & 
-- ((\comb_222|inst|comb_18|comb_3|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_222|inst|comb_18|comb_3|Mux0~1_combout\,
	datab => \comb_222|inst|comb_18|comb_3|Mux0~3_combout\,
	datac => \comb_222|inst|comb_18|comb_3|counter_Q\(2),
	datad => \KEY~combout\(0),
	combout => \comb_222|inst|comb_18|comb_3|colorBit~0_combout\);

-- Location: LCCOMB_X36_Y27_N16
\comb_222|inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_222|inst|Add0~2_combout\ = \comb_222|inst|counter_Q\(1) $ (\comb_222|inst|counter_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_222|inst|counter_Q\(1),
	datad => \comb_222|inst|counter_Q\(0),
	combout => \comb_222|inst|Add0~2_combout\);

-- Location: M4K_X26_Y25
\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "backgroundMemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_g1h1:auto_generated|altsyncram_grr1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\(3),
	clk0 => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAIN_bus\,
	portbdatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBDATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11_PORTADATAOUT_bus\);

-- Location: LCFF_X50_Y27_N1
\VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \VGA|controller|controller_translator|mem_address[13]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a\(1));

-- Location: LCCOMB_X50_Y27_N24
\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[1]~feeder_combout\ = \VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a\(1),
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[1]~feeder_combout\);

-- Location: LCFF_X50_Y27_N25
\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1));

-- Location: LCCOMB_X30_Y24_N0
\VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\(3) = (!\VGA|user_input_translator|mem_address[14]~18_combout\ & (\VGA|user_input_translator|mem_address[13]~16_combout\ & (!\VGA|user_input_translator|mem_address[12]~14_combout\ & 
-- \VGA|writeEn~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|mem_address[14]~18_combout\,
	datab => \VGA|user_input_translator|mem_address[13]~16_combout\,
	datac => \VGA|user_input_translator|mem_address[12]~14_combout\,
	datad => \VGA|writeEn~1_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\(3));

-- Location: LCCOMB_X51_Y27_N24
\VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\(3) = (!\VGA|controller|controller_translator|mem_address[12]~14_combout\ & (\VGA|controller|controller_translator|mem_address[13]~16_combout\ & 
-- !\VGA|controller|controller_translator|mem_address[14]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|controller_translator|mem_address[12]~14_combout\,
	datac => \VGA|controller|controller_translator|mem_address[13]~16_combout\,
	datad => \VGA|controller|controller_translator|mem_address[14]~18_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\(3));

-- Location: LCCOMB_X31_Y21_N30
\VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\ = (!\VGA|user_input_translator|mem_address[12]~14_combout\ & (\VGA|user_input_translator|mem_address[13]~16_combout\ & !\VGA|user_input_translator|mem_address[14]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|user_input_translator|mem_address[12]~14_combout\,
	datac => \VGA|user_input_translator|mem_address[13]~16_combout\,
	datad => \VGA|user_input_translator|mem_address[14]~18_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\);

-- Location: M4K_X26_Y21
\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "backgroundMemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_g1h1:auto_generated|altsyncram_grr1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\(3),
	clk0 => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAIN_bus\,
	portbdatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBDATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y27_N22
\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1_combout\ = (\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\ & ((\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11~portadataout\) # 
-- ((!\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1))))) # (!\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\ & (((\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & 
-- \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~0_combout\,
	datab => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a11~portadataout\,
	datac => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1),
	datad => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a8~portadataout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1_combout\);

-- Location: LCCOMB_X27_Y24_N16
\VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\(3) = (\VGA|user_input_translator|mem_address[14]~18_combout\ & (!\VGA|user_input_translator|mem_address[13]~16_combout\ & (!\VGA|user_input_translator|mem_address[12]~14_combout\ & 
-- \VGA|writeEn~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|mem_address[14]~18_combout\,
	datab => \VGA|user_input_translator|mem_address[13]~16_combout\,
	datac => \VGA|user_input_translator|mem_address[12]~14_combout\,
	datad => \VGA|writeEn~1_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\(3));

-- Location: LCCOMB_X50_Y27_N18
\VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\ = (!\VGA|controller|controller_translator|mem_address[12]~14_combout\ & (!\VGA|controller|controller_translator|mem_address[13]~16_combout\ & 
-- \VGA|controller|controller_translator|mem_address[14]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|controller_translator|mem_address[12]~14_combout\,
	datac => \VGA|controller|controller_translator|mem_address[13]~16_combout\,
	datad => \VGA|controller|controller_translator|mem_address[14]~18_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\);

-- Location: LCCOMB_X31_Y21_N0
\VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\ = (!\VGA|user_input_translator|mem_address[12]~14_combout\ & (!\VGA|user_input_translator|mem_address[13]~16_combout\ & \VGA|user_input_translator|mem_address[14]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|user_input_translator|mem_address[12]~14_combout\,
	datac => \VGA|user_input_translator|mem_address[13]~16_combout\,
	datad => \VGA|user_input_translator|mem_address[14]~18_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\);

-- Location: M4K_X26_Y24
\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "backgroundMemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_g1h1:auto_generated|altsyncram_grr1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\(3),
	clk0 => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\,
	ena1 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAIN_bus\,
	portbdatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBDATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y27_N8
\VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result2w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result2w~0_combout\ = (\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14~portadataout\))) # 
-- (!\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & (\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2),
	datab => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs441w[0]~1_combout\,
	datac => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a14~portadataout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result2w~0_combout\);

-- Location: LCFF_X50_Y27_N3
\VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	sdata => \VGA|controller|controller_translator|mem_address[12]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a\(0));

-- Location: LCCOMB_X50_Y27_N26
\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[0]~feeder_combout\ = \VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA|VideoMemory|auto_generated|altsyncram1|address_reg_a\(0),
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[0]~feeder_combout\);

-- Location: LCFF_X50_Y27_N27
\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0));

-- Location: M4K_X52_Y26
\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "backgroundMemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_g1h1:auto_generated|altsyncram_grr1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\(3),
	clk0 => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAIN_bus\,
	portbdatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBDATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y24_N26
\VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\(3) = (!\VGA|user_input_translator|mem_address[14]~18_combout\ & (!\VGA|user_input_translator|mem_address[13]~16_combout\ & (!\VGA|user_input_translator|mem_address[12]~14_combout\ & 
-- \VGA|writeEn~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|user_input_translator|mem_address[14]~18_combout\,
	datab => \VGA|user_input_translator|mem_address[13]~16_combout\,
	datac => \VGA|user_input_translator|mem_address[12]~14_combout\,
	datad => \VGA|writeEn~1_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\(3));

-- Location: LCCOMB_X51_Y27_N20
\VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\(3) = (!\VGA|controller|controller_translator|mem_address[12]~14_combout\ & (!\VGA|controller|controller_translator|mem_address[13]~16_combout\ & 
-- !\VGA|controller|controller_translator|mem_address[14]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|controller|controller_translator|mem_address[12]~14_combout\,
	datac => \VGA|controller|controller_translator|mem_address[13]~16_combout\,
	datad => \VGA|controller|controller_translator|mem_address[14]~18_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\(3));

-- Location: LCCOMB_X30_Y24_N24
\VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\ = (!\VGA|user_input_translator|mem_address[13]~16_combout\ & (!\VGA|user_input_translator|mem_address[12]~14_combout\ & 
-- !\VGA|user_input_translator|mem_address[14]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|user_input_translator|mem_address[13]~16_combout\,
	datac => \VGA|user_input_translator|mem_address[12]~14_combout\,
	datad => \VGA|user_input_translator|mem_address[14]~18_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\);

-- Location: M4K_X26_Y28
\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "backgroundMemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_g1h1:auto_generated|altsyncram_grr1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\(3),
	clk0 => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAIN_bus\,
	portbdatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBDATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y21
\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "backgroundMemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_g1h1:auto_generated|altsyncram_grr1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\(3),
	clk0 => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAIN_bus\,
	portbdatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBDATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y27_N18
\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\ = (\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0)) # 
-- ((\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7~portadataout\)))) # (!\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & (!\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & 
-- (\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a1~portadataout\,
	datad => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a7~portadataout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\);

-- Location: LCCOMB_X27_Y27_N28
\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1_combout\ = (\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\ & 
-- ((\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10~portadataout\))) # (!\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\ & (\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4~portadataout\)))) # 
-- (!\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & (((\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a4~portadataout\,
	datab => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0),
	datac => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a10~portadataout\,
	datad => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~0_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1_combout\);

-- Location: M4K_X26_Y23
\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "backgroundMemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_g1h1:auto_generated|altsyncram_grr1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\(3),
	clk0 => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\,
	ena1 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAIN_bus\,
	portbdatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBDATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y27_N2
\VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result1w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result1w~0_combout\ = (\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13~portadataout\))) # 
-- (!\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & (\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2),
	datab => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs393w[0]~1_combout\,
	datac => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a13~portadataout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result1w~0_combout\);

-- Location: M4K_X26_Y26
\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "backgroundMemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_g1h1:auto_generated|altsyncram_grr1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode272w\(3),
	clk0 => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode272w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode272w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAIN_bus\,
	portbdatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBDATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y23
\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "backgroundMemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_g1h1:auto_generated|altsyncram_grr1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode262w\(3),
	clk0 => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode262w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode262w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAIN_bus\,
	portbdatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBDATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y28
\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "backgroundMemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_g1h1:auto_generated|altsyncram_grr1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode235w\(3),
	clk0 => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode235w\(3),
	ena1 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode235w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAIN_bus\,
	portbdatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBDATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X51_Y28_N12
\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\ = (\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0))))) # 
-- (!\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & (\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3~portadataout\)) # 
-- (!\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0) & ((\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a3~portadataout\,
	datab => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1),
	datac => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(0),
	datad => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a0~portadataout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\);

-- Location: LCCOMB_X27_Y27_N0
\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1_combout\ = (\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & ((\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\ & 
-- (\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9~portadataout\)) # (!\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\ & ((\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6~portadataout\))))) # 
-- (!\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1) & (((\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(1),
	datab => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a9~portadataout\,
	datac => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a6~portadataout\,
	datad => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~0_combout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1_combout\);

-- Location: M4K_X26_Y22
\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "backgroundMemory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_adapter:VGA|altsyncram:VideoMemory|altsyncram_g1h1:auto_generated|altsyncram_grr1:altsyncram1|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_disable_ce_on_output_registers => "on",
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 19200,
	port_a_logical_ram_width => 3,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 19200,
	port_b_logical_ram_width => 3,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => \VGA|VideoMemory|auto_generated|altsyncram1|decode4|w_anode282w\(3),
	clk0 => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	clk1 => \CLOCK_50~clkctrl_outclk\,
	ena0 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_a|w_anode282w[3]~0_combout\,
	ena1 => \VGA|VideoMemory|auto_generated|altsyncram1|decode_b|w_anode282w[3]~0_combout\,
	portadatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAIN_bus\,
	portbdatain => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBDATAIN_bus\,
	portaaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTAADDR_bus\,
	portbaddr => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X27_Y27_N10
\VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result0w~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result0w~0_combout\ = (\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & ((\VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12~portadataout\))) # 
-- (!\VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2) & (\VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|VideoMemory|auto_generated|altsyncram1|out_address_reg_a\(2),
	datab => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|w_mux_outputs345w[0]~1_combout\,
	datac => \VGA|VideoMemory|auto_generated|altsyncram1|ram_block2a12~portadataout\,
	combout => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result0w~0_combout\);

-- Location: LCCOMB_X32_Y16_N20
\wait_D[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wait_D[0]~0_combout\ = (\states_Q.100~regout\ & !wait_Q(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.100~regout\,
	datac => wait_Q(0),
	combout => \wait_D[0]~0_combout\);

-- Location: LCFF_X32_Y16_N21
\wait_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \wait_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => wait_Q(0));

-- Location: LCCOMB_X32_Y16_N16
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\states_Q.100~regout\) # ((\states_Q.001~regout\ & \comb_225|states_Q.011~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \states_Q.001~regout\,
	datac => \states_Q.100~regout\,
	datad => \comb_225|states_Q.011~regout\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X30_Y16_N16
\LEDR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (\states_Q.001~regout\) # (\states_Q.011~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \states_Q.001~regout\,
	datad => \states_Q.011~regout\,
	combout => \LEDR~0_combout\);

-- Location: LCCOMB_X30_Y16_N10
\LEDR~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR~1_combout\ = (\states_Q.011~regout\) # (\states_Q.010~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \states_Q.011~regout\,
	datad => \states_Q.010~regout\,
	combout => \LEDR~1_combout\);

-- Location: LCCOMB_X32_Y1_N20
WideAnd0 : cycloneii_lcell_comb
-- Equation(s):
-- \WideAnd0~combout\ = (wait_Q(0) & wait_Q(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => wait_Q(0),
	datad => wait_Q(1),
	combout => \WideAnd0~combout\);

-- Location: LCCOMB_X28_Y16_N18
\comb_224|Segment0|seven_seg_display[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment0|seven_seg_display[0]~9_combout\ = (\comb_224|data_out\(30) & (!\comb_224|data_out\(29) & (\comb_224|data_out\(31) $ (!\comb_224|data_out\(28))))) # (!\comb_224|data_out\(30) & (\comb_224|data_out\(28) & (\comb_224|data_out\(31) $ 
-- (!\comb_224|data_out\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(30),
	datab => \comb_224|data_out\(31),
	datac => \comb_224|data_out\(29),
	datad => \comb_224|data_out\(28),
	combout => \comb_224|Segment0|seven_seg_display[0]~9_combout\);

-- Location: LCCOMB_X28_Y16_N0
\comb_224|Segment0|seven_seg_display[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment0|seven_seg_display[1]~4_combout\ = (\comb_224|data_out\(31) & ((\comb_224|data_out\(28) & ((\comb_224|data_out\(29)))) # (!\comb_224|data_out\(28) & (\comb_224|data_out\(30))))) # (!\comb_224|data_out\(31) & (\comb_224|data_out\(30) & 
-- (\comb_224|data_out\(29) $ (\comb_224|data_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(30),
	datab => \comb_224|data_out\(31),
	datac => \comb_224|data_out\(29),
	datad => \comb_224|data_out\(28),
	combout => \comb_224|Segment0|seven_seg_display[1]~4_combout\);

-- Location: LCCOMB_X28_Y16_N22
\comb_224|Segment0|seven_seg_display[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment0|seven_seg_display[2]~5_combout\ = (\comb_224|data_out\(30) & (\comb_224|data_out\(31) & ((\comb_224|data_out\(29)) # (!\comb_224|data_out\(28))))) # (!\comb_224|data_out\(30) & (!\comb_224|data_out\(31) & (\comb_224|data_out\(29) & 
-- !\comb_224|data_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(30),
	datab => \comb_224|data_out\(31),
	datac => \comb_224|data_out\(29),
	datad => \comb_224|data_out\(28),
	combout => \comb_224|Segment0|seven_seg_display[2]~5_combout\);

-- Location: LCCOMB_X28_Y16_N4
\comb_224|Segment0|seven_seg_display[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment0|seven_seg_display[3]~10_combout\ = (\comb_224|data_out\(29) & ((\comb_224|data_out\(30) & ((\comb_224|data_out\(28)))) # (!\comb_224|data_out\(30) & (\comb_224|data_out\(31) & !\comb_224|data_out\(28))))) # (!\comb_224|data_out\(29) & 
-- (!\comb_224|data_out\(31) & (\comb_224|data_out\(30) $ (\comb_224|data_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(30),
	datab => \comb_224|data_out\(31),
	datac => \comb_224|data_out\(29),
	datad => \comb_224|data_out\(28),
	combout => \comb_224|Segment0|seven_seg_display[3]~10_combout\);

-- Location: LCCOMB_X28_Y16_N20
\comb_224|Segment0|seven_seg_display[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment0|seven_seg_display[4]~6_combout\ = (\comb_224|data_out\(29) & (((!\comb_224|data_out\(31) & \comb_224|data_out\(28))))) # (!\comb_224|data_out\(29) & ((\comb_224|data_out\(30) & (!\comb_224|data_out\(31))) # (!\comb_224|data_out\(30) & 
-- ((\comb_224|data_out\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(30),
	datab => \comb_224|data_out\(31),
	datac => \comb_224|data_out\(29),
	datad => \comb_224|data_out\(28),
	combout => \comb_224|Segment0|seven_seg_display[4]~6_combout\);

-- Location: LCCOMB_X28_Y16_N26
\comb_224|Segment0|seven_seg_display[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment0|seven_seg_display[5]~7_combout\ = (\comb_224|data_out\(30) & (\comb_224|data_out\(28) & (\comb_224|data_out\(31) $ (\comb_224|data_out\(29))))) # (!\comb_224|data_out\(30) & (!\comb_224|data_out\(31) & ((\comb_224|data_out\(29)) # 
-- (\comb_224|data_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(30),
	datab => \comb_224|data_out\(31),
	datac => \comb_224|data_out\(29),
	datad => \comb_224|data_out\(28),
	combout => \comb_224|Segment0|seven_seg_display[5]~7_combout\);

-- Location: LCCOMB_X28_Y16_N12
\comb_224|Segment0|seven_seg_display[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment0|seven_seg_display[6]~8_combout\ = (\comb_224|data_out\(28) & ((\comb_224|data_out\(31)) # (\comb_224|data_out\(30) $ (\comb_224|data_out\(29))))) # (!\comb_224|data_out\(28) & ((\comb_224|data_out\(29)) # (\comb_224|data_out\(30) $ 
-- (\comb_224|data_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(30),
	datab => \comb_224|data_out\(31),
	datac => \comb_224|data_out\(29),
	datad => \comb_224|data_out\(28),
	combout => \comb_224|Segment0|seven_seg_display[6]~8_combout\);

-- Location: LCCOMB_X33_Y17_N24
\comb_224|Segment1|seven_seg_display[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment1|seven_seg_display[0]~9_combout\ = (\comb_224|data_out\(26) & (!\comb_224|data_out\(25) & (\comb_224|data_out\(27) $ (!\comb_224|data_out\(24))))) # (!\comb_224|data_out\(26) & (\comb_224|data_out\(24) & (\comb_224|data_out\(27) $ 
-- (!\comb_224|data_out\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(26),
	datab => \comb_224|data_out\(27),
	datac => \comb_224|data_out\(24),
	datad => \comb_224|data_out\(25),
	combout => \comb_224|Segment1|seven_seg_display[0]~9_combout\);

-- Location: LCCOMB_X33_Y17_N20
\comb_224|Segment1|seven_seg_display[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment1|seven_seg_display[1]~4_combout\ = (\comb_224|data_out\(27) & ((\comb_224|data_out\(24) & ((\comb_224|data_out\(25)))) # (!\comb_224|data_out\(24) & (\comb_224|data_out\(26))))) # (!\comb_224|data_out\(27) & (\comb_224|data_out\(26) & 
-- (\comb_224|data_out\(24) $ (\comb_224|data_out\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(26),
	datab => \comb_224|data_out\(27),
	datac => \comb_224|data_out\(24),
	datad => \comb_224|data_out\(25),
	combout => \comb_224|Segment1|seven_seg_display[1]~4_combout\);

-- Location: LCCOMB_X33_Y17_N30
\comb_224|Segment1|seven_seg_display[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment1|seven_seg_display[2]~5_combout\ = (\comb_224|data_out\(26) & (\comb_224|data_out\(27) & ((\comb_224|data_out\(25)) # (!\comb_224|data_out\(24))))) # (!\comb_224|data_out\(26) & (!\comb_224|data_out\(27) & (!\comb_224|data_out\(24) & 
-- \comb_224|data_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(26),
	datab => \comb_224|data_out\(27),
	datac => \comb_224|data_out\(24),
	datad => \comb_224|data_out\(25),
	combout => \comb_224|Segment1|seven_seg_display[2]~5_combout\);

-- Location: LCCOMB_X33_Y17_N22
\comb_224|Segment1|seven_seg_display[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment1|seven_seg_display[3]~10_combout\ = (\comb_224|data_out\(25) & ((\comb_224|data_out\(26) & ((\comb_224|data_out\(24)))) # (!\comb_224|data_out\(26) & (\comb_224|data_out\(27) & !\comb_224|data_out\(24))))) # (!\comb_224|data_out\(25) & 
-- (!\comb_224|data_out\(27) & (\comb_224|data_out\(26) $ (\comb_224|data_out\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(26),
	datab => \comb_224|data_out\(27),
	datac => \comb_224|data_out\(24),
	datad => \comb_224|data_out\(25),
	combout => \comb_224|Segment1|seven_seg_display[3]~10_combout\);

-- Location: LCCOMB_X33_Y17_N16
\comb_224|Segment1|seven_seg_display[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment1|seven_seg_display[4]~6_combout\ = (\comb_224|data_out\(25) & (((!\comb_224|data_out\(27) & \comb_224|data_out\(24))))) # (!\comb_224|data_out\(25) & ((\comb_224|data_out\(26) & (!\comb_224|data_out\(27))) # (!\comb_224|data_out\(26) & 
-- ((\comb_224|data_out\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(26),
	datab => \comb_224|data_out\(27),
	datac => \comb_224|data_out\(24),
	datad => \comb_224|data_out\(25),
	combout => \comb_224|Segment1|seven_seg_display[4]~6_combout\);

-- Location: LCCOMB_X33_Y17_N18
\comb_224|Segment1|seven_seg_display[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment1|seven_seg_display[5]~7_combout\ = (\comb_224|data_out\(26) & (\comb_224|data_out\(24) & (\comb_224|data_out\(27) $ (\comb_224|data_out\(25))))) # (!\comb_224|data_out\(26) & (!\comb_224|data_out\(27) & ((\comb_224|data_out\(24)) # 
-- (\comb_224|data_out\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(26),
	datab => \comb_224|data_out\(27),
	datac => \comb_224|data_out\(24),
	datad => \comb_224|data_out\(25),
	combout => \comb_224|Segment1|seven_seg_display[5]~7_combout\);

-- Location: LCCOMB_X33_Y17_N8
\comb_224|Segment1|seven_seg_display[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment1|seven_seg_display[6]~8_combout\ = (\comb_224|data_out\(24) & ((\comb_224|data_out\(27)) # (\comb_224|data_out\(26) $ (\comb_224|data_out\(25))))) # (!\comb_224|data_out\(24) & ((\comb_224|data_out\(25)) # (\comb_224|data_out\(26) $ 
-- (\comb_224|data_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(26),
	datab => \comb_224|data_out\(27),
	datac => \comb_224|data_out\(24),
	datad => \comb_224|data_out\(25),
	combout => \comb_224|Segment1|seven_seg_display[6]~8_combout\);

-- Location: LCCOMB_X33_Y16_N20
\comb_224|Segment2|seven_seg_display[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment2|seven_seg_display[0]~9_combout\ = (\comb_224|data_out\(22) & (!\comb_224|data_out\(21) & (\comb_224|data_out\(20) $ (!\comb_224|data_out\(23))))) # (!\comb_224|data_out\(22) & (\comb_224|data_out\(20) & (\comb_224|data_out\(21) $ 
-- (!\comb_224|data_out\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(22),
	datab => \comb_224|data_out\(21),
	datac => \comb_224|data_out\(20),
	datad => \comb_224|data_out\(23),
	combout => \comb_224|Segment2|seven_seg_display[0]~9_combout\);

-- Location: LCCOMB_X33_Y16_N24
\comb_224|Segment2|seven_seg_display[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment2|seven_seg_display[1]~4_combout\ = (\comb_224|data_out\(21) & ((\comb_224|data_out\(20) & ((\comb_224|data_out\(23)))) # (!\comb_224|data_out\(20) & (\comb_224|data_out\(22))))) # (!\comb_224|data_out\(21) & (\comb_224|data_out\(22) & 
-- (\comb_224|data_out\(20) $ (\comb_224|data_out\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(22),
	datab => \comb_224|data_out\(21),
	datac => \comb_224|data_out\(20),
	datad => \comb_224|data_out\(23),
	combout => \comb_224|Segment2|seven_seg_display[1]~4_combout\);

-- Location: LCCOMB_X33_Y16_N18
\comb_224|Segment2|seven_seg_display[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment2|seven_seg_display[2]~5_combout\ = (\comb_224|data_out\(22) & (\comb_224|data_out\(23) & ((\comb_224|data_out\(21)) # (!\comb_224|data_out\(20))))) # (!\comb_224|data_out\(22) & (\comb_224|data_out\(21) & (!\comb_224|data_out\(20) & 
-- !\comb_224|data_out\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(22),
	datab => \comb_224|data_out\(21),
	datac => \comb_224|data_out\(20),
	datad => \comb_224|data_out\(23),
	combout => \comb_224|Segment2|seven_seg_display[2]~5_combout\);

-- Location: LCCOMB_X33_Y16_N10
\comb_224|Segment2|seven_seg_display[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment2|seven_seg_display[3]~10_combout\ = (\comb_224|data_out\(21) & ((\comb_224|data_out\(22) & (\comb_224|data_out\(20))) # (!\comb_224|data_out\(22) & (!\comb_224|data_out\(20) & \comb_224|data_out\(23))))) # (!\comb_224|data_out\(21) & 
-- (!\comb_224|data_out\(23) & (\comb_224|data_out\(22) $ (\comb_224|data_out\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(22),
	datab => \comb_224|data_out\(21),
	datac => \comb_224|data_out\(20),
	datad => \comb_224|data_out\(23),
	combout => \comb_224|Segment2|seven_seg_display[3]~10_combout\);

-- Location: LCCOMB_X33_Y16_N16
\comb_224|Segment2|seven_seg_display[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment2|seven_seg_display[4]~6_combout\ = (\comb_224|data_out\(21) & (((\comb_224|data_out\(20) & !\comb_224|data_out\(23))))) # (!\comb_224|data_out\(21) & ((\comb_224|data_out\(22) & ((!\comb_224|data_out\(23)))) # (!\comb_224|data_out\(22) & 
-- (\comb_224|data_out\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(22),
	datab => \comb_224|data_out\(21),
	datac => \comb_224|data_out\(20),
	datad => \comb_224|data_out\(23),
	combout => \comb_224|Segment2|seven_seg_display[4]~6_combout\);

-- Location: LCCOMB_X33_Y16_N2
\comb_224|Segment2|seven_seg_display[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment2|seven_seg_display[5]~7_combout\ = (\comb_224|data_out\(22) & (\comb_224|data_out\(20) & (\comb_224|data_out\(21) $ (\comb_224|data_out\(23))))) # (!\comb_224|data_out\(22) & (!\comb_224|data_out\(23) & ((\comb_224|data_out\(21)) # 
-- (\comb_224|data_out\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(22),
	datab => \comb_224|data_out\(21),
	datac => \comb_224|data_out\(20),
	datad => \comb_224|data_out\(23),
	combout => \comb_224|Segment2|seven_seg_display[5]~7_combout\);

-- Location: LCCOMB_X33_Y16_N0
\comb_224|Segment2|seven_seg_display[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment2|seven_seg_display[6]~8_combout\ = (\comb_224|data_out\(20) & ((\comb_224|data_out\(23)) # (\comb_224|data_out\(22) $ (\comb_224|data_out\(21))))) # (!\comb_224|data_out\(20) & ((\comb_224|data_out\(21)) # (\comb_224|data_out\(22) $ 
-- (\comb_224|data_out\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(22),
	datab => \comb_224|data_out\(21),
	datac => \comb_224|data_out\(20),
	datad => \comb_224|data_out\(23),
	combout => \comb_224|Segment2|seven_seg_display[6]~8_combout\);

-- Location: LCCOMB_X34_Y16_N16
\comb_224|Segment3|seven_seg_display[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment3|seven_seg_display[0]~9_combout\ = (\comb_224|data_out\(19) & (\comb_224|data_out\(16) & (\comb_224|data_out\(17) $ (\comb_224|data_out\(18))))) # (!\comb_224|data_out\(19) & (!\comb_224|data_out\(17) & (\comb_224|data_out\(16) $ 
-- (\comb_224|data_out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(16),
	datab => \comb_224|data_out\(17),
	datac => \comb_224|data_out\(19),
	datad => \comb_224|data_out\(18),
	combout => \comb_224|Segment3|seven_seg_display[0]~9_combout\);

-- Location: LCCOMB_X34_Y16_N24
\comb_224|Segment3|seven_seg_display[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment3|seven_seg_display[1]~4_combout\ = (\comb_224|data_out\(17) & ((\comb_224|data_out\(16) & (\comb_224|data_out\(19))) # (!\comb_224|data_out\(16) & ((\comb_224|data_out\(18)))))) # (!\comb_224|data_out\(17) & (\comb_224|data_out\(18) & 
-- (\comb_224|data_out\(16) $ (\comb_224|data_out\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(16),
	datab => \comb_224|data_out\(17),
	datac => \comb_224|data_out\(19),
	datad => \comb_224|data_out\(18),
	combout => \comb_224|Segment3|seven_seg_display[1]~4_combout\);

-- Location: LCCOMB_X34_Y16_N30
\comb_224|Segment3|seven_seg_display[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment3|seven_seg_display[2]~5_combout\ = (\comb_224|data_out\(19) & (\comb_224|data_out\(18) & ((\comb_224|data_out\(17)) # (!\comb_224|data_out\(16))))) # (!\comb_224|data_out\(19) & (!\comb_224|data_out\(16) & (\comb_224|data_out\(17) & 
-- !\comb_224|data_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(16),
	datab => \comb_224|data_out\(17),
	datac => \comb_224|data_out\(19),
	datad => \comb_224|data_out\(18),
	combout => \comb_224|Segment3|seven_seg_display[2]~5_combout\);

-- Location: LCCOMB_X34_Y16_N22
\comb_224|Segment3|seven_seg_display[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment3|seven_seg_display[3]~10_combout\ = (\comb_224|data_out\(17) & ((\comb_224|data_out\(16) & ((\comb_224|data_out\(18)))) # (!\comb_224|data_out\(16) & (\comb_224|data_out\(19) & !\comb_224|data_out\(18))))) # (!\comb_224|data_out\(17) & 
-- (!\comb_224|data_out\(19) & (\comb_224|data_out\(16) $ (\comb_224|data_out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(16),
	datab => \comb_224|data_out\(17),
	datac => \comb_224|data_out\(19),
	datad => \comb_224|data_out\(18),
	combout => \comb_224|Segment3|seven_seg_display[3]~10_combout\);

-- Location: LCCOMB_X34_Y16_N12
\comb_224|Segment3|seven_seg_display[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment3|seven_seg_display[4]~6_combout\ = (\comb_224|data_out\(17) & (\comb_224|data_out\(16) & (!\comb_224|data_out\(19)))) # (!\comb_224|data_out\(17) & ((\comb_224|data_out\(18) & ((!\comb_224|data_out\(19)))) # (!\comb_224|data_out\(18) & 
-- (\comb_224|data_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(16),
	datab => \comb_224|data_out\(17),
	datac => \comb_224|data_out\(19),
	datad => \comb_224|data_out\(18),
	combout => \comb_224|Segment3|seven_seg_display[4]~6_combout\);

-- Location: LCCOMB_X34_Y16_N6
\comb_224|Segment3|seven_seg_display[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment3|seven_seg_display[5]~7_combout\ = (\comb_224|data_out\(16) & (\comb_224|data_out\(19) $ (((\comb_224|data_out\(17)) # (!\comb_224|data_out\(18)))))) # (!\comb_224|data_out\(16) & (\comb_224|data_out\(17) & (!\comb_224|data_out\(19) & 
-- !\comb_224|data_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(16),
	datab => \comb_224|data_out\(17),
	datac => \comb_224|data_out\(19),
	datad => \comb_224|data_out\(18),
	combout => \comb_224|Segment3|seven_seg_display[5]~7_combout\);

-- Location: LCCOMB_X34_Y16_N0
\comb_224|Segment3|seven_seg_display[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment3|seven_seg_display[6]~8_combout\ = (\comb_224|data_out\(16) & ((\comb_224|data_out\(19)) # (\comb_224|data_out\(17) $ (\comb_224|data_out\(18))))) # (!\comb_224|data_out\(16) & ((\comb_224|data_out\(17)) # (\comb_224|data_out\(19) $ 
-- (\comb_224|data_out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(16),
	datab => \comb_224|data_out\(17),
	datac => \comb_224|data_out\(19),
	datad => \comb_224|data_out\(18),
	combout => \comb_224|Segment3|seven_seg_display[6]~8_combout\);

-- Location: LCCOMB_X27_Y16_N20
\comb_224|Segment4|seven_seg_display[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment4|seven_seg_display[0]~9_combout\ = (\comb_224|data_out\(14) & (!\comb_224|data_out\(13) & (\comb_224|data_out\(15) $ (!\comb_224|data_out\(12))))) # (!\comb_224|data_out\(14) & (\comb_224|data_out\(12) & (\comb_224|data_out\(13) $ 
-- (!\comb_224|data_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(14),
	datab => \comb_224|data_out\(13),
	datac => \comb_224|data_out\(15),
	datad => \comb_224|data_out\(12),
	combout => \comb_224|Segment4|seven_seg_display[0]~9_combout\);

-- Location: LCCOMB_X27_Y16_N8
\comb_224|Segment4|seven_seg_display[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment4|seven_seg_display[1]~4_combout\ = (\comb_224|data_out\(13) & ((\comb_224|data_out\(12) & ((\comb_224|data_out\(15)))) # (!\comb_224|data_out\(12) & (\comb_224|data_out\(14))))) # (!\comb_224|data_out\(13) & (\comb_224|data_out\(14) & 
-- (\comb_224|data_out\(15) $ (\comb_224|data_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(14),
	datab => \comb_224|data_out\(13),
	datac => \comb_224|data_out\(15),
	datad => \comb_224|data_out\(12),
	combout => \comb_224|Segment4|seven_seg_display[1]~4_combout\);

-- Location: LCCOMB_X27_Y16_N2
\comb_224|Segment4|seven_seg_display[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment4|seven_seg_display[2]~5_combout\ = (\comb_224|data_out\(14) & (\comb_224|data_out\(15) & ((\comb_224|data_out\(13)) # (!\comb_224|data_out\(12))))) # (!\comb_224|data_out\(14) & (\comb_224|data_out\(13) & (!\comb_224|data_out\(15) & 
-- !\comb_224|data_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(14),
	datab => \comb_224|data_out\(13),
	datac => \comb_224|data_out\(15),
	datad => \comb_224|data_out\(12),
	combout => \comb_224|Segment4|seven_seg_display[2]~5_combout\);

-- Location: LCCOMB_X27_Y16_N18
\comb_224|Segment4|seven_seg_display[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment4|seven_seg_display[3]~10_combout\ = (\comb_224|data_out\(13) & ((\comb_224|data_out\(14) & ((\comb_224|data_out\(12)))) # (!\comb_224|data_out\(14) & (\comb_224|data_out\(15) & !\comb_224|data_out\(12))))) # (!\comb_224|data_out\(13) & 
-- (!\comb_224|data_out\(15) & (\comb_224|data_out\(14) $ (\comb_224|data_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(14),
	datab => \comb_224|data_out\(13),
	datac => \comb_224|data_out\(15),
	datad => \comb_224|data_out\(12),
	combout => \comb_224|Segment4|seven_seg_display[3]~10_combout\);

-- Location: LCCOMB_X27_Y16_N0
\comb_224|Segment4|seven_seg_display[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment4|seven_seg_display[4]~6_combout\ = (\comb_224|data_out\(13) & (((!\comb_224|data_out\(15) & \comb_224|data_out\(12))))) # (!\comb_224|data_out\(13) & ((\comb_224|data_out\(14) & (!\comb_224|data_out\(15))) # (!\comb_224|data_out\(14) & 
-- ((\comb_224|data_out\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(14),
	datab => \comb_224|data_out\(13),
	datac => \comb_224|data_out\(15),
	datad => \comb_224|data_out\(12),
	combout => \comb_224|Segment4|seven_seg_display[4]~6_combout\);

-- Location: LCCOMB_X27_Y16_N6
\comb_224|Segment4|seven_seg_display[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment4|seven_seg_display[5]~7_combout\ = (\comb_224|data_out\(14) & (\comb_224|data_out\(12) & (\comb_224|data_out\(13) $ (\comb_224|data_out\(15))))) # (!\comb_224|data_out\(14) & (!\comb_224|data_out\(15) & ((\comb_224|data_out\(13)) # 
-- (\comb_224|data_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(14),
	datab => \comb_224|data_out\(13),
	datac => \comb_224|data_out\(15),
	datad => \comb_224|data_out\(12),
	combout => \comb_224|Segment4|seven_seg_display[5]~7_combout\);

-- Location: LCCOMB_X27_Y16_N16
\comb_224|Segment4|seven_seg_display[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment4|seven_seg_display[6]~8_combout\ = (\comb_224|data_out\(12) & ((\comb_224|data_out\(15)) # (\comb_224|data_out\(14) $ (\comb_224|data_out\(13))))) # (!\comb_224|data_out\(12) & ((\comb_224|data_out\(13)) # (\comb_224|data_out\(14) $ 
-- (\comb_224|data_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(14),
	datab => \comb_224|data_out\(13),
	datac => \comb_224|data_out\(15),
	datad => \comb_224|data_out\(12),
	combout => \comb_224|Segment4|seven_seg_display[6]~8_combout\);

-- Location: LCCOMB_X25_Y16_N16
\comb_224|Segment5|seven_seg_display[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment5|seven_seg_display[0]~9_combout\ = (\comb_224|data_out\(11) & (\comb_224|data_out\(8) & (\comb_224|data_out\(10) $ (\comb_224|data_out\(9))))) # (!\comb_224|data_out\(11) & (!\comb_224|data_out\(9) & (\comb_224|data_out\(8) $ 
-- (\comb_224|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(8),
	datab => \comb_224|data_out\(11),
	datac => \comb_224|data_out\(10),
	datad => \comb_224|data_out\(9),
	combout => \comb_224|Segment5|seven_seg_display[0]~9_combout\);

-- Location: LCCOMB_X25_Y16_N8
\comb_224|Segment5|seven_seg_display[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment5|seven_seg_display[1]~4_combout\ = (\comb_224|data_out\(11) & ((\comb_224|data_out\(8) & ((\comb_224|data_out\(9)))) # (!\comb_224|data_out\(8) & (\comb_224|data_out\(10))))) # (!\comb_224|data_out\(11) & (\comb_224|data_out\(10) & 
-- (\comb_224|data_out\(8) $ (\comb_224|data_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(8),
	datab => \comb_224|data_out\(11),
	datac => \comb_224|data_out\(10),
	datad => \comb_224|data_out\(9),
	combout => \comb_224|Segment5|seven_seg_display[1]~4_combout\);

-- Location: LCCOMB_X25_Y16_N30
\comb_224|Segment5|seven_seg_display[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment5|seven_seg_display[2]~5_combout\ = (\comb_224|data_out\(11) & (\comb_224|data_out\(10) & ((\comb_224|data_out\(9)) # (!\comb_224|data_out\(8))))) # (!\comb_224|data_out\(11) & (!\comb_224|data_out\(8) & (!\comb_224|data_out\(10) & 
-- \comb_224|data_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(8),
	datab => \comb_224|data_out\(11),
	datac => \comb_224|data_out\(10),
	datad => \comb_224|data_out\(9),
	combout => \comb_224|Segment5|seven_seg_display[2]~5_combout\);

-- Location: LCCOMB_X25_Y16_N10
\comb_224|Segment5|seven_seg_display[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment5|seven_seg_display[3]~10_combout\ = (\comb_224|data_out\(9) & ((\comb_224|data_out\(8) & ((\comb_224|data_out\(10)))) # (!\comb_224|data_out\(8) & (\comb_224|data_out\(11) & !\comb_224|data_out\(10))))) # (!\comb_224|data_out\(9) & 
-- (!\comb_224|data_out\(11) & (\comb_224|data_out\(8) $ (\comb_224|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(8),
	datab => \comb_224|data_out\(11),
	datac => \comb_224|data_out\(10),
	datad => \comb_224|data_out\(9),
	combout => \comb_224|Segment5|seven_seg_display[3]~10_combout\);

-- Location: LCCOMB_X25_Y16_N28
\comb_224|Segment5|seven_seg_display[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment5|seven_seg_display[4]~6_combout\ = (\comb_224|data_out\(9) & (((\comb_224|data_out\(8) & !\comb_224|data_out\(11))))) # (!\comb_224|data_out\(9) & ((\comb_224|data_out\(10) & ((!\comb_224|data_out\(11)))) # (!\comb_224|data_out\(10) & 
-- (\comb_224|data_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(10),
	datab => \comb_224|data_out\(9),
	datac => \comb_224|data_out\(8),
	datad => \comb_224|data_out\(11),
	combout => \comb_224|Segment5|seven_seg_display[4]~6_combout\);

-- Location: LCCOMB_X25_Y16_N24
\comb_224|Segment5|seven_seg_display[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment5|seven_seg_display[5]~7_combout\ = (\comb_224|data_out\(8) & (\comb_224|data_out\(11) $ (((\comb_224|data_out\(9)) # (!\comb_224|data_out\(10)))))) # (!\comb_224|data_out\(8) & (!\comb_224|data_out\(11) & (!\comb_224|data_out\(10) & 
-- \comb_224|data_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(8),
	datab => \comb_224|data_out\(11),
	datac => \comb_224|data_out\(10),
	datad => \comb_224|data_out\(9),
	combout => \comb_224|Segment5|seven_seg_display[5]~7_combout\);

-- Location: LCCOMB_X25_Y16_N2
\comb_224|Segment5|seven_seg_display[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment5|seven_seg_display[6]~8_combout\ = (\comb_224|data_out\(8) & ((\comb_224|data_out\(11)) # (\comb_224|data_out\(10) $ (\comb_224|data_out\(9))))) # (!\comb_224|data_out\(8) & ((\comb_224|data_out\(9)) # (\comb_224|data_out\(11) $ 
-- (\comb_224|data_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(8),
	datab => \comb_224|data_out\(11),
	datac => \comb_224|data_out\(10),
	datad => \comb_224|data_out\(9),
	combout => \comb_224|Segment5|seven_seg_display[6]~8_combout\);

-- Location: LCCOMB_X27_Y17_N8
\comb_224|Segment6|seven_seg_display[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment6|seven_seg_display[0]~9_combout\ = (\comb_224|data_out\(7) & (\comb_224|data_out\(4) & (\comb_224|data_out\(6) $ (\comb_224|data_out\(5))))) # (!\comb_224|data_out\(7) & (!\comb_224|data_out\(5) & (\comb_224|data_out\(6) $ 
-- (\comb_224|data_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(7),
	datab => \comb_224|data_out\(6),
	datac => \comb_224|data_out\(4),
	datad => \comb_224|data_out\(5),
	combout => \comb_224|Segment6|seven_seg_display[0]~9_combout\);

-- Location: LCCOMB_X27_Y17_N12
\comb_224|Segment6|seven_seg_display[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment6|seven_seg_display[1]~4_combout\ = (\comb_224|data_out\(7) & ((\comb_224|data_out\(4) & ((\comb_224|data_out\(5)))) # (!\comb_224|data_out\(4) & (\comb_224|data_out\(6))))) # (!\comb_224|data_out\(7) & (\comb_224|data_out\(6) & 
-- (\comb_224|data_out\(4) $ (\comb_224|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(7),
	datab => \comb_224|data_out\(6),
	datac => \comb_224|data_out\(4),
	datad => \comb_224|data_out\(5),
	combout => \comb_224|Segment6|seven_seg_display[1]~4_combout\);

-- Location: LCCOMB_X27_Y17_N26
\comb_224|Segment6|seven_seg_display[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment6|seven_seg_display[2]~5_combout\ = (\comb_224|data_out\(7) & (\comb_224|data_out\(6) & ((\comb_224|data_out\(5)) # (!\comb_224|data_out\(4))))) # (!\comb_224|data_out\(7) & (!\comb_224|data_out\(6) & (!\comb_224|data_out\(4) & 
-- \comb_224|data_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(7),
	datab => \comb_224|data_out\(6),
	datac => \comb_224|data_out\(4),
	datad => \comb_224|data_out\(5),
	combout => \comb_224|Segment6|seven_seg_display[2]~5_combout\);

-- Location: LCCOMB_X27_Y17_N22
\comb_224|Segment6|seven_seg_display[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment6|seven_seg_display[3]~10_combout\ = (\comb_224|data_out\(5) & ((\comb_224|data_out\(6) & ((\comb_224|data_out\(4)))) # (!\comb_224|data_out\(6) & (\comb_224|data_out\(7) & !\comb_224|data_out\(4))))) # (!\comb_224|data_out\(5) & 
-- (!\comb_224|data_out\(7) & (\comb_224|data_out\(6) $ (\comb_224|data_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(7),
	datab => \comb_224|data_out\(6),
	datac => \comb_224|data_out\(4),
	datad => \comb_224|data_out\(5),
	combout => \comb_224|Segment6|seven_seg_display[3]~10_combout\);

-- Location: LCCOMB_X27_Y17_N4
\comb_224|Segment6|seven_seg_display[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment6|seven_seg_display[4]~6_combout\ = (\comb_224|data_out\(5) & (!\comb_224|data_out\(7) & ((\comb_224|data_out\(4))))) # (!\comb_224|data_out\(5) & ((\comb_224|data_out\(6) & (!\comb_224|data_out\(7))) # (!\comb_224|data_out\(6) & 
-- ((\comb_224|data_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(7),
	datab => \comb_224|data_out\(6),
	datac => \comb_224|data_out\(4),
	datad => \comb_224|data_out\(5),
	combout => \comb_224|Segment6|seven_seg_display[4]~6_combout\);

-- Location: LCCOMB_X27_Y17_N2
\comb_224|Segment6|seven_seg_display[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment6|seven_seg_display[5]~7_combout\ = (\comb_224|data_out\(6) & (\comb_224|data_out\(4) & (\comb_224|data_out\(7) $ (\comb_224|data_out\(5))))) # (!\comb_224|data_out\(6) & (!\comb_224|data_out\(7) & ((\comb_224|data_out\(4)) # 
-- (\comb_224|data_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(7),
	datab => \comb_224|data_out\(6),
	datac => \comb_224|data_out\(4),
	datad => \comb_224|data_out\(5),
	combout => \comb_224|Segment6|seven_seg_display[5]~7_combout\);

-- Location: LCCOMB_X27_Y17_N24
\comb_224|Segment6|seven_seg_display[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment6|seven_seg_display[6]~8_combout\ = (\comb_224|data_out\(4) & ((\comb_224|data_out\(7)) # (\comb_224|data_out\(6) $ (\comb_224|data_out\(5))))) # (!\comb_224|data_out\(4) & ((\comb_224|data_out\(5)) # (\comb_224|data_out\(7) $ 
-- (\comb_224|data_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(7),
	datab => \comb_224|data_out\(6),
	datac => \comb_224|data_out\(4),
	datad => \comb_224|data_out\(5),
	combout => \comb_224|Segment6|seven_seg_display[6]~8_combout\);

-- Location: LCCOMB_X25_Y17_N12
\comb_224|data_out[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|data_out[0]~feeder_combout\ = \comb_224|data_out~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comb_224|data_out~17_combout\,
	combout => \comb_224|data_out[0]~feeder_combout\);

-- Location: LCFF_X25_Y17_N13
\comb_224|data_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \comb_224|data_out[0]~feeder_combout\,
	ena => \comb_224|data_out[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_224|data_out\(0));

-- Location: LCCOMB_X25_Y17_N20
\comb_224|Segment7|seven_seg_display[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment7|seven_seg_display[0]~9_combout\ = (\comb_224|data_out\(3) & (\comb_224|data_out\(0) & (\comb_224|data_out\(1) $ (\comb_224|data_out\(2))))) # (!\comb_224|data_out\(3) & (!\comb_224|data_out\(1) & (\comb_224|data_out\(0) $ 
-- (\comb_224|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(0),
	datab => \comb_224|data_out\(1),
	datac => \comb_224|data_out\(3),
	datad => \comb_224|data_out\(2),
	combout => \comb_224|Segment7|seven_seg_display[0]~9_combout\);

-- Location: LCCOMB_X25_Y17_N8
\comb_224|Segment7|seven_seg_display[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment7|seven_seg_display[1]~4_combout\ = (\comb_224|data_out\(1) & ((\comb_224|data_out\(0) & (\comb_224|data_out\(3))) # (!\comb_224|data_out\(0) & ((\comb_224|data_out\(2)))))) # (!\comb_224|data_out\(1) & (\comb_224|data_out\(2) & 
-- (\comb_224|data_out\(0) $ (\comb_224|data_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(0),
	datab => \comb_224|data_out\(1),
	datac => \comb_224|data_out\(3),
	datad => \comb_224|data_out\(2),
	combout => \comb_224|Segment7|seven_seg_display[1]~4_combout\);

-- Location: LCCOMB_X25_Y17_N6
\comb_224|Segment7|seven_seg_display[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment7|seven_seg_display[2]~5_combout\ = (\comb_224|data_out\(3) & (\comb_224|data_out\(2) & ((\comb_224|data_out\(1)) # (!\comb_224|data_out\(0))))) # (!\comb_224|data_out\(3) & (!\comb_224|data_out\(0) & (\comb_224|data_out\(1) & 
-- !\comb_224|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(0),
	datab => \comb_224|data_out\(1),
	datac => \comb_224|data_out\(3),
	datad => \comb_224|data_out\(2),
	combout => \comb_224|Segment7|seven_seg_display[2]~5_combout\);

-- Location: LCCOMB_X25_Y17_N18
\comb_224|Segment7|seven_seg_display[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment7|seven_seg_display[3]~10_combout\ = (\comb_224|data_out\(1) & ((\comb_224|data_out\(0) & ((\comb_224|data_out\(2)))) # (!\comb_224|data_out\(0) & (\comb_224|data_out\(3) & !\comb_224|data_out\(2))))) # (!\comb_224|data_out\(1) & 
-- (!\comb_224|data_out\(3) & (\comb_224|data_out\(0) $ (\comb_224|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(0),
	datab => \comb_224|data_out\(1),
	datac => \comb_224|data_out\(3),
	datad => \comb_224|data_out\(2),
	combout => \comb_224|Segment7|seven_seg_display[3]~10_combout\);

-- Location: LCCOMB_X25_Y17_N28
\comb_224|Segment7|seven_seg_display[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment7|seven_seg_display[4]~6_combout\ = (\comb_224|data_out\(1) & (\comb_224|data_out\(0) & (!\comb_224|data_out\(3)))) # (!\comb_224|data_out\(1) & ((\comb_224|data_out\(2) & ((!\comb_224|data_out\(3)))) # (!\comb_224|data_out\(2) & 
-- (\comb_224|data_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(0),
	datab => \comb_224|data_out\(1),
	datac => \comb_224|data_out\(3),
	datad => \comb_224|data_out\(2),
	combout => \comb_224|Segment7|seven_seg_display[4]~6_combout\);

-- Location: LCCOMB_X25_Y17_N10
\comb_224|Segment7|seven_seg_display[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment7|seven_seg_display[5]~7_combout\ = (\comb_224|data_out\(0) & (\comb_224|data_out\(3) $ (((\comb_224|data_out\(1)) # (!\comb_224|data_out\(2)))))) # (!\comb_224|data_out\(0) & (\comb_224|data_out\(1) & (!\comb_224|data_out\(3) & 
-- !\comb_224|data_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(0),
	datab => \comb_224|data_out\(1),
	datac => \comb_224|data_out\(3),
	datad => \comb_224|data_out\(2),
	combout => \comb_224|Segment7|seven_seg_display[5]~7_combout\);

-- Location: LCCOMB_X25_Y17_N4
\comb_224|Segment7|seven_seg_display[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_224|Segment7|seven_seg_display[6]~8_combout\ = (\comb_224|data_out\(0) & ((\comb_224|data_out\(3)) # (\comb_224|data_out\(1) $ (\comb_224|data_out\(2))))) # (!\comb_224|data_out\(0) & ((\comb_224|data_out\(1)) # (\comb_224|data_out\(3) $ 
-- (\comb_224|data_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_224|data_out\(0),
	datab => \comb_224|data_out\(1),
	datac => \comb_224|data_out\(3),
	datad => \comb_224|data_out\(2),
	combout => \comb_224|Segment7|seven_seg_display[6]~8_combout\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_CLK~I\ : cycloneii_io
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
	datain => \VGA|mypll|altpll_component|_clk0~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_CLK);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_HS~I\ : cycloneii_io
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
	datain => \VGA|controller|VGA_HS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_HS);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_VS~I\ : cycloneii_io
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
	datain => \VGA|controller|VGA_VS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_VS);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_BLANK~I\ : cycloneii_io
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
	datain => \VGA|controller|VGA_BLANK~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_BLANK);

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_SYNC~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_SYNC);

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[0]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result2w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(0));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[1]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result2w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(1));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[2]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result2w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(2));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[3]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result2w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(3));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[4]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result2w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(4));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[5]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result2w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(5));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[6]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result2w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(6));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[7]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result2w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(7));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[8]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result2w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(8));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[9]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result2w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(9));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[0]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result1w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(0));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[1]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result1w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(1));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[2]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result1w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(2));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[3]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result1w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[4]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result1w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(4));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[5]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result1w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(5));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[6]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result1w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(6));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[7]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result1w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(7));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[8]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result1w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(8));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[9]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result1w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(9));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[0]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result0w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(0));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[1]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result0w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[2]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result0w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[3]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result0w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[4]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result0w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[5]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result0w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(5));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[6]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result0w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(6));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[7]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result0w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(7));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[8]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result0w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(8));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[9]~I\ : cycloneii_io
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
	datain => \VGA|VideoMemory|auto_generated|altsyncram1|mux5|muxlut_result0w~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(9));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
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
	padio => ww_SW(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
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
	padio => ww_SW(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
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
	padio => ww_SW(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
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
	padio => ww_SW(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
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
	padio => ww_SW(7));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
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
	padio => ww_SW(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
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
	padio => ww_SW(9));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
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
	padio => ww_KEY(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
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
	padio => ww_KEY(2));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
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
	padio => ww_KEY(3));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
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
	datain => \Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
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
	datain => \Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
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
	datain => \Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
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
	datain => \Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
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
	datain => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
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
	datain => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
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
	datain => wait_Q(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
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
	datain => wait_Q(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
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
	datain => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[10]~I\ : cycloneii_io
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
	datain => \LEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[11]~I\ : cycloneii_io
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
	datain => \LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[12]~I\ : cycloneii_io
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
	datain => \states_Q.100~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[13]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[14]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[15]~I\ : cycloneii_io
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
	datain => \WideAnd0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[16]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[17]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(17));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
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
	datain => \comb_221|altsyncram_component|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
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
	datain => \comb_221|altsyncram_component|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
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
	datain => \comb_221|altsyncram_component|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
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
	datain => \comb_221|altsyncram_component|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
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
	datain => \comb_221|altsyncram_component|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
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
	datain => \comb_221|altsyncram_component|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
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
	datain => \comb_221|altsyncram_component|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
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
	datain => \comb_221|altsyncram_component|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
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
	datain => \comb_224|Segment0|seven_seg_display[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
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
	datain => \comb_224|Segment0|seven_seg_display[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
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
	datain => \comb_224|Segment0|seven_seg_display[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
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
	datain => \comb_224|Segment0|seven_seg_display[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
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
	datain => \comb_224|Segment0|seven_seg_display[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
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
	datain => \comb_224|Segment0|seven_seg_display[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
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
	datain => \comb_224|Segment0|ALT_INV_seven_seg_display[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
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
	datain => \comb_224|Segment1|seven_seg_display[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
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
	datain => \comb_224|Segment1|seven_seg_display[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
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
	datain => \comb_224|Segment1|seven_seg_display[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
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
	datain => \comb_224|Segment1|seven_seg_display[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
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
	datain => \comb_224|Segment1|seven_seg_display[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
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
	datain => \comb_224|Segment1|seven_seg_display[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
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
	datain => \comb_224|Segment1|ALT_INV_seven_seg_display[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
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
	datain => \comb_224|Segment2|seven_seg_display[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
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
	datain => \comb_224|Segment2|seven_seg_display[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
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
	datain => \comb_224|Segment2|seven_seg_display[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
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
	datain => \comb_224|Segment2|seven_seg_display[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
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
	datain => \comb_224|Segment2|seven_seg_display[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
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
	datain => \comb_224|Segment2|seven_seg_display[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
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
	datain => \comb_224|Segment2|ALT_INV_seven_seg_display[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
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
	datain => \comb_224|Segment3|seven_seg_display[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
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
	datain => \comb_224|Segment3|seven_seg_display[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
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
	datain => \comb_224|Segment3|seven_seg_display[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
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
	datain => \comb_224|Segment3|seven_seg_display[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
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
	datain => \comb_224|Segment3|seven_seg_display[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
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
	datain => \comb_224|Segment3|seven_seg_display[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
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
	datain => \comb_224|Segment3|ALT_INV_seven_seg_display[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[0]~I\ : cycloneii_io
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
	datain => \comb_224|Segment4|seven_seg_display[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[1]~I\ : cycloneii_io
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
	datain => \comb_224|Segment4|seven_seg_display[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[2]~I\ : cycloneii_io
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
	datain => \comb_224|Segment4|seven_seg_display[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[3]~I\ : cycloneii_io
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
	datain => \comb_224|Segment4|seven_seg_display[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[4]~I\ : cycloneii_io
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
	datain => \comb_224|Segment4|seven_seg_display[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[5]~I\ : cycloneii_io
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
	datain => \comb_224|Segment4|seven_seg_display[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4[6]~I\ : cycloneii_io
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
	datain => \comb_224|Segment4|ALT_INV_seven_seg_display[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[0]~I\ : cycloneii_io
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
	datain => \comb_224|Segment5|seven_seg_display[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[1]~I\ : cycloneii_io
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
	datain => \comb_224|Segment5|seven_seg_display[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[2]~I\ : cycloneii_io
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
	datain => \comb_224|Segment5|seven_seg_display[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[3]~I\ : cycloneii_io
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
	datain => \comb_224|Segment5|seven_seg_display[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[4]~I\ : cycloneii_io
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
	datain => \comb_224|Segment5|seven_seg_display[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[5]~I\ : cycloneii_io
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
	datain => \comb_224|Segment5|seven_seg_display[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5[6]~I\ : cycloneii_io
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
	datain => \comb_224|Segment5|ALT_INV_seven_seg_display[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[0]~I\ : cycloneii_io
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
	datain => \comb_224|Segment6|seven_seg_display[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[1]~I\ : cycloneii_io
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
	datain => \comb_224|Segment6|seven_seg_display[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[2]~I\ : cycloneii_io
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
	datain => \comb_224|Segment6|seven_seg_display[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[3]~I\ : cycloneii_io
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
	datain => \comb_224|Segment6|seven_seg_display[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[4]~I\ : cycloneii_io
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
	datain => \comb_224|Segment6|seven_seg_display[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[5]~I\ : cycloneii_io
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
	datain => \comb_224|Segment6|seven_seg_display[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6[6]~I\ : cycloneii_io
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
	datain => \comb_224|Segment6|ALT_INV_seven_seg_display[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[0]~I\ : cycloneii_io
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
	datain => \comb_224|Segment7|seven_seg_display[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[1]~I\ : cycloneii_io
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
	datain => \comb_224|Segment7|seven_seg_display[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[2]~I\ : cycloneii_io
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
	datain => \comb_224|Segment7|seven_seg_display[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[3]~I\ : cycloneii_io
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
	datain => \comb_224|Segment7|seven_seg_display[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[4]~I\ : cycloneii_io
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
	datain => \comb_224|Segment7|seven_seg_display[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[5]~I\ : cycloneii_io
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
	datain => \comb_224|Segment7|seven_seg_display[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7[6]~I\ : cycloneii_io
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
	datain => \comb_224|Segment7|ALT_INV_seven_seg_display[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(6));

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]__duplicate~I\ : cycloneii_io
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
	datain => \Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[0]__duplicate\);

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]__duplicate~I\ : cycloneii_io
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
	datain => \Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[1]__duplicate\);

-- Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]__duplicate~I\ : cycloneii_io
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
	datain => \Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[2]__duplicate\);

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]__duplicate~I\ : cycloneii_io
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
	datain => \Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[3]__duplicate\);

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]__duplicate~I\ : cycloneii_io
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
	datain => \Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[4]__duplicate\);

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]__duplicate~I\ : cycloneii_io
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
	datain => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[5]__duplicate\);

-- Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]__duplicate~I\ : cycloneii_io
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
	datain => wait_Q(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[6]__duplicate\);

-- Location: PIN_AC20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]__duplicate~I\ : cycloneii_io
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
	datain => wait_Q(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[7]__duplicate\);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]__duplicate~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[8]__duplicate\);

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]__duplicate~I\ : cycloneii_io
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
	datain => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[9]__duplicate\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[10]__duplicate~I\ : cycloneii_io
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
	datain => \LEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[10]__duplicate\);

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[11]__duplicate~I\ : cycloneii_io
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
	datain => \LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[11]__duplicate\);

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[12]__duplicate~I\ : cycloneii_io
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
	datain => \states_Q.100~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[12]__duplicate\);

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[13]__duplicate~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[13]__duplicate\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[14]__duplicate~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[14]__duplicate\);

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[15]__duplicate~I\ : cycloneii_io
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
	datain => \WideAnd0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[15]__duplicate\);

-- Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[16]__duplicate~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[16]__duplicate\);

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[17]__duplicate~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDR[17]__duplicate\);

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]__duplicate~I\ : cycloneii_io
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
	datain => \comb_221|altsyncram_component|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDG[0]__duplicate\);

-- Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]__duplicate~I\ : cycloneii_io
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
	datain => \comb_221|altsyncram_component|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDG[1]__duplicate\);

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]__duplicate~I\ : cycloneii_io
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
	datain => \comb_221|altsyncram_component|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDG[2]__duplicate\);

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]__duplicate~I\ : cycloneii_io
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
	datain => \comb_221|altsyncram_component|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDG[3]__duplicate\);

-- Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]__duplicate~I\ : cycloneii_io
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
	datain => \comb_221|altsyncram_component|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDG[4]__duplicate\);

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]__duplicate~I\ : cycloneii_io
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
	datain => \comb_221|altsyncram_component|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDG[5]__duplicate\);

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]__duplicate~I\ : cycloneii_io
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
	datain => \comb_221|altsyncram_component|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDG[6]__duplicate\);

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]__duplicate~I\ : cycloneii_io
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
	datain => \comb_221|altsyncram_component|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => \ww_LEDG[7]__duplicate\);
END structure;


