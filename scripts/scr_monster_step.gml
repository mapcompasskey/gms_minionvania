/**
 * On Update
 */

// is object standing on a wall
grounded = place_meeting(x, y + 1, obj_wall);

// reset walking
hsp = 0;
walking = false;

// apply gravity
if (vsp < max_vsp)
{
    vsp += grav;
}


/**
 * Check Object State
 */

scr_monster_is_walking();


/**
 * Check for the Edge of Platforms
 */

scr_entity_check_platform_edges();

// turn around if reached edge of platform
if (turn_around)
{
    key_left  = !key_left;
    key_right = !key_right;
}


/**
 * Check for Collisions
 */

scr_entity_check_wall_collisions();

// turn around if walked into a wall
if (turn_around)
{
    key_left  = !key_left;
    key_right = !key_right;
}


/**
 * Update Object Position
 */

x += hsp;
y += vsp;

scr_entity_update_image_xscale();

