
params ["_player", "_didJIP"];

_player createDiaryRecord ["Diary", ["CQB Training", "Welcome to Close Quarters Battle Training - work your way through an infinite shoothouse in order to hone your skills.<br/><br/>Clear each ""main"" room - and any side rooms - to unlock the next room. Search for extra weapons and ammo. Watch out for hostages!<br/><br/>To tweak the Scenario's difficulty (e.g. time of day, resupply availability, etc.) run as a multiplayer game and change the scenario Parameters."]];

_weapon = switch ( ["StartingWeapon", 4] call BIS_fnc_getParamValue ) do { 
	case 0 : { "" }; 
	case 1 : { "SMG_03C_black" }; 
	case 2 : { "SMG_01_F" }; 
	case 3 : { "SMG_05_F" }; 
	case 4 : { "arifle_MXC_F" }; 
	case 5 : { "arifle_AK12_F" }; 
	case 6 : { "arifle_CTAR_blk_F" }; 
	case 7 : { "sgun_HunterShotgun_01_F" }; 
	case 8 : { selectRandom ["SMG_03C_black", "SMG_01_F", "SMG_05_F","arifle_MXC_F", "arifle_AK12_F", "arifle_CTAR_blk_F", "sgun_HunterShotgun_01_F"] }; 
};
if(!(_weapon isEqualTo "")) then {
	_magazine = (getArray (configFile >> "CfgWeapons" >> _weapon >> "magazines")) select 0;
	for "_i" from 0 to 3 do { _player addMagazineGlobal _magazine; };

	_muzzles = getArray (configFile >> "CfgWeapons" >> _weapon >> "muzzles");
	for "_i" from 1 to (count _muzzles)-1 do {
		_muzzle = _muzzles select _i;
		_magazine = (getArray (configFile >> "CfgWeapons" >> _weapon >> _muzzle >> "magazines")) select 0;
		for "_i" from 0 to 2 do { _player addMagazineGlobal _magazine; };
	};
	_player addWeaponGlobal _weapon;
};


_pistol = switch ( ["StartingPistol", 1] call BIS_fnc_getParamValue ) do { 
	case 0 : { "" }; 
	case 1 : { "hgun_P07_F" }; 
	case 2 : { "hgun_Pistol_heavy_01_green_F" }; 
	case 3 : { "hgun_Pistol_heavy_02_F" }; 
	case 4 : { selectRandom ["hgun_P07_F", "hgun_Pistol_heavy_01_green_F", "hgun_Pistol_heavy_02_F"] };  
};
if(!(_pistol isEqualTo "")) then {
	_magazine = (getArray (configFile >> "CfgWeapons" >> _pistol >> "magazines")) select 0;
	for "_i" from 0 to 3 do { _player addMagazineGlobal _magazine; };

	// Y'never know
	_muzzles = getArray (configFile >> "CfgWeapons" >> _pistol >> "muzzles");
	for "_i" from 1 to (count _muzzles)-1 do {
		_muzzle = _muzzles select _i;
		_magazine = (getArray (configFile >> "CfgWeapons" >> _pistol >> _muzzle >> "magazines")) select 0;
		for "_i" from 0 to 2 do { _player addMagazineGlobal _magazine; };
	};
	_player addWeaponGlobal _pistol;
};


if(["NVGs", 1] call BIS_fnc_getParamValue == 1) then {
	_player linkItem "NVGoggles";
} else {
	if(["Daytime", 12] call BIS_fnc_getParamValue == 0) then {
		if(!(_weapon isEqualTo "")) then { _player addPrimaryWeaponItem "acc_flashlight"; };
		if(!(_pistol isEqualTo "")) then { _player addHandgunItem "acc_flashlight"; };
	};
};


if(isClass(configFile >> "CfgPatches" >> "ace_interaction")) then {
	for "_i" from 0 to 1 do {
		_player addItem "ACE_M84";
	};
	for "_i" from 0 to 7 do {
		_player addItem "ACE_packingBandage";
		_player addItem "ACE_quikclot";
	};
	for "_i" from 0 to 2 do {
		_player addItem "ACE_bloodIV_500";
		_player addItem "ACE_epinephrine";
		_player addItem "ACE_morphine";
		_player addItem "ACE_splint";
		_player addItem "ACE_tourniquet";
	};
}
else{
	for "_i" from 0 to 3 do {
		_player addItem "FirstAidKit";
	};
};


_player addeventhandler ["handledamage",{ (_this select 2) * ((["PlayerDamage", 100] call BIS_fnc_getParamValue)/100) }];


_player addEventHandler ["HandleRating", {
	params ["_unit", "_rating"];
	// Prevent players being turned "renegade" if accidentally killing friendlies
	// (This is a practice scenario after all)
	0
}];


if(_didJIP && count allPlayers > 1) then {
	_player setPos getPos (allPlayers select 0);
};