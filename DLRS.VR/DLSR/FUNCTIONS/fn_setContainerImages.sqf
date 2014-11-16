/*

	*****************
	** Parent File **
	*****************
	- fn_uiInit.sqf
		
	************
	** Author **
	************	
	- Iceman77
		
	*****************
	** Description **
	*****************
	- set the player's current equipped container images (uniform, vest, backpack), 

	 	 
	***********
	** Usage **
	***********
	- call DLSR_fnc_setContainerImages;
	
*/

{

	ctrlSetText [ ( _x select 0 ), getText ( configFile >> ( _x select 1 ) >> ( _x select 2 ) >> 'picture' ) ];
	
} forEach [ 

	[IDC_DLSR_ACTIVET_UNIFORM, 'CfgWeapons', uniform player ], 
	
	[IDC_DLSR_ACTIVET_VEST, 'CfgWeapons', vest player ],
	
	[IDC_DLSR_ACTIVET_BACKPACK, 'CfgVehicles', backpack player ]
	
];

nil
