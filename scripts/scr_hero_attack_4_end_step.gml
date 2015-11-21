/**
 * On End of Update
 */

// update the position to match the Heros
if (hero)
{
    y = hero.bbox_bottom;
    
    // face in the same direction as the Hero
    facing = hero.facing;
    if (facing == RIGHT)
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

