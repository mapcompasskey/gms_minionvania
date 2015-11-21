/**
 * Draw
 */

// draw the snapshot
if (surface_exists(snapshot_surface))
{
    draw_surface(snapshot_surface, view_xview[0], view_yview[0]);
}

// increment the timer by the amount of microseconds since the last frame
transition_timer += TICK;

// calcuate the width of the rectangle
var timer_rate = (100 / transition_time) * transition_timer;
var rectangle_width = timer_rate * view_wview[0] / 100;

var x1, x2, y1, y2;
x1 = view_xview[0];
x2 = view_xview[0] + rectangle_width;
y1 = view_yview[0];
y2 = view_yview[0] + view_hview[0];

// draw a black rectangle over the scene
draw_set_color(c_black);
draw_rectangle(x1, y1, x2, y2, 0);

// if the timer has ended
if (transition_timer >= transition_time)
{
    // destory the surface, freeing it from memory
    if (surface_exists(snapshot_surface))
    {
        surface_free(snapshot_surface);
    }
    
    // go to the battle room
    room_goto(rm_battle_1);
    
    // since this room is persistent, everything needs to be re-activated
    // and this object needs to be destroyed
    instance_activate_all();
    instance_destroy();
}

