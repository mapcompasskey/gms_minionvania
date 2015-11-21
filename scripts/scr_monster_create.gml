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
fleeing = false;

damage = 30;
can_be_triggered = false;
flee_speed_x = 4;
base_speed_x = speed_x;

flee_time = 240;
flee_timer = 0;

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

