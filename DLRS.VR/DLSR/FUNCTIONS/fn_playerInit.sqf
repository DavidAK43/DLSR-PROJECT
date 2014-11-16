if ( isDedicated ) exitWith {};

waitUntil { ! ( isNull player ) }; 
  
// Black listed items. Array of strings (classnames) IE; [ "class_name_one", "class_name_two", "class_name_three" ];
BLACKLISTITEMS = switch ( faction player ) do {

	case "BLU_F" : { []; }; // Remove these items if NATO Player
	
	case "BLU_G_F" : { []; }; // Remove these items if WEST FIA player
	
	case "OPF_F" : { []; }; // Remove these items if CSAT player
	
	case "OPF_G_F" : { []; }; // Remove these items if EAST FIA player
	
	case "IND_F" : { []; }; // Remove these items if AAF player
	
	case "IND_G_F" : { []; }; // Remove these items if AAF FIA player
	
	default { []; }; // Remove these items if no match found ( civ etc )
	
};  



/////////////////////////////////
// ADD ACTION TO PLAYER OBJECT //
/////////////////////////////////

    player addAction [
	
        "<t color='#0099FF'>DLSR</t>", 
		
        { call DLSR_fnc_uiInit; },
		
        [],
		
        6,
		
        true,
		
        true,
		
        "",
		
		" { cursorTarget isKindOf _x } count [ 'ReammoBox_F', 'Land_Pallet_MilBoxes_F', 'Land_PaperBox_open_full_F' ] > 0 && { _target distance cursorTarget <= 4 } "
		
    ];  
	
	
    player addEventHandler ["Respawn", {
	
	
        ( _this select 0 ) addAction [
		
            "<t color='#0099FF'>DLSR</t>", 
			
            { call DLSR_fnc_uiInit; },
			
            [],
			
            6,
			
            true,
			
            true,
			
            "",
			
            " { cursorTarget isKindOf _x } count [ 'ReammoBox_F', 'Land_Pallet_MilBoxes_F', 'Land_PaperBox_open_full_F' ] > 0 && { _target distance cursorTarget <= 4 } "
			
        ];  
		
		
    }];  
	
	call DLSR_fnc_IDC_init; // Initialize IDC variables
	
	nil
	