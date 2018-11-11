// INITIALISE VARIABLES ---------------------------------------------------------------------------
draw_set_font(normal_fnt);
scale_for_devices_scr(2);

// GLOBAL VARIABLES -------------------------------------------------------------------------------
globalvar daytimer, gamespeed, pause, time;
pause = false;

// game time variables
normalgamespeed = 1/room_speed;
fastgamespeed = 1;
gamespeed = normalgamespeed;
time = 720;
minutes = 0;
hours = 0;
days = 0;
daytimer = minutes;

var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);
var w = camera_get_view_width(view_camera[0]);
var h = camera_get_view_height(view_camera[0]);
var s = sprite_get_width(inventory_spr);

instance_create_layer(0, 0, "nightlayer", nightcycle_obj);
instance_create_layer(0, 0, "screenfade", screenfade_obj);
instance_create_layer(xx+w-s, yy+h-s, "control", inventory_button);


flash_s = 1 / (room_speed / 4);
alpha_s = 0.01;