if (!player.showinv) exit;

// DRAW equip_slot SLOTS ---------------------------------------------------------------------------
draw_self();

if (position_meeting(mouse_x, mouse_y, self))
{
	inv_obj.equip_slot = equipmentid;
	inv_obj.menu = 1;
}

if (inv_obj.equip_slot != equipmentid)
{
	image_index = 0;
}
else image_index = 1;

// DRAW EQUIPPED ITEMS ----------------------------------------------------------------------------
var e = inv_obj.equip[equipmentid,0];

if (e != 0)
{
	draw_sprite(item_spr, e, x + 4, y - 4);
}

draw_set_font(small_fnt);

// DRAW LOADED AMMO FOR RANGED WEAPONS ------------------------------------------------------------
if (equipmentid == 7)
{
	if (inv_obj.equip[7,0] != 0)
	{
		draw_text(x+4, y-8, string(inv_obj.equip[7,2]));
	}
}

// DRAW REMAINING DURABILITY OF EQUIPPED ITEM -----------------------------------------------------
if (inv_obj.equip[equipmentid,0] > 0)
{
	draw_text(x + 24, y - 8, string(inv_obj.equip[equipmentid,1]) + "%");
}

draw_set_font(normal_fnt);

