/**
 * Update
 */

// is object standing on a wall
grounded = place_meeting(x, y + 1, obj_wall);

// update movespeed
if (facing_right)
{
    hsp = movespeed;
}
else
{
    hsp = -movespeed;
}

// apply gravity
if (vsp < max_vsp)
{
    vsp += grav;
}

// if not jumping
if ( ! jumping)
{
    vsp = -jumpspeed;
    jumping = true;
}

// if grounded after jumping
if (jumping && grounded)
{
    instance_create(x, bbox_bottom, obj_hero_attack_3);
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

