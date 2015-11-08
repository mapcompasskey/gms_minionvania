/**
 * End of Update
 */

/**
 * Is Colliding with Sloped Walls
 * /

// check horizontal collision with slopes (using precision mask)
if (place_meeting(x + hsp, y, obj_wall_slope))
{
    var yoffset = 0;
    var ysteps = abs(hsp * 1);
    var sign_temp = sign(hsp);
    
    // if hsp has switched signs, then there isn't an open space to move in to
    while (place_meeting(x + hsp, y + yoffset, obj_wall) && sign_temp == sign(hsp))
    {
        yoffset -= 1;
        
        // if an open vertical space couldn't be found
        if (yoffset < -ysteps)
        {
            // move back one horizontally and try again
            yoffset = 0;
            hsp -= sign(hsp);
        }
    }
    y += yoffset;
}

// if there is nothing below where the object will be
if ( ! place_meeting(x + hsp, y + 1, obj_wall))
{
    // check for slopes beneath the object to stick to and descend with
    var ysteps = abs(hsp * 1);
    if (place_meeting(x + hsp, y + ysteps, obj_wall_slope))
    {
        var yoffset = 0;
        
        while (place_meeting(x + hsp, y + ysteps + yoffset, obj_wall))
        {
            yoffset -= 1;
            
            if (yoffset < -ysteps)
            {
                ysteps = 0;
                yoffset = 0;
                break;
            }
        }
        y += ysteps + yoffset;
    }
}
*/

/**
 * Is Colliding with Platforms (or Moving Platform)
 * /

// check vertical collision only when falling
if (place_meeting(x, y + vsp, obj_platform) && sign(vsp) == 1)
{
    // if not already inside a platform
    if ( ! place_meeting(x, y, obj_platform))
    {
        while ( ! place_meeting(x, y + sign(vsp), obj_platform))
        {
            y += sign(vsp);
        }
        vsp = 0;
    }
}
*/

/**
 * Is Colliding with Walls
 */

// check horizontal collision
if (place_meeting(x + hsp, y, obj_wall))
{
    while ( ! place_meeting(x + sign(hsp), y, obj_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

// check vertical collision
if (place_meeting(x, y + vsp, obj_wall))
{
    while ( ! place_meeting(x, y + sign(vsp), obj_wall))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
y += vsp;


/**
 * Is Outside the Room
 */

if (bbox_right < 0)
{
    x = room_width - (bbox_right - bbox_left);
}
else if (bbox_left > room_width)
{
    x = (bbox_right - bbox_left);
}

if (bbox_top > room_height)
{
    y = 0;
}

