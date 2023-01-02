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

#define HOSTILE_KILLED_SCORE 10
#define FRIENDLY_WOUNDED_PENALTY -200
#define FRIENDLY_KILLED_PERNALTY -200

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
		(((_pos select 0) * sin(_rotation)) + ((_pos select 1) * cos(_rotation)))+(LND_shoot_roomSize * _roomY),
		(_pos select 2)
	];

	_dir = (_x select 2) - _rotation;

	private _furniture = _type createVehicle _pos;
	if((_pos select 2) > 0) then {
		_furniture enableSimulationGlobal false;
		_furniture setVehiclePosition [_pos, [], 0, "CAN_COLLIDE"];
		[_furniture, (_pos select 2)] call BIS_fnc_setHeight;
		_furniture setDir _dir;
	} else {
		_furniture setDir _dir;
		_furniture setVehiclePosition [_pos, [], 0, "CAN_COLLIDE"];
		_furniture enableSimulationGlobal false;
	};
	_allObjects pushBack _furniture;
} forEach (_interior select 0);


// Generate units to fill (a subset of) the available positions, randomising between friendly and hostiles (depending on the difficulty/params)
private _containsHostiles = false; // Track whether we have created any hostile units
if(_genUnits) then {
	_unitPositions = (_interior select 1) call BIS_fnc_arrayShuffle;

	private "_minUnits";
	if(LND_shoot_emptyRooms < 2) then { _minUnits = LND_shoot_minUnits; }
	else { _minUnits = 1; };
	_unitPositions resize ([_minUnits, LND_shoot_maxUnits] call BIS_fnc_randomInt);


	// Add units on the "upper" level
	if( (count _unitPositions) < LND_shoot_maxUnits) then {

		private _perches = +(selectRandom LND_shoot_perches);

		for "_i" from 0 to ([0, LND_shoot_maxUnits-(count _unitPositions)] call BIS_fnc_randomInt) -1 do {	
			private _perch = _perches deleteAt ([0, (count _perches)-1] call BIS_fnc_randomInt);
			private _perchType = _perch select 0;
			private _perchPos = _perch select 1;
			_perchPos = [
				(((_perchPos select 0) * cos(_rotation)) - ((_perchPos select 1) * sin(_rotation)))+(LND_shoot_roomSize * _roomX),
				(((_perchPos select 0) * sin(_rotation)) + ((_perchPos select 1) * cos(_rotation)))+(LND_shoot_roomSize * _roomY),
				(_perchPos select 2)
			];
			private _perchDir = (_perch select 2) - _rotation;

			private _furniture = _perchType createVehicle _perchPos;
			_furniture enableSimulationGlobal false;
			_furniture setVehiclePosition [_perchPos, [], 0, "CAN_COLLIDE"];
			[_furniture, (_perchPos select 2)] call BIS_fnc_setHeight;
			_furniture setDir _perchDir;
			_allObjects pushBack _furniture;

			if((random 1) < 0.5) then { _unitPositions pushBack [(_perch select 1), ["MIDDLE", "UP"]]; };
		};
	};

	{
		private _unit = objNull;

		if(isNil "_x") then { break; };

		_pos = _x select 0;
		_pos = [
			(((_pos select 0) * cos(_rotation)) - ((_pos select 1) * sin(_rotation)))+(LND_shoot_roomSize * _roomX),
			(((_pos select 0) * sin(_rotation)) + ((_pos select 1) * cos(_rotation)))+(LND_shoot_roomSize * _roomY),
			(_pos select 2)
		];

		if( (LND_shoot_spawnHostages || LND_shoot_spawnBLUFOR) && (LND_shoot_emptyRooms < 2 || _containsHostiles) && (random 1) < ((["NonHostileChance", 10] call BIS_fnc_getParamValue)/100) ) then {

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
				//pass
			}
			else{
				LND_shoot_score = LND_shoot_score + FRIENDLY_WOUNDED_PENALTY;
				{
					private _highScore = profileNamespace getVariable ["LND_shoot_highScore", 0];
					hint parseText (format ["<t size=""1.2"">Friendly unit injured!<br/><br/>%1 points!<br/><br/>Current score: %2<br/><br/>Highscore: %3</t>", FRIENDLY_WOUNDED_PENALTY, LND_shoot_score, _highScore]);
				} remoteExec ["call"];
			};


		}];

		_unit addEventHandler ["Killed", {
			params ["_unit", "_killer", "_instigator", "_useEffects"];

			// Don't just check side, as ACE will set uncon units as CIV
			if((typeOf _unit) in LND_shoot_opf) then {
				if(LND_shoot_hostileAmmo == 0) then {					
					_unit removeWeaponGlobal (primaryWeapon _unit);
					_unit removeWeaponGlobal (handgunWeapon _unit);
					{
						_unit removeMagazineGlobal _x;
					} forEach magazines _unit;
				};

				if((side _killer) != west) exitWith {};

				if(LND_shoot_hostileAmmo == 2) then {
					{
						_unit removeMagazineGlobal _x;
					} forEach magazines _unit;
					{
						for "_i" from 0 to ((1/(count allPlayers))*4)-1 do {
							_unit addMagazineGlobal ((getArray (configFile >> "CfgWeapons" >> currentWeapon _x >> "magazines")) select 0);
						};
					} forEach allPlayers;
				};
				
				LND_shoot_score = LND_shoot_score + HOSTILE_KILLED_SCORE;
				{
					private _highScore = profileNamespace getVariable ["LND_shoot_highScore", 0];
					hint parseText (format ["<t size=""1.2"">Hostile neutralised!<br/><br/>+%1 points!<br/><br/>Current score: %2<br/><br/>Highscore: %3</t>", HOSTILE_KILLED_SCORE, LND_shoot_score, _highScore]);
				} remoteExec ["call"];
			}
			else{
				_unit removeWeaponGlobal (primaryWeapon _unit);
				_unit removeWeaponGlobal (handgunWeapon _unit);
				{
					_unit removeMagazineGlobal _x;
				} forEach magazines _unit;

				if((side _killer) != west) exitWith {};

				LND_shoot_score = LND_shoot_score + FRIENDLY_KILLED_PERNALTY;
				{
					private _highScore = profileNamespace getVariable ["LND_shoot_highScore", 0];
					hint parseText (format ["<t size=""1.2"">Friendly unit killed!<br/><br/>%1 points!<br/><br/>Current score: %2<br/><br/>Highscore: %3</t>", FRIENDLY_KILLED_PERNALTY, LND_shoot_score, _highScore]);
				} remoteExec ["call"];
			};

		}];
	} forEach _unitPositions;
};

// Used to prevent too many empty rooms in a row
if(!_containsHostiles && _roomX == 0) then {
	LND_shoot_emptyRooms = LND_shoot_emptyRooms + 1;
};

if(_containsHostiles) then {
	LND_shoot_emptyRooms = 0;
};

_allObjects
