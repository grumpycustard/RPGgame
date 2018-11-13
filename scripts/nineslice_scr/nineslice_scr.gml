///@desc Nineslice_scr
///@arg Sprite
///@arg x1
///@arg y1
///@arg x2
///@arg y2
///@arg colour

var sprite = argument0;
var size = sprite_get_width(sprite) / 3;
var xpos = argument1;
var ypos = argument2;
var xend = argument3;
var yend = argument4;
var c = argument5;

// DRAW CORNERS -----------------------------------------------------------------------------------
// top left
draw_sprite_part_ext(sprite,0,0,0,size,size, xpos-size, ypos-size, 1, 1, c, 1);
// top right
draw_sprite_part_ext(sprite,0,size*2,0,size,size, xend, ypos-size, 1, 1, c, 1);
// bottom left
draw_sprite_part_ext(sprite,0,0,size*2,size,size, xpos-size, yend, 1, 1, c, 1);
//bottom right
draw_sprite_part_ext(sprite,0,size*2,size*2,size,size, xend, yend, 1, 1, c, 1);

// DRAW EDGES -------------------------------------------------------------------------------------
// top
draw_sprite_part_ext(sprite, 0, size, 0, 1, size, xpos, ypos-size, xend-xpos, 1, c, 1);
// left
draw_sprite_part_ext(sprite, 0, 0, size, size, 1, xpos-size, ypos, 1, yend-ypos, c, 1);
// right
draw_sprite_part_ext(sprite, 0, size*2, size, size, 1, xend, ypos, 1, yend-ypos, c, 1);
// bottom
draw_sprite_part_ext(sprite, 0, size, size*2, 1, size, xpos, yend, xend-xpos, 1, c, 1);

// DRAW MIDDLE ------------------------------------------------------------------------------------
draw_sprite_part_ext(sprite, 0, size, size, 1, 1, xpos, ypos, xend-xpos, yend-ypos, c, 1);
