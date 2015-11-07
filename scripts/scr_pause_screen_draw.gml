// draw the background
if (surface_exists(pauseSurface))
{
    draw_surface(pauseSurface, view_xview[0], view_yview[0]);
}

// darken the background by drawing a faded black rectangle over it
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0], 0);

// reset alpha back to 1
draw_set_alpha(1);

