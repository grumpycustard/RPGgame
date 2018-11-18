randomise();

// LOITER STATE -----------------------------------------------------------------------------------	
if (state == poss_state.loiter)
{
	ind = round(direction/90);
	if (ind > 3 || ind < 0) ind = 0;
	
	image_speed = 0.3;
	sprite_index = idle[ind];	
	
	movetimer += 1/room_speed;
	if (movetimer >= (1 + random(2)))
	{
		movetimer = 0;
		targetx = (x - (wander_range/2)) + irandom(wander_range);
		targety = (y - (wander_range/2)) + irandom(wander_range);
		
		while (place_meeting(targetx, targety, blocker) || targetx < 0 || targetx > room_width || targety < 0 || targety > room_height)
		{
			targetx = (x - (wander_range/2)) + irandom(wander_range);
			targety = (y - (wander_range/2)) + irandom(wander_range);
			if (targetx < 0) targetx = 0;
			if (targetx > room_width) targetx = room_width;
			if (targety < 0) targety = 0;
			if (targety > room_height) targety = room_height;
		}
		
		state = poss_state.wander;
	}
	if (distance_to_object(player) < alert_dist)
	{
		movetimer = 0;
		state = poss_state.alert;
	}
}

// WANDER STATE -----------------------------------------------------------------------------------
if (state == poss_state.wander)
{
	ind = round(direction/90);
	if (ind > 3 || ind < 0) ind = 0;
	
	image_speed = 0.5;
	sprite_index = walk[ind];	
	
	mp_potential_step_object(targetx, targety, walkspd, blocker);
	movetimer += 1/room_speed;
	if (x == targetx && y == targety) || movetimer > 2 + random(2)
	{
		movetimer = 0;
		state = poss_state.loiter;
	}
	if (distance_to_object(player) < alert_dist)
	{
		movetimer = 0;
		state = poss_state.alert;
	}
}

// ALERT STATE ------------------------------------------------------------------------------------
if (state == poss_state.alert)
{
	ind = round(direction/90);
	if (ind > 3 || ind < 0) ind = 0;
	
	image_speed = 0;
	image_index = 0;
	sprite_index = idle[ind];
	
	movetimer += 1/room_speed;
	if (movetimer > 1 + random(2))
	{
		state = poss_state.chase;
	}
	if (distance_to_object(player) > escape_dist)
	{
		movetimer = 0;
		state = poss_state.loiter;
	}
}

// CHASE STATE ------------------------------------------------------------------------------------
if (state == poss_state.chase)
{
	ind = round(direction/90);
	if (ind > 3 || ind < 0) ind = 0;
	
	image_speed = 0.8;
	sprite_index = run[ind];
	
	mp_potential_step_object(player.x, player.y, runspd, blocker);
	if (distance_to_object(player) > escape_dist)
	{
		state = poss_state.alert;
	}
}

// ATTACK STATE -----------------------------------------------------------------------------------
if (state == poss_state.attack)
{
	
}
