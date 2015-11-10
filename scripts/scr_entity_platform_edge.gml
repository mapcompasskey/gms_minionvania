/**
 * Check for Platform Edges
 */

// used by NPCs to turn around
turn_around = false;

if (grounded && walking)
{
    // if moving left and no wall 
    if (key_left && ! position_meeting(bbox_left - 1, bbox_bottom + 1, obj_wall))
    {
        turn_around = true;
    }
    // else, if moving right and no wall
    else if (key_right && ! position_meeting(bbox_right + 1, bbox_bottom + 1, obj_wall))
    {
        turn_around = true;
    }
}
