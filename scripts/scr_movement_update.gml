/**
 * Update Movement Speeds
 */

// apply gravity
velocity_y += gravity_rate * (delta_time / 1000000);

// apply restrictions
velocity_x = clamp(velocity_x, -max_velocity_x, max_velocity_x);
velocity_y = clamp(velocity_y, -max_velocity_y, max_velocity_y);

// x / y position to step
mx = velocity_x * (delta_time / 1000000);
my = velocity_y * (delta_time / 1000000);

