/**
 * Initialize Variables
 */

scr_movement_vars();
speed_x = 8;
speed_y = 12;
max_velocity_x = 8;
max_velocity_y = 14;

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
recover_time = 60;
recover_timer = 0;
knockback_speed_x = 8;
knockback_speed_y = 8;

attack1 = -1;
can_attack = true;

// inputs
key_left = false
key_right = false;
key_down = false;
key_jump_pressed = false;
key_jump_released = false;

