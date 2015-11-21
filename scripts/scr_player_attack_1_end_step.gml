/**
 * On End of Update
 */

if (player != noone)
{
    y = player.bbox_bottom;
    
    facing_right = player.facing_right
    if (facing_right)
    {
        image_xscale = 1;
        x = player.bbox_right;
        y = player.bbox_bottom;
    }
    else
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

