// RELOAD EQUIPPED RANGED WEAPON ------------------------------------------------------------------
while(equip[7,2] < global.item[equip[7,0], 4])
{
	var slot = inv_check_scr(equip[7,0] + 1);
	if (slot != -1)
	{
		equip[7,2] ++;
		inv_dump_scr(slot);
	}
	else break;
}

