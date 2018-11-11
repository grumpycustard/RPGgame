/* ITEM ARRAY -------------------------------------------------------------------------------------
	0 = Item name
	1 = is item stackable? Use weight/size of item to decide
	2 = Item identifier number
		0 = edible
		1 = wearable equipment
		2 = ammo
	
	IF ITEM IS EDIBLE (item identifier 0) ---------------------------------------------------------
	3 = How much hunger does item restore
	4 = How much thirst does item restore
	5 = How much energy does item restore
	6 = How much stamina does item restore
	
	IF ITEM IS EQUIPMENT (item identifier 1) ------------------------------------------------------
	3 = additional identifier
		0 = hat
		1 = body
		2 = legs
		3 = feet
		4 = overbody
		5 = melee weapon
		6 = bag
		7 = ranged weapon
		
	4 = warmth rating
	5 = armour rating
	6 = speed of wear
	
	if melee weapon
	6 = speed of wear
	
	if ranged weapon
	4 = ammo capacity
	6 = speed of wear
	
	if bag
	4 = bag type (either 2, 3 or 4)
	6 = speed of wear
	
	IF ITEM IS AMMO (item identifier 2) -----------------------------------------------------------
	3 = damage
	4 = shot delay in seconds
	5 = reload speed in seconds


*/

global.item[0,0] = "Dummy item";
global.item[0,1] = false;
global.item[0,2] = -1;
global.item[0,3] = 0;
global.item[0,4] = 0;
global.item[0,5] = 0;
global.item[0,6] = 0;

global.item[1,0] = "Canned food";
global.item[1,1] = false;
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
global.item[4,1] = false;
global.item[4,2] = 0;
global.item[4,3] = 0;
global.item[4,4] = 25;
global.item[4,5] = 5;
global.item[4,6] = 60;

global.item[5,0] = "Bottle of water";
global.item[5,1] = false;
global.item[5,2] = 0;
global.item[5,3] = 0;
global.item[5,4] = 50;
global.item[5,5] = 0;
global.item[5,6] = 5;

global.item[6,0] = "Wool hat";
global.item[6,1] = false;
global.item[6,2] = 1;
global.item[6,3] = 0;
global.item[6,4] = 2;
global.item[6,5] = 1;
global.item[6,6] = 2;

global.item[7,0] = "Wool sweater";
global.item[7,1] = false;
global.item[7,2] = 1;
global.item[7,3] = 1;
global.item[7,4] = 2;
global.item[7,5] = 1;
global.item[7,6] = 2;

global.item[8,0] = "Jeans";
global.item[8,1] = false;
global.item[8,2] = 1;
global.item[8,3] = 2;
global.item[8,4] = 2;
global.item[8,5] = 1;
global.item[8,6] = 1.5;

global.item[9,0] = "Work boots";
global.item[9,1] = false;
global.item[9,2] = 1;
global.item[9,3] = 3;
global.item[9,4] = 2;
global.item[9,5] = 1;
global.item[9,6] = 0.5;

global.item[10,0] = "Parka";
global.item[10,1] = false;
global.item[10,2] = 1;
global.item[10,3] = 4;
global.item[10,4] = 2;
global.item[10,5] = 1;
global.item[10,6] = 1;

global.item[11,0] = "Wood axe";
global.item[11,1] = false;
global.item[11,2] = 1;
global.item[11,3] = 5;
global.item[11,6] = 0.1;

global.item[12,0] = "School bag";
global.item[12,1] = false;
global.item[12,2] = 1;
global.item[12,3] = 6;
global.item[12,4] = 2;
global.item[12,6] = 0.5;

global.item[13,0] = "Pistol";
global.item[13,1] = false;
global.item[13,2] = 1;
global.item[13,3] = 7;
global.item[13,4] = 15;
global.item[13,6] = 0.5;

global.item[14,0] = "Pistol ammo";
global.item[14,1] = true;
global.item[14,2] = 2;
global.item[14,3] = 10;
global.item[14,4] = 0.6;
global.item[14,5] = 1;

