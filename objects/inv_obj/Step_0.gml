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
	// create item dropped
	var i = instance_create_layer(player.x - 8 + irandom(8), player.y + 4 - irandom(8), "instances", item);
	// set items image index
	i.image_index = inv_obj.inventory[slot,0];
	inv_drop_scr();
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
		inv_drop_scr();
	}
}

// clamp player stat values
player.hunger = clamp(player.hunger, 0, 100);
player.thirst = clamp(player.thirst, 0, 100);
player.energy = clamp(player.energy, 0, 100);
player.bloodloss = clamp(player.bloodloss, 0, 100);