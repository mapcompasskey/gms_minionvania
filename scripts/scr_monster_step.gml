/**
 * On Update
 */

// is object standing on a wall
grounded = place_meeting(x, y + 1, obj_wall);


/**
 * Check Object State
 */

scr_monster_is_jumping();
scr_monster_is_walking();
scr_monster_is_fleeing();


/**
 * Update Movement Speeds
 */

scr_movement_update();


/**
 * Check for the Edge of Platforms
 */

scr_entity_check_platform_edges();

// turn around if reached edge of platform
if ( ! can_be_triggered && turn_around)
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

x += mx;
y += my;


/**
 * Update Object Sprite
 */

scr_entity_update_image_xscale();

