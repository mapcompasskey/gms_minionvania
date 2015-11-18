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
            //var origin_x, origin_y, target_x, target_y, hypotenuse, duration;
            
            origin_x = x;
            origin_y = bbox_bottom;
            
            target_x = mouse_x;
            target_y = mouse_y;
            
            //hypotenuse = point_distance(origin_x, origin_y, target_x, target_y);
            //duration = hypotenuse / room_speed * 30;
            //if (hypotenuse < 200) duration = 30;
            //show_debug_message(string(hypotenuse) + ", " + string(duration));
            
            duration = 60;
            
            velocity_x = (target_x - origin_x) / duration;
            velocity_y = (target_y + 0.5 * -GRAV * duration * duration - origin_y) / duration;
            
            grounded = false;
            launching = true;
        }
    }
    
    if (grounded && launching)
    {
        launching = false;
    }
}

