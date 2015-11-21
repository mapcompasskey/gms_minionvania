/**
 * Is Fleeing
 */

if ( ! dying && ! hurting && ! attacking)
{
    // if fleeing and not in the air
    if (fleeing && ! jumping)
    {
        velocity_x = flee_speed_x * facing;
        
        // if the timer has ended
        flee_timer += TICK;
        if (flee_timer >= flee_time)
        {
            flee_timer = 0;
            fleeing = false;
            can_be_triggered = false;
        }
    }
    
    if ( ! fleeing)
    {
        // if colliding with the Player Fart object
        var player_fart = instance_place(x, y, obj_player_fart);
        if (player_fart)
        {
            fleeing = true;
            can_be_triggered = true;
        }
    }
}

