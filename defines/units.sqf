/*
	Author:
		Landric

	Description:
		Defines for unit types

	Example Usage:
		#include "units.sqf"
*/

private _looters = [
	"I_L_Criminal_SG_F", 
	"I_L_Looter_Pistol_F", 
	"I_L_Looter_SMG_F", 
	"I_L_Criminal_SMG_F", 
	"I_L_Looter_Rifle_F"
];
private _fia = [
	"I_G_Soldier_A_F", 
	"I_G_engineer_F", 
	"I_G_Soldier_lite_F", 
	"I_G_officer_F"
];
private _aaf = [
	"I_Soldier_SL_F", 
	"I_Soldier_lite_F", 
	"I_Soldier_A_F", 
	"I_Soldier_AAR_F"
];
private _csat = [
	"O_Soldier_A_F", 
	"O_Soldier_lite_F", 
	"O_Soldier_SL_F", 
	"O_medic_F"
];

LND_shoot_opf = switch (["OPF", 3] call BIS_fnc_getParamValue) do { 
	case 0 : { _looters };
	case 1 : { _fia };
	case 2 : { _aaf };
	case 3 : { _csat };
	case 4 : { _looters + _fia + _aaf + _csat };
};


LND_shoot_civ = [
	"C_man_polo_1_F", 
	"C_man_polo_2_F", 
	"C_man_polo_3_F", 
	"C_man_polo_4_F", 
	"C_man_polo_5_F", 
	"C_man_polo_6_F", 
	"C_Man_formal_1_F", 
	"C_Man_formal_2_F", 
	"C_Man_formal_3_F", 
	"C_Man_casual_1_F", 
	"C_Man_casual_2_F", 
	"C_Man_casual_3_F"
];

LND_shoot_bluf = [
	"B_officer_F",
	"B_officer_F", 
	"B_soldier_AAR_F", 
	"B_Soldier_GL_F",
	"B_soldier_AAR_F", 
	"B_Soldier_GL_F",
	"B_soldier_AAR_F", 
	"B_Soldier_GL_F", 
	"B_CTRG_Miller_F"
];