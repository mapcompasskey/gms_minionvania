/**
 * Is Idling
 */

if (idling)
{
    // if the timer has ended
    idle_timer += TICK;
    if (idle_timer >= idle_time)
    {
        idle_timer = 0;
        idling = false;
    }
}

