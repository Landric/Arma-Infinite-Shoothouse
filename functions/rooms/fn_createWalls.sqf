scriptName "LND\functions\rooms\fn_createWalls.sqf";
/*
	Author:
		Landric

	Description:
		Creates walls around a room location (if not already present), guaranteeing at least
		one door in each wall, and optional windows

	Parameter(s):
		x and y in room-space (NOT world-space!)
	
	Returns:
		array of all objects created
		array of objects used to "lock" doors

	Example Usage:
		_wallsAndDoors = [0, 0] call LND_fnc_createWalls;
*/

params ["_roomX", "_roomY"];

private _wallTypes = ["Land_Shoot_House_Panels_F", "Land_Shoot_House_Wall_F"];
private _windowTypes = ["Land_Shoot_House_Panels_Crouch_F", "Land_Shoot_House_Panels_Prone_F", "Land_Shoot_House_Panels_Vault_F", "Land_Shoot_House_Panels_Window_F", "Land_Shoot_House_Panels_Windows_F", "Land_Shoot_House_Wall_Crouch_F"];

private _doorTypes = [objNull, objNull, objNull, objNull, objNull, "Land_Shoot_House_Tunnel_F", "Land_Shoot_House_Tunnel_F", "Land_Shoot_House_Tunnel_F", "Land_Shoot_House_Tunnel_Crouch_F", "Land_Shoot_House_Tunnel_Crouch_F", "Land_Shoot_House_Tunnel_Stand_F", "Land_Shoot_House_Tunnel_Stand_F", "Land_Shoot_House_Tunnel_Prone_F", "Land_Shoot_House_Panels_Vault_F"];
// Make "lockable" doors more obvious where exactly they will spawn
private _lockableDoorTypes = ["Land_Shoot_House_Tunnel_F", "Land_Shoot_House_Tunnel_F", "Land_Shoot_House_Tunnel_F", "Land_Shoot_House_Tunnel_Crouch_F", "Land_Shoot_House_Tunnel_Crouch_F", "Land_Shoot_House_Tunnel_Stand_F", "Land_Shoot_House_Tunnel_Stand_F", "Land_Shoot_House_Tunnel_Prone_F"];

private _wallObjs = [];

private _walls = [];
private _upperWalls = [];
private _doors = [];

private _hasNeighbours = [_roomX, _roomY] call LND_fnc_hasNeighbours;

// "NORTH" wall
private _northWall = [];
_wallY = (LND_shoot_roomSize * _roomY) + (LND_shoot_roomSize/2);
for "_x" from -((LND_shoot_roomSize/2)-1) to ((LND_shoot_roomSize/2)-1) step 2 do {
	private _wallX = _x + (LND_shoot_roomSize * _roomX);

	private _wall = (selectRandom _wallTypes) createVehicle [_wallX, _wallY];
	//_wall setDir 0;
	if (random 1 < 0.3) then {
		_wall setDir 180;		
	};
	_wall setVehiclePosition [[_wallX, _wallY], [], 0, "CAN_COLLIDE"];
	_wall enableSimulationGlobal false;
	_northWall pushBack _wall;

	private _upperWall = (selectRandom _wallTypes) createVehicle [_wallX, _wallY];
	_upperWall enableSimulationGlobal false;
	_upperWall setVehiclePosition [[_wallX, _wallY], [], 0, "CAN_COLLIDE"];
	[_upperWall, 3.651] call BIS_fnc_setHeight;
	private _dir = 1;
	if (random 1 < 0.3) then {
		_dir = -1;		
	};
	_upperWall setVectorDirAndUp [[0,_dir,0], [0,0,-1]];
	_upperWalls pushback _upperWall;

};
_walls pushBack _northWall;


