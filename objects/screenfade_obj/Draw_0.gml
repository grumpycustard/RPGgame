if (!player.showinv) exit;

var xpos = camera_get_view_x(view_camera[0]) - 5;
var ypos = camera_get_view_y(view_camera[0]) - 5;
var xwidth = xpos + camera_get_view_width(view_camera[0]) + 5;
var yheight = ypos + camera_get_view_height(view_camera[0]) + 5;

draw_set_colour(c_black);
draw_set_alpha(0.7);
draw_rectangle(xpos, ypos, xwidth, yheight, 0);
draw_set_colour(c_white);
draw_set_alpha(1);