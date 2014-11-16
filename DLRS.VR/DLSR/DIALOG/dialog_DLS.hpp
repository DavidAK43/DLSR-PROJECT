/*
	MAIN DLSR UI
*/

class DLSR
{
    idd = IDD_DLSR_DIALOG;
    movingenable = true;
    onLoad = "uiNamespace setVariable ['DLSR', (_this select 0)]";
	
	////////////////////
	// CONTROLS ARRAY //
	////////////////////
	controls[]=
	{
		DLSR_BG_main,
		DLSR_BG_uniform,
		DLSR_BG_vest,
		DLSR_BG_backpack,
		DLSR_BG_Gear,
		DLSR_BG_PIP,
		DLSR_Picture_PIP,
		DLSR_LB_main,
		DLSR_LB_container,
		DLSR_LB_compatibleAcc,
		DLSR_LB_compatibleMags,
		DLSR_txt_mainHeader,
		DLSR_txt_munitionHeader,
		DLSR_txt_compatibleHeader,
		DLSR_txt_containerHeader,
		DLSR_txt_description_footer,
		DLSR_activeT_uniform,
		DLSR_activeT_vest,
		DLSR_activeT_backpack,
		DLSR_activeT_Gear,
		DLSR_Progress_uniform,
		DLSR_Progress_vest,
		DLSR_Progress_backpack,
		DLSR_btn_addItem,
		DLSR_btn_removeItem,
		DLSR_btn_addMagazine,
		DLSR_btn_addAcc,
		DLSR_btn_weapons,
		DLSR_btn_ammo,
		DLSR_btn_acc,
		DLSR_btn_Uniforms,
		DLSR_btn_vests,
		DLSR_btn_bp,
		DLSR_btn_headgear,
		DLSR_btn_glasses,
		DLSR_btn_exit,
		DLSR_activeT_saveLoad,
		DLSR_activeT_CTC
	};

	
	
