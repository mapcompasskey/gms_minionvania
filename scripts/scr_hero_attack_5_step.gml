/**
 * Update
 */

// is object standing on a wall
grounded = place_meeting(x, y + 1, obj_wall);

// if the timer has ended
kill_timer += TICK;
if (kill_timer >= kill_time)
{
    instance_create(x, bbox_bottom, obj_hero_attack_6);
    instance_destroy();
}

// throw the object
if (key_jump_pressed)
{
    grounded = false;
    velocity_x = speed_x * facing;
    velocity_y = -speed_y;
    key_jump_pressed = false;
}

// update movement speeds
scr_movement_update();

// check for collisions
scr_entity_check_wall_collisions();

// turn around if hit a wall
if (turn_around)
{
    if (facing == RIGHT)
    {
        facing = LEFT;
    }
    else if (facing == LEFT)
    {
        facing = RIGHT;
    }
    velocity_x = last_velocity_x * facing;
}

// update object position
x += mx;
y += my;

// update object sprite
scr_entity_update_image_xscale();

