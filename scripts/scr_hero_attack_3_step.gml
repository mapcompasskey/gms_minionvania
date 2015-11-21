/**
 * Update
 */

// update kill timer
kill_timer += TICK;
if (kill_timer > kill_time)
{
    instance_destroy();
}

// if reached the end of the sprite's animation
if (image_index >= (image_number - 1))
{
    image_speed = 0;
}

// update object sprite
scr_entity_update_image_xscale();