	/////////////////
	// BACKGROUNDS //
	/////////////////
	class DLSR_BG_main: IGUIBack
	{
		idc = IDC_DLSR_BG_MAIN;
		x = 0.266634 * safezoneW + safezoneX;
		y = 0.262 * safezoneH + safezoneY;
		w = 0.466733 * safezoneW;
		h = 0.3556 * safezoneH;
	};
	class DLSR_BG_Gear: IGUIBack
	{
		idc = IDC_DLSR_BG_GEAR;
		colorBackground[] = {0, 0, 0, 1};
		x = 0.52275 * safezoneW + safezoneX;
		y = 0.63025 * safezoneH + safezoneY;
		w = 0.0425 * safezoneW;
		h = 0.065 * safezoneH;
	};
	class DLSR_BG_uniform: IGUIBack
	{
		idc = IDC_DLSR_BG_UNIFORM;
		x = 0.575843 * safezoneW + safezoneX;
		y = 0.6232 * safezoneH + safezoneY;
		w = 0.0466732 * safezoneW;
		h = 0.0784 * safezoneH;
	};
	class DLSR_BG_vest: IGUIBack
	{
		idc = IDC_DLSR_BG_VEST;
		x = 0.63127 * safezoneW + safezoneX;
		y = 0.6232 * safezoneH + safezoneY;
		w = 0.0466732 * safezoneW;
		h = 0.0784 * safezoneH;
	};
	class DLSR_BG_backpack: IGUIBack
	{
		idc = IDC_DLSR_BG_BACKPACK;
		x = 0.686691 * safezoneW + safezoneX;
		y = 0.6232 * safezoneH + safezoneY;
		w = 0.0466732 * safezoneW;
		h = 0.0784 * safezoneH;
	};
	class DLSR_BG_PIP: IGUIBack
	{
		idc = IDC_DLSR_BG_PIP;
		x = 0.168913 * safezoneW + safezoneX;
		y = 0.5224 * safezoneH + safezoneY;
		w = 0.0948042 * safezoneW;
		h = 0.1792 * safezoneH;
	};
	
	
	/////////////////
	// 	LISTBOXES  //
	/////////////////
	class DLSR_LB_main: RscListbox
	{
		idc = IDC_DLSR_LB_MAIN;
		x = 0.269549 * safezoneW + safezoneX;
		y = 0.2956 * safezoneH + safezoneY;
		w = 0.128348 * safezoneW;
		h = 0.28 * safezoneH;
		onLBSelChanged = "call DLSR_fnc_compatAccLbPop;";
	};
	class DLSR_LB_container: RscListbox
	{
		idc = IDC_DLSR_LB_CONTAINER;
		x = 0.602098 * safezoneW + safezoneX;
		y = 0.2956 * safezoneH + safezoneY;
		w = 0.128348 * safezoneW;
		h = 0.28 * safezoneH;
	};
	class DLSR_LB_compatibleMags: RscListbox
	{
		idc = IDC_DLSR_LB_COMPATIBLEMAGS;
		x = 0.400818 * safezoneW + safezoneX;
		y = 0.2956 * safezoneH + safezoneY;
		w = 0.09771 * safezoneW;
		h = 0.28 * safezoneH;
	};
	class DLSR_LB_compatibleAcc: RscListbox
	{
		idc = IDC_DLSR_LB_COMPATIBLEACC;
		x = 0.501459 * safezoneW + safezoneX;
		y = 0.2956 * safezoneH + safezoneY;
		w = 0.09771 * safezoneW;
		h = 0.28 * safezoneH;
	};
	
	
	/////////////////
	// 	  TEXTS    //
	/////////////////
	class DLSR_txt_mainHeader: RscText
	{
		idc = IDC_DLSR_TXT_MAINHEADER;
		text = $STR_A3_DLSR_txt_mainHeader;
		x = 0.266636 * safezoneW + safezoneX;
		y = 0.2256 * safezoneH + safezoneY;
		w = 0.466751 * safezoneW;
		h = 0.0308 * safezoneH;		
	};
	class DLSR_txt_munitionHeader: RscText
	{
		idc = IDC_DLSR_TXT_MUNITIONHEADER;
		text = "";
		x = 0.269552 * safezoneW + safezoneX;
		y = 0.2676 * safezoneH + safezoneY;
		w = 0.128263 * safezoneW;
		h = 0.0224 * safezoneH;		
	};
	class DLSR_txt_compatibleHeader: RscText
	{
		idc = IDC_DLSR_TXT_COMPATIBLEHEADER;
		text = $STR_A3_DLSR_txt_compatibleHeader;
		x = 0.400818 * safezoneW + safezoneX;
		y = 0.2676 * safezoneH + safezoneY;
		w = 0.198295 * safezoneW;
		h = 0.0224 * safezoneH;		
	};
	class DLSR_txt_containerHeader: RscText
	{
		idc = IDC_DLSR_TXT_CONTAINERHEADER;
		text = "";
		x = 0.602098 * safezoneW + safezoneX;
		y = 0.2676 * safezoneH + safezoneY;
		w = 0.128263 * safezoneW;
		h = 0.0224 * safezoneH;		
	};
	class DLSR_txt_description_footer: RscText
	{
		idc = IDC_DLSR_TXT_DESCRIPTION_FOOTER;
		style = ST_LEFT + ST_MULTI;
		text = "";
		colorBackground[] = {0,0,0,0};
		x = 0.26765 * safezoneW + safezoneX;
		y = 0.6230 * safezoneH + safezoneY;
		w = 0.25 * safezoneW;
		h = 0.35 * safezoneH;		
	};
	

