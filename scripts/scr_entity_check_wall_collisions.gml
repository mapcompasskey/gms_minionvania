/**
 * Check for Collisions Against Walls
 */

// used by NPCs to turn around
turn_around = false;

// check horizontal collision
if (place_meeting(x + mx, y, obj_wall))
{
    temp_mx = 0;
    while ( ! place_meeting(x + temp_mx + sign(mx), y, obj_wall))
    {
        temp_mx += sign(mx);
    }
    mx = temp_mx;
    //last_velocity_x = velocity_x;
    velocity_x = 0;
    turn_around = true;
}

// check vertical collision
if (place_meeting(x + mx, y + my, obj_wall))
{
    temp_my = 0;
    while ( ! place_meeting(x + mx, y + temp_my + sign(my), obj_wall))
    {
        temp_my += sign(my);
    }
    my = temp_my;
    //last_velocity_y = velocity_y;
    velocity_y = 0;
}

