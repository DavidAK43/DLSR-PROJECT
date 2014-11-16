/*

	*****************
	** Parent File **
	*****************
	- fn_uiInit.sqf and active text buttons ( uniform, vest, backpack, gear )
		
	************
	** Author **
	************	
	- Iceman77
		
	*****************
	** Description **
	*****************
	- set the container's color ( uniform, vest, backpack, gear ) when it's clicked on.

	 	 
	***********
	** Usage **
	***********
	- [ IDC_DLSR_ACTIVET_GEAR, IDC_DLSR_ACTIVET_BACKPACK, IDC_DLSR_ACTIVET_UNIFORM, IDC_DLSR_ACTIVET_VEST ] call DLSR_fnc_setActiveTColor;
	
*/

( ( findDisplay IDD_DLSR_DIALOG ) displayCtrl ( _this select 0 ) ) ctrlSetTextColor [ 


	(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69]), 
	
	(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75]), 
	
	(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5]), 
	
	1 
	
	
];

{ 

	( ( findDisplay IDD_DLSR_DIALOG ) displayCtrl ( _x ) ) ctrlSetTextColor [ 1, 1, 1, 1 ]; 
	
} forEach [ ( _this select 1 ), ( _this select 2 ) ,( _this select 3 ) ];

nil
