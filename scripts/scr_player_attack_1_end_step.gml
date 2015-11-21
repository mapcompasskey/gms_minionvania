/**
 * On End of Update
 */

if (player != noone)
{
    y = player.bbox_bottom;
    
    facing = player.facing;
    if (facing == RIGHT)
    {
        image_xscale = 1;
        x = player.bbox_right;
        y = player.bbox_bottom;
    }
    else if (facing == LEFT)
    {
        image_xscale = -1;
        x = player.bbox_left;
        y = player.bbox_bottom;
    }
}
else
{
    instance_destroy();
}

