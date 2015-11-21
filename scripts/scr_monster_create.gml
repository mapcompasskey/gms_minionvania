/**
 * Initialize Variables
 */

scr_movement_vars();
speed_x = 1;
speed_y = 0;

walking = false;
jumping = false;
falling = false;
hurting = false;
dying = false;
attacking = false;

damage = 30;
can_be_triggered = false;
base_speed_x = speed_x;

// faux object inputs
key_left = false;
key_right = false;
key_jump_pressed = false;

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

