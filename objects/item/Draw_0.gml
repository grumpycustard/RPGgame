draw_self();

if (closest)
{
	draw_text(x+10, y-8, string(global.item[image_index,0]));
}

if (distance_to_object(player) < 100)
{
	draw_sprite(grounditemhighlight_spr, image_index, x, y);
}