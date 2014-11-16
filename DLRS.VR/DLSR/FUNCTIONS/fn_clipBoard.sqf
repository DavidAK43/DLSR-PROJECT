//by Larrow  

_clipBoard = _this select 0;
//store the removeXXX commands 
_removeAll = "removeAllweapons this;
removeGoggles this;
removeHeadgear this;
removeVest this;
removeUniform this;
removeAllAssignedItems this; ";

//store containers
_GEAR = "";
{
    _item = call compile format ["%1 player", _x];
    if (!(_item == "")) then {
        _GEAR = _GEAR + format ["this add%1 %2; ", _x, str _item];
    };
} forEach ["Headgear","Goggles","Uniform","Vest","Backpack"];

//store weapons
_weaponSlots = "";
{
    _item = call compile format ["%1 player", _x];
    if (!(_item == "")) then {
        _weaponSlots = _weaponSlots + format ["this addWeapon %1; ", str _item];
    };
} forEach ["PrimaryWeapon","SecondaryWeapon","HandgunWeapon"];

//store magazines
_weaponMags = "";
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
            _weaponMags = _weaponMags + format["this addMagazine %1; ",str currentMagazine player];
        };
    } forEach _muzzles;
} forEach weapons player;

_WEAPONS = _weaponMags + _weaponSlots;

//store weapon accessories 
_WEAPONITEMS = "";
{
    _weaponSlot = _x;
    {
        if (!(_x == "")) then {
            _WEAPONITEMS = _WEAPONITEMS + format ["this add%1Item %2; ", _weaponSlot, str _x];
        };
    } forEach (call compile format ["%1Items player", _weaponSlot])
} forEach ["PrimaryWeapon","SecondaryWeapon","Handgun"];

//store container items
_containerItems = "";
{
    _container = _x;
    {
        _containerItems = _containerItems + format ["this addItemTo%1 %2; ", _container, str _x];
    } forEach (call compile format ["%1Items player", _container]);
} forEach ["Uniform", "Vest", "Backpack"];

//store assigned items
_assignedItems = "";
{
    if (_x in ["Binocular", "Rangefinder", "Laserdesignator"]) then {
        _assignedItems = _assignedItems + format ["this addWeapon %1; ", str _x];
    }else{
        _assignedItems = _assignedItems + format ["this linkItem %1; ", str _x];
    };
} forEach assignedItems player;

_ITEMS = _containerItems + _assignedItems;

copyToClipboard (_removeAll + _GEAR + _WEAPONS + _WEAPONITEMS + _ITEMS);
hintSilent "Your current gear loadout has been copied to the clipboard.";  

if (primaryWeapon player != "") then {player selectWeapon primaryWeapon player;};

nil
