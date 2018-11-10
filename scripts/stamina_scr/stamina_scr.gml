/// stamina_scr
// @arg time

if (run)
{
	running = true;
}
else running = false;

if (tired)
{
	running = false;
}

if (x_spd == 0 && y_spd == 0)
{
	running = false;
}

if (running && !tired)
{
	x_spd *= 2;
	y_spd *= 2;
	stamina += 1 / fitness;
	if (stamina >= energy)
	{
		tired = true;
	}
}
else stamina -= 0.1 * fitness;

if (tired)
{
	staminatimer += 1 / room_speed;
	if (staminatimer >= argument0)
	{
		tired = false;
		staminatimer = 0;
	}
}

stamina = clamp(stamina, 0, energy);