/**
 * Initialize Variables
 *
 * A bomb that is thrown by the Hero and bounces around for a bit then explodes (hero_attack_6).
 */

scr_movement_vars();
speed_x = 8;
speed_y = 6;
move_friction = 0.9;
move_friction_min = 1;
jump_bounce = 0.75;
jump_bounce_min = 1;

kill_time = 120;
kill_timer = 0;

key_jump_pressed = true;

// randomize movement speeds
speed_x = speed_x + (speed_x * random(2));
speed_y = speed_y + (speed_y * random(2));
max_velocity_x = speed_x;
max_velocity_y = speed_y + 180;

