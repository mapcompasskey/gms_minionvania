// if ESC key is pressed
if (keyboard_check_pressed(vk_escape))
{
    surface_free(pauseSurface);
    instance_activate_all();
    instance_destroy();
}

