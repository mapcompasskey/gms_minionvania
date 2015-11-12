/**
 * Initialize Variables
 */

hp = 100;
grav = 0.5;
hsp = 0;
vsp = 0;
max_vsp = 10;
base_movespeed = 2;
movespeed = 2;
jumpspeed = 0;

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

