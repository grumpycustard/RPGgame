// HORIZONTAL COLLISION ---------------------------------------------------------------------------
if (place_meeting(x + x_spd, y, blocker))
{
	while (!place_meeting(x + (sign(x_spd)), y, blocker))
	{
		x += (sign(x_spd));
	}
	x_spd = 0;
}
// set horizontal movement
x += x_spd;

// VERTICAL COLLISION -----------------------------------------------------------------------------
if (place_meeting(x, y + y_spd, blocker))
{
	while (!place_meeting(x, y + (sign(y_spd)), blocker))
	{
		y += (sign(y_spd));
	}
	y_spd = 0;
}
// set vertical movement
y += y_spd;