// CONTROL GAME TIME ------------------------------------------------------------------------------
// speed up game if player is sleeping
if (keyboard_check_pressed(vk_left))
{
	if (gamespeed == normalgamespeed)
	{
		gamespeed = fastgamespeed;
	}
	else gamespeed = normalgamespeed;
}

// progress game time
time += gamespeed;
minutes = floor(time);
hours = floor(minutes/60);
days = floor(hours/24);

daytimer = (minutes - (days * 1440));