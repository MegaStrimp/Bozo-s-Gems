///@description Bozo - Attack - Execute - Wilkers - Web

function scr_Bozo_Attack_Execute_Wilkers_Web()
{
	#region Audio
	var sfx = scr_PlaySfx(snd_Bozo_Attack);
	audio_sound_pitch(sfx,random_range(.85,1.15));
	#endregion
	
	#region Attack
	with (instance_create_depth(x + (48 * dirX),y + 40,depth - 1,obj_Bozo_Attack))
	{
		var angle = irandom_range(135,225);
		
		owner = id;
		isEnemy = true;
		dmg = 1;
		hsp = lengthdir_x(2,angle);
		vsp = lengthdir_y(2,angle);
		destroyIfOwnerNotAttack = false;
		destroyAfterHit = true;
		destroyOutsideRoom = true;
		sprite_index = spr_Bozo_Enemy_Wilkers_Web;
		image_blend = c_red;
	}
	#endregion
}