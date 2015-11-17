/**
 * Is Idling
 */

if (idling)
{
    idle_timer += TICK;
    can_be_attacked = false;
    
    // if the timer has ended
    if (idle_timer >= idle_time)
    {
        idle_timer = 0;
        idling = false;
        can_be_attacked = true;
    }
}

