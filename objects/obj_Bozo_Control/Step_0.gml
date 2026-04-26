///@description Main

if (!global.pauseFinal)
{
	#region Timer
	if (global.Bozo_BozoTimer != -1)
	{
		global.Bozo_BozoTimer = max(global.Bozo_BozoTimer - speedMultFinal,0);
		if (global.Bozo_BozoTimer == 0)
		{
			with (instance_create_layer(10,10,"Enemies",obj_Bozo_Enemy_Bozo))
			{
				scr_Bozo_Enemy_Bozo_AI_Normal_Setup();
			}
			
			global.Bozo_BozoTimer = -1;
		}
	}
	#endregion
}