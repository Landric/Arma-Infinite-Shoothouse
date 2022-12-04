scriptName "LND\functions\util\fn_clearInventory.sqf";
/*
	Author:
		Landric

	Description:
		Deletes the contents of a given box

	Parameter(s):
		box
	
	Returns:
		none

	Example Usage:
		_box = "Box_NATO_Ammo_F" createVehicle _pos;
		[_box] call LND_fnc_clearInventory;
*/
params ["_box"];

clearItemCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearBackpackCargoGlobal _box;