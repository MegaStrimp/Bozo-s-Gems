///@description Bozo - Attack - Execute - Homer - Ufo

function scr_Bozo_Attack_Execute_Homer_Ufo()
{
	#region Audio
	var sfx = scr_PlaySfx(snd_Bozo_Attack);
	audio_sound_pitch(sfx,random_range(.85,1.15));
	#endregion
	
	#region Attack
	with (instance_create_depth(global.gameWidth,irandom_range(80,global.gameHeight),depth - 1,obj_Bozo_Attack))
	{
		owner = id;
		isEnemy = true;
		dmg = 1;
		hsp = -3 * dirX;
		destroyIfOwnerNotAttack = false;
		destroyAfterHit = true;
		destroyOutsideRoom = true;
		sprite_index = spr_Bozo_Enemy_Homer_Ufo;
		image_blend = c_red;
	}
	#endregion
}