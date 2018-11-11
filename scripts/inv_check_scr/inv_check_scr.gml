for(var i = 0; i < inv_obj.maxitems; i ++)
{
	if (inv_obj.inventory[i,0] == argument0)
	{
		return(i);
	}
}
return(-1);