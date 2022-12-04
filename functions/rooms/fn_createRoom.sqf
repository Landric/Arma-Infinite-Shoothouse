scriptName "LND\functions\rooms\fn_createRoom.sqf";
/*
	Author:
		Landric

	Description:
		Creates a room with a random interior, random hostile/hostages, and triggers for spawning the next room(s)

	Parameter(s):
		x and y in room-space (NOT world-space!)
		optional: bool generate units (default: true)
	
	Returns:
		nothing

	Example Usage:
		[0, 0] call LND_fnc_createRoom;
*/
params ["_roomX", "_roomY", ["_genUnits", true, [true]], ["_forceLoot", false, [true]]];

private _allObjects = [];

private _wallsAndDoors = ([_roomX, _roomY] call LND_fnc_createWalls);
private _allObjects append (_wallsAndDoors select 0);
private _doors = (_wallsAndDoors select 1);

// Percentage chance of a room containing "loot"
if(_forceLoot || random 1 < LND_shoot_lootChance) then {
	_allObjects append ([_roomX, _roomY] call LND_fnc_createLoot);
}
else{
	_allObjects append ([_roomX, _roomY, _genUnits] call LND_fnc_createInterior);
};

// Set up trigger to determine if new rooms should be spawned
if(_roomX == 0) then {
	private _roomTrigger = createTrigger ["EmptyDetector", [(LND_shoot_roomSize * _roomX), (LND_shoot_roomSize * _roomY)]];
	_roomTrigger setVariable ["_roomX", _roomX];
	_roomTrigger setVariable ["_roomY", _roomY];
	_roomTrigger setTriggerActivation ["EAST", "NOT PRESENT", false];
	_roomTrigger setTriggerArea [(LND_shoot_roomSize/2) * 3, (LND_shoot_roomSize/2), 0, true];

	// TODO: if an empty "main" room is created with an occupied side room,
	// and the scheduled task for the side room hasn't spawned units yet,
	// the trigger for the "main" room will trigger.
	// This means the doors to the next room will be unlocked, despite
	// there being hostiles remaining.
	// It isn't an enormous problem, but it is something to be aware of.
	_roomTrigger setTriggerStatements
	[
		"this",
		"
		_roomX = thisTrigger getVariable ""_roomX"";
		_roomY = thisTrigger getVariable ""_roomY"";


		if(!([_roomX, _roomY+1] in LND_shoot_rooms)) then {

			if(random 1 < 0.2 && _roomY > 1) then {
				LND_shoot_rooms set [[_roomX - 1, _roomY + 1], []];
				[_roomX - 1, _roomY + 1] spawn {
					params [""_a"", ""_b""];
					[_a, _b] call LND_fnc_createRoom;
				}; 
			};
			if(random 1 < 0.2 && _roomY > 1) then {
				LND_shoot_rooms set [[_roomX + 1, _roomY + 1], []];
				[_roomX + 1, _roomY + 1] spawn {
					params [""_a"", ""_b""];
					[_a, _b] call LND_fnc_createRoom;
				}; 
			};

			[_roomX, _roomY + 1] call LND_fnc_createRoom;
		};

		{
			deleteVehicle _x;
		} forEach ((LND_shoot_rooms get [_roomX, _roomY]) select 1);


		if([_roomX, _roomY - 4] in LND_shoot_rooms) then {

			[_roomX, _roomY - 4] spawn {
			params [""_a"", ""_b""];
				{
					deleteVehicle _x;
				} forEach ((LND_shoot_rooms get [_a, _b]) select 0);

				if([_a-1, _b] in LND_shoot_rooms) then {
					{
						deleteVehicle _x;
					} forEach ((LND_shoot_rooms get [_a-1, _b]) select 0);
				};

				if([_a+1, _b] in LND_shoot_rooms) then {
					{
						deleteVehicle _x;
					} forEach ((LND_shoot_rooms get [_a+1, _b]) select 0);
				};
			};
		};
		",
		""
	];
	_allObjects pushBack _roomTrigger;
};


// Add the list of created objects to the "world", so they can be removed as the player moves away
LND_shoot_rooms set [[_roomX, _roomY], [_allObjects, _doors]];

