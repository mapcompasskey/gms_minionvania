/**
 * Is Moving
 */

if ( ! dying && ! hurting && ! attacking && ! idling && ! hurting)
{    
    if (key_left)
    {
        facing = LEFT;
        walking = true;
        velocity_x = speed_x;
    }
    else if (key_right)
    {
        facing = RIGHT;
        walking = true;
        velocity_x = speed_x;
    }
    else
    {
        walking = false;
        velocity_x = 0;
    }
    
    velocity_x = speed_x * facing;
}

