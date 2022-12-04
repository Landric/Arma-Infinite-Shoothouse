scriptName "LND\functions\rooms\fn_createLoot.sqf";
/*
	Author:
		Landric

	Description:
		Creates a room containing "loot" (weapons, ammo, medical supplies, etc.)

	Parameter(s):
		x and y in room-space (NOT world-space!)
	
	Returns:
		array of all created objects

	Example Usage:
		_objects = [0, 0] call LND_fnc_createLoot;
*/
params ["_roomX", "_roomY"];

private _allObjects = [];

private _weapons = [];
private _compatibleAttachments = nil;
private _compatibleAmmo = nil;

private _room = selectRandom LND_shoot_lootRooms;


// Create "furniture"
{
	_objType = _x select 0;
	_pos = _x select 1;
	_pos = [(_pos select 0)+(LND_shoot_roomSize * _roomX), (_pos select 1)+(LND_shoot_roomSize * _roomY)];
	_dir = _x select 2;
	_obj = _objType createVehicle _pos;
	_obj setDir _dir;
	_obj setVehiclePosition [_pos, [], 0, "CAN_COLLIDE"];
	_obj enableSimulationGlobal false;
	_allObjects pushBack _obj;
} forEach (_room select 0);


// Make sure we collect all weapons first, so that we can generate suitable ammo/attachments
// (We *could* rely on the defines in loot.sqf always having weapons first in the list,
// but why risk it?)
{
	_objType = (_x select 0) select 0;
	if(_objType isEqualTo "WEAPON") then {
		_objType = selectRandom LND_shoot_weapons;
		_pos = _x select 1;
		_pos = [(_pos select 0)+(LND_shoot_roomSize * _roomX), (_pos select 1)+(LND_shoot_roomSize * _roomY), (_pos select 2)];
		_dir = _x select 2;
		_obj = _objType createVehicle _pos;
		_obj setDir _dir;
		_obj setPos _pos;

		_obj addMagazineCargoGlobal [((magazineCargo _obj) select 0), 3];

		_weapons pushBackUnique ((weaponCargo _obj) select 0);
		_allObjects pushBack _obj;
	};
} forEach (_room select 1);


// Curate a list of all compatible attachments and ammo
{
	if(!((primaryWeapon _x) isEqualTo "")) then { _weapons pushBackUnique (primaryWeapon _x); };
	if(!((handgunWeapon _x) isEqualTo "")) then { _weapons pushBackUnique (handgunWeapon _x); };
} forEach allPlayers;

private _compatibleAttachments = [];
{
	{
		_compatibleAttachments pushBackUnique _x;
	} forEach (compatibleItems _x);
} forEach _weapons;

if(["Daytime", 12] call BIS_fnc_getParamValue == 0) then {
	{
		if((hmd _x) isEqualTo "") then {
			_compatibleAttachments pushBack "NVGoggles";
			break;
		};
	} forEach allPlayers;
};

private _compatibleAmmo = [];
{
	_compatibleAmmo pushBackUnique ((getArray (configFile >> "CfgWeapons" >> _x >> "magazines")) select 0);

	_muzzles = getArray (configFile >> "CfgWeapons" >> _x >> "muzzles");
	for "_i" from 1 to (count _muzzles)-1 do {
		_muzzle = _muzzles select _i;
		_compatibleAmmo pushBackUnique ((getArray (configFile >> "CfgWeapons" >> _x >> _muzzle >> "magazines")) select 0);
	};
} forEach _weapons;

// Create attachments, ammo, supply boxes, etc.
{
	_objType = selectRandom (_x select 0);
	_pos = _x select 1;
	_pos = [(_pos select 0)+(LND_shoot_roomSize * _roomX), (_pos select 1)+(LND_shoot_roomSize * _roomY), (_pos select 2)];
	_dir = _x select 2;
	_obj = objNull;
	switch (_objType) do { 
		case "ATTACHMENT" : {
			_objType = "Item_" + (selectRandom _compatibleAttachments);
			_obj = _objType createVehicle _pos;
			_obj setDir _dir;
			_obj setPos _pos;
		};
		case "GRENADE_BOX" : {
			_objType = "Box_NATO_AmmoOrd_F";
			_obj = _objType createVehicle _pos;
			_obj setDir _dir;
			_obj setPos _pos;

			[_obj] call LND_fnc_clearInventory;

			_obj addItemCargo ["HandGrenade", ([1, 4] call BIS_fnc_randomInt)];

			if(isClass(configFile >> "CfgPatches" >> "ace_interaction")) then {
				_obj addItemCargo ["ACE_M84", ([1, 4] call BIS_fnc_randomInt)];
			};
		};
		case "SUPPLY_BOX" : {
			_objType = "Box_NATO_Support_F";
			_obj = _objType createVehicle _pos;
			_obj setDir _dir;
			_obj setPos _pos;
			[_obj] call LND_fnc_clearInventory;

			if(isClass(configFile >> "CfgPatches" >> "ace_interaction")) then {
				_obj addItemCargoGlobal ["ACE_elasticBandage", ([4, 16] call BIS_fnc_randomInt)];
				_obj addItemCargoGlobal ["ACE_packingBandage", ([4, 16] call BIS_fnc_randomInt)];
				_obj addItemCargoGlobal ["ACE_bloodIV_500", ([1, 6] call BIS_fnc_randomInt)];
				_obj addItemCargoGlobal ["ACE_epinephrine", ([1, 3] call BIS_fnc_randomInt)];
				_obj addItemCargoGlobal ["ACE_morphine", ([1, 3] call BIS_fnc_randomInt)];
				_obj addItemCargoGlobal ["ACE_splint", ([1, 2] call BIS_fnc_randomInt)];
				_obj addItemCargoGlobal ["ACE_tourniquet", ([1, 4] call BIS_fnc_randomInt)];
			}
			else{
				_obj addItemCargoGlobal ["FirstAidKit", ([1, 5] call BIS_fnc_randomInt)];
			};
			
		};
		case "AMMO_BOX" : {
			_objType = "Box_NATO_Ammo_F";
			_obj = _objType createVehicle _pos;
			_obj setDir _dir;
			_obj setPos _pos;
			[_obj] call LND_fnc_clearInventory;
			{
				_obj addMagazineAmmoCargo [_x, ([1, 5] call BIS_fnc_randomInt), 999];
			} forEach _compatibleAmmo;
		};
		default { continue };
	};
	_allObjects pushBack _obj;

} forEach (_room select 1);


_allObjects
