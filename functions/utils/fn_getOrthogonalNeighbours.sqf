scriptName "LND\functions\utils\fn_getOrthogonalNeighbours.sqf";

params ["_roomX", "_roomY"];

private _neighbours = [];

_neighbours pushBack [_roomX, _roomY+1];
_neighbours pushBack [_roomX+1, _roomY];
_neighbours pushBack [_roomX, _roomY-1];
_neighbours pushBack [_roomX-1, _roomY];

_neighbours
