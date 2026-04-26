///@description Main

if (!localPause)
{
	#region Movement
	if (x < 0) hsp = abs(hsp);
	if (y < 0) vsp = abs(vsp);
	
	if (x > global.gameWidth) hsp = -abs(hsp);
	if (y > global.gameHeight) vsp = -abs(vsp);
	
	x += hsp;
	y += vsp;
	#endregion
	
	with (obj_Player)
	{
		if (place_meeting(x,y,other))
		{
			scr_Player_GetHit(id,1);
		}
	}
}

