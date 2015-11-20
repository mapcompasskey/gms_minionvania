/**
 * On Update
 */

// check player input
key_action = keyboard_check_pressed(ord("X"));

// reset player
player_colliding = noone;

// if the Player is carrying an item
if (PLAYER_ITEM)
{
    // if the item is a key
    if (object_get_name(PLAYER_ITEM.object_index) == "obj_player_key")
    {
        // if the Player is colliding with this object and presed the action key
        player_colliding = instance_place(x, y, obj_player);
        if (player_colliding && key_action)
        {
            // destroy the item
            with (PLAYER_ITEM)
            {
                instance_destroy();
            }
            PLAYER_ITEM = noone;
            
            // destroy this object
            instance_destroy();
        }
    }
}