// "EAST" wall
private _eastWall = [];
if(_roomX > 0 || (_roomX == 0 && ( !([_roomX+1,_roomY] in LND_shoot_rooms) || random 1 < 0.8 )))  then {
	private _wallX = (LND_shoot_roomSize * _roomX) + (LND_shoot_roomSize/2);
	for "_y" from -((LND_shoot_roomSize/2)-1) to ((LND_shoot_roomSize/2)-1) step 2 do {
		private _wallY = _y + (LND_shoot_roomSize * _roomY);
		
		private _wall = (selectRandom _wallTypes) createVehicle [_wallX, _wallY];
		_wall setDir 90;
		if (random 1 < 0.3) then {
			_wall setDir 270;
		};
		_wall setVehiclePosition [[_wallX, _wallY], [], 0, "CAN_COLLIDE"];
		_wall enableSimulationGlobal false;
		_eastWall pushBack _wall;

		private _upperWall = (selectRandom _wallTypes) createVehicle [_wallX, _wallY];
		_upperWall enableSimulationGlobal false;
		_upperWall setVehiclePosition [[_wallX, _wallY], [], 0, "CAN_COLLIDE"];
		[_upperWall, 3.651] call BIS_fnc_setHeight;
		private _dir = 1;
		if (random 1 < 0.3) then {
			_dir = -1;		
		};
		_upperWall setVectorDirAndUp [[_dir,0,0], [0,0,-1]];
		_upperWalls pushback _upperWall;
	};
	_walls pushBack _eastWall;
};

// "SOUTH" wall
private _southWall = [];
if(_roomX != 0 || _roomY == 0) then {
	private _wallY = (LND_shoot_roomSize * _roomY) - (LND_shoot_roomSize/2);
	for "_x" from -((LND_shoot_roomSize/2)-1) to ((LND_shoot_roomSize/2)-1) step 2 do {
		private _wallX = _x + (LND_shoot_roomSize * _roomX);
		
		private _wall = (selectRandom _wallTypes) createVehicle [_wallX, _wallY];
		_wall setDir 180;
		if (random 1 < 0.3) then {
			_wall setDir 0;		
		};
		_wall setVehiclePosition [[_wallX, _wallY], [], 0, "CAN_COLLIDE"];
		_wall enableSimulationGlobal false;
		_southWall pushBack _wall;

		private _upperWall = (selectRandom _wallTypes) createVehicle [_wallX, _wallY];
		_upperWall enableSimulationGlobal false;
		_upperWall setVehiclePosition [[_wallX, _wallY], [], 0, "CAN_COLLIDE"];
		[_upperWall, 3.651] call BIS_fnc_setHeight;
		private _dir = 1;
		if (random 1 < 0.3) then {
			_dir = -1;		
		};
		_upperWall setVectorDirAndUp [[0,_dir,0], [0,0,-1]];
		_upperWalls pushback _upperWall;
	};
	_walls pushBack _southWall;
};

// "WEST" wall
private _westWall = [];
if(_roomX < 0 || (_roomX == 0 && ( !([_roomX-1,_roomY] in LND_shoot_rooms) || random 1 < 0.8 )))  then {
	private _wallX = (LND_shoot_roomSize * _roomX) - (LND_shoot_roomSize/2);
	for "_y" from -((LND_shoot_roomSize/2)-1) to ((LND_shoot_roomSize/2)-1) step 2 do {
		private _wallY = _y + (LND_shoot_roomSize * _roomY);
		
		private _wall = (selectRandom _wallTypes) createVehicle [_wallX, _wallY];
		_wall enableSimulationGlobal false;
		_wall setDir 270;
		if (random 1 < 0.3) then {
			_wall setDir 90;
		};
		_wall setVehiclePosition [[_wallX, _wallY], [], 0, "CAN_COLLIDE"];
		_westWall pushBack _wall;

		private _upperWall = (selectRandom _wallTypes) createVehicle [_wallX, _wallY];
		_upperWall enableSimulationGlobal false;
		_upperWall setVehiclePosition [[_wallX, _wallY], [], 0, "CAN_COLLIDE"];
		[_upperWall, 3.651] call BIS_fnc_setHeight;
		private _dir = 1;
		if (random 1 < 0.3) then {
			_dir = -1;		
		};
		_upperWall setVectorDirAndUp [[_dir,0,0], [0,0,-1]];
		_upperWalls pushback _upperWall;
	};
	_walls pushBack _westWall;
};


