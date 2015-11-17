/**
 * Initialize Variables
 */

scr_movement_vars();
speed_x = 60;
max_velocity_x = speed_x;

walking = false;
falling = false;
hurting = false;
dying = false;
attacking = false;

damage = 30;
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

