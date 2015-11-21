/**
 * Update
 */

// update movespeed
velocity_x = speed_x * facing;

// update kill timer
kill_timer += TICK;
if (kill_timer > kill_time)
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
scr_entity_update_image_xscale();

