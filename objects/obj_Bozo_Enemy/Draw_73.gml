///@description Draw End

#region Healthbar
if (isBoss)
{
	var enemyHp = hp;
	var enemyMaxHp = maxHp;
	var enemyTitle = name;
	var barWidth = 4;
	var barHeight = global.gameHeight;
	var barLength = (enemyHp / enemyMaxHp) * barHeight;
	
	draw_set_color(c_red);
	draw_rectangle(global.gameWidth - barWidth,0,global.gameWidth,barLength,false);
	draw_set_color(c_white);
	
	if (enemyTitle != undefined) scribble("[cycle,0,490]" + string_upper(string(enemyTitle)) + "[/cycle]").align(fa_right,fa_bottom).draw(global.gameWidth - 2,global.gameHeight - 2);
}
#endregion