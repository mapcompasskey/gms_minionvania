/**
 * Is Moving
 */

if ( ! dying && ! hurting && ! attacking)
{    
    if (key_left)
    {
        velocity_x = -speed_x;
        walking = true;
    }
    else if (key_right)
    {
        velocity_x = speed_x;
        walking = true;
    }
}

