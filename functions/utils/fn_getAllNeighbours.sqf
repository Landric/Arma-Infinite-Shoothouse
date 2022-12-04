scriptName "LND\functions\utils\fn_getAllNeighbours.sqf";

params ["_roomX", "_roomY"];

private _neighbours = [];

for "_i" from -1 to 1 do {
	for "_j" from -1 to 1 do {
		if(!(_i == 0 && _j == 0)) then {
			_neighbours pushBack [_roomX + _i, _roomY + _j];
		}
	};
};

_neighbours
