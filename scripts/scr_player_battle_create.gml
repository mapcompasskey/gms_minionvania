/**
 * Initialize Variables
 */

grav = 0.5;
hsp = 0;
vsp = 0;
max_vsp = 10;
movespeed = 8;
jumpspeed = 12;
knockback_movespeed = 2;
knockback_jumpspeed = -4;
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

