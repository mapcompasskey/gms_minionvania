/**
 * Initialize Variables
 */

scr_movement_vars();
speed_x = 4;
speed_y = 8;
move_friction = 0.9;
move_friction_min = 1;
jump_bounce = 0.5;
jump_bounce_min = 1;

idling = true;

grounded = false;
facing_right = true;

player_colliding = noone;
player_carrying = noone;

