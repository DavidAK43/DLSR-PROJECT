/*

	*****************
	** Parent File **
	*****************
	- fn_compatAccLbPop.sqf
		
	************
	** Author **
	************	
	-Iceman77
		
	*****************
	** Description **
	*****************
	- populate the "compatible" LB with the currently selected weapon's (from main LB) compatible mags
	 	 
	***********
	** Usage **
	***********
	- call DLSR_fnc_compatMagsLbPop;
	
*/


private [ "_muzzle", "_magArray", "_displayName", "_picture", "_index" ];

_className = lbData [IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN];

lbClear IDC_DLSR_LB_COMPATIBLEMAGS;



_magArray = if ( ( count getArray (configfile >> "CfgWeapons" >> _className >> "muzzles") ) > 1 ) then {


	_muzzle = getArray ( configfile >> "CfgWeapons" >> _className >> "muzzles" ) select 1;
	
	getArray ( configfile >> "CfgWeapons" >> _className >> _muzzle >> "magazines" ) + getArray ( configfile >> "cfgWeapons" >> _className >> "magazines" );
	
	
} else {


	getArray ( configfile >> "cfgWeapons" >> _className >> "magazines" );
	
	
};

	
		
{


	_displayName = getText ( configFile >> "cfgMagazines" >> _x >> "displayName" );
	
	_picture = getText ( configFile >> "cfgMagazines" >> _x >> "picture" );
	
	_index = lbAdd [IDC_DLSR_LB_COMPATIBLEMAGS, _displayName ];
	
	lbSetData [IDC_DLSR_LB_COMPATIBLEMAGS, _index, _x ];
	
	lbSetPicture [ IDC_DLSR_LB_COMPATIBLEMAGS, _index, _picture ]; 
	
	lbSetTooltip [ IDC_DLSR_LB_COMPATIBLEMAGS, _index, _displayName ];
	
	
} forEach _magArray;
	

	
lbSetCurSel [ IDC_DLSR_LB_COMPATIBLEMAGS, lbCurSel IDC_DLSR_LB_COMPATIBLEMAGS ];

ctrlSetText [ IDC_DLSR_TXT_DESCRIPTION_FOOTER, getText (configfile >> "CfgWeapons" >> lbData [IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN] >> "Library" >> "libTextDesc") ]; 

nil
