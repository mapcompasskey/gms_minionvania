/**
 * On Update
 */

// check player input
key_action = keyboard_check_pressed(ord("X"));

// if the player is carrying this item and the action key was pressed
if (PLAYER_ITEM == id && key_action)
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

// else, if the Player isn't carrying an item and this object is idle
else if (PLAYER_ITEM == noone && idling)
{
    // if colliding with the Player and the action key was pressed
    player_colliding = instance_place(x, y, obj_player);
    if (player_colliding && key_action)
    {
        PLAYER_ITEM = id;
        player_carrying = player_colliding;
    }
}

// if not being carried and is not idle, apply normal physics
if ( ! player_carrying && ! idling)
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

