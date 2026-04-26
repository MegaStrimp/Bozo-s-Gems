///@description Bozo - Enemy - Bozo - AI - Normal - Step

function scr_Bozo_Enemy_Bozo_AI_Normal_Step()
{
	if (!localPause)
	{
		#region Movement
		if (instance_exists(obj_Player)) move_towards_point(obj_Player.x,obj_Player.y,spd);
		#endregion
		
		#region Animation
		sprite_index = spr_Bozo_Enemy_Bozo;
		#endregion
	}
	else
	{
		speed = 0;
	}
}