/**
 * Is Launching
 */

if ( ! dying && ! hurting && ! crouching && ! jumping && ! attacking)
{
    if ( ! launching)
    {
        if (mouse_check_button_released(mb_left))
        {
            var origin_x, origin_y, target_x, target_y, duration;
            
            origin_x = x;
            origin_y = bbox_bottom;
            
            target_x = mouse_x;
            target_y = mouse_y;
            
            duration = 60;
            
            velocity_x = (target_x - origin_x) / duration;
            velocity_y = (target_y + 0.5 * -GRAV * duration * duration - origin_y) / duration;
            
            grounded = false;
            launching = true;
            
            facing = RIGHT;
            if (velocity_x < 0)
            {
                facing = LEFT;
            }
        }
    }
    
    if (grounded && launching)
    {
        launching = false;
    }
}

