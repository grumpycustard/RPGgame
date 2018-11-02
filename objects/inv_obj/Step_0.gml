// SET INVENTORY SIZE BASED ON PLAYER EQUIPMENT ---------------------------------------------------
maxitems = player.bag * invwidth;

// SET PAUSE STATE --------------------------------------------------------------------------------
if (!player.showinv) exit;

// CONTROL INVENTORY NON-MOUSE --------------------------------------------------------------------
inputs_scr();

#region// control selection with movement keys
if (oneright)
{
	selected ++;
	if (selected >= maxitems)
	{
		selected = 0;
	}
}
if (oneleft)
{
	selected --;
	if (selected < 0)
	{
		selected = maxitems-1;
	}
}
if (oneup)
{
	selected -= invwidth;
	if (selected < 0)
	{
		selected += maxitems;
	}
}
if (onedown)
{
	selected += invwidth;
	if (selected >= maxitems)
	{
		selected -= maxitems;
	}
}
#endregion

if (action)
{
	inv_drop_scr();
}
