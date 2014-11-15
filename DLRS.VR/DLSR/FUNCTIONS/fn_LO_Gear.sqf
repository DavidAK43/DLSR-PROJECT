// By Larrow

#define UIctrl(ctrl) ((findDisplay 20000) displayCtrl ctrl)

lbClear UIctrl(DLS_LB_GEAR);

_loadoutIndex = _this select 0;
if ( _loadoutIndex < 0 ) exitWith {};
_loadoutArray = DLS_playerLoadouts select _loadoutIndex; // ERROR ZERO DIVISOR ?? FIXED larrow

//Remove name
_loadoutArray = _loadoutArray - [_loadoutArray select 0];

//Rip array into a list of stuff
//got to be a better way than foreach^n (recurse _x select 0 till typename is "")??
_gearArray = [];
{
	switch (typeName (_x select 0)) do {
		case (typeName ""): {
			{
				if (_x != "") then {
					_gearArray set [count _gearArray, _x];
				};
			}forEach _x;
		};
		case (typeName []): {
			{
				{
					if (_x != "") then {
						_gearArray set [count _gearArray, _x];
					};
				}forEach _x
			}forEach _x;
		};
	};
}forEach _loadoutArray;

//Find class and resources for each item
{
	_item = _x;
	{
		if (isClass (configFile >> _x >> _item) ) exitWith {
			_index = UIctrl(DLS_LB_GEAR) lbAdd (getText (configFile >> _x >> _item >> "displayName"));
			UIctrl(DLS_LB_GEAR) lbSetPicture [_index, getText (configFile >> _x >> _item >> "picture")];
		};
	}forEach ["cfgWeapons","cfgMagazines","cfgGlasses","cfgVehicles"];
}forEach _gearArray;

