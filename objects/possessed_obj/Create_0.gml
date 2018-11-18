// INHERIT PARENT EVENT ---------------------------------------------------------------------------
event_inherited();

// INITIALISE VARIABLES ---------------------------------------------------------------------------
walkspd = 1;
runspd = 3;
movetimer = 0;
targetx = x;
targety = y;
wander_range = 500;
ind = 0;
alert_dist = 100;
escape_dist = 200;

speed = 0;
direction = 270;

// set up motion planning
mp_potential_settings(45,10,3,1);

// ANIMATION ARRAYS -------------------------------------------------------------------------------
// idle animation
idle[0] = pss_idle_right;
idle[1] = pss_idle_up;
idle[2] = pss_idle_left;
idle[3] = pss_idle_down;
// walk animation
walk[0] = pss_walk_right;
walk[1] = pss_walk_up;
walk[2] = pss_walk_left;
walk[3] = pss_walk_down;
// run animation
run[0] = pss_run_right;
run[1] = pss_run_up;
run[2] = pss_run_left;
run[3] = pss_run_down;
