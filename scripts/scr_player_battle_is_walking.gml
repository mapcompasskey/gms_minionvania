/**
 * Is Moving
 */

if ( ! dying && ! hurting && ! crouching && ! attacking)
{    
    if (key_left)
    {
        //hsp = -movespeed;
        velocity_x = -speed_x;
        walking = true;
    }
    else if (key_right)
    {
        //hsp = movespeed;
        velocity_x = speed_x;
        walking = true;
    }
    else
    {
        velocity_x = 0;
        walking = false;
    }
}

