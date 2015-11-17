///scr_game_initialize()

/**
 * Set Global Variables
 *
 * Loaded in the creation code of "rm_initialize" when the game begins.
 */

global.tile_size = 32;
global.player_health = 100;
global.hero_health = 100;
global.previous_room = false;
global.battle_mode = false;
global.hero_action_order = ds_list_create();

globalvar TICK, GRAV;
TICK = 1; // the amount of time that has passed since the last step
GRAV = 0.5; // the gravity

