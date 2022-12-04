/*
	Author:
		Landric

	Description:
		Defines for internal wall/furniture and "loot" placements.

	Example Usage:
		#include "loot.sqf"
*/

LND_shoot_pistols = [
	"Weapon_hgun_Pistol_heavy_01_green_F", 
	"Weapon_hgun_Pistol_heavy_02_F", 
	"Weapon_hgun_ACPC2_F", 
	"Weapon_hgun_Pistol_heavy_01_F", 
	"Weapon_hgun_Rook40_F", 
	"Weapon_hgun_P07_blk_F", 
	"Weapon_hgun_P07_F", 
	"Weapon_hgun_Pistol_01_F"
];

LND_shoot_smgs = [
	"Weapon_SMG_03C_black", 
	"Weapon_SMG_03C_TR_black", 
	"Weapon_SMG_01_F", 
	"Weapon_SMG_02_F", 
	"Weapon_SMG_05_F", 
	"Weapon_hgun_PDW2000_F"
];

LND_shoot_rifles = [
	"Weapon_arifle_AK12_F", 
	"Weapon_arifle_AKM_F", 
	"Weapon_arifle_AKS_F", 
	"Weapon_arifle_CTAR_blk_F", 
	"Weapon_arifle_TRG20_F", 
	"Weapon_arifle_Mk20C_plain_F", 
	"Weapon_arifle_Katiba_C_F", 
	"Weapon_sgun_HunterShotgun_01_F", 
	"Weapon_sgun_HunterShotgun_01_sawedoff_F", 
	"Weapon_arifle_MXC_F", 
	"Weapon_arifle_MX_F", 
	"Weapon_arifle_MSBS65_F", 
	"Weapon_arifle_MSBS65_UBS_F", 
	"Weapon_arifle_SDAR_F", 
	"Weapon_arifle_SPAR_01_blk_F", 
	"Weapon_arifle_SPAR_03_blk_F", 
	"Weapon_arifle_TRG21_F"
];

// Available weapons
LND_shoot_weapons = [];
if(["Rifles", 1] call BIS_fnc_getParamValue == 1) then { LND_shoot_weapons = LND_shoot_weapons + LND_shoot_rifles };
if(["Smgs", 1] call BIS_fnc_getParamValue == 1) then { LND_shoot_weapons = LND_shoot_weapons + LND_shoot_smgs };
if(["Pistols", 1] call BIS_fnc_getParamValue == 1) then { LND_shoot_weapons = LND_shoot_weapons + LND_shoot_pistols };

// Loot-room interiors
LND_shoot_lootRooms = [
	[
		[
			["Land_Shoot_House_Tunnel_Prone_F",[0,4],90],
			["Land_Shoot_House_Tunnel_Prone_F",[0,-4],90],
			["Land_Shoot_House_Tunnel_Prone_F",[-4,0],180],
			["Land_Shoot_House_Tunnel_Prone_F",[4,0],180]
		],
		[
			[["WEAPON"],[-1,4,0.72],270],
			[["WEAPON"],[1,4,0.72],270],
			[["WEAPON"],[0,4,0.72],270],
			[["ATTACHMENT"],[-0.5,4,0.7],270],
			[["ATTACHMENT"],[0.5,4,0.7],270],
			[["SUPPLY_BOX", objNull],[0,-4,0.7],90],
			[["AMMO_BOX"],[4,0,0.7],0],
			[["GRENADE_BOX", objNull],[-4,0,0.7],0]
		]
	]
];