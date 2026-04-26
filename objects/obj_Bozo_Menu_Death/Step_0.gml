///@description Main

#region Destroy Timer
if (destroyTimer != -1)
{
	destroyTimer = max(destroyTimer - speedMultFinal,0);
	if (destroyTimer == 0)
	{
		game_restart();
		
		destroyTimer = -1;
	}
}
#endregion