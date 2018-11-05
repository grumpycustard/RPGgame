// INITIALISE VARIABLES ---------------------------------------------------------------------------
draw_set_font(normal_fnt);
scale_for_devices_scr(4);

// GLOBAL VARIABLES -------------------------------------------------------------------------------
globalvar daytimer, pause;
pause = false;

// game time variables
normalgamespeed = 1/room_speed;
fastgamespeed = 1;
gamespeed = normalgamespeed;
time = 0;
minutes = 0;
hours = 0;
days = 0;
daytimer = minutes;

instance_create_layer(0, 0, "nightlayer", nightcycle);