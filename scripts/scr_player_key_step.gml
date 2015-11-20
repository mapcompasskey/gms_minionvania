/**
 * On Update
 */

// check player input
key_action = keyboard_check_pressed(ord("X"));

// is colliding with the player
player_colliding = instance_place(x, y, obj_player);

// if the Player isn't carrying an item, is colliding with this object, and is idle
if (PLAYER_ITEM == noone && player_colliding != noone && idling)
{
    // if the message doesn't exist
    if (display_message == noone)
    {
        var pos_x, pos_y;
        pos_x = x + sprite_width / 2;
        pos_y = y - TILE_SIZE;
        
        // create the display message object
        display_message = instance_create(pos_x, pos_y, obj_display_message);
        display_message.str_text = "PICK UP KEY";
    }
}

// if no longer colliding with the Player and the message exist
if (player_colliding == noone && display_message != noone)
{
    // destroy the message
    with (display_message)
    {
        instance_destroy();
    }
    display_message = noone;
}

// if not being carried and is not idle, apply normal physics
if (player_carrying == noone && ! idling)
{
    // is object standing on a wall
    grounded = place_meeting(x, y + 1, obj_wall);
    
    // update movement speeds
    scr_movement_update();
    
    // check for collisions
    scr_entity_check_wall_collisions();
    
    if (turn_around)
    {
        facing_right = !facing_right;
        velocity_x = last_velocity_x * -1;
    }
    
    // update object position
    x += mx;
    y += my;
    
    // if the object has stopped moving
    if (abs(velocity_x) < 0.01 && abs(velocity_y) < 0.01)
    {
        idling = true;
    }
}

