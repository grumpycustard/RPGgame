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

