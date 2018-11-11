// SET INVENTORY SIZE BASED ON PLAYER equip_slot ---------------------------------------------------
maxitems = player.bag * invwidth;

// SET PAUSE STATE --------------------------------------------------------------------------------
if (!player.showinv) exit;

// CONTROL INVENTORY NON-MOUSE --------------------------------------------------------------------
inputs_scr();

// toggle menu selection
if (toggle)
{
	menu ++;
	if (menu >=  max_menu)
	{
		menu = 0;
	}
}

#region// control selection with movement keys
if (oneright)
{
	if (menu == 0)
	{
		menu_slot ++;
		if (menu_slot >= maxitems)
		{
			menu_slot = 0;
		}
	}
	if (menu == 1)
	{
		equip_slot ++;
		if (equip_slot >= maxequipment)
		{
			equip_slot = 0;
		}
	}
}
if (oneleft)
{
	if (menu == 0)
	{
		menu_slot --;
		if (menu_slot < 0)
		{
			menu_slot = maxitems-1;
		}
	}
	if (menu == 1)
	{
		equip_slot --;
		if (equip_slot < 0)
		{
			equip_slot = maxequipment - 1;
		}
	}
}
if (oneup)
{
	if (menu == 0)
	{
		menu_slot -= invwidth;
		if (menu_slot < 0)
		{
			menu_slot += maxitems;
		}
	}
	if (menu == 1)
	{
		equip_slot --;
		if (equip_slot < 0)
		{
			equip_slot = maxequipment - 1;
		}
	}
}
if (onedown)
{
	if (menu == 0)
	{
		menu_slot += invwidth;
		if (menu_slot >= maxitems)
		{
			menu_slot -= maxitems;
		}
	}
	if (menu == 1)
	{
		equip_slot ++;
		if (equip_slot >= maxequipment)
		{
			equip_slot = 0;
		}
	}
}
#endregion

if (menu == 0)
{
	if (drop)
	{
		var slot = inv_obj.menu_slot;
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
		if (global.item[inventory[menu_slot,0],2] == 1)
		{
			if (equip[global.item[inventory[menu_slot,0],3],0] == 0)
			{
				equip[global.item[inventory[menu_slot,0],3],0] = inventory[menu_slot,0];
				inv_drop_scr();
			}
		}
	}
	if (use)
	{
		if (global.item[inventory[menu_slot,0],2] == 0)
		{
			player.hunger += global.item[inventory[menu_slot,0],3];
			player.thirst += global.item[inventory[menu_slot,0],4];
			player.energy += global.item[inventory[menu_slot,0],5];
			player.stamina -= global.item[inventory[menu_slot,0],6];
			inv_drop_scr();
		}
	}
}

if (menu == 1)
{
	if (drop || action || use)
	{
		if (equip[equip_slot,0] > 0)
		{
			if (inv_add_scr(equip[equip_slot,0]))
			{
				equip[equip_slot,0] = 0;
			}
		}
	}
}
