/**
 * On Update
 */

// if ESC key is pressed
if (keyboard_check_pressed(vk_escape))
{
    // destory the surface, freeing it from memory
    if (surface_exists(snapshot_surface))
    {
        surface_free(snapshot_surface);
    }
    
    // activate everything
    instance_activate_all();
    
    // destroy the pause screen
    instance_destroy();
}

