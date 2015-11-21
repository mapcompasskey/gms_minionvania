/**
 * Update
 */

// if the timer has ended
kill_timer += TICK;
if (kill_timer >= kill_time)
{
    instance_destroy();
}

// if reached the end of the sprite's animation
if (image_index >= image_number)
{
    image_index = image_number - 3;
}

// update object sprite
scr_entity_update_image_xscale();

