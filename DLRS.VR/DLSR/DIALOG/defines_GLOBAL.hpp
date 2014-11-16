/*
	BASE DEFINES FOR BOTH DLS AND LOM (load-out management) dialogs
*/

// Control types
#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESSBAR      8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUTBUTTON   16
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_LISTNBOX         102
#define CT_CHECKBOX         77

// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0C

#define ST_TYPE           0xF0
#define ST_SINGLE         0
#define ST_MULTI          0x10
#define ST_TITLE_BAR      0x20
#define ST_PICTURE        0x30
#define ST_FRAME          0x40
#define ST_BACKGROUND     0x50
#define ST_GROUP_BOX      0x60
#define ST_GROUP_BOX2     0x70
#define ST_HUD_BACKGROUND 0x80
#define ST_TILE_PICTURE   0x90
#define ST_WITH_RECT      0xA0
#define ST_LINE           0xB0

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800
#define ST_KEEPASPECT     0x30 + 0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

// Slider styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10

// progress bar 
#define ST_VERTICAL       0x01
#define ST_HORIZONTAL     0

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

// Tree styles
#define TR_SHOWROOT       1
#define TR_AUTOCOLLAPSE   2

// MessageBox styles
#define MB_BUTTON_OK      1
#define MB_BUTTON_CANCEL  2
#define MB_BUTTON_USER    4

// Colors
#define Color100_2 "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.90])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.75])",1
#define Color100 "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1
#define Color75 "(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",0.75
#define Color50 "(profilenamespace getvariable ['IGUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['IGUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['IGUI_BCG_RGB_B',0.5])",0.5
#define Color25 "(profilenamespace getvariable ['IGUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['IGUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['IGUI_BCG_RGB_B',0.5])",0.25

class RscText
{

	type = CT_STATIC;
	style = ST_CENTER;
	moving = 1;
	idc = -1;
	deletable = 0;
	fade = 0;
	access = 0;
	text = "";
	fixedWidth = 0;
	font = "PuristaMedium";
	SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.75)";
	linespacing = 1;
	
	x = 0;
	y = 0;
	h = 0;
	w = 0;
	
	shadow = 1;
	colorBackground[] = {Color75};
	colorText[] = {1,1,1,1};
	colorShadow[] = {0,0,0,0.5};
	tooltipColorText[] = {1,1,1,1};
	tooltipColorBox[] = {1,1,1,1};
	tooltipColorShade[] = {0,0,0,0.65};
};

class RscPicture
{
	access = 0;
	type = 0;
	idc = -1;
	style = 48;
	colorBackground[] = {0,0,0,0};
	colorText[] ={1,1,1,1};
	font = "TahomaB";
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	fixedWidth = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
};

class RscProgress 
{ 
	type = CT_PROGRESSBAR;
	style = ST_HORIZONTAL; 
	colorFrame[] = {0,0,0,0}; 
	colorBar[] = {1,1,1,1};
	texture = "#(argb,8,8,3)color(1,1,1,1)";
	shadow = 0;
	
	x = 0;
	y = 0;
	w = 0;
	h = 0;
}; 

class RscListBox
{
	 type = CT_LISTBOX;
     style = LB_TEXTURES;
	 idc=-1;
	 moving = 1;
	 font = "puristaMedium";
	 sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.675)";
	 rowHeight=0.04;
     lineSpacing = 1;
	 idcRight = -1;
	 idcLeft = -1;
	 drawSideArrows = 1;
     columns[] = {0.937500,0.968750,1.000000,0.7};
     colorText[] = {1,1,1,0.7};
	 colorScrollBar[] = {Color75};
	 colorSelect[] = {0.937500,0.968750,1.000000,0.7};
	 colorSelect2[] = {0.937500,0.968750,1.000000,0.7};
	 colorSelectBackground[] = {Color75};
	 colorSelectBackground2[] = {Color75};
	 colorBackground[] = {Color50};
	 maxHistoryDelay = 1.0;
	 soundSelect[] = {"",0.1,1};
	 period = 1;
	 autoScrollSpeed = -1;
	 autoScrollDelay = 5;
	 autoScrollRewind = 0;
	 arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	 arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	 shadow = 0;
     colorDisabled[] = {1, 1, 1, 0.6};
        
       
	class listScrollBar
	{
		color[] = {Color75};
		colorActive[] = {Color75};
	    colorDisabled[] = {1, 1, 1, 1};
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
        arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
        border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
        thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
        soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1};
		shadow = 1;
		width = 0.021;
	};	
};


class RscButton
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 1;
	text = "";
	colorText[] = {1,1,1,1};
	colorDisabled[] = {1,1,1,0.25};
	colorBackground[] = {Color75};
	colorBackgroundDisabled[] = {1,0,0,0.5};
	colorBackgroundActive[] = 
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.49])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.55])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.25])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.75])"
	};
	colorFocused[] = 
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.85])"
	};
	colorShadow[] = {0,0,0,0};
	colorBorder[] = {0,0,0,0};
	soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
	soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
	soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
	soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
	style = 2;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	shadow = 2;
	font = "PuristaMedium";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.85)";
	offsetX = 0;
	offsetY = 0;
	offsetPressedX = 0;
	offsetPressedY = 0;
	borderSize = 0;
};

class IGUIBack
{
	type = 0;
	idc = 124;
	style = 128;
	text = "";
	moving = 1;
	colorText[] = {0,0,0,0};
	font = "PuristaMedium";
	sizeEx = 0;
	shadow = 0;
	x = 0.1;
	y = 0.1;
	w = 0.1;
	h = 0.1;
	colorbackground[] = {Color50};
};

class RscActiveText 
{
    idc = -1;
	type = CT_ACTIVETEXT;
	style = ST_KEEPASPECT;
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.035;
	font = "PuristaMedium";
	shadow = 2;
	text = "";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	color[] = {1,1,1,1};
	colorText[] = {1,1,1,1};
	colorActive[] = {Color100};
	soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1};
    soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1};
    soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1};
    soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1};
};

class RscEdit
{
    type = CT_EDIT;
	style = LB_TEXTURES;
	idc=-1;
	font = "PuristaLight";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.75)";
	rowHeight=0.015;
	lineSpacing = 0.5;
	idcRight = -1;
	idcLeft = -1;
	drawSideArrows = 1;
	columns[] = {0.937500,0.968750,1.000000,0.7};
	text = "";
	colorText[] = {1,1,1,0.9};
	colorScrollBar[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",0.85};
	colorSelect[] = {0.937500,0.968750,1.000000,0.7};
	colorSelect2[] = {0.937500,0.968750,1.000000,0.7};
	colorSelection[] = {0.937500,0.968750,1.000000,0.7};
	colorSelectBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",0.85};
	colorSelectBackground2[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",0.85};
	colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",0.85};
	maxHistoryDelay = 1.0;
	soundSelect[] = {"",0.1,1};
	period = 1;
	autoComplete = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	shadow = 0;
	colorDisabled[] = {1, 1, 1, 0.6};
	
	class ScrollBar
	{
		color[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",0.85};
		colorActive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",0.85};
	    colorDisabled[] = {1, 1, 1, 1};
		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
        arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
        border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
        thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
        soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1};
		shadow = 1;
		width = 0.021;
	};	
};

#include "macros_DLS.hpp"
#include "dialog_LOM.hpp"
#include "dialog_DLS.hpp"
