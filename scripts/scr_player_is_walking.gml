/**
 * Is Moving
 */

if ( ! dying && ! hurting && ! crouching)
{    
    if (key_left)
    {
        hsp = -movespeed;
        walking = true;
    }
    else if (key_right)
    {
        hsp = movespeed;
        walking = true;
    }
}
