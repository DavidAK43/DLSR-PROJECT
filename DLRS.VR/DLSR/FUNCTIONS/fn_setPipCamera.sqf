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
	- Create a camera at the player's position
	 	 
	***********
	** Usage **
	***********
	- call DLSR_fnc_setPipCamera;
	
*/

private ["_camPos", "_cam"];

_camPos =  player modelToWorld [ 0, 1.5, 1 ];

_cam = "camera" camCreate _camPos;

_cam camPrepareTarget player;

_cam camCommitPrepared 0;

_cam cameraEffect ["INTERNAL", "BACK", "myrender"];



waitUntil { isNull ( findDisplay ( IDD_DLSR_DIALOG ) ) };


 _cam cameraEffect ["terminate","back"]; 
 
 camDestroy _cam;

 nil
