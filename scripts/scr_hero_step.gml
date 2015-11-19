/**
 * Update
 */

// is object standing on a wall
grounded = place_meeting(x, y + 1, obj_wall);


/**
 * Check Object State
 */

scr_hero_is_hurting();
scr_hero_is_idling();
scr_hero_is_attacking();
scr_hero_is_jumping();
scr_hero_is_walking();


/**
 * Update Movement Speeds
 */

scr_movement_update();


/**
 * Check for the Edge of Platforms
 * /

scr_entity_check_platform_edges();

// turn around if reached edge of platform
if (turn_around)
{
    key_left  = !key_left;
    key_right = !key_right;
}
*/


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

x += mx;
y += my;

scr_entity_reposition();


/**
 * Update Object Sprite
 */

scr_entity_update_image_xscale();

