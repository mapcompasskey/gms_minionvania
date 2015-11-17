/**
 * Is Moving
 */

if ( ! dying && ! hurting && ! crouching && ! attacking)
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
    else
    {
        velocity_x = 0;
        walking = false;
    }
}

