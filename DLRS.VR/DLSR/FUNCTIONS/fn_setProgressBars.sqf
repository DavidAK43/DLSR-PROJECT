/*

	********************
	** Parent File(s) **
	********************
	- fn_uiInit.sqf 
	- fn_removeItemFromXXX.sqf
	- fn_addItemToXXX.sqf
	- fn_addWeaponFromMainLb.sqf
	
		
	************
	** Author **
	************	
	- Iceman77
		
	*****************
	** Description **
	*****************
	 - set the progress bars (under the container images) relevant to container loads. 
	 	 
	***********
	** Usage **
	***********
	- call DLSR_fnc_setProgressBars;
	
*/

{

	  ( findDisplay ( IDD_DLSR_DIALOG ) displayCtrl ( _x select 0 ) ) progressSetPosition ( _x select 1 );
	
} foreach [ [ IDC_DLSR_PROGRESS_UNIFORM, loadUniform player ], [ IDC_DLSR_PROGRESS_VEST, loadVest player ], [ IDC_DLSR_PROGRESS_BACKPACK, loadBackPack player ] ];

nil
