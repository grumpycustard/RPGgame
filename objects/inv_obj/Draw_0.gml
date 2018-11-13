// SET PAUSE STATE --------------------------------------------------------------------------------
if (!player.showinv) exit;

// DRAW INVENTORY WHEN SHOWINV IS TRUE ------------------------------------------------------------ 

#region
// get screen position variables
var xpos = camera_get_view_x(view_camera[0]);
var ypos = camera_get_view_y(view_camera[0]);
var xhalf = xpos + (camera_get_view_width(view_camera[0]) / 2);
var yhalf = ypos + (camera_get_view_height(view_camera[0]) / 2);

var boxwidth = sprite_get_width(inv_box);
var inv_start_x = xhalf + (boxwidth * (invwidth / 2));
var inv_start_y = yhalf - ((boxwidth / 2) * player.bag);
var row = 0;
var column = 0;

// DRAW NINE SLICE BOX FOR INVENTORY --------------------------------------------------------------
if (menu == 0)
{
	var c = c_white;
}
else var c = c_gray;

nineslice_scr(nine_slice_spr,xhalf-(boxwidth*(invwidth/2)),inv_start_y - boxwidth,xhalf+(boxwidth*(invwidth/2)),inv_start_y+(boxwidth*player.bag) + 32, c);

draw_set_font(large_fnt);
draw_set_colour(c);
draw_text(xhalf-(boxwidth*(invwidth/2)),inv_start_y - boxwidth + 4, "Inventory");

// DRAW NINE SLICE BOX FOR EQUIPMENT --------------------------------------------------------------
if (menu == 1)
{
	var c2 = c_white;
}
else var c2 = c_gray;
draw_set_colour(c2);
nineslice_scr(nine_slice_spr,xpos+670,ypos+160-boxwidth,xpos+810,ypos+350+boxwidth,c2);
draw_text(xpos+670, ypos+160-boxwidth+4, "Equipment");

draw_set_font(normal_fnt);
draw_set_colour(c_white);

// DRAW INVENTORY SLOTS ---------------------------------------------------------------------------
for (var i = 0; i < maxitems; i ++)
{
	// set inventory box position
	column = i;
	if (column == invwidth * row)
	{
		row ++;
	}
	column -= (invwidth * row);
	
	var xx = inv_start_x + (boxwidth * column);
	var yy = inv_start_y + (boxwidth * row);
	
	// draw inventory box
	draw_sprite(inv_box, 0, xx, yy);
	
	// mouse selection
	if (mouse_x > xx && mouse_x < xx + boxwidth) && (mouse_y < yy && mouse_y > yy - boxwidth)
	{
		menu_slot = i;
		menu = 0;
	}
	
	// draw selection box
	if (menu_slot == i)
	{
		draw_sprite(inv_box, 1, xx, yy);
	}
	
	// draw inventory items and quantity
	if (inventory[i,0] > 0)
	{
		draw_sprite(item_spr, inventory[i,0], xx + 4, yy - 4);
		
		// draw item quantity
		draw_set_font(small_fnt);
		if (inventory[i,1] > 1 && global.item[inventory[i,0],2] != 1)
		{
			draw_text(xx + 4, yy - 8, string(inventory[i,1]));
		}
		
		// draw item quality
		if (global.item[inventory[i,0], 2] == 1)
		{
			draw_text(xx + 24, yy - 8, string(inventory[i,2]) + "%");
		}
		draw_set_font(normal_fnt);
	}
}

// draw item name and description
if (inventory[menu_slot, 0] > 0)
{
	draw_sprite(item_spr, inventory[menu_slot,0], xx-(boxwidth*5) + 4, inv_start_y+(boxwidth*player.bag) + 32);
	draw_text(xx-(boxwidth*5) + 48, inv_start_y+(boxwidth*player.bag) + 4, string(global.item[inventory[menu_slot,0],0]));
	draw_set_font(small_fnt);
	draw_text(xx-(boxwidth*5) + 48, inv_start_y+(boxwidth*player.bag) + 16, string(global.item[inventory[menu_slot,0],0]));
	draw_set_font(normal_fnt);
}

#endregion
