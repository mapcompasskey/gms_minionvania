/**
 * Is Farting
 */

if ( ! dying && ! hurting && ! attacking && ! launching)
{
    // if fart cooldown is active
    if (on_fart_cooldown)
    {
        fart_cooldown_timer += TICK;
        
        // if the timer has ended
        if (fart_cooldown_timer >= fart_cooldown_time)
        {
            fart_cooldown_timer = 0;
            on_fart_cooldown = false;
        }
    }
    
    // if not farting and fart key is pressed
    if ( ! on_fart_cooldown && key_fart)
    {
        on_fart_cooldown = true;
        instance_create(x, y, obj_player_fart);
    }
}

