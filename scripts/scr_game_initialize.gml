///scr_game_initialize()

/**
 * Set Global Variables
 *
 * Loaded in the creation code of "rm_initialize" when the game begins.
 */

/*
    TICK - the amount of time that has passed since the last step
    GRAV - the gravity
    TILE_SIZE - the default tile size
    PLAYER_HEALTH - the player's health
    PLAYER_ITEM - the item the player is carrying
    HERO_HEALTH - the hero's health
    ROOM_PREVIOUS - used when in the battle room to return to the level
    IS_BATTLE_MODE - is in the battle room
    HERO_ACTION_ORDER - the list of actions for the hero to take in the battle room
*/

globalvar TICK, GRAV, TILE_SIZE, PLAYER_HEALTH, PLAYER_ITEM, HERO_HEALTH, ROOM_PREVIOUS, IS_BATTLE_MODE, HERO_ACTION_ORDER;

TICK = 1;
GRAV = 0.5;
TILE_SIZE = 32;
PLAYER_HEALTH = 100;
PLAYER_ITEM = noone;
HERO_HEALTH = 100;
ROOM_PREVIOUS = false;
IS_BATTLE_MODE = false;
HERO_ACTION_ORDER = ds_list_create();

