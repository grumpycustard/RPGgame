// NIGHT CYCLE VARIABLES --------------------------------------------------------------------------
a = 1;
sunrise = 5 * 60;
risespeed = 3 * 60;

sunset = 17 * 60;
setspeed = 3 * 60;

// CREATE NIGHT CYCLE SURFACE ---------------------------------------------------------------------
var x1 = camera_get_view_width(view_camera[0]) + 20;
var y1 = camera_get_view_height(view_camera[0]) + 20;
nightsurf = surface_create(x1, y1);