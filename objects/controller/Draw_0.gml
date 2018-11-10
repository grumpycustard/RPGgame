// DRAW PLAYER STATS ------------------------------------------------------------------------------
var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);

var spacing = sprite_get_width(statbox_spr);
var height  = sprite_get_height(statbox_spr) - 4;

// DRAW STATBOXES ---------------------------------------------------------------------------------
// determine if bloodloss needs to be drawn
if (player.stamina > 0)
{
	var b = 4;
}
else var b = 3;

// draw statboxes
for (var i = 0; i < b; i ++)
{
	draw_sprite(statbox_spr, 0, xx + spacing + (spacing * i), yy + spacing);
}

// clamp values
var hung = clamp(player.hunger, 0, 100);
var thir = clamp(player.thirst, 0, 100);
var ener = clamp(player.energy, 0, 100);
var bloo = clamp(player.bloodloss, 0, 100);
var stam = clamp(player.stamina, 0, ener);

// draw stat bars
draw_sprite_ext(statbar_spr, 0, xx + spacing, yy + spacing + height, 1, -(hung/2), 0, c_orange, 1);
draw_sprite_ext(statbar_spr, 0, xx + (spacing*2), yy + spacing + height, 1, -(thir/2), 0, c_blue, 1);
draw_sprite_ext(statbar_spr, 0, xx + (spacing*3), yy + spacing + height, 1, -(ener/2), 0, c_lime, 1);
if (stam > 0)
{
	draw_sprite_ext(statbar_spr, 0, xx + (spacing*4), yy + spacing + height, 1, -(stam/2), 0, c_yellow, 1);
}

// DRAW TIME AND DAYS SURVIVED --------------------------------------------------------------------
var x2 = xx + camera_get_view_width(view_camera[0]);

draw_text(x2 - (spacing*5), yy + (spacing*1), "Minutes: " + string(minutes - (60*hours)));
draw_text(x2 - (spacing*5), yy + (spacing*2), "Hours: " + string(hours - (24*(days))));
draw_text(x2 - (spacing*5), yy + (spacing*3), "Days: " + string(days));

// DRAW PLAYER STAMINA ----------------------------------------------------------------------------
draw_pie(xx + (spacing * 2.5), yy + height + 40, bloo, 100, c_red, 20, 1, bloodloss_spr);
if (bloo >= 90)
{
	alpha_s += flash_s;
	if (alpha_s >= 1 || alpha_s <= 0)
	{
		flash_s *= -1;
	}
	draw_sprite_ext(bloodloss_spr, 1, xx + (spacing * 2.5), yy + height + 40,1,1,0,-1,alpha_s);
}
