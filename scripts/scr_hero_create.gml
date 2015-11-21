/**
 * Initialize Variables
 */

scr_movement_vars();
speed_x = 2;
speed_y = 0;

walking = false;
jumping = false;
falling = false;
hurting = false;
dying = false;
attacking = false;
idling = false;
recovering = false;

monster_touching = -1;
can_be_attacked = true;
base_speed_x = speed_x;
target_x = 0;
target_y = 0;
jump_to_target = false;

attack_time = 60;
attack_timer = 0;

recover_time = 60;
recover_timer = 0;

idle_time = 30;
idle_timer = 0;

// faux object inputs
key_left = false;
key_right = false;
key_jump_pressed = false;

// set the hero's health
max_health = 100;
HERO_HEALTH = max_health;

