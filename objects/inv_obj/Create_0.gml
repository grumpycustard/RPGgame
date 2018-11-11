invwidth = 6;
invheight = 4;
invsize = invwidth*invheight;
maxitems = player.bag * invwidth;

menu = 0;			// currently selected menu
max_menu = 2;		// how many menus are there
menu_slot = 0;		// currently selected inventory slot
maxequipment = 8;	// max number of equipment slots
equip_slot = 0;		// player equipment slot currently selected

items_scr();

for (var i = 0; i < invsize; i ++)
{
	inventory[i,0] = 0; // image index id of sprite
	inventory[i,1] = 0; // quantity of item held if stackable
	inventory[i,2] = 0; // durability of item
}

for (var e = 0; e < maxequipment; e ++)
{
	equip[e,0] = 0; // image index id of equipment sprite
	equip[e,1] = 0; // durability of item
}