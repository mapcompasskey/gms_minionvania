/**
 * Update
 */

// if reached the end of the sprite's animation
if (image_index >= (image_number - 1))
{
    image_speed = 0;
    instance_destroy();
}

// update object sprite
scr_entity_update_image_xscale();

