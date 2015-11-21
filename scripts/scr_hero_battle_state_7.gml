/**
 * State 7
 *
 * Jump onto the Player.
 */

if (initialize_action_state_7)
{
    show_debug_message("attack state 7");
    initialize_action_state_7 = false;
    
    // find the Player
    player = instance_find(obj_player_battle, 0);
    if (player)
    {
        var origin_x, origin_y, duration;
        //var origin_x, origin_y, target_x, target_y, hypotenuse, duration;
        
        origin_x = x;
        origin_y = bbox_bottom;
        
        target_x = player.x;
        target_y = player.y;
        
        //hypotenuse = point_distance(origin_x, origin_y, target_x, target_y);
        //duration = hypotenuse / room_speed * 30;
        //if (hypotenuse < 200) duration = 30;
        //show_debug_message(string(hypotenuse) + ", " + string(duration));
        
        duration = 60;
        
        velocity_x = (target_x - origin_x) / duration;
        velocity_y = (target_y + 0.5 * -GRAV * duration * duration - origin_y) / duration;
        
        // update state
        jumping = true;
        grounded = false;
        
        // update sprite
        image_speed = 0;
        image_index = 1;
    }
}

else
{
    // if falling, update object sprite
    if (velocity_y > 0)
    {
        image_index = 0;
    }
    
    // if landed after jumping
    if (grounded && jumping)
    {
        jumping = false;
        
        // update sprite
        image_speed = 0;
        image_index = 0;
        
        // stop moving
        velocity_x = 0;
        velocity_y = 0;
        
        // idle for a moment
        idle_time = 30;
        idling = true;
        
        // change action state
        change_action_state = true;
        
        // reset state initialization
        initialize_action_state_7 = true;
    }
}

