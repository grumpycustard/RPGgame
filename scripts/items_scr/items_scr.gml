/* ITEM ARRAY -------------------------------------------------------------------------------------
	0 = Item name
	1 = is item stackable? Use weight/size of item to decide
	2 = Item identifier number
		0 = edible
	
	IF ITEM IS EDIBLE:
	3 = How much hunger does item restore
	4 = How much thirst does item restore
	5 = How much energy does item restore
	6 = How much stamina does item restore


*/

global.item[0,0] = "Dummy item";
global.item[0,1] = false;
global.item[0,2] = -1;
global.item[0,3] = 0;
global.item[0,4] = 0;
global.item[0,5] = 0;
global.item[0,6] = 0;

global.item[1,0] = "Canned food";
global.item[1,1] = true;
global.item[1,2] = 0;
global.item[1,3] = 50;
global.item[1,4] = 0;
global.item[1,5] = 10;
global.item[1,6] = 0;

global.item[2,0] = "Crisps";
global.item[2,1] = true;
global.item[2,2] = 0;
global.item[2,3] = 10;
global.item[2,4] = 0;
global.item[2,5] = 0;
global.item[2,6] = 10;

global.item[3,0] = "Snack bar";
global.item[3,1] = true;
global.item[3,2] = 0;
global.item[3,3] = 20;
global.item[3,4] = 0;
global.item[3,5] = 5;
global.item[3,6] = 15;

global.item[4,0] = "Can of soda";
global.item[4,1] = true;
global.item[4,2] = 0;
global.item[4,3] = 0;
global.item[4,4] = 25;
global.item[4,5] = 5;
global.item[4,6] = 60;

global.item[5,0] = "Bottle of water";
global.item[5,1] = true;
global.item[5,2] = 0;
global.item[5,3] = 0;
global.item[5,4] = 50;
global.item[5,5] = 0;
global.item[5,6] = 5;
