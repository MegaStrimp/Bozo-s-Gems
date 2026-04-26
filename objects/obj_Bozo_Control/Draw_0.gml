///@description Draw

#region Bozo Timer
if ((global.Bozo_BozoTimer != -1) and (!global.pauseFinal))
{
	scribble("HE IS COMING: " + string(floor(global.Bozo_BozoTimer))).draw(2,2);
}
#endregion