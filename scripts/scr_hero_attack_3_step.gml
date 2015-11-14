/**
 * Update
 */

// update kill timer
kill_timer += delta_time;
if (kill_timer > (kill_time * 1000000))
{
    instance_destroy();
}

// update object sprite
if (facing_right)
{
    image_xscale = 1;
}
else
{
    image_xscale = -1;
}

// if reached the end of the sprite's animation
if (image_index >= (image_number - 1))
{
    image_speed = 0;
}
else
{
    image_speed = 0.25;
}

