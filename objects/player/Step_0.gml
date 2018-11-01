// GET INPUTS -------------------------------------------------------------------------------------
inputs_scr();

if (state = states.normal)
{
	// SET PLAYER MOVEMENT DIRECTION AND SPEED --------------------------------------------------------
	x_spd = (right - left) * movespd;
	y_spd = (down - up) * movespd;

	if (x_spd != 0) && (y_spd != 0)
	{
		movespd = movediagonal;
	}
	else movespd = movestraight;

	if (run)
	{
		movespd *= 2;
	}

	if (y_spd < 0) angle = 1;
	if (y_spd > 0) angle = 3;
	if (x_spd < 0) angle = 2;
	if (x_spd > 0) angle = 0;

	// COLLISION AND MOVEMENT -------------------------------------------------------------------------
	collision_scr();

	// ANIMATION --------------------------------------------------------------------------------------
	sprite_index = anim[angle];
	if (x_spd == 0 && y_spd == 0)
	{
		image_speed = 0;
		image_index = 0;
	}
	else if (run)
	{
		image_speed = 1.2;
	}
	else
	{
		image_speed = 0.6;
	}
}