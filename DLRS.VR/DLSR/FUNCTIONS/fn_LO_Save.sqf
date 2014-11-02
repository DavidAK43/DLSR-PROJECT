// By Larrow

//******************
//** Save Loadout **
//******************

//send a LB Data value to overwrite, send -1 to create a new loadout
_loadoutIndex = _this select 0;

//send a name from an edit box or something to name the new loadout
_loadoutName = _this select 1;

//save current weapon so we can swap back to it after we have iterated through gun muzzles
_currentWeapon = currentWeapon player;

_gear = [];

{
	_item = call compile format ["%1 player", _x];
	_gear set [count _gear, _item];
}forEach ["Backpack","Headgear","Goggles","Uniform","Vest"];


_weaponMags = [];
{
    _weapon = _x;
    _muzzles = getArray (configFile >> "cfgWeapons" >> _weapon >> "muzzles");
    {
        if (!(_x == "this")) then {
            player selectWeapon _x;
        } else {
            player selectWeapon _weapon;
        };
        if (!(currentMagazine player == "")) then {
            _weaponMags set [count _weaponMags, currentMagazine player];
        };
    } forEach _muzzles;
} forEach weapons player;


_weaponSlots = [];
{
    _item = call compile format ["%1 player", _x];
    _weaponSlots set [count _weaponSlots, _item];
} forEach ["PrimaryWeapon","SecondaryWeapon","HandgunWeapon"];



_weaponItems = [];
{
    _itemList = call compile format ["%1Items player", _x];
    _weaponItems set [count _weaponItems, _itemList];
} forEach ["PrimaryWeapon","SecondaryWeapon","Handgun"];


_containerItems = [];
{
    _itemList = call compile format ["%1Items player", _x];
    _containerItems set [count _containerItems, _itemList];
} forEach ["Uniform", "Vest", "Backpack"];


_assignedItems = assignedItems player;


_loadout = [_loadoutName] + [_gear] + [_weaponMags] + [_weaponSlots] + [_weaponItems] + [_containerItems] + [_assignedItems];

//Are we create a new loadout or overwriting
if (_loadoutIndex == -1) then {
	_loadoutIndex = count DLS_playerLoadouts;
};

//Update current loadout array
DLS_playerLoadouts set [_loadoutIndex, _loadout];

//Save loadout array to profile
profileNamespace setVariable ["DLS_loadouts", DLS_playerLoadouts];

//Save last loadout to profile
profileNamespace setVariable ["DLS_lastLoadout",_loadoutName];

//Feed back to player that loadout has been saved
hintSilent format["Your current gear has been saved as %1.", str _loadoutName];

//Change players gun back to what ever they were holding
player selectWeapon _currentWeapon;

//Refresh loadouts LB
[_loadoutIndex] call DLSR_fnc_LO_Refresh;