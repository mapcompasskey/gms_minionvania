/**
 * Update
 */

// update movespeed
if (facing_right)
{
    velocity_x = speed_x;
}
else
{
    velocity_x = -speed_x;
}

// update kill timer
kill_timer += delta_time;
if (kill_timer > (kill_time * 1000000))
{
    instance_destroy();
}

// update movement speeds
scr_movement_update();

// check for collisions
scr_entity_check_wall_collisions();

// die if hit a wall
if (turn_around)
{
    instance_destroy();
}

// update object position
x += mx;
y += my;

// update object sprite
if (facing_right)
{
    image_xscale = 1;
}
else
{
    image_xscale = -1;
}

