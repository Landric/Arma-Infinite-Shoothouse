#include "defines\rooms.sqf";
#include "defines\loot.sqf";
#include "defines\units.sqf";

LND_shoot_roomSize = 20; // Interiors in rooms.sqf are all made with this assumption

LND_shoot_lootChance = (["LootChance", 5] call BIS_fnc_getParamValue)/100;
LND_shoot_minUnits = ["MinUnits", 1] call BIS_fnc_getParamValue;
LND_shoot_maxUnits = ["MaxUnits", 4] call BIS_fnc_getParamValue;
LND_shoot_emptyRooms = 0; // For tracking number of empty rooms in a row

LND_shoot_spawnHostages = (["Hostages", 1] call BIS_fnc_getParamValue) > 0;
LND_shoot_spawnBLUFOR = (["BLUF", 0] call BIS_fnc_getParamValue) > 0;

LND_shoot_rooms = createHashMap;

LND_shoot_score = 0;

// Create an initial set of rooms (with no units), and (optionally) "loot"
[0, 1, false] call LND_fnc_createRoom;
if(["StartingLoot", 1] call BIS_fnc_getParamValue == 1) then {
	[0, 0, false, true] call LND_fnc_createRoom;
} else {
	[0, 0, false] call LND_fnc_createRoom; // Still technically has a chance of spawning loot, if enabled
};