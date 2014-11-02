/*
	LOAD-OUT MANAGEMENT (LOM) UI
	
*/

class DLSR_Loadouts
{
	idd = 20000;
	movingenable = true;
	onLoad = "_this spawn DLSR_fnc_LO_Init";
	
	////////////////////
	// CONTROLS ARRAY //
	////////////////////
	controls[]=
	{
		DLSR_titleBar_LO,
		DLSR_BG_LO,
		DLSR_btn_LO_Load,
		DLSR_btn_LO_replace,
		DLSR_btn_LO_delete,
		DLSR_btn_LO_rename,
		DLSR_btn_LO_create,
		DLSR_btn_LO_exit,
		DLSR_LB_LO_loadOuts,
		DLSR_LB_LO_gear,
		DLSR_EditBox_LO_entry
	};

	// BACKGROUNDS
	class DLSR_titleBar_LO: IGUIBack
	{
		idc = -1;
		colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",0.85};
		x = 0.280 * safezoneW + safezoneX;
		y = 0.2275* safezoneH + safezoneY;
		w = 0.275 * safezoneW;
		h = 0.0308 * safezoneH;
	};

	class DLSR_BG_LO: IGUIBack
		{
		idc = -1;
		x = 0.280 * safezoneW + safezoneX;
		y = 0.262 * safezoneH + safezoneY;
		w = 0.275 * safezoneW;
		h = 0.425 * safezoneH;
	};

	//BUTTONS
	class DLSR_btn_LO_Load: RscButton
	{
		idc = 20001;
		text = $STR_A3_DLSR_btn_loadLoad;
		x = 0.47 * safezoneW + safezoneX;
		y = 0.275 * safezoneH + safezoneY;
		w = 0.05 * safezoneW;
		h = 0.05 * safezoneH;
		action = "[lbCurSel ((finddisplay 20000) displayctrl 20006)] call DLSR_fnc_LO_Load";
		toolTip = $STR_A3_DLSR_btn_loadLoad;
	};

	class DLSR_btn_LO_replace: RscButton
	{
		idc = 20002;
		text = $STR_A3_DLSR_btn_replaceLoad;
		x = 0.47 * safezoneW + safezoneX;
		y = 0.335 * safezoneH + safezoneY;
		w = 0.05 * safezoneW;
		h = 0.05 * safezoneH;
		action = "[lbCurSel ((finddisplay 20000) displayctrl 20006), ((finddisplay 20000) displayctrl 20006) lbText (lbCurSel ((finddisplay 20000) displayctrl 20006))] call DLSR_fnc_LO_Save";
		toolTip = $STR_A3_DLSR_btn_replaceLoad;
	};

	class DLSR_btn_LO_delete: RscButton
	{
		idc = 20003;
		text = $STR_A3_DLSR_btn_deleteLoad;
		x = 0.47 * safezoneW + safezoneX;
		y = 0.395 * safezoneH + safezoneY;
		w = 0.05 * safezoneW;
		h = 0.05 * safezoneH;
		action = "[lbCurSel ((finddisplay 20000) displayctrl 20006)] call DLSR_fnc_LO_Delete";
	};

	class DLSR_btn_LO_rename: RscButton
	{
		idc = 20004;
		text = $STR_A3_DLSR_btn_renameLoad;
		x = 0.47 * safezoneW + safezoneX;
		y = 0.455 * safezoneH + safezoneY;
		w = 0.05 * safezoneW;
		h = 0.05 * safezoneH;
		action = "[lbCurSel ((finddisplay 20000) displayctrl 20006), ctrlText ((finddisplay 20000) displayctrl 20008)] call DLSR_fnc_LO_Rename";
	};

	class DLSR_btn_LO_create: RscButton
	{
		idc = 20005;
		text = $STR_A3_DLSR_btn_createLoad;
		x = 0.47 * safezoneW + safezoneX;
		y = 0.515 * safezoneH + safezoneY;
		w = 0.05 * safezoneW;
		h = 0.05 * safezoneH;
		action = "[-1, ctrlText ((finddisplay 20000) displayctrl 20008)] call DLSR_fnc_LO_Save";
	};
	class DLSR_btn_LO_exit: RscButton
	{
		idc = -1;
		text = "X";
		colorText[] = {1,1,1,0.75};
		x = 0.280 * safezoneW + safezoneX;
		y = 0.2275* safezoneH + safezoneY;
		w = 0.0308 * safezoneW;
		h = 0.0308 * safezoneH;
		action = "closeDialog 0";
	};

	//LISTBOXES
	class DLSR_LB_LO_loadOuts: RscListbox
	{
		idc = 20006;
		x = 0.290 * safezoneW + safezoneX;
		y = 0.275 * safezoneH + safezoneY;
		w = 0.150 * safezoneW;
		h = 0.200 * safezoneH;
		onLBSelChanged = "[lbCurSel ((finddisplay 20000) displayctrl 20006)] call DLSR_fnc_LO_Gear;";
	};

	class DLSR_LB_LO_gear: RscListbox
	{
		idc = 20007;
		x = 0.290 * safezoneW + safezoneX;
		y = 0.490 * safezoneH + safezoneY;
		w = 0.150 * safezoneW;
		h = 0.150 * safezoneH;
	};

	//EDITBOXES
	class DLSR_EditBox_LO_Entry: RscEdit
	{
		idc = 20008;
		x = 0.290 * safezoneW + safezoneX;
		y = 0.654 * safezoneH + safezoneY;
		w = 0.150 * safezoneW;
		h = 0.030 * safezoneH;
	};
	
	
	
};
	
	





