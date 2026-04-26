///@description Main

if (mouse_check_button_pressed(mb_left))
{
	#region Characters
	var offset = 50;
	
	for (var i = 0; i < ds_map_size(global.Bozo_PlayerIDs); i++)
	{
		if (scr_MouseIsInbetween(0,10 + (i * offset),global.gameWidth,10 + ((i + 1) * offset)))
		{
			global.playerCharacter[0] = i;
			
			room_goto(rm_Bozo_Quick);
		}
	}
	#endregion
}