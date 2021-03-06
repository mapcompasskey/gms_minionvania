/**
 * Initialize Variables
 */

scr_movement_vars();
speed_x = 8;
speed_y = 12;

walking = false;
jumping = false;
falling = false;
crouching = false;
hurting = false;
dying = false;
attacking = false;
launching = false;

jumps = 0;
jumpsmax = 2;
hero_colliding = noone;

on_attack_cooldown = false;
attack_cooldown_time = 240;
attack_cooldown_timer = 0;

on_fart_cooldown = false;
fart_cooldown_time = 240;
fart_cooldown_timer = 0;

// inputs
key_left = false
key_right = false;
key_down = false;
key_fart = false;
key_jump_pressed = false;
key_jump_released = false;

