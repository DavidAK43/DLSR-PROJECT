/*

	*****************
	** Parent File **
	*****************
	- button control action
		
	************
	** Author **
	************	
	-Iceman77
		
	*****************
	** Description **
	*****************
	- add the selected item to the player's currently selected container
	 	 
	***********
	** Usage **
	***********
	- call DLSR_fnc_addItemToXXX;
	
*/

if ( CURRENT_SELECTED_CONTAINER != "Gear" ) then {


	call compile format [("


		if ( player canAddItemTo%1 ( lbData [ ( _this select 0 ), ( lbCurSel ( _this select 0 ) ) ] ) ) then { 
		
			player addItemTo%1 ( lbData [ ( _this select 0 ), ( lbCurSel ( _this select 0 ) ) ] );
			
		} else {
		
			hint format [ localize 'STR_A3_DLSR_hint_noRoomWarn', CURRENT_SELECTED_CONTAINER ];
			
		};
		
		
	"), CURRENT_SELECTED_CONTAINER];
	
	
	[ CURRENT_SELECTED_CONTAINER, format ["STR_A3_DLSR_txt_%1ContainerHeader", CURRENT_SELECTED_CONTAINER ] ] call DLSR_fnc_curContainerLbPop;

	call DLSR_fnc_setProgressBars;
	
	
} else {

	//hint "You can't put this item into your main gear. Please select a valid container first.";
	hint localize "STR_A3_DLSR_hint_MainGearWarn";
	
};

nil
