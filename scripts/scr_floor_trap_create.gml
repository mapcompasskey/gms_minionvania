/**
 * Initialize Variables
 */

active = false;

// add the keyhole
var pos_x, pos_y;
pos_x = x + TILE_SIZE * 1;
pos_y = y - TILE_SIZE - TILE_SIZE / 2;
player_keyhole = instance_create(pos_x, pos_y, obj_player_keyhole);
player_keyhole.owner = id;
