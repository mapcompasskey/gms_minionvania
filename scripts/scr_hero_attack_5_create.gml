/**
 * Initialize Variables
 */

scr_movement_vars();
speed_x = 8;
speed_y = 6;

move_friction = 0.1;
move_friction_min = 2;
jump_bounce = 0.3;
jump_bounce_min = 2;

idling = false;
jumping = false;

grounded = false;
facing_right = true;

kill_time = 2;
kill_timer = 0;

// randomize movement speeds
speed_x = speed_x + (speed_x * random(2));
speed_y = speed_y + (speed_y * random(2));
max_velocity_x = speed_x;
max_velocity_y = speed_y + 180;

