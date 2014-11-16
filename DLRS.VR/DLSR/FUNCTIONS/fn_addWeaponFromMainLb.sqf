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
	- either add the selected weapon to one of the player's containers, or equip the weapon 
	 	 
	***********
	** Usage **
	***********
	- call DLSR_fnc_addWeaponFromMainLb;
	
*/


if ( CURRENT_SELECTED_CONTAINER == "Gear" ) then {


	player addWeaponGlobal ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] );
	
	[ CURRENT_SELECTED_CONTAINER, format ["STR_A3_DLSR_txt_%1ContainerHeader", CURRENT_SELECTED_CONTAINER ] ] call DLSR_fnc_curContainerLbPop;

	player selectWeapon (primaryWeapon player);
	
	
} else {


	[ IDC_DLSR_LB_MAIN ] call DLSR_fnc_addItemToXXX;


};

nil
