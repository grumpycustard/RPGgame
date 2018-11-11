// DRAW NIGHT CYCLE SURFACE -----------------------------------------------------------------------
// drawing position variables
var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);
var x1 = camera_get_view_width(view_camera[0]);
var y1 = camera_get_view_height(view_camera[0]);

if (!surface_exists(nightsurf))
{
	nightsurf = surface_create(x1 + 20, y1 + 20);
}

// set drawing variables
surface_set_target(nightsurf);
draw_set_alpha(a);
draw_set_colour(c_black);

// draw surface details
draw_rectangle(0, 0, x1 + 20, y1 + 20, 0);
if (a > 0.5)
{
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(glow_spr, 0, player.x - xx, player.y - yy - 12, 12, 12, 0, -1, a-0.5);
	gpu_set_blendmode(bm_normal);
}

// reset drawing variables
draw_set_alpha(1);
draw_set_colour(c_white);
surface_reset_target();

draw_surface(nightsurf, xx - 10, yy - 10);
