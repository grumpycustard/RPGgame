var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);

var spacing = 10;
var width = 8;
var height = 40;
var hung = player.hunger;
var thir = player.thirst;
var ener = player.energy;

draw_healthbar(xx + 2, yy + 2, xx + width, yy + height, hung, 0, c_red, c_lime, 3, 1, 1);
draw_healthbar(xx + 2 + spacing, yy + 2, xx + spacing + width, yy + height, thir, 0, c_red, c_lime, 3, 1, 1);
draw_healthbar(xx + 2 + (spacing*2), yy + 2, xx + (spacing*2) + width, yy + height, ener, 0, c_red, c_lime, 3, 1, 1);
