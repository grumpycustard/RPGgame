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

// PLAYER STATS -----------------------------------------------------------------------------------
hunger = 100;
thirst = 100;
energy = 100;

// ANIMATION ARRAY --------------------------------------------------------------------------------
anim[0] = walk_right;
anim[1] = walk_up;
anim[2] = walk_left;
anim[3] = walk_down;

// SET INITIAL STATE ------------------------------------------------------------------------------
state = states.normal;

// INITIALISE PLAYER INVENTORY --------------------------------------------------------------------
bag = 1;
showinv = false;

playerinv = instance_create_layer(0, 0, "inventory", inv_obj);