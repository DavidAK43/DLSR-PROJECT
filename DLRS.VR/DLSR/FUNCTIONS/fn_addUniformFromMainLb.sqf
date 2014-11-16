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
	- Equip or add the selected uniform to a container
	 	 
	***********
	** Usage **
	***********
	- call DLSR_fnc_addUniformFromMainLb;
	
*/


if ( CURRENT_SELECTED_CONTAINER == "Gear" ) then {

	//player forceAddUniform ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] ); << For cross side usage ??

	private [ "_canUse" ];

    _canUse = player isUniformAllowed ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] );
	
	
	if ( _canUse ) then {
	
	
		player addUniform ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] );
		
		[ CURRENT_SELECTED_CONTAINER, format ["STR_A3_DLSR_txt_%1ContainerHeader", CURRENT_SELECTED_CONTAINER ] ] call DLSR_fnc_curContainerLbPop;

		call DLSR_fnc_setProgressBars;
		
		call DLSR_fnc_setContainerImages;
			
		
	} else { 
	
	
		hintSilent format [ localize "STR_A3_DLSR_hint_sideWarn", ( name player ), ( lbData [ IDC_DLSR_LB_MAIN, lbCurSel IDC_DLSR_LB_MAIN ] ), ( side player ) ];
		
	
	};
	
	
} else {


	[ IDC_DLSR_LB_MAIN ] call DLSR_fnc_addItemToXXX;


};
		
nil
