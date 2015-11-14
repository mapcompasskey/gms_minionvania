/**
 * Update
 */

// update movespeed
if (facing_right)
{
    hsp = movespeed;
}
else
{
    hsp = -movespeed;
}
vsp = 0;

// update kill timer
kill_timer += delta_time;
if (kill_timer > (kill_time * 1000000))
{
    instance_destroy();
}

// check for collisions
scr_entity_check_wall_collisions();

// die if hit a wall
if (turn_around)
{
    instance_destroy();
}

// update object position
x += hsp;
y += vsp;

// update object sprite
if (facing_right)
{
    image_xscale = 1;
}
else
{
    image_xscale = -1;
}

