// GET INPUTS -------------------------------------------------------------------------------------
inputs_scr();

// SET PLAYER MOVEMENT DIRECTION AND SPEED --------------------------------------------------------
var x_spd = (right - left);
var y_spd = (down - up);

if (x_spd != 0) && (y_spd != 0)
{
	movespd = movediagonal;
}
else movespd = movestraight;

if (y_spd < 0) angle = 1;
if (y_spd > 0) angle = 3;
if (x_spd < 0) angle = 2;
if (x_spd > 0) angle = 0;

// MOVE PLAYER OBJECT -----------------------------------------------------------------------------
x += (x_spd * movespd);
y += (y_spd * movespd);

// ANIMATION --------------------------------------------------------------------------------------
sprite_index = anim[angle];