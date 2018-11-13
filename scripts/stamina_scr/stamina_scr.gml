/// stamina_scr
// @arg time
if (run)
{
	running = true;
}
	
if (x_spd = 0 && y_spd == 0) || (tired) || (energy == 0)
{	
	running = false;
}

if (running)
{
	x_spd *= 2;
	y_spd *= 2;
	stamina += 0.5 / fitness;
	if (stamina >= energy)
	{
		tired = true;
	}
}
else stamina -= 0.1 * fitness;

if (tired) && (energy > 0)
{
	staminatimer += 1 / room_speed;
	if (staminatimer >= argument0)
	{
		tired = false;
		staminatimer = 0;
	}
}

stamina = clamp(stamina, 0, energy);