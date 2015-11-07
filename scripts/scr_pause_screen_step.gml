// if ESC key is pressed
if (keyboard_check_pressed(vk_escape))
{
    // destory the surface, freeing it from memory
    if (surface_exists(pauseSurface))
    {
        surface_free(pauseSurface);
    }
    
    // activate everything
    instance_activate_all();
    
    // destroy the pause screen
    instance_destroy();
}

