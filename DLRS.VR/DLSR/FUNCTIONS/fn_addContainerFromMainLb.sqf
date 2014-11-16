/*

	*****************
	** Parent File **
	*****************
	- Button control
		
	************
	** Author **
	************	
	- Iceman77
		
	*****************
	** Description **
	*****************
	- equip or add the selected vest, backpack, headgear or goggles to a container
	 	 
	***********
	** Usage **
	***********
	- call DLSR_fnc_addContainerFromMainLb;
	
*/


if ( CURRENT_SELECTED_CONTAINER == "Gear" ) then {
		
		
	call compile format ["player add%1 ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] )", ( _this select 0 ) ];
	
	[ CURRENT_SELECTED_CONTAINER, format ["STR_A3_DLSR_txt_%1ContainerHeader", CURRENT_SELECTED_CONTAINER ] ] call DLSR_fnc_curContainerLbPop;

	call DLSR_fnc_setProgressBars;
	
	call DLSR_fnc_setContainerImages;
	
	
} else {


	[ IDC_DLSR_LB_MAIN ] call DLSR_fnc_addItemToXXX;
	

};

nil
