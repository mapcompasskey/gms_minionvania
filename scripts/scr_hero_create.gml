/**
 * Initialize Variables
 */

scr_movement_vars();
speed_x = 60 * 2;
speed_y = 0;
max_velocity_x = speed_x;
max_velocity_y = 60 * 10;

walking = false;
jumping = false;
falling = false;
hurting = false;
dying = false;
attacking = false;
idling = false;

grounded = false;
facing_right = true;
monster_touching = -1;
can_be_attacked = true;

attack_time = 1;
attack_timer = 0;

idle_time = 0;
idle_timer = 0;

// faux object inputs
key_left = false;
key_right = false;
key_jump_pressed = false;

// set the hero's health
max_health = 100;
global.hero_health = max_health;

