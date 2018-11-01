invwidth = 6;
invheight = 4;
invsize = invwidth*invheight;
maxitems = player.bag * invwidth;

items_scr();

for (var i = 0; i < invsize; i ++)
{
	inventory[i,0] = 0;
	inventory[i,1] = 0;
}