// create the pause screen surface
pauseSurface = surface_create(view_wview[0], view_hview[0]);

surface_set_target(pauseSurface);
draw_clear_alpha(c_black, 0);

// draw all visible objects to the surface
with (all)
{
    if (visible == true)
    {
        x = x - view_xview[0];
        y = y - view_yview[0];
        event_perform(ev_draw, 0);
        x = x + view_xview[0];
        y = y + view_yview[0];        
    }
}
surface_reset_target();

// deactivate everything but the pause screen
instance_deactivate_all(true);

visible = true;

