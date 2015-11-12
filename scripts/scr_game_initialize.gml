///scr_game_initialize()

/**
 * Set Global Variables
 *
 * Loaded in the creation code of "rm_initialize" when the game begins.
 */

global.previous_room = false;
global.battle_mode = false;

// variable to store object data
global.room_data = ds_list_create();

