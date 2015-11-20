/**
 * On Update
 */

// check player input
key_action = keyboard_check_pressed(ord("X"));

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

