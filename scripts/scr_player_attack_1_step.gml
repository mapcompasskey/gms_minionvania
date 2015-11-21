/**
 * Update
 */

// if reached the end of the sprite's animation
if (image_index >= (image_number - 1))
{
    if (player != noone)
    {
        player.can_attack = true;
    }
    
    image_speed = 0;
    instance_destroy();
}

