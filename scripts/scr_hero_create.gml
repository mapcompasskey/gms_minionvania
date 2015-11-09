/**
 * Initialize Variables
 */

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

grounded = false;
facing_right = true;

// faux object inputs
key_left = false;
key_right = false;
key_jump_pressed = false;

// choose a random number between 0 - 3
rnd = irandom(3);
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

// trigger variables
isTriggered = false;
xJumpOrigin = 0;
yJumpOrigin = 0;
xJumpDestination = 0;
yJumpDestination = 0;


