/*

	*****************
	** Parent File **
	*****************
	- button control
		
	************
	** Author **
	************	
	- Iceman77
		
	*****************
	** Description **
	*****************
	- equip or add the currently selected item to a container
	 	 
	***********
	** Usage **
	***********
	- call DLSR_fnc_uiInit;
	
*/


if ( CURRENT_SELECTED_CONTAINER == "Gear" ) then {

	private ["_cowSlotPrim","_muzzleSlotPrim","_pointerSlotPrim","_cowSlotPis","_muzzleSlotPis","_pointerSlotPis"];
	
	_cowSlotPrim = getArray ( configFile >> "cfgWeapons" >> primaryWeapon player >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems" );
	_muzzleSlotPrim = getArray ( configFile >> "cfgWeapons" >> primaryWeapon player >> "WeaponSlotsInfo" >> "MuzzleSlot" >> "compatibleItems" );
	_pointerSlotPrim = getArray ( configFile >> "cfgWeapons" >> primaryWeapon player >> "WeaponSlotsInfo" >> "pointerSlot" >> "compatibleItems" );
    
	_cowSlotPrim = call compile toLower str _cowSlotPrim;
	_muzzleSlotPrim = call compile toLower str _muzzleSlotPrim;
	_pointerSlotPrim = call compile toLower str _pointerSlotPrim;
	
	if ( toLower ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] ) in _cowSlotPrim || toLower ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] ) in _muzzleSlotPrim || toLower ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] ) in _pointerSlotPrim ) then {
		
		
		hintSilent format [ localize "STR_A3_DLSR_hint_equipSignal", ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] ), (primaryWeapon player) ];
		
		player addPrimaryWeaponItem ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] );
		
	
	} else {
	
		_cowSlotPis = getArray ( configFile >> "cfgWeapons" >> handGunWeapon player >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems" );
		_muzzleSlotPis = getArray ( configFile >> "cfgWeapons" >> handGunWeapon player >> "WeaponSlotsInfo" >> "MuzzleSlot" >> "compatibleItems" );
		_pointerSlotPis = getArray ( configFile >> "cfgWeapons" >> handGunWeapon player >> "WeaponSlotsInfo" >> "pointerSlot" >> "compatibleItems" );
		
		_cowSlotPis = call compile toLower str _cowSlotPis;
		_muzzleSlotPis = call compile toLower str _muzzleSlotPis;
		_pointerSlotPis = call compile toLower str _pointerSlotPis;

		if ( toLower ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] ) in _cowSlotPis || toLower ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] ) in _muzzleSlotPis || toLower ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] ) in _pointerSlotPis ) then {
			
			
			hintSilent format [ localize "STR_A3_DLSR_hint_equipSignal", ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] ), (handGunWeapon player) ];
			
			player addHandGunItem ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] );
			
			
		} else {
		
			
			if ( ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] ) in [ "ItemMap", "ItemCompass", "ItemWatch", "ItemRadio", "ItemGPS", "NVGoggles", "NVGoggles_OPFOR", "NVGoggles_INDEP", "Laserdesignator", "Rangefinder", "Binocular" ] ) then {
				
				player addWeaponGlobal ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] );
			
			} else {
			
				hintSilent format [ localize "STR_A3_DLSR_hint_compatWarn", ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] ) ];	
			
			};
			
			
		};
		
			
	};
	
	[ CURRENT_SELECTED_CONTAINER, format ["STR_A3_DLSR_txt_%1ContainerHeader", CURRENT_SELECTED_CONTAINER ] ] call DLSR_fnc_curContainerLbPop;

 
	call DLSR_fnc_setProgressBars;
	
	
} else { // The currently selected container is uniform, vest or backpack 


	hintSilent format [ localize "STR_A3_DLSR_hint_placedInContMsg", ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] ), CURRENT_SELECTED_CONTAINER ];

	[ IDC_DLSR_LB_MAIN ] call DLSR_fnc_addItemToXXX;

	
	
};

nil	
