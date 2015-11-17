/**
 * Update Movement Speeds
 */

// apply gravity
velocity_y += GRAV * TICK * gravity_factor;

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

