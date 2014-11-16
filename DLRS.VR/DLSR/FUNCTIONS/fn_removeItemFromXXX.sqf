/*

	*****************
	** Parent File **
	*****************
	- Button action (buttons.hpp)
		
	************
	** Author **
	************	
	-Iceman77
		
	*****************
	** Description **
	*****************
	- Remove the item from the player 
	- delete the entry from the LB
	- call a function that sets the progress bars relative to the player's container's current load value
	 	 
	***********
	** Usage **
	***********
	- call DLSR_fnc_removeItemFromXXX;
	
*/

if ( CURRENT_SELECTED_CONTAINER != "Gear" ) then {


	call compile format ["player removeItemFrom%1 ( lbData [ IDC_DLSR_LB_CONTAINER, ( lbCurSel IDC_DLSR_LB_CONTAINER ) ] )", CURRENT_SELECTED_CONTAINER];

	lbDelete [ IDC_DLSR_LB_CONTAINER, ( lbCurSel IDC_DLSR_LB_CONTAINER ) ];
	
	
} else {



	if ( [ ( lbData [ IDC_DLSR_LB_CONTAINER, ( lbCurSel IDC_DLSR_LB_CONTAINER ) ] ) ] call BIS_fnc_itemType select 0 == "Weapon"  ) then { // Weapon
	
	
		player removeWeaponGlobal ( lbData [ IDC_DLSR_LB_CONTAINER, ( lbCurSel IDC_DLSR_LB_CONTAINER ) ] );
		
		lbDelete [ IDC_DLSR_LB_CONTAINER, ( lbCurSel IDC_DLSR_LB_CONTAINER ) ];
			
		
	} else {
	
	
	
		if ( [ ( lbData [ IDC_DLSR_LB_CONTAINER, ( lbCurSel IDC_DLSR_LB_CONTAINER ) ] ) ] call BIS_fnc_itemType select 1 == "Backpack"  ) then { // Backpack
		
		
			removeBackPack player;		
			
			
		} else { // Assigned item
		
		
		
			if ( [ ( lbData [ IDC_DLSR_LB_CONTAINER, ( lbCurSel IDC_DLSR_LB_CONTAINER ) ] ) ] call BIS_fnc_itemType select 1 == "Glasses"  ) then { // Glasses
			
			
				removeGoggles player;
				
				
			} else {
			
			
				if ( [ ( lbData [ IDC_DLSR_LB_CONTAINER, ( lbCurSel IDC_DLSR_LB_CONTAINER ) ] ) ] call BIS_fnc_itemType select 1 in ["AccessoryMuzzle", "AccessoryPointer", "AccessorySights"]  ) then { // Acc
			
					
					player removePrimaryWeaponItem ( lbData [ IDC_DLSR_LB_CONTAINER, ( lbCurSel IDC_DLSR_LB_CONTAINER ) ] );
					
					player removeHandGunItem ( lbData [ IDC_DLSR_LB_CONTAINER, ( lbCurSel IDC_DLSR_LB_CONTAINER ) ] );
					
					
				} else {
				
				
					player unassignItem ( lbData [ IDC_DLSR_LB_CONTAINER, ( lbCurSel IDC_DLSR_LB_CONTAINER ) ] ); 
					
					player removeItem ( lbData [ IDC_DLSR_LB_CONTAINER, ( lbCurSel IDC_DLSR_LB_CONTAINER ) ] );
					
					lbDelete [ IDC_DLSR_LB_CONTAINER, ( lbCurSel IDC_DLSR_LB_CONTAINER ) ];
					
					//player globalChat "Item Removed";
					
					
				};
				
				
			};
			
			
		};
		

	};


};


	[ CURRENT_SELECTED_CONTAINER, format ["STR_A3_DLSR_txt_%1ContainerHeader", CURRENT_SELECTED_CONTAINER ] ] call DLSR_fnc_curContainerLbPop;
	
	call DLSR_fnc_setProgressBars;
	
	call DLSR_fnc_setContainerImages;

	nil
