/**
 * On End of Update
 */

if (hero)
{
    y = hero.bbox_bottom;
    
    facing_right = hero.facing_right
    if (facing_right)
    {
        image_xscale = 1;
        x = hero.bbox_right + (sprite_width / 2);
    }
    else
    {
        image_xscale = -1;
        x = hero.bbox_left + (sprite_width / 2);
    }
}
else
{
    instance_destroy();
}

