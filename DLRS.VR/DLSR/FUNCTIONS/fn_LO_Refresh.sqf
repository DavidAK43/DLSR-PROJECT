// By Larrow

#define UIctrl(ctrl) ((findDisplay 20000) displayCtrl ctrl)

/*********************

   Fill loadout LB 
   
*********************/

_LB_CurSelection = [_this, 0, -1, [0]] call BIS_fnc_param;
lbClear UIctrl(DLS_LB_LOADOUTS);
if ( count DLS_playerLoadouts > 0 ) then {
	{
		_loadoutName = _x select 0;
		_index = UIctrl(DLS_LB_LOADOUTS) lbAdd _loadoutName;
		UIctrl(DLS_LB_LOADOUTS) lbSetValue [_index, _forEachIndex];
	}forEach DLS_playerLoadouts;
};

if ( _LB_CurSelection > -1) then {
	UIctrl(DLS_LB_LOADOUTS) lbSetCurSel _LB_CurSelection;
};

UIctrl(DLS_EB_NAME) ctrlSetText "";