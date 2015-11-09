/**
 * Initialize Variables
 */

// create the pause screen background from the current application surface
pause_surface = surface_create(view_wview[0], view_hview[0]);
surface_copy(pause_surface, 0, 0, application_surface);

// deactivate everything but the pause screen
instance_deactivate_all(true);

