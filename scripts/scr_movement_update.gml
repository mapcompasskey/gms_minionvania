/**
 * Update Movement Speeds
 */

// apply gravity
velocity_y += GRAV * TICK * gravity_factor;

// apply movement friction
if (grounded && move_friction > 0)
{
    if (abs(velocity_x * move_friction) < move_friction_min)
    {
        velocity_x = 0;
    }
    velocity_x = velocity_x * move_friction;
}

// apply jump bounce
if (grounded && jump_bounce > 0)
{
    if (last_velocity_y < jump_bounce_min)
    {
        velocity_y = 0;
    }
    velocity_y = -last_velocity_y * jump_bounce;
}

// apply horizontal restrictions
if (max_velocity_x != 0)
{
    velocity_x = clamp(velocity_x, -max_velocity_x, max_velocity_x);
}

// apply vertical restrictions
if (max_velocity_y != 0)
{
    velocity_y = clamp(velocity_y, -max_velocity_y, max_velocity_y);
}

// x / y position to step
mx = velocity_x * TICK;
my = velocity_y * TICK;

// store velocities
last_velocity_x = mx;
last_velocity_y = my;

