/*

	*****************
	** Parent File **
	*****************
	- AddAction (added to the player object in fn_playerInit.sqf)
		
	************
	** Author **
	************	
	- Iceman77
		
	*****************
	** Description **
	*****************
	- Create the dialog and call functions that: 
	  - populate the main LB 
	  - populate the currently selected container's LB, 
	  - set the player's current container images (uniform, vest, backpack), 
	  - set the progress bars (under the container images) relevant to container loads. 
	 	 
	***********
	** Usage **
	***********
	- call DLSR_fnc_uiInit;
	
*/

createDialog "DLSR";

waitUntil { ! ( isNull ( findDisplay ( IDD_DLSR_DIALOG ) ) ) };

[ "cfgWeapons", "weapon", 'STR_A3_DLSR_txt_weaponHeader', 'call DLSR_fnc_addWeaponFromMainLb' ] call DLSR_fnc_mainLbPop;

[ "Gear", "STR_A3_DLSR_txt_gearContainerHeader" ] call DLSR_fnc_curContainerLbPop;

[ IDC_DLSR_ACTIVET_GEAR, IDC_DLSR_ACTIVET_BACKPACK, IDC_DLSR_ACTIVET_UNIFORM, IDC_DLSR_ACTIVET_VEST ] call DLSR_fnc_setActiveTColor;

call DLSR_fnc_setContainerImages;

call DLSR_fnc_setProgressBars;

call DLSR_fnc_setPipCamera; // execute LAST

nil
