scriptName "LND\functions\utils\fn_hasNeighbours.sqf";
/*
	Author:
		Landric

	Description:
		Returns a boolean array describing whether a given room has any (non-empty) orthogonal neighbours

	Parameter(s):
		x and y in room-space (NOT world-space!)
	
	Returns:
		bool array of orthogonal neighbours ["north", "east", "south", "west"]

	Example Usage:
		_hasNeighbours = [0, 0] call LND_fnc_hasNeighbours;
*/
params ["_roomX", "_roomY"];

private _neighbours = [];

if([_roomX, _roomY+1] in LND_shoot_rooms) then { _neighbours pushBack (count (LND_shoot_rooms get [_roomX, _roomY+1]) > 0) } else { _neighbours pushBack false };
if([_roomX+1, _roomY] in LND_shoot_rooms) then { _neighbours pushBack (count (LND_shoot_rooms get [_roomX+1, _roomY]) > 0) } else { _neighbours pushBack false };
if([_roomX, _roomY-1] in LND_shoot_rooms) then { _neighbours pushBack (count (LND_shoot_rooms get [_roomX, _roomY-1]) > 0) } else { _neighbours pushBack false };
if([_roomX-1, _roomY] in LND_shoot_rooms) then { _neighbours pushBack (count (LND_shoot_rooms get [_roomX-1, _roomY]) > 0) } else { _neighbours pushBack false };

// _neighbours pushBack (([_roomX, _roomY+1] in LND_shoot_rooms) && ());
// _neighbours pushBack (([_roomX+1, _roomY] in LND_shoot_rooms) && ());
// _neighbours pushBack (([_roomX, _roomY-1] in LND_shoot_rooms) && ());
// _neighbours pushBack (([_roomX-1, _roomY] in LND_shoot_rooms) && ());

_neighbours
