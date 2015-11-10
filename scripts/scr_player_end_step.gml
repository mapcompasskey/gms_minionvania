/**
 * On End of Update
 */


/**
 * Is Colliding with Walls
 */
scr_entity_check_wall_collisions();


/**
 * Update Object Position
 */
x += hsp;
y += vsp;


/**
 * Is Outside the Room
 */
scr_entity_reposition();

