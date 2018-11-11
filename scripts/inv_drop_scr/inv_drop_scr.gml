var slot = inv_obj.menu_slot;
var it = global.item[inv_obj.inventory[slot,0],1];

if (it == 1) // if item is stackable
{
	if (inv_obj.inventory[slot,0] > 0)
	{
		// remove item from inventory
		inv_obj.inventory[slot,1] --;
		inv_obj.inventory[slot,2] = 0;
	
		if (inv_obj.inventory[slot,1] <= 0)
		{
			inv_obj.inventory[slot,0] = 0;
			return(1);
		}
	}
}
else // if item is not stackable
{
	if (inv_obj.inventory[slot,0] > 0)
	{
		inv_obj.inventory[slot,0] = 0;
		inv_obj.inventory[slot,1] = 0;
		inv_obj.inventory[slot,2] = 0;
	}
}
return(0);