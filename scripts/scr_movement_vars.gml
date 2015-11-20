///scr_movement_vars()

gravity_factor = 1;
mx = 0;
my = 0;
speed_x = 2;
speed_y = 4;
velocity_x = 0;
velocity_y = 0;
max_velocity_x = 0;
max_velocity_y = 0;

last_velocity_x = 0;
last_velocity_y = 0;

move_friction = 0;     // 0.9 - reduce by 10% every step
move_friction_min = 0; // 1   - if less than 1
jump_bounce = 0;       // 0.5 - reduce by 50% every bounce
jump_bounce_min = 0;   // 1   - if less than 1

