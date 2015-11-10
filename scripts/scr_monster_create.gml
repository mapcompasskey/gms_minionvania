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
attacking = false;

grounded = false;
facing_right = true;

// faux object inputs
key_left = false;
key_right = false;

// choose a random starting direction
rnd = irandom(3); // 0 - 3
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

