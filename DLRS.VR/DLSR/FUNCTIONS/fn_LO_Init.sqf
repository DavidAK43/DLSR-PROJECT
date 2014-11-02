// By Larrow

#define UIctrl(ctrl) ((findDisplay 20000) displayCtrl ctrl)

DLS_LOADOUTS		= 	20000;

DLS_BTN_LOAD		= 20001;
DLS_BTN_REPLACE	= 20002;
DLS_BTN_DELETE		= 20003;
DLS_BTN_RENAME		= 20004;
DLS_BTN_CREATE		= 20005;
DLS_LB_LOADOUTS	= 20006;
DLS_LB_GEAR			= 20007;
DLS_EB_NAME			= 20008;

DLS_playerLoadouts = profileNamespace getVariable ["DLS_loadouts",[]];
_lastLoadout = profileNamespace getVariable ["DLS_lastLoadout",nil];
_loadoutIndex = -1;

if (!(isNil "_lastLoadout") ) then {
	{
		_loadoutName = _x select 0;
		if (_loadoutName == _lastLoadout) exitWith {
			_loadoutIndex = _forEachIndex;
		};
	}forEach DLS_playerLoadouts;
};

[_loadoutIndex] call DLSR_fnc_LO_Refresh;

ctrlSetFocus UIctrl(DLS_BTN_LOAD);

_EB_Text = false;
_LB_Selected = false;
while { !(isNull (findDisplay 20000)) && dialog } do {

	if (lbCurSel UIctrl(DLS_LB_LOADOUTS) > -1) then {
		_LB_Selected = true;
	}else{
		_LB_Selected = false;
	};

	if (ctrlText UIctrl(DLS_EB_NAME) != "") then {
		_EB_Text = true;
	}else{
		_EB_Text = false;
	};

	UIctrl(DLS_BTN_REPLACE) ctrlEnable _LB_Selected;
	UIctrl(DLS_BTN_LOAD) ctrlEnable _LB_Selected;
	UIctrl(DLS_BTN_DELETE) ctrlEnable _LB_Selected;

	UIctrl(DLS_BTN_CREATE) ctrlEnable _EB_Text;

	if (_EB_Text && _LB_Selected) then {
		UIctrl(DLS_BTN_RENAME) ctrlEnable true;
	}else{
		UIctrl(DLS_BTN_RENAME) ctrlEnable false;
	};

};

//player sideChat "ui finished";

waitUntil { ! ( isNull ( findDisplay ( IDD_DLSR_DIALOG ) ) ) };

[ CURRENT_SELECTED_CONTAINER, format ["STR_A3_DLSR_txt_%1ContainerHeader", CURRENT_SELECTED_CONTAINER ] ] call DLSR_fnc_curContainerLbPop;

call DLSR_fnc_setProgressBars;
		
call DLSR_fnc_setContainerImages;

/*
	//DEBUG CONSOLE (delete DLS profile vars):
	
	//LOADOUTS
	profileNamespace setVariable ["DLS_loadouts", nil];
	
	//LAST LOADOUT
	profileNamespace setVariable ["DLS_lastLoadout", nil];

	//create
	[-1, ctrlText ((findisplay 20000) displayctrl 20008)] call DLSR_fnc_LO_Save

	//save
	[lbCurSel ((finddisplay 20000) displayctrl 20006), ((finddisplay 20000) displayctrl 20006) lbText (lbCurSel ((finddisplay 20000) displayctrl 20006))] call DLSR_fnc_LO_Save

	//load
	[lbCurSel ((finddisplay 20000) displayctrl 20006)] call DLSR_fnc_LO_Load

	//delete
	[lbCurSel ((finddisplay 20000) displayctrl 20006)] call DLSR_fnc_LO_Delete

	//rename
	[lbCurSel ((finddisplay 20000) displayctrl 20006), ctrlText ((finddisplay 20000) displayctrl 20008)] call DLSR_fnc_LO_Rename

	//refresh
	[lbCurSel ((finddisplay 20000) displayctrl 20006)] call DLSR_fnc_LO_Gear;

*/