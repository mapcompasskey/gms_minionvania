/**
 * On End of Update
 */

if (player_id)
{
    y = player_id.bbox_bottom;
    
    facing_right = player_id.facing_right
    if (facing_right)
    {
        image_xscale = 1;
        x = player_id.bbox_right;
        y = player_id.bbox_bottom;
    }
    else
    {
        image_xscale = -1;
        x = player_id.bbox_left;
        y = player_id.bbox_bottom;
    }
}
else
{
    instance_destroy();
}

