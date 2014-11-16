/*

	*****************
	** Parent File **
	*****************
	- fn_playerInit.sqf
		
	************
	** Author **
	************	
	-Iceman77
		
	*****************
	** Description **
	*****************
	- Assign a variable to the main dialog's IDD
	- Assign variables IDC (control) values 
	 	 
	***********
	** Usage **
	***********
	- call DLSR_fnc_IDC_init  
	
*/



////////////////////////////////////////
// DEFINE DIALOG IDD ( CONTROL IDCs ) //
////////////////////////////////////////

// DIALOG IDD //
IDD_DLSR_DIALOG					  							= 100000;

// PICTURES //
IDC_DLSR_PICTURE_PIP 										= 30000;
// PROGRESS BARS //
IDC_DLSR_PROGRESS_UNIFORM								= 40000;
IDC_DLSR_PROGRESS_VEST									= 40001;
IDC_DLSR_PROGRESS_BACKPACK								= 40002;
// TEXT //
IDC_DLSR_TXT_MAINHEADER								= 50000;
IDC_DLSR_TXT_MUNITIONHEADER							= 50001;
IDC_DLSR_TXT_COMPATIBLEHEADER							= 50002;
IDC_DLSR_TXT_CONTAINERHEADER							= 50003;
IDC_DLSR_TXT_DESCRIPTION_FOOTER                        	= 50004;
// ACTIVE TEXT //
IDC_DLSR_ACTIVET_UNIFORM						= 60000;
IDC_DLSR_ACTIVET_VEST		    				= 60001;
IDC_DLSR_ACTIVET_BACKPACK	    				= 60002;
IDC_DLSR_ACTIVET_SAVELOAD						= 60003;
IDC_DLSR_ACTIVET_CTC							= 60005; 
IDC_DLSR_ACTIVET_GEAR                         = 60006;					
// LIST BOXES //
IDC_DLSR_LB_MAIN							= 70000;
IDC_DLSR_LB_CONTAINER						= 70001;
IDC_DLSR_LB_COMPATIBLEACC					= 70002;
IDC_DLSR_LB_COMPATIBLEMAGS					= 70003;
// BUTTONS //
IDC_DLSR_BTN_ADDITEM					= 80000;
IDC_DLSR_BTN_REMOVEITEM				= 80001;
IDC_DLSR_BTN_ADDMAGAZINE				= 80002;
IDC_DLSR_BTN_ADDACC					= 80003;
IDC_DLSR_BTN_WEAPONS					= 80004;
IDC_DLSR_BTN_AMMO						= 80005;
IDC_DLSR_BTN_ACCESSORIES				= 80006;
IDC_DLSR_BTN_UNIFORMS					= 80007;
IDC_DLSR_BTN_VESTS					= 80008;
IDC_DLSR_BTN_BACKPACKS					= 80009;
IDC_DLSR_BTN_HEADGEAR					= 800010;
IDC_DLSR_BTN_GLASSES					= 800011;
IDC_DLSR_BTN_EXIT 					= 800012;
// BACKGROUNDS //
IDC_DLSR_BG_MAIN					= 90000;
IDC_DLSR_BG_PIP					= 90001;
IDC_DLSR_BG_UNIFORM				= 90003;
IDC_DLSR_BG_VEST					= 90004;
IDC_DLSR_BG_BACKPACK				= 90005;
IDC_DLSR_BG_GEAR 				    = 90006;

nil
