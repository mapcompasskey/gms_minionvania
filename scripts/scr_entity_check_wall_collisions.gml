/**
 * Check for Collisions Against Walls
 */

// used by NPCs to turn around
turn_around = false;

// if horizontal collision
if (place_meeting(x + hsp, y, obj_wall))
{
    while ( ! place_meeting(x + sign(hsp), y, obj_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
    turn_around = true;
}

// if vertical collision
if (place_meeting(x + hsp, y + vsp, obj_wall))
{
    while ( ! place_meeting(x + hsp, y + sign(vsp), obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}

