randomize();
closest = false;

item_id = irandom(sprite_get_number(item_spr)-1);
while(item_id <= 0)
{
	item_id = irandom(sprite_get_number(item_spr)-1);
}

image_speed = 0;
image_index = item_id;
amount = 1;
durability = irandom_range(25, 100);
loaded = 0;