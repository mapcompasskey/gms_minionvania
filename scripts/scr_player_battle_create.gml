/**
 * Initialize Variables
 */

scr_movement_vars();
speed_x = 60 * 8;
speed_y = 60 * 10;
max_velocity_x = speed_x;
max_velocity_y = speed_y + 160;

knockback_speed_x = 100;
knockback_speed_y = 100;
knockback_direction = 1;

walking = false;
jumping = false;
falling = false;
crouching = false;
hurting = false;
recovering = false;
dying = false;
attacking = false;

grounded = false;
facing_right = true;
recover_time = 1;
recover_timer = 0;

// inputs
key_left = false
key_right = false;
key_down = false;
key_jump_pressed = false;
key_jump_released = false;

