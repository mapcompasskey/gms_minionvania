/**
 * Update
 */

// if the timer has ended
kill_timer += TICK;
if (kill_timer >= kill_time)
{
    instance_destroy();
}

// update object sprite
scr_entity_update_image_xscale();

