/**
 * On End of Update
 */

if (hero_id)
{
    y = hero_id.bbox_bottom;
    
    facing_right = hero_id.facing_right
    if (facing_right)
    {
        image_xscale = 1;
        x = hero_id.bbox_right + (sprite_width / 2);
    }
    else
    {
        image_xscale = -1;
        x = hero_id.bbox_left + (sprite_width / 2);
    }
}
else
{
    instance_destroy();
}