if(_roomX == 0) then{
	
	private _wallsWithNeighbours = [_northWall];
	if([_roomX - 1, _roomY] in LND_shoot_rooms && count _westWall > 0) then { _wallsWithNeighbours pushback _westWall };
	if([_roomX + 1, _roomY] in LND_shoot_rooms && count _eastWall > 0) then { _wallsWithNeighbours pushback _eastWall };

	for "_i" from 0 to count _wallsWithNeighbours-1 do {
		private _wall = _wallsWithNeighbours select _i;
		// Add at least one, and up to three, doors for each connecting wall
		for "_j" from 0 to 2 do {

			// Make it obvious where "locked" doors will spawn
			private _doorType = switch (_i) do { 
				case 0 : { selectRandom _lockableDoorTypes };
				default { selectRandom _doorTypes };
			};

			private _panelNumber = [1, (count _wall)-2] call BIS_fnc_randomInt;
			private _panel = _wall select _panelNumber;
			private _doorPos = getPos _panel;
			private _doorDir = getDir _panel;

			// If the door leads to the next room, "lock" it by not
			// removing the wall covering it
			if(_i == 0)  then {
				_doors pushback _panel;
			} else {
				deleteVehicle _panel;
			};
			if(!(_doorType isEqualTo objNull)) then {

				private _door = _doorType createVehicle _doorPos;
				_door setDir _doorDir;
				_door setVehiclePosition [_doorPos, [], 0, "CAN_COLLIDE"];
				_door enableSimulationGlobal false;
				_wall set [_panelNumber, _door];


				// Special cases to cover gaps in certain doors
				if(_doorType in ["Land_Shoot_House_Tunnel_Prone_F", "Land_Shoot_House_Tunnel_Crouch_F", "Land_Shoot_House_Tunnel_Stand_F"]) then {

					private _height = switch (_doorType) do { 
						case "Land_Shoot_House_Tunnel_Prone_F" : { 0.850 };
						case "Land_Shoot_House_Tunnel_Crouch_F" : { 1.488 };
						case "Land_Shoot_House_Tunnel_Stand_F" : { 2.134 };
					};
					private _doorWall = (selectRandom _wallTypes) createVehicle _doorPos;
					_doorWall enableSimulationGlobal false;
					_doorWall setVehiclePosition [_doorPos, [], 0, "CAN_COLLIDE"];
					[_doorWall, _height] call BIS_fnc_setHeight;
					_doorWall setDir _doorDir;
					_wallObjs pushBack _doorWall;
				};
			};
			if (random 1 < 0.8) exitWith {};
		};
	};

	//Add between 1 and 4 "windows" to the side rooms
	_wallsWithNeighbours deleteAt 0; // Side rooms only (if any)
	{
		for "_i" from 0 to 3 do {
			private _windowType = selectRandom _windowTypes;
			private _panelNumber = [1, (count _x)-2] call BIS_fnc_randomInt;
			private _panel = _x select _panelNumber;
			private _windowPos = getPos _panel;
			private _windowDir = getDir _panel;
			deleteVehicle _panel;

			private _window = _windowType createVehicle _windowPos;
			_window setDir _windowDir;
			_window setVehiclePosition [_windowPos, [], 0, "CAN_COLLIDE"];
			_window enableSimulationGlobal false;

			_x set [_panelNumber, _window];

			if (random 1 < 0.7) exitWith {};
		};
	} forEach _wallsWithNeighbours;
};

{
	{
		_wallObjs pushBack _x;
	} forEach _x;
} forEach _walls;
_wallObjs append _upperWalls;

[_wallObjs, _doors]