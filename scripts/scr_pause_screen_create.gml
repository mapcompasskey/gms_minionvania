/**
 * Initialize Variables
 *
 * Loaded into a room whenever the "ESC" key is pressed.
 */

// create a snapshot of the scene from the current application surface
snapshot_surface = surface_create(view_wview[0], view_hview[0]);
surface_copy(snapshot_surface, 0, 0, application_surface);

// deactivate everything but this object
instance_deactivate_all(true);

