/**
 * Update
 */

// if reached the end of the sprite's animation
if (image_index >= (image_number - 1))
{
    if (player_id)
    {
        player_id.can_attack = true;
    }
    
    image_speed = 0;
    instance_destroy();
}

