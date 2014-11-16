// By Larrow

//********************
//** Rename Loadout **
//********************

//Send LB selected items LB Data value
_loadoutIndex = _this select 0;
_newName = _this select 1;

_loadoutArray = DLS_playerLoadouts select _loadoutIndex;
_oldName = _loadoutArray select 0;
_loadoutArray set [0,_newName];

DLS_playerLoadouts set [_loadoutIndex, _loadoutArray];
profileNamespace setVariable ["DLS_loadouts",DLS_playerLoadouts];

hint format ["You have renamed %1 to %2", str _oldName, str _newName];

[_loadoutIndex] call DLSR_fnc_LO_Refresh;

nil
