var scale = argument0

var w = window_get_width() / scale;
var h = window_get_height() / scale;

display_set_gui_size(w, h);

var cam = view_get_camera(0);

view_set_wport(0, w);
view_set_hport(0, h);

camera_set_view_size(cam, view_wport[0], view_hport[0]);

// leave this part out if you don't use views to follow an object.
camera_set_view_target(view_camera[0], player);
camera_set_view_border(view_camera[0], w/2, h/2);

surface_resize(application_surface, w, h);
