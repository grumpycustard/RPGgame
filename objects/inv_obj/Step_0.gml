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

if (drop)
{
	var slot = inv_obj.selected;
	if (inv_obj.inventory[slot, 0] > 0)
	{
		// create item dropped
		var i = instance_create_layer(player.x - 8 + irandom(8), player.y + 4 - irandom(8), "instances", item);
		// set items image index
		i.image_index = inv_obj.inventory[slot,0];
		inv_drop_scr();
	}
}
if (action)
{
	
}
if (use)
{
	if (global.item[inventory[selected,0],2] == 0)
	{
		player.hunger += global.item[inventory[selected,0],3];
		player.thirst += global.item[inventory[selected,0],4];
		player.energy += global.item[inventory[selected,0],5];
		player.stamina -= global.item[inventory[selected,0],6];
		inv_drop_scr();
	}
}

