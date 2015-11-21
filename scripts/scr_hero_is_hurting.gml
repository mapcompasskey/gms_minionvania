/**
 * Is Taking Damage and Recovering
 *
 */

if ( ! recovering)
{
    // if colliding with spikes
    spikes = instance_place(x, y, obj_spikes);
    if (spikes)
    {
        // lower health
        HERO_HEALTH -= 30;
        
        // apply knockback
        if (facing == RIGHT)
        {
            velocity_x = -4;
        }
        else if (facing == LEFT)
        {
            velocity_x = 4;
        }
        velocity_y = -8;
        
        // update state
        hurting = true;
        recovering = true;
        can_be_attacked = false;
    }
}

if (hurting && grounded)
{
    hurting = false;
}

if (recovering)
{
    image_alpha = 0.5;

    // if the timer has ended
    recover_timer += TICK;
    if (recover_timer >= recover_time)
    {
        image_alpha = 1;
        recover_timer = 0;
        recovering = false;
        can_be_attacked = true;
    }
}

