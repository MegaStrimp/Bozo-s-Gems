///@description Main

#region Destroy Timer
if (destroyTimer != -1)
{
	destroyTimer = max(destroyTimer - speedMultFinal,0);
	if (destroyTimer == 0)
	{
		with (instance_create_depth(x,y,depth - 1,obj_Bozo_Attack))
		{
			owner = id;
			isEnemy = true;
			dmg = 1;
			vsp = 4;
			destroyIfOwnerNotAttack = false;
			destroyAfterHit = true;
			destroyOutsideRoom = true;
			sprite_index = spr_Bozo_Enemy_Bisbee_Apple;
			image_blend = c_red;
		}
		
		instance_destroy();
		
		destroyTimer = -1;
	}
}
#endregion