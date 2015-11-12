/**
 * Initialize Variables
 *
 * Loaded into the room when the Player collides with the Hero.
 * Causes the game to pause with a transition before loading the Battle Room.
 * ! Object placement and variables will need to be grab here so the room can be reloaded as it was.
 */

// the time in seconds for the transition to take
transition_time = 1;
transition_timer = 0;

// grab the id of the current room
global.previous_room = room;

// create a snapshot of the scene from the current application surface
snapshot_surface = surface_create(view_wview[0], view_hview[0]);
surface_copy(snapshot_surface, 0, 0, application_surface);

// store information about objects in the room
scr_room_data_create();

// deactivate everything but this object
instance_deactivate_all(true);

