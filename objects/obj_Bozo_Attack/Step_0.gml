///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!localPause)
{
	#region Movement
	x += hsp * dirX * speedMultFinal;
	y += vsp * dirY * speedMultFinal;
	#endregion
}