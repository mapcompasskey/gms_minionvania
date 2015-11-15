/**
 * Initialize Variables
 */

grav = 0.5;
hsp = 0;
vsp = 0;
max_vsp = 10;
movespeed = 8;
jumpspeed = 6;
move_friction = 0.1;
move_friction_min = 0.05;
jump_bounce = 0.3;
jump_bounce_min = 0.2;

idling = false;
jumping = false;

grounded = false;
facing_right = true;

kill_time = 2;
kill_timer = 0;

// randomize movement speeds
movespeed = movespeed + (movespeed * random(2));
jumpspeed = jumpspeed + (jumpspeed * random(2));

