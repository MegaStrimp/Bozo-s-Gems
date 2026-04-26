///@description Bozo - Attack - Execute - Player - Ty

function scr_Bozo_Attack_Execute_Player_Ty()
{
	#region Audio
	var sfx = scr_PlaySfx(snd_Bozo_Attack);
	audio_sound_pitch(sfx,random_range(.85,1.15));
	#endregion
	
	#region Attack
	with (instance_create_depth(x,y,depth,obj_Bozo_Attack))
	{
		var angle = 90;
		
		owner = id;
		isEnemy = false;
		dmg = 25;
		hsp = lengthdir_x(3,angle) + .5;
		vsp = lengthdir_y(3,angle);
		destroyIfOwnerNotAttack = false;
		destroyAfterHit = true;
		destroyOutsideRoom = true;
		sprite_index = spr_Bozo_Attack_3;
		image_blend = c_yellow;
	}
	
	with (instance_create_depth(x,y,depth,obj_Bozo_Attack))
	{
		var angle = 225;
		
		owner = id;
		isEnemy = false;
		dmg = 25;
		hsp = lengthdir_x(3,angle) + .5;
		vsp = lengthdir_y(3,angle);
		destroyIfOwnerNotAttack = false;
		destroyAfterHit = true;
		destroyOutsideRoom = true;
		sprite_index = spr_Bozo_Attack_3;
		image_blend = c_yellow;
	}
	
	with (instance_create_depth(x,y,depth,obj_Bozo_Attack))
	{
		var angle = 315;
		
		owner = id;
		isEnemy = false;
		dmg = 25;
		hsp = lengthdir_x(3,angle) + .5;
		vsp = lengthdir_y(3,angle);
		destroyIfOwnerNotAttack = false;
		destroyAfterHit = true;
		destroyOutsideRoom = true;
		sprite_index = spr_Bozo_Attack_3;
		image_blend = c_yellow;
	}
	#endregion
}