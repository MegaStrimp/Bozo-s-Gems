///@description Bozo - Enemy - Death

function scr_Bozo_Enemy_Death(targetEnemy)
{
	with (targetEnemy)
	{
		if (deathParticleIndex != -1) script_execute(deathParticleIndex,x,y);
		
		if (isBoss) global.Bozo_PortalOffset = 0;
		
		instance_destroy();
	}
}