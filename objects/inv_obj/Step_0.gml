// SET INVENTORY SIZE BASED ON PLAYER equip_slot ---------------------------------------------------
maxitems = player.bag * invwidth;

// CONTROL INVENTORY NON-MOUSE --------------------------------------------------------------------
inputs_scr();

// reload equipped ranged weapon
if (equip[7,0] != 0)
{
	if (reload)
	{
		reloading = true;
	}
}

// RELOAD EQUIPPED RANGED WEAPON ------------------------------------------------------------------
if (reloading == true)
{
	reloadtimer += 1/room_speed;
	if (reloadtimer >= global.item[equip[7,0] + 1, 5])
	{
		while(equip[7,2] < global.item[equip[7,0], 4])
		{
			var slot = inv_check_scr(equip[7,0] + 1);
			if (slot != -1)
			{
				equip[7,2] ++;
				inv_dump_scr(slot);
			}
			else 
			{
				reloading = false;
				reloadtimer = 0;
				break;
			}
		}
		reloading = false;
		reloadtimer = 0;
	}
}

// SET PAUSE STATE --------------------------------------------------------------------------------
if (!player.showinv) exit;

// toggle menu selection
if (toggle)
{
	menu ++;
	if (menu >=  max_menu)
	{
		menu = 0;
	}
}

#region// CONTROL ITEM SELECTION WITH MOVEMENT KEYS
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

#region// CONTROL INVENTORY ITEM USAGE ------------------------------------------------------------
if (menu == 0)
{
	if (drop)
	{
		var slot = inv_obj.menu_slot;
		if (inventory[slot, 0] > 0)
		{
			// create item dropped
			var i = instance_create_layer(player.x - 8 + irandom(8), player.y + 4 - irandom(8), "instances", item);
			i.image_index = inventory[slot,0];
			i.amount = 1;
			i.durability = inventory[slot,2];
			i.loaded = inventory[slot,3];
			inv_drop_scr();
		}
	}
	if (action)
	{
		if (global.item[inventory[menu_slot,0],2] == 1)
		{
			var it = inventory[menu_slot,0];
			var eq = global.item[it,3];
			
			if (equip[eq,0] == 0)
			{
				equip[eq,0] = inventory[menu_slot,0];
				equip[eq,1] = inventory[menu_slot,2];
				equip[eq,2] = inventory[menu_slot,3];
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
#endregion

#region// CONTROL PLAYER EQUIPMENT ----------------------------------------------------------------
if (menu == 1)
{
	if (drop || action || use)
	{
		if (equip[equip_slot,0] > 0)
		{
			if (equip_slot == 6)
			{
				for (var m = 6; m < maxitems; m++)
				{
					while(inventory[m,1] > 0)
					{
						// drop additional inventory items
						var i = instance_create_layer(player.x - 8 + irandom(8), player.y + 4 - irandom(8), "instances", item);
						i.image_index = inv_obj.inventory[m,0];	
						i.amount = inv_obj.inventory[m,1];
						inv_dump_scr(m);
					}
				}
				// drop bag
				var d = instance_create_layer(player.x - 8 + irandom(8), player.y + 4 - irandom(8), "instances", item);
				d.image_index = equip[equip_slot,0];
				equip[6,0] = 0;
				equip[6,1] = 0;
			}
			else if (equip_slot == 7)
			{
				inv_add_scr(equip[7,0], equip[7,1], equip[7,2]);
				equip[7,0] = 0;
				equip[7,1] = 0;
				equip[7,2] = 0;
			}
			else
			{
				inv_add_scr(equip[equip_slot,0], 1, equip[equip_slot,1]);
				equip[equip_slot,0] = 0;
				equip[equip_slot,1] = 0;
			}
		}
	}
}
#endregion

#region// equip a bag
if (equip[6,0] != 0)
{
	player.bag = global.item[equip[6,0],4];
}
else 
{
	player.bag = 1;
}
#endregion

