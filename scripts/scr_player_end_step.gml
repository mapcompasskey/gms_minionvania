/**
 * On End of Update
 */


/**
 * Update Movement Speeds
 */

scr_movement_update();


/**
 * Is Colliding with Walls
 */

scr_entity_check_wall_collisions();


/**
 * Update Object Position
 */

x += mx;
y += my;

scr_entity_reposition();