	/////////////////
	// ACTIVE TEXT //
	/////////////////
	class DLSR_activeT_uniform: RscActiveText
	{
		idc = IDC_DLSR_ACTIVET_UNIFORM;
		text = "";
		x = 0.572928 * safezoneW + safezoneX;
		y = 0.6232 * safezoneH + safezoneY;
		w = 0.0481317 * safezoneW;
		h = 0.0784 * safezoneH;
		action = "['uniform', 'STR_A3_DLSR_txt_uniformContainerHeader'] call DLSR_fnc_curContainerLbPop;[ IDC_DLSR_ACTIVET_UNIFORM, IDC_DLSR_ACTIVET_VEST, IDC_DLSR_ACTIVET_BACKPACK, IDC_DLSR_ACTIVET_GEAR ] call DLSR_fnc_setActiveTColor;";
	};
	class DLSR_activeT_vest: RscActiveText
	{
		idc = IDC_DLSR_ACTIVET_VEST;
		text = "";
		x = 0.628352 * safezoneW + safezoneX;
		y = 0.6232 * safezoneH + safezoneY;
		w = 0.0481317 * safezoneW;
		h = 0.0784 * safezoneH;
		action = "['vest', 'STR_A3_DLSR_txt_vestContainerHeader'] call DLSR_fnc_curContainerLbPop;[ IDC_DLSR_ACTIVET_VEST, IDC_DLSR_ACTIVET_UNIFORM, IDC_DLSR_ACTIVET_BACKPACK, IDC_DLSR_ACTIVET_GEAR ] call DLSR_fnc_setActiveTColor;";
	};
	class DLSR_activeT_backpack: RscActiveText
	{
		idc = IDC_DLSR_ACTIVET_BACKPACK;
		text = "";
		x = 0.685234 * safezoneW + safezoneX;
		y = 0.6232 * safezoneH + safezoneY;
		w = 0.0481317 * safezoneW;
		h = 0.0784 * safezoneH;
		action = "['backPack', 'STR_A3_DLSR_txt_backPackContainerHeader'] call DLSR_fnc_curContainerLbPop;[ IDC_DLSR_ACTIVET_BACKPACK, IDC_DLSR_ACTIVET_UNIFORM, IDC_DLSR_ACTIVET_VEST, IDC_DLSR_ACTIVET_GEAR ] call DLSR_fnc_setActiveTColor;";
	};
	class DLSR_activeT_Gear: RscActiveText
	{
		idc = IDC_DLSR_ACTIVET_GEAR;
		text = "\a3\ui_f\data\gui\cfg\hints\Rifles_ca.paa";
		x = 0.520419 * safezoneW + safezoneX;
		y = 0.6232 * safezoneH + safezoneY;
		w = 0.0466732 * safezoneW;
		h = 0.0784 * safezoneH;
		action = "['Gear', 'STR_A3_DLSR_txt_gearContainerHeader'] call DLSR_fnc_curContainerLbPop;[ IDC_DLSR_ACTIVET_GEAR, IDC_DLSR_ACTIVET_BACKPACK, IDC_DLSR_ACTIVET_UNIFORM, IDC_DLSR_ACTIVET_VEST] call DLSR_fnc_setActiveTColor;";
	};
	class DLSR_activeT_saveLoad: RscActiveText
	{
		idc = IDC_DLSR_ACTIVET_SAVELOAD;
		text = "\a3\Ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_save_ca.paa";
		x = 0.265 * safezoneW + safezoneX;
		y = 0.2275 * safezoneH + safezoneY;
		w = 0.025 * safezoneW;
		h = 0.025 * safezoneH;
		tooltip = $STR_A3_DLSR_btn_saveLoadToolTip;
		action = "createDialog 'DLSR_Loadouts'";
		
	};
	class DLSR_activeT_CTC: RscActiveText
	{
		idc = IDC_DLSR_ACTIVET_CTC;
		text = "\a3\Ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_clear_ca.paa";
		x = 0.285 * safezoneW + safezoneX;
		y = 0.2275 * safezoneH + safezoneY;
		w = 0.025 * safezoneW;
		h = 0.025 * safezoneH;
		tooltip = $STR_A3_DLSR_btn_CTCToolTip;
		action = "call DLSR_fnc_clipBoard;";
		
	};
	

	
	/////////////////
	// 	 BUTTONS   //
	/////////////////
	class DLSR_btn_addItem: RscButton
	{
		idc = IDC_DLSR_BTN_ADDITEM;
		text = $STR_A3_DLSR_btn_addItem;
		x = 0.269552 * safezoneW + safezoneX;
		y = 0.5812 * safezoneH + safezoneY;
		w = 0.128359 * safezoneW;
		h = 0.028 * safezoneH;
		action = "";
	};
	class DLSR_btn_removeItem: RscButton
	{
		idc = IDC_DLSR_BTN_REMOVEITEM;
		text = $STR_A3_DLSR_btn_removeItem;
		x = 0.602098 * safezoneW + safezoneX;
		y = 0.5812 * safezoneH + safezoneY;
		w = 0.128359 * safezoneW;
		h = 0.028 * safezoneH;
		action ="call DLSR_fnc_removeItemFromXXX";
	};
	class DLSR_btn_addMagazine: RscButton
	{
		idc = IDC_DLSR_BTN_ADDMAGAZINE;
		text = $STR_A3_DLSR_btn_addMagazine;
		x = 0.400818 * safezoneW + safezoneX;
		y = 0.5812 * safezoneH + safezoneY;
		w = 0.097721 * safezoneW;
		h = 0.028 * safezoneH;
		action ="[ IDC_DLSR_LB_COMPATIBLEMAGS ] call DLSR_fnc_addItemToXXX";
	};
	class DLSR_btn_addAcc: RscButton
	{
		idc = IDC_DLSR_BTN_ADDACC;
		text = $STR_A3_DLSR_btn_addAcc;
		x = 0.501459 * safezoneW + safezoneX;
		y = 0.5812 * safezoneH + safezoneY;
		w = 0.097721 * safezoneW;
		h = 0.028 * safezoneH;
		action = "call DLSR_fnc_addAccFromAccLB";
	};
	class DLSR_btn_weapons: RscButton
	{
		idc = IDC_DLSR_BTN_WEAPONS;
		text = $STR_A3_DLSR_txt_weaponHeader;
		x = 0.16891 * safezoneW + safezoneX;
		y = 0.2956 * safezoneH + safezoneY;
		w = 0.097721 * safezoneW;
		h = 0.028 * safezoneH;
		action = "['cfgWeapons', 'weapon', 'STR_A3_DLSR_txt_weaponHeader', 'call DLSR_fnc_addWeaponFromMainLb'] call DLSR_fnc_mainLbPop;";
	};
	class DLSR_btn_ammo: RscButton
	{
		idc = IDC_DLSR_BTN_AMMO;
		text = $STR_A3_DLSR_txt_ammoHeader;
		x = 0.168913 * safezoneW + safezoneX;
		y = 0.3236 * safezoneH + safezoneY;
		w = 0.097721 * safezoneW;
		h = 0.028 * safezoneH;
		action = "['cfgMagazines', 'Magazine', 'STR_A3_DLSR_txt_ammoHeader', '[ IDC_DLSR_LB_MAIN ] call DLSR_fnc_addItemToXXX'] call DLSR_fnc_mainLbPop;";
	};
	class DLSR_btn_acc: RscButton
	{
		idc = IDC_DLSR_BTN_ACCESSORIES;
		text = $STR_A3_DLSR_txt_accHeader;
		x = 0.169175 * safezoneW + safezoneX;
		y = 0.35095 * safezoneH + safezoneY;
		w = 0.097721 * safezoneW;
		h = 0.028 * safezoneH;
		action = "['CfgWeapons', 'item', 'STR_A3_DLSR_txt_accHeader', 'call DLSR_fnc_addAccFromMainLB'] call DLSR_fnc_mainLbPop;";
	};
	class DLSR_btn_Uniforms: RscButton
	{
		idc = IDC_DLSR_BTN_UNIFORMS;
		text = $STR_A3_DLSR_txt_uniformsHeader;
		x = 0.16891 * safezoneW + safezoneX;
		y = 0.37878 * safezoneH + safezoneY;
		w = 0.097721 * safezoneW;
		h = 0.028 * safezoneH;
		action = "['CfgWeapons', 'Uniform', 'STR_A3_DLSR_txt_uniformsHeader', 'call DLSR_fnc_addUniformFromMainLb'] call DLSR_fnc_mainLbPop;";
	};
	class DLSR_btn_vests: RscButton
	{
		idc = IDC_DLSR_BTN_VESTS;
		text = $STR_A3_DLSR_txt_vestsHeader;
		x = 0.16891 * safezoneW + safezoneX;
		y = 0.40678 * safezoneH + safezoneY;
		w = 0.097721 * safezoneW;
		h = 0.028 * safezoneH;
		action = "['CfgWeapons', 'Vest', 'STR_A3_DLSR_txt_vestsHeader', '[""vest""] call DLSR_fnc_addContainerFromMainLb'] call DLSR_fnc_mainLbPop;";
	};
	class DLSR_btn_bp: RscButton
	{
		idc = IDC_DLSR_BTN_BACKPACKS;
		text = $STR_A3_DLSR_txt_backpacksHeader;
		x = 0.168913 * safezoneW + safezoneX;
		y = 0.43379 * safezoneH + safezoneY;
		w = 0.097721 * safezoneW;
		h = 0.028 * safezoneH;
		action = "['CfgVehicles', 'Backpack', 'STR_A3_DLSR_txt_backPacksHeader', '[""BackPack""] call DLSR_fnc_addContainerFromMainLb'] call DLSR_fnc_mainLbPop;";
	};
	class DLSR_btn_headgear: RscButton
	{
		idc = IDC_DLSR_BTN_HEADGEAR;
		text = $STR_A3_DLSR_txt_headGearHeader;
		x = 0.168913 * safezoneW + safezoneX;
		y = 0.46179 * safezoneH + safezoneY;
		w = 0.097721 * safezoneW;
		h = 0.028 * safezoneH;
		action = "['CfgWeapons', 'Headgear', 'STR_A3_DLSR_txt_headGearHeader', '[""HeadGear""] call DLSR_fnc_addContainerFromMainLb'] call DLSR_fnc_mainLbPop;";
	};
	class DLSR_btn_glasses: RscButton
	{
		idc = IDC_DLSR_BTN_GLASSES;
		text = $STR_A3_DLSR_txt_glassesHeader;
		x = 0.169175 * safezoneW + safezoneX;
		y = 0.48979 * safezoneH + safezoneY;
		w = 0.097721 * safezoneW;
		h = 0.028 * safezoneH;
		action = "['CfgGlasses', 'Glasses', 'STR_A3_DLSR_txt_glassesHeader', '[""Goggles""] call DLSR_fnc_addContainerFromMainLb'] call DLSR_fnc_mainLbPop;";
	};
	class DLSR_btn_exit: RscButton
	{
		idc = IDC_DLSR_BTN_EXIT;
		text = "X";
		colorBackground[] = {0,0,0,0};
		x = 0.70675 * safezoneW + safezoneX;
		y = 0.2256 * safezoneH + safezoneY;
		w = 0.025 * safezoneW;
		h = 0.0308 * safezoneH;
		action = "closeDialog 0";
		toolTip = "Exit DLSR";
	};
	

	
	///////////////////
	// PROGRESS BARS //
	///////////////////
	class DLSR_Progress_uniform: RscProgress 
	{ 
		idc = IDC_DLSR_PROGRESS_UNIFORM; 
		x = 0.575843 * safezoneW + safezoneX;
		y = 0.7 * safezoneH + safezoneY;
		w = 0.0466732 * safezoneW;
		h = 0.01 * safezoneH;
	}; 
	class DLSR_Progress_vest: RscProgress 
	{ 
		idc = IDC_DLSR_PROGRESS_VEST; 
		x = 0.63127 * safezoneW + safezoneX;
		y = 0.7 * safezoneH + safezoneY;
		w = 0.0466732 * safezoneW;
		h = 0.01 * safezoneH;
	}; 
	class DLSR_Progress_backPack: RscProgress 
	{ 
		idc = IDC_DLSR_PROGRESS_BACKPACK;
		x = 0.686691 * safezoneW + safezoneX;
		y = 0.7 * safezoneH + safezoneY;
		w = 0.0466732 * safezoneW;
		h = 0.01 * safezoneH;
	}; 
	
	
	//////////////
	// PICTURES //
	//////////////
	class DLSR_Picture_PIP : RscPicture 
	{
		idc = IDC_DLSR_PICTURE_PIP;
		x = 0.168913 * safezoneW + safezoneX;
		y = 0.5224 * safezoneH + safezoneY;
		w = 0.0948042 * safezoneW;
		h = 0.1792 * safezoneH;
		moving = 1;
		text = "#(argb,256,256,1)r2t(myRender,1.0)";
	};
 
	
};



