var slot = inv_obj.menu_slot;

if (inv_obj.inventory[slot,0] > 0)
{
	// remove item from inventory
	inv_obj.inventory[slot,1] --;
	
	if (inv_obj.inventory[slot,1] == 0)
	{
		inv_obj.inventory[slot,0] = 0;
		return(1);
	}
}
return(0);