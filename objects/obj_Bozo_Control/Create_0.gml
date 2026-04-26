///@description Create

#region Initialize Variables
#region Gameplay Variables
global.gameTitle = "Bozo";
global.versionNumber = "1.0.1";

global.windowScaleTarget = 3;

scr_Bozo_CompletionMark_Init_Set();
scr_Bozo_Player_Init_Set();
scr_Bozo_Stage_Init_Set();

for (var i = 0; i < global.maxPlayers; i++)
{
	global.Bozo_PlayerMetaPoints[i] = 0;
	
	global.playerCharacter[i] = global.Bozo_PlayerIDs[? "gim"];
}

global.pauseScript = scr_Bozo_PauseScript;

global.Bozo_BozoTimer = -1;
global.Bozo_BozoTimerMax = 666;
global.Bozo_PortalOffset = 0;

scribble_font_set_default("fnt_Advance");
#endregion
#endregion

#region Hud Setup
//scr_UI_SetHud(scr_Bozo_Hud_Setup);
#endregion

#region Pause Screen Setup
//scr_Pause_SetPause(scr_Bozo_Pause_Setup);
#endregion

//#region Set Window Caption
//var flavorText = scr_Bozo_SetFlavorText();

//window_set_caption(global.gameTitle + " " + string(global.versionNumber) + " - " + string(flavorText));
//#endregion

#region Load General & Config
//scr_Bozo_LoadGeneral("general.ini");
//scr_Bozo_SaveGeneral("general.ini");

//scr_Bozo_LoadConfig("config.ini");
//scr_Bozo_SaveConfig("config.ini");

//scr_Bozo_DefaultKeybindings();
//scr_Bozo_LoadControls("controls.ini");

//window_set_fullscreen(global.fullscreen);

scr_Bozo_LoadData("data1.ini");
#endregion

#region Discord Rich Presence
//scr_Discord_Init("1175092953597890661");

//scr_Discord_Setup(-1,-1,"icon",global.gameTitle,"strimp","From Strimp's Kitchen");
#endregion