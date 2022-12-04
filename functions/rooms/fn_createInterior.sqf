scriptName "LND\functions\rooms\fn_createInterior.sqf";
/*
	Author:
		Landric

	Description:
		Creates a room containing "furniture" and, optionally, hostiles/hostages

	Parameter(s):
		x and y in "room-space" (NOT world-space!)
		bool generateUnits
	
	Returns:
		array of all created objects

	Example Usage:
		_objects = [0, 0] call LND_fnc_createInterior;
*/

params ["_roomX", "_roomY", "_genUnits"];

private _allObjects = [];

// Randomly select an interior from rooms.sqf
private _interior = selectRandom LND_shoot_interiors;


// Random rotation for the interior, for variety
private _rotation = selectRandom [0, 90, 180, 270];

// Generate the interior "furniture"
{
	_type = _x select 0;
	_pos = _x select 1;
	_pos = [
		(((_pos select 0) * cos(_rotation)) - ((_pos select 1) * sin(_rotation)))+(LND_shoot_roomSize * _roomX),
		(((_pos select 0) * sin(_rotation)) + ((_pos select 1) * cos(_rotation)))+(LND_shoot_roomSize * _roomY)
	];

	_dir = (_x select 2) - _rotation;

	_furniture = _type createVehicle _pos;
	_furniture setDir _dir;
	_furniture setVehiclePosition [_pos, [], 0, "CAN_COLLIDE"];
	_furniture enableSimulationGlobal false;
	_allObjects pushBack _furniture;
} forEach (_interior select 0);


// Generate units to fill (a subset of) the available positions, randomising between friendly and hostiles (depending on the difficulty/params)
private _containsHostiles = false; // Track whether we have created any hostile units
if(_genUnits) then {
	_unitPositions = (_interior select 1) call BIS_fnc_arrayShuffle;
	_unitPositions resize ([LND_shoot_minUnits, LND_shoot_maxUnits] call BIS_fnc_randomInt);
	{
		private _unit = objNull;

		if(isNil "_x") then { break; };

		_pos = _x select 0;
		_pos = [
			(((_pos select 0) * cos(_rotation)) - ((_pos select 1) * sin(_rotation)))+(LND_shoot_roomSize * _roomX),
			(((_pos select 0) * sin(_rotation)) + ((_pos select 1) * cos(_rotation)))+(LND_shoot_roomSize * _roomY)
		];

		if( (LND_shoot_spawnHostages || LND_shoot_spawnBLUFOR) && (LND_shoot_emptyRooms < 3 || _containsHostiles) && random 1 < ((["NonHostileChance", 5] call BIS_fnc_getParamValue)/100) ) then {

			switch (true) do { 
				case (LND_shoot_spawnHostages && LND_shoot_spawnBLUFOR && ((random 1) < 0.5));
				case (LND_shoot_spawnHostages && !LND_shoot_spawnBLUFOR) : {
					_group = createGroup civilian;
					_unit = _group createUnit [selectRandom LND_shoot_civ, _pos, [], 0, "NONE"];
					_unit disableAI "all"; // Stop the unit "un"surrendering, or running away if it takes damage
					_unit switchMove "AmovPercMstpSsurWnonDnon";
					if( ["Hostages", 1] call BIS_fnc_getParamValue == 2 ) then {
						_unit addVest "V_Safety_yellow_F";
					};
				};
				default {
					// "BLUFOR" units are actually created as GREENFOR, to prevent
					// OPFOR from engaging them
					_group = createGroup independent;
					_unit = _group createUnit [selectRandom LND_shoot_bluf, _pos, [], 0, "CAN_COLLIDE"];
					_group = createGroup independent;
					[_unit] joinSilent _group;
					_unit setUnitPos (selectRandom (_x select 1));
					_unit disableAI "PATH";
					_unit disableAI "TARGET";
				}; 
			};
		}
		else{
			_containsHostiles = true;
			private _group = createGroup east;
			_unit = _group createUnit [selectRandom LND_shoot_opf, _pos, [], 0, "CAN_COLLIDE"];
			_group = createGroup east;
			[_unit] joinSilent _group;
			_unit setUnitPos (selectRandom (_x select 1));
			_unit disableAI "PATH";
			_unit disableAI "AUTOTARGET";
			_unit setSkill ["commanding", 0];
		};
		_unit setFormDir random 360;
		_allObjects pushBack _unit;

		_unit addEventHandler ["Dammaged", { // The typo is on purpose
			params ["_unit", "_selection", "_damage", "_hitIndex", "_hitPoint", "_shooter", "_projectile"];

			if((side _shooter) != west || !alive _unit) exitWith {};


			// Don't just check side, as unconscious/dead units count as CIV
			if((typeOf _unit) in LND_shoot_opf) then {
				//
			}
			else{
				LND_shoot_score = LND_shoot_score - 1;
				(format ["Friendly unit injured!\n\n-1 points!\n\nCurrent score: %1", LND_shoot_score]) remoteExec ["hint"];
			};


		}];

		_unit addEventHandler ["Killed", {
			params ["_unit", "_killer", "_instigator", "_useEffects"];

			if((side _killer) != west) exitWith {};

			// Don't just check side, as ACE will set uncon units as CIV
			if((typeOf _unit) in LND_shoot_opf) then {
				LND_shoot_score = LND_shoot_score + 10;
				(format ["Hostile neutralised!\n\n+10 points!\n\nCurrent score: %1", LND_shoot_score]) remoteExec ["hint"];
			}
			else{
				LND_shoot_score = LND_shoot_score - 10;
				(format ["Friendly unit killed!\n\n-10 points!\n\nCurrent score: %1", LND_shoot_score]) remoteExec ["hint"];
			};

		}];
	} forEach _unitPositions;
};

// Used to prevent too many empty rooms in a row
if(!_containsHostiles && _roomX == 0) then {
	LND_shoot_emptyRooms = LND_shoot_emptyRooms + 1;
};

_allObjects
