// CHECK INVENTORY FOR EXISTING ITEM IF THE SAME TYPE ---------------------------------------------
for(var i = 0; i < inv_obj.maxitems; i ++)
{
	if (inv_obj.inventory[i,0] == argument0)
	{
		if (global.item[argument0,1] == true)
		{
			inv_obj.inventory[i,1] += argument1;
			return(1);
		}
	}
}
// THEN CHECK FOR EMPTY SLOT ----------------------------------------------------------------------
for(var i = 0; i < inv_obj.maxitems; i ++)
{
	if (inv_obj.inventory[i,0] == 0)
	{
		inv_obj.inventory[i,0] = argument0;
		inv_obj.inventory[i,1] = argument1;
		inv_obj.inventory[i,2] = argument2;
		return(1);
	}
}
return(0);