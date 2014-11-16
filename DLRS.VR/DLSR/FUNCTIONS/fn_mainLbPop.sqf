/*

	*****************
	** Parent File **
	*****************
	- fn_uiInit.sqf (button actions too)
		
	************
	** Author **
	************	
	-Iceman77
		
	*****************
	** Description **
	*****************
	- populate the main LB 
	 	 
	***********
	** Usage **
	***********
	- [ "cfgWeapons", "weapon", 'STR_A3_DLSR_txt_weaponHeader', 'call DLSR_fnc_addWeaponFromMainLb' ] call DLSR_fnc_mainLbPop;
	
*/

private ["_cfg", "_type", "_path", "_className", "_displayname", "_picture", "_scope", "_item", "_linkedItems", "_index"];

_cfg = [_this, 0, "CfgWeapons", [""]] call BIS_fnc_param;

_type = [_this, 1, "Weapon", [""]] call BIS_fnc_param;

_path = configfile >> _cfg;

lbClear IDC_DLSR_LB_MAIN;


for "_i" from 0 to (count _path) - 1 do {


	_className = configName (_path select _i);
	
	
	if ( isClass ( _path select _i ) ) then {
	
	
		_displayName = getText (_path >> _className >> "displayName");
		
		_picture = getText (_path >> _className >> "picture");
		
		_scope = getNumber (_path >> _className >> "scope");
		
	    _linkedItems = isClass (_path >> _className >> "LinkedItems");
		
		_item = [_className] call BIS_fnc_itemType;
		

		if ( _scope >= 2 && { _picture != "" && { _displayName != "" && { ! ( _linkedItems ) && { ! ( _className in BLACKLISTITEMS ) && { ( _item select 0 ) == _type || { ( _item select 1 ) == _type } } } } } } ) then {
		
		
			_index = lbAdd [IDC_DLSR_LB_MAIN, _displayName];
			
			lbSetData [IDC_DLSR_LB_MAIN, _index, _classname];
			
			lbSetPicture [IDC_DLSR_LB_MAIN, _index, _picture];
			
			lbSetTooltip [IDC_DLSR_LB_MAIN, _index, _displayName]; 
			
			
		};
		
		
	};
	
	
};



lbSetCurSel [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ];

ctrlSetText [ IDC_DLSR_TXT_MUNITIONHEADER, localize (_this select 2) ];

if (_type == "Weapon") then {
	ctrlSetText [ IDC_DLSR_TXT_DESCRIPTION_FOOTER, getText (configfile >> "CfgWeapons" >> lbData [IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN] >> "Library" >> "libTextDesc") ]; 
};

[ ( _this select 3 ) ] call DLSR_fnc_setbtnAction;

nil
