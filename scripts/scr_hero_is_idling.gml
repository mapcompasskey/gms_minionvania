/**
 * Is Idling
 */

if (idling)
{
    idle_timer += delta_time;
    can_be_attacked = false;
    
    // if the timer has ended
    if (idle_timer >= (idle_time * 1000000))
    {
        idle_timer = 0;
        idling = false;
        can_be_attacked = true;
    }
}

