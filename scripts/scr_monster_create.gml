/**
 * Initialize Variables
 */

grav = 0.5;
hsp = 0;
vsp = 0;
max_vsp = 10;
movespeed = 1;

walking = false;
falling = false;
hurting = false;
dying = false;

grounded = false;
facing_right = true;

// choose starting direction
key_left = false;
key_right = false;

// choose a random number between 0 - 3
rnd = irandom(3);
show_debug_message(rnd);
switch (rnd)
{
    case 0:
    case 1:
        key_left = true;
        break;
    
    case 2:
    case 3:
        key_right = true;
        break;
}

