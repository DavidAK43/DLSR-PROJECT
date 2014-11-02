// By Larrow

removeAllWeapons player;
removeGoggles player;
removeHeadgear player;
removeVest player;
removeUniform player;
removeAllAssignedItems player;
removeBackpack player;

_loadoutIndex = _this select 0;
_loadoutArray = DLS_playerLoadouts select _loadoutIndex;

_gear = _loadoutArray select 1;
{
	_item = (_gear select _forEachIndex);
	if (!(_item == "") ) then {
		call compile format ["player add%1 %2", _x, str _item];

		if ( _x == "Backpack") then {
			clearAllItemsFromBackpack player;
		};
	};
} forEach ["Backpack","Headgear","Goggles","Uniform","Vest"];


{
	player addMagazineGlobal _x;

} forEach (_loadoutArray select 2);


{
	if( !(_x == "") ) then {
	   player addWeaponGlobal _x;
	};
} forEach (_loadoutArray select 3);


_weaponItems = (_loadoutArray select 4);
{
	_weapon = _x;
	{
		if ( !(_x == "") ) then {
			call compile format["player add%1Item %2", _weapon, str _x];
		};
	}forEach (_weaponItems select _forEachIndex);
} forEach ["PrimaryWeapon","SecondaryWeapon","Handgun"];


_containerItems = (_loadoutArray select 5);
{
	_container = _x;
	{
		call compile format["player addItemTo%1 %2", _container, str _x];

	}forEach (_containerItems select _forEachIndex);
} forEach ["Uniform", "Vest", "Backpack"];


{
	if ( _x in ["Binocular", "Rangefinder", "Laserdesignator"] ) then {
		player addWeaponGlobal _x;
	}else{
		player linkItem _x;
	};

}forEach (_loadoutArray select 6);

_loadoutName = _loadoutArray select 0;
hint format ["Loadout %1 applied", str _loadoutName];

//Save last loadout to profile
profileNamespace setVariable ["DLS_lastLoadout",_loadoutName];

[_loadoutIndex] call DLSR_fnc_LO_Refresh;
