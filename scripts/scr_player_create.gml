/**
 * Initialize Variables
 */

scr_movement_vars();
speed_x = 60 * 8;
speed_y = 60 * 10;
max_velocity_x = speed_x;
max_velocity_y = speed_y + 180;

walking = false;
jumping = false;
falling = false;
crouching = false;
hurting = false;
dying = false;
attacking = false;

jumps = 0;
jumpsmax = 2;
hero_touching = -1;
grounded = false;
facing_right = true;
on_attack_cooldown = false;
attack_cooldown_time = 4;
attack_cooldown_timer = 0;

// inputs
key_left = false
key_right = false;
key_down = false;
key_jump_pressed = false;
key_jump_released = false;

