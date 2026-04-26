///@description Bozo - Attack - Execute - Bisbee - Cannon

function scr_Bozo_Attack_Execute_Bisbee_Cannon(attackAngle = 0)
{
	#region Audio
	var sfx = scr_PlaySfx(snd_Bozo_Attack);
	audio_sound_pitch(sfx,random_range(.85,1.15));
	#endregion
	
	#region Attack
	with (instance_create_depth(x + (20 * dirX),y + 41,depth - 1,obj_Bozo_Attack))
	{
		owner = id;
		isEnemy = true;
		dmg = 1;
		hsp = lengthdir_x(3,attackAngle);
		vsp = lengthdir_y(3,attackAngle);
		destroyIfOwnerNotAttack = false;
		destroyAfterHit = true;
		destroyOutsideRoom = true;
		sprite_index = spr_Bozo_Attack_3;
		image_blend = c_red;
	}
	#endregion
}