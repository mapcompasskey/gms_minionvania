/**
 * State 1
 *
 * The Hero moves from one side of the screen to the other then idles for a moment.
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
    // if moving left
    if (key_left)
    {
        facing = LEFT;
        walking = true;
        velocity_x = speed_x;
    }
    
    // else, if moving right
    else if (key_right)
    {
        facing = RIGHT;
        walking = true;
        velocity_x = speed_x;
    }
    
    // if within reach of the target
    if (point_distance(target_x, target_y, x, y) < 5)
    {
        // turn around
        if (facing == LEFT)
        {
            facing = RIGHT;
        }
        else if (facing == RIGHT)
        {
            facing = LEFT;
        }
        
        // stop moving
        walking = false;
        velocity_x = 0;
        
        // idle for a moment
        idle_time = 30;
        idling = true;
        
        // change action state
        change_action_state = true;
        
        // reset state initialization
        initialize_action_state_1 = true;
    }
    
    velocity_x = velocity_x * facing;
}

