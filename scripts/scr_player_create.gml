/**
 * Initialize Variables
 */

grav = 0.5;
hsp = 0;
vsp = 0;
max_vsp = 10;
movespeed = 8;
jumps = 0;
jumpsmax = 2;
jumpspeed = 12;

walking = false;
jumping = false;
falling = false;
crouching = false;
hurting = false;
dying = false;
attacking = false;

hero_touching = -1;
grounded = false;
facing_right = true;

// inputs
key_left = false
key_right = false;
key_down = false;
key_jump_pressed = false;
key_jump_released = false;

