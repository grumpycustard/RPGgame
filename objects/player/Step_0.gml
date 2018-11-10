// SET PAUSE STATE --------------------------------------------------------------------------------
if (showinv) 
{
	image_speed = 0;
	exit;
}

// clamp player stat values
hunger = clamp(hunger, 0, 100);
thirst = clamp(thirst, 0, 100);
energy = clamp(energy, 0, 100);
bloodloss = clamp(bloodloss, 0, 100);

// GET INPUTS -------------------------------------------------------------------------------------
inputs_scr();

if (state = states.normal)
{
	// CONTROL PLAYER HUNGER, THIRST, ENERGY AND HEALING ------------------------------------------
	hunger -= hungerrate*gamespeed;
	thirst -= thirstrate*gamespeed;
	energy -= energyrate*gamespeed;
	if (bloodloss > 0 && !effect[0,1])
	{
		bloodloss -= healrate*gamespeed;
	}
	
	// PICK UP ITEMS ------------------------------------------------------------------------------
	pickup = instance_nearest(x, y, item);
	with (item)
	{
		if (id == player.pickup && distance_to_object(player) < 10)
		{
			closest = true;
			if (player.action)
			{
				if (inv_add_scr(player.pickup.image_index) == 1)
				{
					instance_destroy(player.pickup);
				}
			}
		}
		else closest = false;
	}
	
	// SET PLAYER MOVEMENT DIRECTION AND SPEED ----------------------------------------------------
	x_spd = (right - left) * movespd;
	y_spd = (down - up) * movespd;

	if (x_spd != 0) && (y_spd != 0)
	{
		movespd = movediagonal;
	}
	else movespd = movestraight;

	// PLAYER RUNNNING AND STAMINA ----------------------------------------------------------------
	stamina_scr(stamina - (energy - (energy / 4)));
	
	if (y_spd < 0) angle = 1;
	if (y_spd > 0) angle = 3;
	if (x_spd < 0) angle = 2;
	if (x_spd > 0) angle = 0;

	// COLLISION AND MOVEMENT ---------------------------------------------------------------------
	collision_scr();

	// ANIMATION ----------------------------------------------------------------------------------
	sprite_index = anim[angle];
	if (x_spd == 0 && y_spd == 0)
	{
		image_speed = 0;
		image_index = 0;
	}
	else if (running)
	{
		image_speed = 0.8;
	}
	else
	{
		image_speed = 0.5;
	}
}

if (state = states.sleep)
{
	// CONTROL PLAYER HUNGER, THIRST, ENERGY AND HEALING ------------------------------------------
	hunger -= hungerrate*gamespeed;
	thirst -= thirstrate*gamespeed;
	energy += (energyrate * 4)*gamespeed;
	if (bloodloss < 100 && !effect[0,1])
	{
		bloodloss += healrate*gamespeed;
	}
	
	if (energy >= 100) || (action)
	{
		state = states.normal;
	}
}
