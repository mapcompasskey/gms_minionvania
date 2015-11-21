/**
 * On Update
 */

// check player input
key_action = keyboard_check_pressed(ord("X"));

// is colliding with the Player
player_colliding = instance_place(x, y, obj_player);

// if the Player is carrying an item
if (PLAYER_ITEM != noone)
{
    // if the item is a key
    if (object_get_name(PLAYER_ITEM.object_index) == "obj_player_key")
    {
        // if the Player is colliding with this object and presed the action key
        if (player_colliding != noone && key_action)
        {
            // destroy the item
            with (PLAYER_ITEM)
            {
                instance_destroy();
            }
            PLAYER_ITEM = noone;
            
            // destroy the display message
            if (display_message != noone)
            {
                with (display_message)
                {
                    instance_destroy();
                }
            }
            
            // if this keyhole has an owner
            if (owner != noone)
            {
                owner.active = true;
            }
            
            // destroy this object
            instance_destroy();
        }
    }
}

// if the Player is carrying an item and is colliding with this object
if (PLAYER_ITEM != noone && player_colliding != noone)
{
    // if the item is a key
    if (object_get_name(PLAYER_ITEM.object_index) == "obj_player_key")
    {
        // if the message doesn't exist
        if (display_message == noone)
        {
            var pos_x, pos_y;
            pos_x = x + sprite_width / 2;
            pos_y = y - TILE_SIZE;
            
            // create the display message object
            display_message = instance_create(pos_x, pos_y, obj_display_message);
            display_message.str_text = "USE KEY";
        }
    }
}

// if not colliding with the Player and the message exist
if (player_colliding == noone && display_message != noone)
{
    // destroy the message
    with (display_message)
    {
        instance_destroy();
    }
    display_message = noone;
}

