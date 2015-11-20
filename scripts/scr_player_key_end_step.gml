/**
 * On End of Update
 */

// if being carried by the player
if (player_carrying)
{
    x = player_carrying.x - (sprite_width / 2);
    y = player_carrying.bbox_top - sprite_height;
}

