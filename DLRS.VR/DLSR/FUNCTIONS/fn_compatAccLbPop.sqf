/*

	*****************
	** Parent File **
	*****************
	- UIEH onLBSelChanged (main LB)
		
	************
	** Author **
	************	
	-Iceman77
		
	*****************
	** Description **
	*****************
	- populate the "compatible" LB with the currently selected weapon's (from main LB) compatible accessories
	 	 
	***********
	** Usage **
	***********
	call DLSR_fnc_compatAccLbPop;  
	
*/

private ["_index", "_className", "_opticArray", "_muzzleArray", "_pointerArray", "_acc", "_picture", "_displayName", "_index"];

lbClear IDC_DLSR_LB_COMPATIBLEACC;

_index = lbCurSel IDC_DLSR_LB_MAIN;

_className = lbData [IDC_DLSR_LB_MAIN, _index];


_opticArray = getArray (configfile >> "CfgWeapons" >> _className >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems");

_muzzleArray = getArray (configfile >> "CfgWeapons" >> _className >> "WeaponSlotsInfo" >> "MuzzleSlot" >> "compatibleItems");

_pointerArray = getArray (configfile >> "CfgWeapons" >> _className >> "WeaponSlotsInfo" >> "PointerSlot" >> "compatibleItems");


{
	
	for "_i" from 0 to count _x - 1 do {
	
		_acc = _x select _i;
		
		_picture = getText (configFile >> "cfgWeapons" >> _acc >> "picture");
		
		_displayName = getText (configFile >> "cfgWeapons" >> _acc >> "displayName");
		
		_index = lbAdd [IDC_DLSR_LB_COMPATIBLEACC, _displayName];
		
		lbSetPicture [IDC_DLSR_LB_COMPATIBLEACC, _index, _picture];
		
		lbSetData [IDC_DLSR_LB_COMPATIBLEACC, _index, _acc];
		
		lbSetTooltip [IDC_DLSR_LB_COMPATIBLEACC, _index, _displayName];
		
	};
	
} forEach [

	_opticArray,
	
	_muzzleArray,
	
	_pointerArray
	
];


lbSetCurSel [ IDC_DLSR_LB_COMPATIBLEACC, lbCurSel IDC_DLSR_LB_COMPATIBLEACC ];

call DLSR_fnc_compatMagsLbPop;

nil
