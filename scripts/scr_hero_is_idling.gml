/**
 * Is Idling
 */

if (idling)
{
    // stop moving
    walking = false;
    velocity_x = 0;
    
    // can't be attacked by the player
    can_be_attacked = false;
    
    // if the timer has ended
    idle_timer += TICK;
    if (idle_timer >= idle_time)
    {
        idle_timer = 0;
        idling = false;
        can_be_attacked = true;
    }
}

