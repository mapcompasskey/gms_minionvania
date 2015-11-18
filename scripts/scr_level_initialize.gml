///scr_level_initialize(is battle mode)

/**
 * Initialize a Level Room
 *
 * Loaded into the creation code of rooms. Is used for both level and battle
 * type rooms.
 */

IS_BATTLE_MODE = argument0;

// add the level controller
instance_create(0, 0, cont_level);

