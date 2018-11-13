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
running = false;

movediagonal = 3;
movestraight = 4;

pickup = -1;

// PLAYER STATS -----------------------------------------------------------------------------------
hunger = 100;
thirst = 100;
energy = 100;
bloodloss = 0;

fitness = 1;
stamina = 0;
tired = false;
staminatimer = 0;

hungerrate = 0.06;
thirstrate = 0.1;
energyrate = 0.05;
healrate = 0.01;

// PLAYER INJURIES --------------------------------------------------------------------------------
effect[0,0] = "Bleeding";
effect[0,1] = false;
effect[1,0] = "Infection";
effect[1,1] = false;
effect[2,0] = "Fever";
effect[2,1] = false;
effect[3,0] = "Food Poisoning";
effect[3,1] = false;

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