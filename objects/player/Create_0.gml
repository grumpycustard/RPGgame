// PLAYER STATES ----------------------------------------------------------------------------------
enum states
{
	normal,
	sleep,
}

// PLAYER VARIABLES -------------------------------------------------------------------------------
movespd = 0;
angle = 0;
x_spd = 0;
y_spd = 0;

movediagonal = 3;
movestraight = 4;

// ANIMATION ARRAY --------------------------------------------------------------------------------
anim[0] = walk_right;
anim[1] = walk_up;
anim[2] = walk_left;
anim[3] = walk_down;

// SET INITIAL STATE ------------------------------------------------------------------------------
state = states.normal;