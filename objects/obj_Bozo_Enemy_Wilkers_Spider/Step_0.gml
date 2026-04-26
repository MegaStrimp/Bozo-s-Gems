///@description Main

if (!localPause)
{
	#region Movement
	moveTick += 1;
	
	vsp = sine_between((moveTick / 10),12,-2,2);
	
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