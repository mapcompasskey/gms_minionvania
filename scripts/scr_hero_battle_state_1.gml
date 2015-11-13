/**
 * State 1
 *
 * The Hero moves from one side of the screen to the another then idles for a moment.
 */

if (initialize_action_state_1)
{
    show_debug_message("attack state 1");
    initialize_action_state_1 = false;
    
    // if on the right side of the screen
    if (x > view_wview[0] / 2)
    {
        // move left
        key_left = true;
        key_right = false;
        
        // get the room's "left" position
        pnt = ds_map_find_value(room_positions, "left");
        target_x = ds_map_find_value(pnt, "x");
        target_y = ds_map_find_value(pnt, "y");
    }
    
    // else, if on the left side of the screen
    else
    {
        // move right
        key_left = false;
        key_right = true;
        
        // get the rooms "right" position
        pnt = ds_map_find_value(room_positions, "right");
        target_x = ds_map_find_value(pnt, "x");
        target_y = ds_map_find_value(pnt, "y");
    }
}

else
{
    var has_reached_target = false;
    
    // if moving left
    if (key_left)
    {
        // move left
        hsp = -movespeed;
        walking = true;
        
        // face left
        image_xscale = -1;
        facing_right = false;
        
        if (x <= target_x)
        {
            has_reached_target = true;
        }
    }
    
    // else, if moving right
    else if (key_right)
    {
        // move right
        hsp = movespeed;
        walking = true;
        
        // face right
        image_xscale = 1;
        facing_right = true;
        
        if (x >= target_x)
        {
            has_reached_target = true;
        }
    }
    
    if (has_reached_target)
    {
        // turn around
        image_xscale = -image_xscale;
        facing_right = !facing_right;
        
        // idle for a moment
        idle_time = 0.5;
        idling = true;
        
        // change action state
        change_action_state = true;
        
        // reset state initialization
        initialize_action_state_1 = true;
    }
}

