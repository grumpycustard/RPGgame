// SET PAUSE STATE --------------------------------------------------------------------------------
if (!player.showinv) exit;

// DRAW INVENTORY WHEN SHOWINV IS TRUE ------------------------------------------------------------
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
		selected = i;
	}
	
	// draw selection box
	if (selected == i)
	{
		draw_sprite(inv_box, 1, xx, yy);
	}
	
	// draw inventory items and quantity
	if (inventory[i,0] > 0)
	{
		draw_sprite(item_spr, inventory[i,0], xx + 4, yy - 4);
		if (inventory[i,1] > 1)
		{
			draw_text(xx + 1, yy - 9, string(inventory[i,1]));
		}
	}
}
