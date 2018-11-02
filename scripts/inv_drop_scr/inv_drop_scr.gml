var slot = inv_obj.selected;

if (inv_obj.inventory[slot,0] > 0)
{
	// create item dropped
	var i = instance_create_layer(player.x - 8 + irandom(8), player.y + 4 - irandom(8), "instances", item);
	// set items image index
	i.image_index = inv_obj.inventory[slot,0];
	
	// remove item from inventory
	inv_obj.inventory[slot,1] --;
	
	if (inv_obj.inventory[slot,1] == 0)
	{
		inv_obj.inventory[slot,0] = 0;
		return(1);
	}
}
return(0);