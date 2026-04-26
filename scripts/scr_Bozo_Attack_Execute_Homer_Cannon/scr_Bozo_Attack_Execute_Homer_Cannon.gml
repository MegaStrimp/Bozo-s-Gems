///@description Bozo - Attack - Execute - Homer - Cannon

function scr_Bozo_Attack_Execute_Homer_Cannon()
{
	#region Audio
	var sfx = scr_PlaySfx(snd_Bozo_Attack);
	audio_sound_pitch(sfx,random_range(.85,1.15));
	#endregion
	
	#region Attack
	with (instance_create_depth(x + (22 * dirX),y + 8,depth - 1,obj_Bozo_Attack))
	{
		owner = id;
		isEnemy = true;
		dmg = 1;
		dirX = other.dirX;
		hsp = -3 * dirX;
		destroyIfOwnerNotAttack = false;
		destroyAfterHit = true;
		destroyOutsideRoom = true;
		image_xscale = scale * dirX;
		sprite_index = spr_Bozo_Enemy_Homer_Ray;
		image_blend = c_red;
	}
	#endregion
}