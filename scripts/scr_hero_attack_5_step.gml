/**
 * Update
 */

// is object standing on a wall
grounded = place_meeting(x, y + 1, obj_wall);

// update movement deceleration
if (grounded)
{
    // add friction
    speed_x = speed_x - (speed_x * move_friction);
    if (speed_x < move_friction_min)
    {
        speed_x = 0;
    }
    
    // update bounce
    speed_y = speed_y - (speed_y * jump_bounce);
    if (speed_y <  jump_bounce_min)
    {
        speed_y = 0;
    }
}

// update movespeed
if (facing_right)
{
    velocity_x = speed_x;
}
else
{
    velocity_x = -speed_x;
}

// if the timer has ended
kill_timer += delta_time;
if (kill_timer >= (kill_time * 1000000))
{
    instance_create(x, bbox_bottom, obj_hero_attack_6);
    instance_destroy();
}

// if not idle
if ( ! idling)
{
    // if grounded after jumping
    if (jumping && grounded)
    {
        jumping = false;
        
        // if no longer bouncing
        if (speed_y == 0)
        {
            idling = true;
        }
    }
    
    // if not jumping
    else if ( ! jumping)
    {
        jumping = true;
        grounded = false;
        velocity_y = -speed_y;
    }
}

// update movement speeds
scr_movement_update();

// check for collisions
scr_entity_check_wall_collisions();

// turn around if hit a wall
if (turn_around)
{
    facing_right = !facing_right;
}

// update object position
x += mx;
y += my;

// update object sprite
if (facing_right)
{
    image_xscale = 1;
}
else
{
    image_xscale = -1;
}

