// By Larrow

/********************

    Delete Loadout 
	
********************/

//Send LB selected items LB Data value
_loadoutIndex = _this select 0;
_loadoutName = (DLS_playerLoadouts select _loadoutIndex) select 0;
DLS_playerLoadouts set [_loadoutIndex, -1];
DLS_playerLoadouts = DLS_playerLoadouts - [-1];
profileNamespace setVariable ["DLS_loadouts",DLS_playerLoadouts];

hint format["Loadout %1 has been deleted", str _loadoutName];

call DLSR_fnc_LO_Refresh;
