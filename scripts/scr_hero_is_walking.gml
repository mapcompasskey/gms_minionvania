/**
 * Is Moving
 */

if ( ! dying && ! hurting && ! attacking && ! idling && ! hurting)
{    
    if (key_left)
    {
        walking = true;
        velocity_x = -speed_x;
    }
    else if (key_right)
    {
        walking = true;
        velocity_x = speed_x;
    }
    else
    {
        walking = false;
        velocity_x = 0;
    }
}

