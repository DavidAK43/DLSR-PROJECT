/*

	*****************
	** Parent File **
	*****************
	- fn_uiInit.sqf
	- fn_addItemToXXX.sqf
	- fn_addWeaponFromMainLb.sqf
		
	************
	** Author **
	************	
	-Iceman77
		
	*****************
	** Description **
	*****************
	- populate the LB with the currently selected container's contents
	 	 
	***********
	** Usage **
	***********
	- [ "uniform", "STR_A3_DLSR_txt_uniformContainerHeader" ] call DLSR_fnc_curContainerLbPop;
	
*/

private ["_items", "_className", "_displayName", "_picture", "_index"];

lbClear IDC_DLSR_LB_CONTAINER;

CURRENT_SELECTED_CONTAINER = [_this, 0, "uniform",[""]] call BIS_fnc_param; // Define the currently selected container. Used in functions all over



_items = if ( CURRENT_SELECTED_CONTAINER != "Gear" ) then { 


	call compile format ["%1Items player", CURRENT_SELECTED_CONTAINER];
	
	
} else {


	[primaryWeapon player] + [secondaryWeapon player] + [handGunWeapon player] + primaryWeaponItems player + secondaryWeaponItems player + handGunItems player + [uniform player] + [vest player] + [backPack player] + [headGear player] + [goggles player] + assignedItems player;

	
};




{

	if ( _x != "" ) then {
	
	
		if ( isClass ( configFile >> "cfgWeapons" >> _x ) ) then { // Item is a weapon
		
		
			_className = configName (configFile >> "cfgWeapons" >> _x);
			
			_displayName = getText (configFile >> "cfgWeapons" >> _className >> "displayName");
			
			_picture = getText (configFile >> "cfgWeapons" >> _className >> "picture");
			
			
		} else { 
		
		
			if ( isClass ( configFile >> "cfgVehicles" >> _x ) ) then { // Item is a vehicle (backpacks etc) 
			
			
				_className = configName (configFile >> "cfgVehicles" >> _x);
				
				_displayName = getText (configFile >> "cfgVehicles" >> _className >> "displayName");
				
				_picture = getText (configFile >> "cfgVehicles" >> _className >> "picture");
				
				
			} else { 
			
			
				if ( isClass ( configFile >> "cfgMagazines" >> _x ) ) then { // magazine
				
			
					_className = configName (configFile >> "cfgMagazines" >> _x);
					
					_displayName = getText (configFile >> "cfgMagazines" >> _className >> "displayName");
					
					_picture = getText (configFile >> "cfgMagazines" >> _className >> "picture");
					
					
				} else {
				
				
					_className = configName (configFile >> "cfgGlasses" >> _x);
					
					_displayName = getText (configFile >> "cfgGlasses" >> _className >> "displayName");
					
					_picture = getText (configFile >> "cfgGlasses" >> _className >> "picture");
					
				
				};
				
				
				
			};
			
			
			
		};
		
		
		
		_index = lbAdd [IDC_DLSR_LB_CONTAINER, _displayName];
		
		lbSetData [IDC_DLSR_LB_CONTAINER, _index, _classname];
		
		lbSetPicture [IDC_DLSR_LB_CONTAINER, _index, _picture];
		
		lbSetTooltip [IDC_DLSR_LB_CONTAINER, _index, _displayName]; 
		
		
	};
	
	
	
} forEach _items;



lbSetCurSel [IDC_DLSR_LB_CONTAINER, lbCurSel IDC_DLSR_LB_CONTAINER ];

ctrlSetText [ IDC_DLSR_TXT_CONTAINERHEADER, localize (_this select 1) ];

nil
