/**
 * On End of Update
 */

// if being carried by the Player
if (player_carrying != noone)
{
    x = player_carrying.x - (sprite_width / 2);
    y = player_carrying.bbox_top - sprite_height;
    
    // if the action key was pressed
    if (key_action)
    {
        // point in the same direction as the Player
        facing_right = player_carrying.facing_right;
        
        // throw the object
        velocity_x = -speed_x;
        if (facing_right)
        {
            velocity_x = speed_x;
        }
        velocity_y = -speed_y;
        grounded = false;
        
        // this object is no longer being carried
        player_carrying = noone;
        PLAYER_ITEM = noone;
        
        // apply physics
        idling = false;
    }
}

// if the Player isn't carrying an item and this object is idle
else if (PLAYER_ITEM == noone && idling)
{
    // if colliding with the Player and the action key was pressed
    if (player_colliding != noone && key_action)
    {
        PLAYER_ITEM = id;
        player_carrying = player_colliding;
    }
}

