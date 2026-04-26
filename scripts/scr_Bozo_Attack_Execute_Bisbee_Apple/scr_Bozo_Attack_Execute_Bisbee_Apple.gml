///@description Bozo - Attack - Execute - Bisbee - Apple

function scr_Bozo_Attack_Execute_Bisbee_Apple()
{
	#region Attack
	instance_create_depth(irandom_range(10,120),16,depth - 1,obj_Bozo_Enemy_Bisbee_Apple);
	#endregion
}